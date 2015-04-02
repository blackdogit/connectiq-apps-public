using Toybox.WatchUi as UI;
using Toybox.Graphics as G;
using Toybox.System as Sys;

//! This page will rotate through all types of animation
class AnimationPage extends BasePage {
    var items = [
        ["LINEAR", UI.ANIM_TYPE_LINEAR],
        ["EASE_IN", UI.ANIM_TYPE_EASE_IN],
        ["EASE_IN_OUT", UI.ANIM_TYPE_EASE_IN_OUT],
        ["EASE_OUT", UI.ANIM_TYPE_EASE_OUT]
    ];

    function getName() {
        return "Animations";
    }
    function getDescription() {
        return "Cycles through all animations";
    }

    var d = null;

    function onUpdate(dc) {
        var item = items[no];
        dc.setColor(G.COLOR_BLACK, G.COLOR_WHITE);
        dc.clear();

        dc.drawText(dc.getWidth()/2, dc.getHeight()/2, G.FONT_MEDIUM, item[0], G.TEXT_JUSTIFY_CENTER|G.TEXT_JUSTIFY_VCENTER);
        if (d != null) {
            dc.drawText(dc.getWidth()/2, 0.75*dc.getHeight(), G.FONT_SMALL, ""+d.locX, G.TEXT_JUSTIFY_CENTER|G.TEXT_JUSTIFY_VCENTER);
        }
    }

    function select() {
        var item = items[no];
        d = new UI.Drawable({:locX => 0});
        Sys.println("animate: "+item[1]);
        UI.animate(d, :locX, item[1], 0, 100, 5.0, method(:onDone));
    }

    function onDone() {
        d = null;
    }
}