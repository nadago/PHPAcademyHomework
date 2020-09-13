<?php

namespace Foo\Baz;

use Foo\Bar\shapeInterface;

class shapeExtend implements shapeInterface {
    public function viewAction()
    {
        return "Class name: " . get_class($this);
    }
}
