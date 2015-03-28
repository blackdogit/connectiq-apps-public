using Toybox.WatchUi as UI;
using Toybox.Graphics as G;
using Toybox.Attention as Att;

//! This page will rotate through all tones
class TonePage extends BasePage {
    var items = [
        ["ALARM", Att.TONE_ALARM],
        ["START", Att.TONE_START],
        ["LAP", Att.TONE_LAP],
        ["MSG", Att.TONE_MSG],
        ["STOP", Att.TONE_STOP],
        ["FAILURE", Att.TONE_FAILURE],
        ["LOW_BATTERY", Att.TONE_LOW_BATTERY],
        ["ERROR", Att.TONE_ERROR],
        ["ALERT_LO", Att.TONE_ALERT_LO],
        ["ALERT_HI", Att.TONE_ALERT_HI],
        ["POWER", Att.TONE_POWER],
        ["INTERVAL_ALERT", Att.TONE_INTERVAL_ALERT],
        ["LOUD_BEEP", Att.TONE_LOUD_BEEP],
        ["SUCCESS", Att.TONE_SUCCESS],
        ["KEY", Att.TONE_KEY],
        ["DISTANCE_ALERT", Att.TONE_DISTANCE_ALERT],
        ["RESET", Att.TONE_RESET],
        ["TIME_ALERT", Att.TONE_TIME_ALERT],
        ["CANARY", Att.TONE_CANARY]
    ];

    function getName() {
        return "Tones";
    }
    function getDescription() {
        return "Cycles through all tones";
    }

    var enabled = true;
    function initialize() {
        enabled = (Att has :playTone);
    }
    function isEnabled() {
        return enabled;
    }

    function select() {
        var item = items[no];
        Att.playTone(item[1]);
    }
}