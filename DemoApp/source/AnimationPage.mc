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

    function onUpdate(dc) {
        var item = items[no];
        dc.setColor(G.COLOR_BLACK, G.COLOR_WHITE);
        dc.clear();

        dc.drawText(dc.getWidth()/2, dc.getHeight()/2, G.FONT_MEDIUM, item[0], G.TEXT_JUSTIFY_CENTER|G.TEXT_JUSTIFY_VCENTER);
    }

    function select() {
        var item = items[no];
        var d = new D({:identifier => "id", :locX => 0, :locY => 10});
        Sys.println("animate: "+item[1]);
        UI.animate(d, :x, item[1], 10, 200, 10, null);
    }
}

class D extends UI.Drawable {
    function draw(dc) {
        Sys.println("draw: locX="+locX);
        dc.drawText(locX, dc.getHeight()/4, G.FONT_SMALL, "XXX", G.TEXT_JUSTIFY_CENTER);
    }
}