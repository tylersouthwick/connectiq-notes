using Toybox.WatchUi as Ui;

class notesDelegate extends Ui.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        Ui.pushView(new Rez.Menus.MainMenu(), new notesMenuDelegate(), Ui.SLIDE_UP);
        return true;
    }

}