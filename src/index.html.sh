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
            $(item projects "$github/automata"   automata   ', my cellular automata playground')
            $(item projects "$github/catgirl.sh" catgirl.sh ', an exploration of shell as a templating system')
            $(item projects "$github/cherry"     cherry     ', a bitmap font in various sizes and weights')
            $(item projects "$github/dots"       dots       ', my configuration files & scripts')
            $(item projects "$github/fruity"     fruity     ', a pastel colorscheme')
            $(item projects "$github/golf"       golf       ', my code golf playground')
            $(item projects "$github/human"      human      ', a program to convert to human readable')
            $(item projects "$github/prtutils"   prtutils   ', a set of scripts for packages & ports management')
            $(item projects "$github/turquoise"  turquoise  ', my crux repository')
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
