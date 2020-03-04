#!/bin/sh

cd "${0%/*}"; . ../../main

_ << EOF
@font-face {
    font-family: kiwi;
    src: url("../fonts/kiwi.ttf") format("truetype");
}

* {
    font-family: kiwi;
    font-size: 32px;
    filter: contrast(1);
}

body {
    background-color: $background;
    color: $foreground;
    margin-bottom: 2ch;
}

li { list-style-type: none; }

ul {
    padding: 0;
    $(margin 0 4 0 4);
}

pre { $(margin 2 2 1 2); }

p   { $(margin 0 2 0 2); }

a { text-decoration: none; }

a.social   { color: $accent1; }
a.projects { color: $accent2; }

a:hover {
    text-decoration: underline 2px;
}

@media only screen and (min-width: 600px) {
    pre  { $(margin 4  4 2  4); }
    ul   { $(margin 0 12 0 12); }
    p    { $(margin 0  8  0 8); }
    body { margin-bottom: 4ch;  }
}
EOF
