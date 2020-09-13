<?php

require $_SERVER['DOCUMENT_ROOT'] . '/homework5/index.php';
require $_SERVER['DOCUMENT_ROOT'] . '/homework5/shapesInterface.php';
require $_SERVER['DOCUMENT_ROOT'] . '/homework5/shapesExtend.php';

require 'Shapes/Curved/Circle.php';
require 'Shapes/Rectangular/Kite.php';
require 'Shapes/Rectangular/Rectangle.php';
require 'Shapes/Rectangular/Square.php';
require 'Tools/Drawing/Brush.php';
require 'Tools/Drawing/Pencil.php';


/* Actually not needed - just for learning purposes
 * use Shapes\Curved\Circle as circle;
 * use Shapes\Rectangular\Kite as kite;
 * use Shapes\Rectangular\Rectangle as rectangle;
 * use Shapes\Rectangular\Square as square;
 */

// Check if random
echo $randomClassname . '<hr>';

class App {
    public $shape;

    public function __construct($obj) {
        $this->shape = new $obj;
    }

    public function getRandomShape() {
        if(method_exists($this->shape,'viewAction')) {
            return $this->shape->viewAction();
        }
    }
}

// Instantiate object by passing another object as constructor param
$x = new App(new $randomClassname());
echo $x->getRandomShape();
