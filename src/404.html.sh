_ << EOF
<html>
    $(link icon       image/gif src/imgs/icon.gif)
    $(link stylesheet text/css  src/css/404.css)
    <script src="src/js/bg.js"></script>
    <head>
        <title>
            $name
        </title>
    </head>
<body onload="draw();">
    <canvas id="r110">
</body>
</html>
EOF
