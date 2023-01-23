<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php

echo "<h1>Working with Comparison Operators</h1>";
$x=120;
$y=30;
echo var_dump($x==$y).$x."=".$y." Equal<br>";
echo var_dump($x===$y).$x."===".$y." Identical<br>";
echo var_dump($x!=$y).$x."!=".$y." Not Equal<br>";
echo var_dump($x<>$y).$x."<>".$y." Not Equal<br>";
echo var_dump($x!==$y).$x."!==".$y." Not Identical<br>";
echo var_dump($x>$y).$x.">".$y." Greater then<br>";
echo var_dump($x<$y).$x."<".$y." Less then<br>";
echo var_dump($x>=$y).$x.">=".$y." Greater then equal<br>";
echo var_dump($x<=$y).$x."<=".$y." Less then equal<br>";
echo "<h1>Working with Inc./Dec. Operators</h1>";
$a=100;
$b=100;
$c=100;
$d=100;
echo "The value of a is ====> Pre Inc.".++$a."<br>";
echo "The value of b is ====> Pre Dec.".--$b."<br>";
echo "The value of c is ====> Post Dec.".$c--."<br>";
echo "The value of d is ====> Post Inc.".$d++."<br>";
echo "<h1>Working with Logical Operators</h1>";
$x1 = 30;
$y1 = 30;
echo  var_dump($x1 == 30 and $y1 == 40)."True if both true<br>";
echo  var_dump($x1 >= 30 && $y1 <= 40)."True if both true<br>";

echo  var_dump($x1 == 30 or $y1 == 40)."Either one condition is true or both<br>";
echo  var_dump($x1 >= 30 || $y1 <= 40)."Either on condition is true <br>";
echo  var_dump($x1 >= 30 xor $y1 <= 40)."Either  condition is true not both <br>";
echo  var_dump($x1!=50)."Not operator <br>";
?>
</body> 
</html>