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
    <title>Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.6.3/css/foundation.min.css">
</head>
<body>
<header class="site-header grid-container">
    <br>
    <div class="grid-x">
        <div class="cell small-9"><strong class="logo">PHP Academy</strong></div>
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
    <article>
        <h1>Homework Assignment</h1>
        <hr>
        <h2>Preconditions</h2>
        <ol>
            <li>Create GitHub profile if you don't have one</li>
            <li>Post your profile on General channel on Slack</li>
        </ol>
        <h2>Mandatory</h2>
        <ol>
            <li>Create 3 pages using a CSS Framework of your choice, except Bootstrap.</li>
            <li>Every page must have a relative link to every other page.</li>
            <li>Together all 3 pages must have a total of 30 unique HTML elements</li>
            <li>Try to reuse as much content as possible if they are same between pages. At least one include/include_once and one require/require_once is mandatory.</li>
            <li>Together all 3 pages must have at least 10 PHP operators</li>
            <li>All 3 pages must be valid by Markup Validation Service</li>
            <li>Your homework must be pushed (do not use file upload) to GitHub repository PHPAcademyHomework1.</li>
        </ol>
        <dl>
            <dt>Extra points</dt>
            <dd>Do all of your work in develop branch</dd>
            <dd>Once you are done, create a pull request and put one of your colleagues as a reviewer.</dd>
            <dd>When your homework is approved, merge it to the master branch.</dd>
        </dl>
    </article>
    <hr>
</main>
<footer class="site-footer ">
    <div class="grid-container">
        <p><span>Copyright <?= $copyrightDate; ?> </span></p>
    </div>
</footer>
</body>
</html>