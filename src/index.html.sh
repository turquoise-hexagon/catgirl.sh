_ << EOF
<meta charset="utf-8"/>
<html>
    <meta name="viewport"  content="width=device-width">
    $(link stylesheet text/css  src/css/index.css)
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
            Hello ! My name is Camille and I'm a 25 year old :
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
            $(item projects "$github/brightness" brightness ', a simple brightness control program')
            $(item projects "$github/catgirl.sh" catgirl.sh ', an attempt at bash as a templating system')
            $(item projects "$github/center"     center     ', a simple terminal based centering program')
            $(item projects "$github/cherry"     cherry     ', a bitmap font with latin-1 support')
            $(item projects "$github/color"      color      ', a small color editing program')
            $(item projects "$github/correct"    correct    ', a simple program to fix command typos')
            $(item projects "$github/dots"       dots       ', my dotfiles')
            $(item projects "$github/fruity"     fruity     ', a pastel colorscheme')
            $(item projects "$github/golf"       golf       ', my code golf playground')
            $(item projects "$github/human"      human      ', a program to convert to human readable')
            $(item projects "$github/prtutils"   prtutils   ', a set of scripts to manage ports & packages')
            $(item projects "$github/todo"       todo       ', a simple todo-list program')
            $(item projects "$github/turquoise"  turquoise  ', my crux ports repository')
            $(list '* ...')
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
