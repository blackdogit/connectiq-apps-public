using Toybox.WatchUi as UI;
using Toybox.Graphics as G;
using Toybox.Attention as Att;

//! This page will rotate through all fonts
class FontPage extends BasePage {
    var items = [
        ["XTINY", G.FONT_XTINY, "abc 123"],
        ["TINY", G.FONT_TINY, "abc 123"],
        ["SMALL", G.FONT_SMALL, "abc 123"],
        ["MEDIUM", G.FONT_MEDIUM, "abc 123"],
        ["LARGE", G.FONT_LARGE, "abc 123"],
        ["NUMBER_MILD", G.FONT_NUMBER_MILD, "12:34:56"],
        ["NUMBER_MEDIUM", G.FONT_NUMBER_MEDIUM, "12:34:56"],
        ["NUMBER_HOT", G.FONT_NUMBER_HOT, "12:34:56"],
        ["NUMBER_THAI_HOT", G.FONT_NUMBER_THAI_HOT, "12:34:56"]
    ];

    function getName() {
        return "Fonts";
    }
    function getDescription() {
        return "Cycles through all font";
    }

    function onUpdate(dc) {
        var item = items[no];
        dc.setColor(G.COLOR_WHITE, G.COLOR_BLACK);
        dc.clear();

        dc.drawText(dc.getWidth()/2, dc.getHeight()/4, G.FONT_MEDIUM, item[0], G.TEXT_JUSTIFY_CENTER|G.TEXT_JUSTIFY_VCENTER);
        dc.drawText(dc.getWidth()/2, dc.getHeight()*.75, item[1], item[2], G.TEXT_JUSTIFY_CENTER|G.TEXT_JUSTIFY_VCENTER);
    }
}