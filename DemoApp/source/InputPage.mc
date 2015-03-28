using Toybox.System as Sys;
using Toybox.WatchUi as UI;
using Toybox.Graphics as G;


//! This page will rotate through all colors
class InputPage extends UI.View {

    function getName() {
        return "Input";
    }
    function getDescription() {
        return "Show input interaction";
    }

    function isEnabled() {
        return true;
    }

    var txt = "Press key or screen\nPress Back twice to exit";

    function onUpdate(dc) {
        dc.setColor(G.COLOR_WHITE, G.COLOR_BLACK);
        dc.clear();

        dc.drawText(dc.getWidth()/2, dc.getHeight()/2, G.FONT_MEDIUM, txt, G.TEXT_JUSTIFY_CENTER|G.TEXT_JUSTIFY_VCENTER);
    }

    function msg(m) {
        txt = m;
        UI.requestUpdate();
    }

    function getBehavior() {
        return new ButtonPageBehavior(self);
    }
}

class ButtonPageBehavior extends UI.InputDelegate {
    var keys = [
        ["RIGHT", KEY_RIGHT],
        ["MENU", KEY_MENU],
        ["UP_LEFT", KEY_UP_LEFT],
        ["DOWN_LEFT", KEY_DOWN_LEFT],
        ["ENTER", KEY_ENTER],
        ["UP_RIGHT", KEY_UP_RIGHT],
        ["DOWN", KEY_DOWN],
        ["DOWN_RIGHT", KEY_DOWN_RIGHT],
        ["ZOUT", KEY_ZOUT],
        ["FIND", KEY_FIND],
        ["LEFT", KEY_LEFT],
        ["ESC", KEY_ESC],
        ["ZIN", KEY_ZIN],
        ["UP", KEY_UP],
        ["LIGHT", KEY_LIGHT],
        ["POWER", KEY_POWER]
    ];

    var myPage;
    function initialize(page) {
        myPage = page;
    }

    var backIsExit = false;
    function onKey(evt) {
        var key = evt.getKey();
        if (backIsExit && key == UI.KEY_ESC) { return false; }

        backIsExit = key == UI.KEY_ESC;

        for (var i = 0; i < keys.size(); i++) {
            if (keys[i][1] == key) {
                myPage.msg(keys[i][0]);
                return true;
            }
        }
        myPage.msg("Unknown: "+key);
        return true;
    }
}