<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use Think\Exception;
use Think\Upload;
use think\Loader;

// Loader::import('PHPExcel.PHPExcel', EXTEND_PATH, '.php');
// Loader::import('PHPExcel.PHPExcel.IOFactory', EXTEND_PATH, '.php');
// Loader::import('PHPExcel.PHPExcel.Reader.Excel5');
// 以上引入方式是当第三方插件库在extend目录下的时候
class Index extends Controller
{
	public function index(){
		return $this->fetch();
	}
    public function test(){
        $list = Db::name('dept')->select();
        // $tableHeader = array('ID', '密码', '用户名', '昵称', '角色ID', '部门ID', '头像地址', '是否删除');
        $tableHeader = array('序号', '部门编码', '部门名称', '部门级别', '父级ID', '部门类型', '是否删除','创建人','创建时间');
        $this->excel($list,$tableHeader,'用户表');
    }
 
    public function test1(){
        $fileName = array('name', 'total', 'xiaohao');
        $file = 1;
        $url= $this->importEX('wuliao',$file,$fileName);
        $res = Db::name('wuliao')->insertAll($url['data']);
        unlink($url['file_path']);
    }


    /*导入Excel表格*/
    public function importEX($table,$file,$fileName){
        vendor('PHPExcel.PHPExcel');    //引入PHPExcel插件
        vendor('PHPExcel.PHPExcel.IOFactory');
        $addDaily = Db::name($table);
        //创建对象
        $excel =  new \PHPExcel();
        $file = request()->file('excel');
        $file_types = explode(".", $_FILES ['excel'] ['name']); // ["name"] => string(25) "excel文件名.xls"
        $file_type = $file_types [count($file_types) - 1];//xls后缀
        $file_name = $file_types [count($file_types) - 2];//xls去后缀的文件名
        /*判别是不是.xls文件，判别是不是excel文件*/
        if (strtolower($file_type) != "xls" && strtolower($file_type) != "xlsx") {
            echo '不是Excel文件，重新上传';
            die;
        }
        $info = $file->move( '.' . DS . 'excel');//上传位置
        $path =  '.' . DS . 'excel' . DS;
        $file_path = $path . $info->getSaveName();//上传后的EXCEL路径
        // echo $file_path;//文件路径
        $objPHPExcel=\PHPExcel_IOFactory::load($file_path);  //读取Excel文件中的内容
        // dump($objPHPExcel);
        $excelarray=$objPHPExcel->getSheet(0);          //第一张工作表
        $allcol=$excelarray->getHighestColumn();        //总列数
        $allrow=$excelarray->getHighestRow();           //总行数
        $highestRow = intval( $allrow ) ;
        $highestColumn = \PHPExcel_Cell::columnIndexFromString($allcol);//有效总列数
        // dump($excelarray);
        // dump($highestColumn);
        // dump($highestRow);
        // unset($file_path);
        // fclose($file_path);
        // echo is_writable($file_path)?'可写':'不可写';
        // dump(is_writable($file_path));

        /*在这里使用删除文件函数不能删除文件，报错*/
        // unlink($file_path);      //删除该Excel文件
        /***********结束使用*****************/
        // dump($excelarray);
        // $url = "'".$file_path."'";
        
        // 把excel数组内容加入到数据库中
        //获取工作表的数目
        $sheetCount = $objPHPExcel->getSheetCount();
        // dump($sheetCount);

        /*将数组的键改为自定义名称*/
        // $keys = array('name', 'total', 'xiaohao');
        $keys = $fileName;
        // $daily=array();
        $msg = '';
        $cell =[];
        for($row=1;$row<=$allrow;$row++){
            /*判断栏位是否正确*/
            if($excelarray->getCell('A2')->getValue()!="序号"||$excelarray->getCell('A2')->getValue()==null||$excelarray->getCell('A3')->getValue()==null){
                $msg = '表格内容格式不正确！无法导入！';
                // return false;
            }else{
                for($col='B';$col<=$allcol;$col++){
                    if($row>2){
                        $addr=$col.$row;
                        $cell[$row-2][$addr]=$excelarray->getCell($addr)->getValue();
                    }
                }

            }
        }
        /*转化数组为数据库保存数据格式*/
        foreach ($cell as $i => $vals) {
            $cell[$i] = array_combine($keys, $vals);
        }
        dump($cell);

        // $res = $addDaily->insertAll($cell);
        // if($res){
        //     $msg="数据导入成功！";
        // }
        $result['file_path'] = $file_path;
        $result['msg'] = $msg;
        $result['data'] = $cell;
        dump($result);
        return $result;
        
    }
    /**$excelarray=$objPHPExcel->getSheet(0);
     * 导出Excel表格
     * @param $data 打印的数据  数组形式
     * @param $tableHeader 表头 数组形式
     * @param $fileName 保存的文件名 字符串格式
     * @throws \PHPExcel_Exception
     * @throws \PHPExcel_Writer_Exception
     */
    public function excel($data,$tableHeader,$fileName)
    {
        vendor('PHPExcel.PHPExcel');    //引入PHPExcel插件
        vendor('PHPExcel.PHPExcel.IOFactory');
        //创建对象
        $excel =  new \PHPExcel();
        //Excel表格式
        $letter = array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S',
            'T','U','V','W','X','Y','Z','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL',
            'AM','AN','AO','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ');
        //填充表头信息/1是格式
        $tableHeader=$tableHeader;
        for ($i = 0; $i < count($tableHeader); $i++)
        {
            $excel->getActiveSheet()->setCellValue("$letter[$i]1", "$tableHeader[$i]");
        }
 
        //填充表格信息
        for ($i = 2; $i <= count($data) + 1; $i++)
        {
            $j = 0;
            foreach ($data[$i - 2] as $key => $value)
            {
                $excel->getActiveSheet()->setCellValue("$letter[$j]$i", "$value");
                $j++;
            }
        }
        //创建Excel输入对象
        $write = new \PHPExcel_Writer_Excel5($excel);
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control:must-revalidate, post-check=0, pre-check=0");
        header("Content-Type:application/force-download");
        header("Content-Type:application/vnd.ms-execl");
        header("Content-Type:application/octet-stream");
        header("Content-Type:application/download");
        header('Content-Disposition: attachment;filename="'.$fileName.'.xls"');
        header("Content-Transfer-Encoding:binary");
        $write->save('php://output');
    }

    
}
