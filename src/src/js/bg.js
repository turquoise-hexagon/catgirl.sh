function draw() {
    let canvas  = document.getElementById('bg');

    if (canvas.getContext != null) {
        const rule = Math.floor(Math.random() * 256);

        const context = canvas.getContext('2d');

        const width  = window.innerWidth;
        const height = window.innerHeight;

        context.canvas.width  = width;
        context.canvas.height = height;

        let uni = [];
        let flag = 0;

        for (let i = 0; i < width; ++i) {
            uni[i] = [];

            uni[i][flag] = Math.floor(Math.random() * 2);
        }

        let tmp;
        let cnt = 0;

        for (let i = 0; i < height; ++i) {
            for (let j = 0; j < width; ++j) {
                tmp = 0;

                if (uni[j][flag] == 1) {
                    context.fillRect(j, i, 1, 1);
                    ++cnt;
                }

                for (let k = -1; k <= 1; ++k) {
                    tmp = tmp << 1 | uni[(j + k + width) % width][flag];
                }

                uni[j][!flag] = 1 & rule >> tmp;
            }

            flag = !flag;
        }

        if (cnt > width * height / 2) {
            context.fillStyle = "white";
        }

        context.font = "128px kiwi";
        context.textAlign = "center";
        context.fillText("404 not found", width / 2, height / 2);
    }
}
