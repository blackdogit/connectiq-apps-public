using Toybox.WatchUi as UI;
using Toybox.Graphics as G;

class TopView extends UI.View {

    // TODO: Can be optimized later to only contain list of classes along with name, description and image.
    var items = [new ColorPage(), new FontPage(), new SlidePage(), new TonePage(), new VibrationPage(), new InputPage()];

    function getName() {
        return "Pages";
    }

    var no = 0;

    function onLayout(dc) {
    }

    function onUpdate(dc) {
        var item = items[no];
        dc.setColor(G.COLOR_WHITE, G.COLOR_BLACK);
        dc.clear();

        dc.drawText(dc.getWidth()/2, dc.getHeight()/2, G.FONT_MEDIUM, item.getName(), G.TEXT_JUSTIFY_CENTER|G.TEXT_JUSTIFY_VCENTER);
    }

    function onShow() {
    }

    function onHide() {
    }

    function getBehavior() {
        return new CommonBehavior(self);
    }

    function select() {
        var item = items[no];
        UI.pushView(item, item.getBehavior(), UI.SLIDE_UP);
    }
    function up() {
        no = no-1;
        if (no < 0) { no = no+items.size(); }
        UI.requestUpdate();
    }
    function down() {
        no = no+1;
        if (no >= items.size()) { no = no-items.size(); }
        UI.requestUpdate();
    }
}
