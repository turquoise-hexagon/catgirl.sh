#!/bin/sh

cd "${0%/*}"; . ./main

_ << EOF
<html>
    $(link icon image/gif src/imgs/icon.gif)
    <head>
        <title>
            $name
        </title>
    </head>
<body style="background-image: url('src/imgs/bg.gif');">
</body>
</html>
EOF
