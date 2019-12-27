#!/bin/sh

cd "${0%/*}"; . ./main

_ << EOF
<html>
    <meta name="viewport"  content="width=device-width">
    $(link stylesheet text/css  src/css/style.css)
    $(link icon       image/gif src/imgs/icon.gif)
    <head>
        <title>
            $name
        </title>
    </head>
    <body>
        <pre>
 /\\_/\\ &lt;3
 &gt;^.^&lt;...
, / \\
\\(___)
        </pre>
        <p>
            Hello ! My name is Camille and I'm a 24 year old :
        </p>
        <ul>
            $(list '* Software developer')
            $(list '* Photographer')
            $(list '* Pixel-Artist')
            $(list '* Nixer')
            $(list '* ...')
        </ul>
        <p>
            From France.
        </p>
        </br>
        <p>
            Projects :
        </p>
        <ul>
            $(item projects "$github/automata" automata ', cellular automata fun')
            $(item projects "$github/cherry"   cherry   ', a bitmap font')
            $(item projects "$github/dots"     dots     ', some dotfiles')
            $(item projects "$github/fruity"   fruity   ', a colorscheme')
            $(item projects "$github/golf"     golf     ', some code golfing')
            $(item projects "$github/ports"    ports    ', a crux ports repo')
            $(item projects "$github/prtutils" prtutils ', some crux ports utils')
        </ul>
        </br>
        <p>
            Social :
        </p>
        <ul>
            $(item social "$github"   github)
            $(item social "$telegram" telegram)
            $(item social "$unsplash" unsplash)
        </ul>
    </body>
</html>
EOF
