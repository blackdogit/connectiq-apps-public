using Toybox.WatchUi as UI;
using Toybox.Graphics as G;

class CommonBehavior extends UI.InputDelegate {
    var myPage;
    function initialize(page) {
        myPage = page;
    }
    function onKey(evt) {
        var key = evt.getKey();
        if (key == UI.KEY_ENTER) {
            if (myPage has :select) {
                myPage.select();
                return true;
            }
        } else if (key == UI.KEY_UP) {
            myPage.up();
            return true;
        } else if (key == UI.KEY_DOWN) {
            myPage.down();
            return true;
        }

        return false;
    }
}