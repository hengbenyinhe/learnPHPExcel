<?php
namespace app\index\controller;
use think\Loader;
use think\Controller;
use PHPExcel_IOFactory;
use PHPExcel;
class Excel extends Controller
{
    public function out()
    {
		//导出
		$path = dirname(__FILE__);//找到当前脚本所在路径
		vendor("PHPExcel.PHPExcel");
		vendor("PHPExcel.Writer.Excel5");
		vendor("PHPExcel.Writer.Excel2007");
		vendor("PHPExcel.IOFactory");
		$objPHPExcel = new \PHPExcel();
		$objWriter = new \PHPExcel_Writer_Excel5($objPHPExcel);
		$objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);
		$sql = Db::table('yd_user')->select();
		dump($sql);
	}
}
