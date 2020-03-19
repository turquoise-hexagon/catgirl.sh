function draw() {
    var canvas  = document.getElementById('r110');

    if (canvas.getContext) {
        const rule = 110;

        var context = canvas.getContext('2d');

        var width  = window.innerWidth;
        var height = window.innerHeight;

        context.canvas.width  = width;
        context.canvas.height = height;
        /*
        var width  = screen.width;
        var height = screen.height;
        */

        var uni = [];
        var flag = 0;

        for (let i = 0; i < width; ++i) {
            uni[i] = [];

            uni[i][0] = Math.floor(Math.random() * 2);
        }

        var tmp;
        var neg;

        for (let i = 0; i < height; ++i) {
            neg = !flag;

            for (let j = 0; j < width; ++j) {
                tmp = 0;

                if (uni[j][flag] == 1) {
                    context.fillRect(j, i, 1, 1);
                }

                for (let k = -1; k <= 1; ++k) {
                    tmp = tmp << 1 | uni[(j + k + width) % width][flag];
                }

                uni[j][neg] = 1 & rule >> tmp;
            }

            flag = neg;
        }
    }
}
