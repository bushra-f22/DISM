-- *****************************************ABS()
select abs(-90) as absolutevalue;
select abs(45.55);
-- *****************************************CEIL()
select ceil(45.55) as ceilvalue;
select ceil(1.3) as ceilvalue;
select ceil(-1.0) as ceilvalue;
-- *****************************************FLOOR()
select floor(1.9) as floorvalue;
select floor(-0.6) as floorvalue;
-- *****************************************Arc cosine
select acos(0); -- 1
select acos(1.178); -- null
select acos(1); -- 0
-- *****************************************Arcsine
select asin(0); -- 0
select asin(-1.45); -- null
select asin(1); -- 1
-- *****************************************Arctangent
select atan(1);
select atan(-6);
-- *****************************************cosine
select cos(120); -- 0.81
select cos(PI()); -- -1
-- *****************************************Sine
select sin(80); -- -0.99
select sin(PI()); -- 1.22
-- *****************************************cotangent
select cot(80); -- 0.11
select cot(0); -- error
-- *****************************************exponent
select exp(4);
select exp(0); -- 1
-- *****************************************MODe
select mod(10,3);
select mod(117,9);
-- *****************************************power
select pow(3,2);
select power(2,3);
-- ***************************************** square root
select sqrt(49);
-- *********************************** text and string
select ascii('@'); 
select char_length('aptech learning');
select concat('Hello',' world');
select insert("hello",3,2,"world");
select lcase("ABC");
select upper("programming");
select left("coding is fun",10);
select left("enjoying",5);
select mid('the fox jumped over the fence',3,10);
select locate('ox','reoxox');
select replace("the venue",'e','aa');
select replace('evil','e','de');
select addtime('10:46:5','2:23:3');