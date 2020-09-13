<?php

/*
 * Homework_6 Task_1
 * Create class which has two private properties.
 * Property values should be set at object creation
 * Property values should be changeable later with __get() and __set() magic methods.
 */

echo '<h1>Task 1</h1>';

class PolygonShape {
    private $sides;
    private $color;
    private $regular;

    public function __construct($sides = null, $color = null, $regular = null) {
        $this->sides = $sides;
        $this->color = $color;
        $this->regular = $regular;
    }

    public function __get($name) {
        return $this->$name ?? null;

    }

    public function __set($name, $value) {
        $this->$name = $value;
    }
}

// Since properties are optional here we are instantiating object
// by setting just 2properties: sides and regular
$polygonShape = new PolygonShape($sides = 3, $regular = true);

// Echo number of side using __get magic method
echo 'Number of polygon sides: ' . $polygonShape->sides . '<hr>';


// Set color private property using __set magic method
$polygonShape->color = 'orange';

// Echo newly set color property by calling again __get method
echo 'Polygon color is ' . $polygonShape->color . '<hr>';




/*
 *  Homework_6 Task_2
 *  Create class with __call() magic method that handles missing getters and setters.
 */

echo '<h1>Task 2</h1>';

class Polygon {
    protected $data = [
        'sides' => '',
        'color' => 'orange',
    ];

    public function __call($methodName, $params) {

        $pieces = explode("_", $methodName);
        $methodPrefix = $pieces[0];
        $propertyName = $pieces[1];
        $prefixArr = ['get', 'set', 'has', 'uns'];

        if (!in_array($methodPrefix, $prefixArr)) {
            throw new Exception("Sth. bad happened... [{$methodName}] method not found or not accessible!");
        }

        if ($methodPrefix == 'get') {
            return $this->data[$propertyName] ?? null;
        }

        if ($methodPrefix == 'set') {
            $this->data[$propertyName] = implode(' ', $params);
        }

        if ($methodPrefix == 'has') {
            return array_key_exists($propertyName, $this->data) ? true : false;
        }

        if ($methodPrefix == 'uns') {
            // to remove completely
            // unset($this->data[$propertyName]);

            // to remove just value
            $this->data[$propertyName] = '';
        }
    }
}

$polygon = new Polygon();


/*
 * Try catch example
 * what_border() method doesn't exist
 */

try {
    // Uncomment to throw exception -- there is no what_border method
    // echo $polygon->what_border() . '<br>';

    // Should return existing color which is orange
    echo $polygon->get_color() . '<br>';

    // Should unset color value in $data array
    $polygon->uns_color();

    // Should throw exception because color is unset
    echo $polygon->get_color() . '<br>';

    // Should set new color to whatever
    echo $polygon->set_color('white blue') . '<br>';

    // To verify run again get_color method
    echo $polygon->get_color() . '<br>';

    // Should return true (1) because sides are set in data array
    echo $polygon->has_sides();

    // Should return false because border value doesnt exist in $data array
    echo $polygon->has_border();
}
catch (Exception $e) {
    echo $e->getMessage() . '<br>';
}
