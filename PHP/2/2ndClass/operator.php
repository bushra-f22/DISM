<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
echo "<h1>Working with variables</h1>";
$x = 3;
$y =89.99;
echo "The value of x is : ".$x."<br>The value of y is :".$y."<br>";

echo "The value of x is : ".$x."<br>";
echo "The value of y is :".$y."<br>";

$firtname ="Muhammad";
$lastname="Ahmed";
echo "The Fullname is :".$firtname." ".$lastname."</br>";
$price = 2761631263612763162.82398;
echo "the price is :".$price;



echo "<h1>Arithematic operators</h1>";
$a=20;
$b=3;
echo "Addition result is :".($a+$b)."<br>";
echo "Subtraction result is :".($a-$b)."<br>";
echo "Multiply result is :".($a*$b)."<br>";
echo "Division result is :".($a/$b)."<br>";
echo "Modulus result is :".($a%$b)."<br>";

echo "<h1>Assignment operators</h1>";
$m = 4;
$n=2;
echo "Addition result is : ".($m+=$n)."<br>";
echo "Subtraction result is : ".($m-=$n)."<br>";
echo "Multiply result is : ".($m*=$n)."<br>";
echo "Division result is : ".($m/=$n)."<br>";
echo "Division result is : ".($m%=$n)."<br>";









?>
</body>
</html>