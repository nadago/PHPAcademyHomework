<?php


/*
 * Homework_3 Task_1
 */

function reverseString($x) {
    $array = explode(" ", $x);
    foreach ($array as $key => $value) {
        $array[$key] = array_reverse(str_split($value));
        $array[$key] = implode($array[$key]);
    }

    return implode(" ", $array);
}

$string = "inchoo php akademija";
echo reverseString($string);


echo '<hr>';


/*
 * Homework_3 Task_2
 * Factorial
 */

function factorial($x) {
    if ($x < 2) {
        return 1;
    }
    return $x * factorial($x - 1);
}

$num = 6;
echo "Faktorijal od {$num} je: " . factorial($num);


echo '<hr>';




/**
 * Homework_3 Task_3
 * Generate and display this string: My favorite color is $color
 */
?>

<form action="<?= $_SERVER['PHP_SELF'] ?>" method="POST">
    <input type="radio" id="white" name="color" value="white">
    <label for="white">White</label><br>
    <input type="radio" id="black" name="color" value="black">
    <label for="black">Black</label><br>
    <input type="radio" id="red" name="color" value="red">
    <label for="red">Red</label><br>
    <input type="radio" id="blue" name="color" value="blue">
    <label for="blue">Blue</label><br>
    <input type="radio" id="green" name="color" value="green">
    <label for="green">Green</label><br>
    <input type="radio" id="yellow" name="color" value=yellow">
    <label for="yellow">Yellow</label><br>

    <button>Submit</button>
</form>

<?php

// $color = $_POST["color"] ?? "";

if (isset($_POST["color"])) {
    $color = $_POST["color"];
    echo "My favorite color is: {$color}.";
}



/**
 * Homework_3 Task_4
 * Create image upload form and backend functionality to save an image on the server.
 * The Image can be uploaded only if it's less than 1MB and is one of these formats: jpg, jpeg, png.
 */
echo '<hr>';
?>

<form action="<?= $_SERVER['PHP_SELF'] ?>" method="POST" enctype="multipart/form-data">
    <input type="file" name="image">
    <button>Upload file</button>
</form>

<?php

// Conditions for image upload: file size & file type
$maxSize = 1048576;
$fileTypes = [
    'image/jpeg',
    'image/jpg',
    'image/png'
];


if ($_FILES['image']['size'] > $maxSize) {
    echo 'Exceeded file size limit.';
} else if (!in_array($_FILES['image']['type'], $fileTypes)) {
    echo 'Invalid file type.';
} else {
    move_uploaded_file($_FILES['image']['tmp_name'], 'temp' . DIRECTORY_SEPARATOR  . $_FILES['image']['name']);
    echo 'Bingo. You successfully uploaded your image!';
}

var_dump($_FILES);
