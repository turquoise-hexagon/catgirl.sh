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
            Hello ! My name is Camille and I'm a $(((`date +%s` - `date -d 1995-11-22 +%s`) / 31536000)) years old :</br
        </p>
        <ul>
            $(list '* Software developer')
            $(list '* Photographer')
            $(list '* Pixel-Artist')
            $(list '* Nixer')
            $(list '* ...')
        </ul>
        <p>
            From France, currently living in Ireland.
        </p>
        </br>
        <p>
            Projects :
        </p>
        <ul>
            $(item projects "$github/bdf2ttx"    bdf2ttx    ', a tool to convert BDF files to TTX')
            $(item projects "$github/brightness" brightness ', a tool to manage brightness on Linux systems')
            $(item projects "$github/catgirl.sh" catgirl.sh ', this website, using Bash as a templating system')
            $(item projects "$github/cherry"     cherry     ', a bitmap font, coming in different weights and sizes')
            $(item projects "$github/color"      color      ', a tool to do simple modifications on a list of colors')
            $(item projects "$github/correct"    correct    ', a tool intended to correct spelling mistakes in commands')
            $(item projects "$github/dots"       dots       ', my configuration files')
            $(item projects "$github/prtutils"   prtutils   ', some scripts for crux ports management')
            $(item projects "$github/turquoise"  turquoise  ', my crux ports repository')
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
