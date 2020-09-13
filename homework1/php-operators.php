<?php
include 'includes/date.php';
require 'includes/variables.php'; // Not working if missing - Fatal error
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PHP Operators</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.6.3/css/foundation.min.css">
</head>
<body>
<header class="site-header grid-container">
    <br>
    <div class="grid-x">
        <div class="cell small-9"><a href="index.php" class="logo"><strong><u>PHP Academy</u></strong></a></div>
        <div class="cell small-3">
            <ul class="menu">
                <li><a href="php-operators.php">PHP Operators</a></li>
                <li><a href="html-elements.php">HTML Elements</a></li>
            </ul>
        </div>
    </div>
    <hr>
</header>
<main class="main grid-container">
    <section>
        <h1>PHP Operators </h1>
        <strong>The examples & var_dump results below are given based on these conditions:</strong>
        <ul>
            <li>variable <strong>$x</strong> has the value of <strong>10</strong></li>
            <li>variable <strong>$y</strong> has the value of <strong>20</strong>.</li>
        </ul>
        <hr>
        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th>Operator</th>
                    <th>Name</th>
                    <th>Example</th>
                    <th>Result (var_dump)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1.</td>
                    <td>Equal</td>
                    <td>==</td>
                    <td>$x == $y</td>
                    <td><?php var_dump($x == $y) ?></td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td>Identical</td>
                    <td>===</td>
                    <td>$x === $y</td>
                    <td><?php var_dump($x === $y) ?></td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td>Not equal</td>
                    <td>!=</td>
                    <td>$x != $y</td>
                    <td><?php var_dump($x != $y) ?></td>
                </tr>
                <tr>
                    <td>4.</td>
                    <td>Not equal</td>
                    <td><></td>
                    <td>$x <> $y</td>
                    <td><?php var_dump($x <> $y) ?></td>
                </tr>
                <tr>
                    <td>5.</td>
                    <td>Not identical</td>
                    <td>!==</td>
                    <td>$x !== $y</td>
                    <td><?php var_dump($x !== $y) ?></td>
                </tr>
                <tr>
                    <td>6.</td>
                    <td>Greater than</td>
                    <td>></td>
                    <td>$x > $y</td>
                    <td><?php var_dump($x > $y) ?></td>
                </tr>
                <tr>
                    <td>7.</td>
                    <td>Less than</td>
                    <td><</td>
                    <td>$x < $y</td>
                    <td><?php var_dump($x < $y) ?></td>
                </tr>
                <tr>
                    <td>8.</td>
                    <td>Greater than or equal to</td>
                    <td>>=</td>
                    <td>$x >= $y</td>
                    <td><?php var_dump($x >= $y) ?></td>
                </tr>
                <tr>
                    <td>9.</td>
                    <td>Less o than or equal to</td>
                    <td><=</td>
                    <td>$x <= $y</td>
                    <td><?php var_dump($x <= $y) ?></td>
                </tr>
                <tr>
                    <td>10.</td>
                    <td>Spaceship</td>
                    <td><=></td>
                    <td>$x <=> $y</td>
                    <td><?php var_dump($x <=> $y) ?></td>
                </tr>
            </tbody>
        </table>
    </section>
    <hr>
</main>
<footer class="site-footer ">
    <div class="grid-container">
        <p><span>Copyright <?= $copyrightDate; ?> </span></p>
    </div>
</footer>
</body>
</html>