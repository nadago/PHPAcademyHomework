<?php

$alphabet = 'a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z';
$name = 'igor';

$alphabetArr = explode(',', $alphabet);
$nameArr = str_split($name);
$nameArrReversed = array_reverse($nameArr);

/**
 * Create associative array with
 * keys in ascending order
 * values in descending order
 */

$letterPairs = array_combine($nameArr, $nameArrReversed);
// var_dump($letterPairs);


/**
 * Homework_2 Task_1
 * Example #1
 * Using if-else control
 */

foreach ($letterPairs as $boldLetter => $underlineLetter) {
    foreach ($alphabetArr as $alphabetLetter) {
        // If letters matches make bold or underline otherwise print as is
        if ($alphabetLetter == $boldLetter) {
            echo '<b>' . $alphabetLetter . '</b>';
        }
        elseif ($alphabetLetter == $underlineLetter) {
            echo '<u>' . $underlineLetter . '</u>';
        }
        else {
            echo $alphabetLetter;
        }

        // If last letter in alphabet add linebreak
        if ($alphabetLetter == end($alphabetArr)) {
            echo '<br>';
        }
    }
}

echo '<hr>';

/**
 * Homework_2 Task_1
 * Example #2
 * Using switch statement
 */

foreach ($letterPairs as $boldLetter => $underlineLetter) {
    foreach ($alphabetArr as $alphabetLetter) {
        switch ($alphabetLetter) {
            case $boldLetter:
                echo '<b>' . $alphabetLetter . '</b>';
                break;
            case $underlineLetter:
                echo '<u>' . $alphabetLetter . '</u>';
                break;
            case end($alphabetArr):
                echo '<br>';
                break;
            default:
                echo $alphabetLetter;
                break;
        }
    }
}


echo '<hr>';


/**
 * Homework_2 Task_2
 */

$i = 12;

// Rows equal size of alphabet array
for ($j = 0; $j < sizeof($alphabetArr); $j++) {
    foreach ($alphabetArr as $letterIndex => $letter) {
        // Print the whole alphabet
        echo $letterIndex == $i ? '<b>' . $letter . '</b>' : $letter;

        // Add line break when end reach
        echo $letter == end($alphabetArr) ? '<br>' : '';
    }

    // Shift alphabet letters
    $output = array_shift($alphabetArr);
    array_push($alphabetArr, $output);

    // Logic do determine which alphabet letter (key index number) to make bold
    $j < 12 ? $i-- : $i++;
}
