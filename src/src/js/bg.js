function bg() {
    let canvas = document.getElementById('bg');

    if (canvas.getContext == null)
        return;

    const context = canvas.getContext('2d');

    const width  = window.innerWidth;
    const height = window.innerHeight;

    context.canvas.width   = width;
    context.canvas.height = height;

    /* init rule */
    let rule = [];

    for (let i = 0; i <= 1; ++i) {
        rule[i] = [];

        for (let j = 0; j <= 1; ++j) {
            rule[i][j] = [];

            for (let k = 0; k <= 1; ++k) {
                rule[i][j][k] = Math.floor(Math.random() * 2);
            }
        }
    }

    /* init world */
    let world = [];
    let flag = 0;

    for (let i = 0; i < width; ++i) {
        world[i] = [];

        world[i][flag] = Math.floor(Math.random() * 2);
    }

    /* run ca */
    let image = context.getImageData(0, 0, width, height);

    let cnt = 0;

    for (let i = 0; i < height; ++i) {
        for (let j = 0; j < width; ++j) {
            if (world[j][flag] == 1) {
                image.data[4 * (width * i + j) + 3] = 255;
                ++cnt;
            }

            world[j][!flag] = rule
                [world[(j - 1 + width) % width][flag]]
                [world[j][flag]]
                [world[(j + 1 + width) % width][flag]];
        }

        flag = !flag;
    }

    context.putImageData(image, 0, 0);

    if (cnt > width * height / 2) {
        context.fillStyle = "white";
    }

    context.font = "128px kiwi";
    context.textAlign = "center";
    context.fillText("404 not found", width / 2, height / 2);
}
