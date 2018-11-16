<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use Think\Exception;
use Think\Upload;
use think\Loader;
use app\index\model\Dept;

// Loader::import('PHPExcel.PHPExcel', EXTEND_PATH, '.php');
// Loader::import('PHPExcel.PHPExcel.IOFactory', EXTEND_PATH, '.php');
// Loader::import('PHPExcel.PHPExcel.Reader.Excel5');
// 以上引入方式是当第三方插件库在extend目录下的时候
class Test extends Controller
{
	
    public function test(){
        return $this->fetch();
    }
 
    public function teststrans(){
        Db::startTrans();
        try{
            $res1=Db::table('yd_wuliao')->where('id', 1)->update(['name' => '测试事务回滚4']);
            $data['dept_name']='测试事务回滚4';
            $deptobj = new Dept();
            // $deptobj->startTrans();
            
            $res2 = $deptobj->adddept($data);

            // 提交事务
            // Db::commit();
            
            if($res1&&$res2){
                // 提交事务
                // $deptobj->commit();
                Db::commit();

                return "事务提交";
            }else{
                // 回滚事务
                Db::rollback();
                // $deptobj->rollback();
                // dump($deptobj->startTrans());
                return "事务回滚";
            } 
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            // $deptobj->rollback();
            return "事务回滚";
        }
        
    }


    
}
