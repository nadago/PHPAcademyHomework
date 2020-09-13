<?php
include 'includes/date.php';
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HTML Elements</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.6.3/css/foundation.min.css">
</head>
<body>
<header class="site-header grid-container">
    <br>
    <div class="grid-x">
        <div class="cell small-9"><a href="index.php" class="logo"><strong><u>PHP Academy</u></strong></a></div>
        <nav class="cell small-3">
            <ul class="menu">
                <li><a href="php-operators.php">PHP Operators</a></li>
                <li><a href="html-elements.php">HTML Elements</a></li>
            </ul>
        </nav>
    </div>
    <hr>
</header>
<main class="main grid-container">
    <section>
        <h1>All of HTML elements used in homework assignment</h1>
        <hr>
        <ol>
            <li><code>html</code></li>
            <li><code>head</code></li>
            <li><code>meta</code></li>
            <li><code>title</code></li>
            <li><code>link</code></li>
            <li><code>header</code></li>
            <li><code>nav</code></li>
            <li><code>body</code></li>
            <li><code>main</code></li>
            <li><code>footer</code></li>
            <li><code>h1</code></li>
            <li><code>h2</code></li>
            <li><code>p</code></li>
            <li><code>span</code></li>
            <li><code>a</code></li>
            <li><code>div</code></li>
            <li><code>ol</code></li>
            <li><code>ul</code></li>
            <li><code>li</code></li>
            <li><code>code</code></li>
            <li><code>article</code></li>
            <li><code>section</code></li>
            <li><code>dl</code></li>
            <li><code>dd</code></li>
            <li><code>dt</code></li>
            <li><code>strong</code></li>
            <li><code>u</code></li>
            <li><code>table</code></li>
            <li><code>th</code></li>
            <li><code>tr</code></li>
            <li><code>td</code></li>
            <li><code>br</code></li>
        </ol>
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