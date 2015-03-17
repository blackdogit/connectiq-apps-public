using Toybox.Application as App;
using Toybox.WatchUi as UI;

class DemoAppApp extends App.AppBase {
    function onStart() {
    }

    function onStop() {
    }

    function getInitialView() {
        var view = new TopView();
        return [view, view.getBehavior() ];
    }
}