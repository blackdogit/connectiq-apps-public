using Toybox.WatchUi as UI;
using Toybox.Graphics as G;

//! This page will rotate through all colors
class BasePage extends UI.View {
    var items = [
    ];

    function getName() {
        return "---";
    }
    function getDescription() {
        return "---";
    }

    var no = 0;

    function onLayout(dc) {
    }

    function onUpdate(dc) {
        var item = items[no];
        dc.setColor(G.COLOR_WHITE, G.COLOR_BLACK);
        dc.clear();

        dc.drawText(dc.getWidth()/2, dc.getHeight()/2, G.FONT_MEDIUM, item[0], G.TEXT_JUSTIFY_CENTER|G.TEXT_JUSTIFY_VCENTER);
    }

    function onShow() {
    }

    function onHide() {
    }

    function getBehavior() {
        return new CommonBehavior(self);
    }

    function select() {
    }
    function up() {
        no = no-1;
        if (no < 0) { no = no+items.size(); }
        select();
        UI.requestUpdate();
    }
    function down() {
        no = no+1;
        if (no >= items.size()) { no = no-items.size(); }
        select();
        UI.requestUpdate();
    }
}