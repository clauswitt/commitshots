var system = require('system');
var url = system.args[1];
var filename = system.args[2];
var width = system.args[3];
var height = system.args[4];

var page = new WebPage();
page.viewportSize = { width: width, height: height };
page.open(url, function (status) {
    window.setTimeout(function () {
            page.render(filename);
            phantom.exit();
        }, 100);    
});
