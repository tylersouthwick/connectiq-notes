using Toybox.WatchUi as Ui;

class notesDelegate extends Ui.BehaviorDelegate {

    var view;
    function initialize(thatView) {
    	view = thatView;
        BehaviorDelegate.initialize();
    }

    function onKey(evt) {
      //we will pretend that the mode key is the menu key
      //onMenu isn't being triggered by any thing
      if (evt.getKey() == WatchUi.KEY_MODE) {
        return onMenu();
      } else {
        return false;
      }
    }
    
    function onMenu() {
        Ui.pushView(new Rez.Menus.MainMenu(), new notesMenuDelegate(), Ui.SLIDE_UP);
        
        return true;
    }
    
    function onNextPage() {
    	view.updateCount(1);
    	return true;
    }
    
    function onPreviousPage() {
    	view.updateCount(-1);
    	return true;
    }

}