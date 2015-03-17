using Toybox.WatchUi as UI;
using Toybox.Graphics as G;
using Toybox.Attention as Att;

//! This page will rotate through all tones
class VibrationPage extends BasePage {
    var items = [
        ["10%", [new Att.VibeProfile(10, 500)]],
        ["20%", [new Att.VibeProfile(20, 500)]],
        ["30%", [new Att.VibeProfile(30, 500)]],
        ["40%", [new Att.VibeProfile(40, 500)]],
        ["50%", [new Att.VibeProfile(50, 500)]],
        ["60%", [new Att.VibeProfile(60, 500)]],
        ["70%", [new Att.VibeProfile(70, 500)]],
        ["80%", [new Att.VibeProfile(80, 500)]],
        ["90%", [new Att.VibeProfile(90, 500)]],
        ["100%", [new Att.VibeProfile(100, 500)]]
    ];

    function getName() {
        return "Vibration";
    }
    function getDescription() {
        return "Cycles through some vibration patterns";
    }

    function select() {
        var item = items[no];
        Att.vibrate(item[1]);
    }
}