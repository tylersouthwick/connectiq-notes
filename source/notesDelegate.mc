using Toybox.WatchUi as Ui;

class notesDelegate extends Ui.BehaviorDelegate {

    var view;
    function initialize(thatView) {
    	view = thatView;
        BehaviorDelegate.initialize();
    }

    function onMenu() {
    
    System.println("menu");
        Ui.pushView(new Rez.Menus.MainMenu(), new notesMenuDelegate(), Ui.SLIDE_UP);
        
        return true;
    }
    
    function onNextPage() {
    	view.next();
    	return true;
    }
    
    function onPreviousPage() {
    	view.previous();
    	return true;
    }

}