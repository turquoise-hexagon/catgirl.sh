function draw() {
    var canvas  = document.getElementById('r110');

    if (canvas.getContext) {
        const rule = Math.floor(Math.random() * 256);

        var context = canvas.getContext('2d');

        var width  = window.innerWidth;
        var height = window.innerHeight;

        context.canvas.width  = width;
        context.canvas.height = height;

        var uni = [];
        var flag = 0;

        for (let i = 0; i < width; ++i) {
            uni[i] = [];

            uni[i][0] = Math.floor(Math.random() * 2);
        }

        var tmp;

        for (let i = 0; i < height; ++i) {
            for (let j = 0; j < width; ++j) {
                tmp = 0;

                if (uni[j][flag] == 1) {
                    context.fillRect(j, i, 1, 1);
                }

                for (let k = -1; k <= 1; ++k) {
                    tmp = tmp << 1 | uni[(j + k + width) % width][flag];
                }

                uni[j][!flag] = 1 & rule >> tmp;
            }

            flag = !flag;
        }

        context.font = "128px kiwi";
        context.textAlign = "center";
        context.fillText("404 not found", width / 2, height / 2);
    }
}
