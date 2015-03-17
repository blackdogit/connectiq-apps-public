using Toybox.WatchUi as UI;
using Toybox.Graphics as G;
using Toybox.Attention as Att;

//! This page will rotate through all tones
class VibrationPage extends BasePage {
    var items = [
        ["10% 500ms", [new Att.VibeProfile(10, 500)]],
        ["20% 500ms", [new Att.VibeProfile(20, 500)]],
        ["30% 500ms", [new Att.VibeProfile(30, 500)]],
        ["40% 500ms", [new Att.VibeProfile(40, 500)]],
        ["50% 500ms", [new Att.VibeProfile(50, 500)]],
        ["60% 500ms", [new Att.VibeProfile(60, 500)]],
        ["70% 500ms", [new Att.VibeProfile(70, 500)]],
        ["80% 500ms", [new Att.VibeProfile(80, 500)]],
        ["90% 500ms", [new Att.VibeProfile(90, 500)]],
        ["100% 500ms", [new Att.VibeProfile(100, 500)]],

        ["50% 10ms", [new Att.VibeProfile(50, 10)]],
        ["50% 20ms", [new Att.VibeProfile(50, 20)]],
        ["50% 40ms", [new Att.VibeProfile(50, 40)]],
        ["50% 80ms", [new Att.VibeProfile(50, 80)]],
        ["50% 100ms", [new Att.VibeProfile(50, 100)]],
        ["50% 200ms", [new Att.VibeProfile(50, 200)]],
        ["50% 400ms", [new Att.VibeProfile(50, 400)]],
        ["50% 1000ms", [new Att.VibeProfile(50, 1000)]],

        ["misc 7*100ms",
            [
                new Attention.VibeProfile(  25, 100 ),
                new Attention.VibeProfile(  50, 100 ),
                new Attention.VibeProfile(  75, 100 ),
                new Attention.VibeProfile( 100, 100 ),
                new Attention.VibeProfile(  75, 100 ),
                new Attention.VibeProfile(  50, 100 ),
                new Attention.VibeProfile(  25, 100 )
            ]
        ]
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