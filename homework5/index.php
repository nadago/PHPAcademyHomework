<?php

/*
 *  Randomly chooses one of those classes and instantiate object based on that class
 *  Learn more:
 *  https://www.php.net/manual/en/language.constants.predefined.php
 *  https://www.php.net/manual/en/language.namespaces.dynamic.php
 */


// Array of Class names (with namespaces)
// Object instantiation doesn't work with aliases saved in string variable
$circle = 'Shapes\Curved\Circle';
$kite = 'Shapes\Rectangular\Kite';
$rectangle = 'Shapes\Rectangular\Rectangle';
$square = 'Shapes\Rectangular\Square';
$brush = 'Tools\Drawing\Brush';
$pencil = 'Tools\Drawing\Pencil';

$classnameArr = [$circle, $kite, $rectangle, $square, $brush, $pencil];


// Get random Classname string using built in function array_rand
// String is used for object instantiation
// Instantiated object is passed as argument to App class constructor
// See App.php
$randomClassname = $classnameArr[array_rand($classnameArr)];
