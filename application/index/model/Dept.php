<?php
/**
 * Created by PhpStorm.
 * User: LFX
 * Date: 2018/7/9
 * Time: 9:48
 */

namespace app\index\model;

use think\Model;

class Dept extends Model
{
    protected $table="yd_dept";
    public function adddept($data){
        $result = $this->insertGetId($data);
        return $result;
    }
}