using Toybox.WatchUi as UI;
using Toybox.Graphics as G;

//! This page will rotate through all colors
class ColorPage extends BasePage {
    var items = [
        ["WHITE", G.COLOR_WHITE, G.COLOR_BLACK],
        ["LT_GRAY", G.COLOR_LT_GRAY, G.COLOR_BLACK],
        ["DK_GRAY", G.COLOR_DK_GRAY, G.COLOR_WHITE],
        ["BLACK", G.COLOR_BLACK, G.COLOR_WHITE],
        ["YELLOW", G.COLOR_YELLOW, G.COLOR_BLACK],
        ["ORANGE", G.COLOR_ORANGE, G.COLOR_BLACK],
        ["RED", G.COLOR_RED, G.COLOR_BLACK],
        ["DK_RED", G.COLOR_DK_RED, G.COLOR_WHITE],
        ["PINK", G.COLOR_PINK, G.COLOR_BLACK],
        ["PURPLE", G.COLOR_PURPLE, G.COLOR_BLACK],
        ["GREEN", G.COLOR_GREEN, G.COLOR_BLACK],
        ["DK_GREEN", G.COLOR_DK_GREEN, G.COLOR_WHITE],
        ["BLUE", G.COLOR_BLUE, G.COLOR_BLACK],
        ["DK_BLUE", G.COLOR_DK_BLUE, G.COLOR_WHITE]
    ];

    function getName() {
        return "Colors";
    }
    function getDescription() {
        return "Cycles through all colors";
    }

    function onUpdate(dc) {
        var item = items[no];
        dc.setColor(item[2], item[1]);
        dc.clear();

        dc.drawText(dc.getWidth()/2, dc.getHeight()/2, G.FONT_MEDIUM, item[0], G.TEXT_JUSTIFY_CENTER|G.TEXT_JUSTIFY_VCENTER);
    }
}