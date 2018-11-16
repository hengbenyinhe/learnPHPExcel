<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:79:"E:\phpstudy\WWW\learnPHPExcel\public/../application/index\view\index\index.html";i:1531877259;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>导入导出测试</title>
</head>
<body>
	<input name="" type="button" class="btn" onclick="execl()" value="导出EXECL文件"/>
	<form  enctype="multipart/form-data" method="post" action="/index/index/test1">
	    <input type="file" name="excel" /> <br>
	    <input type="submit" value="上传" />
	</form>
	<script>
		function execl(){
		    window.location.href="/index/index/test";
		}
	</script>

	
</body>
</html>