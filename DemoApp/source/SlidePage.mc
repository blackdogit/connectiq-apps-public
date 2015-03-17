using Toybox.WatchUi as UI;
using Toybox.Graphics as G;

//! This page will rotate through all slide actions
class SlidePage extends BasePage {
    var items = [
        ["DOWN", UI.SLIDE_DOWN, G.COLOR_BLUE],
        ["UP", UI.SLIDE_UP, G.COLOR_GREEN],
        ["LEFT", UI.SLIDE_LEFT, G.COLOR_RED],
        ["RIGHT", UI.SLIDE_RIGHT, G.COLOR_PINK],
        ["IMMEDIATE", UI.SLIDE_IMMEDIATE, G.COLOR_BLACK]
    ];

    function getName() {
        return "Slide";
    }
    function getDescription() {
        return "Cycles through all slide actions";
    }

    function onUpdate(dc) {
        var item = items[no];
        dc.setColor(G.COLOR_WHITE, item[2]);
        dc.clear();

        dc.drawText(dc.getWidth()/2, dc.getHeight()/2, G.FONT_MEDIUM, item[0], G.TEXT_JUSTIFY_CENTER|G.TEXT_JUSTIFY_VCENTER);
    }

    function select() {
        var item = items[no];
        UI.switchToView(self, getBehavior(), item[1]);
    }
}