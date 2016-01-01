using Toybox.WatchUi as Ui;

class notesView extends Ui.View {

    var notes = [
    "hello",
    "combo",
    "something else"
    ];
    var count;
    function initialize() {
        count = 0;
        View.initialize();
    }

    //! Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    //! Called when this View is brought to the foreground. Restore
    //! the state of this View and prepare it to be shown. This includes
    //! loading resources into memory.
    function onShow() {
    }

    //! Update the view
    function onUpdate(dc) {
        var view = View.findDrawableById("NotesLabel");
        //TODO pull this from settings?
        view.setText(notes[count]);
        
        
        var status = View.findDrawableById("NotesStatus");
        status.setText("" + (count + 1) + " / " + notes.size());
        View.onUpdate(dc);
    }

    //! Called when this View is removed from the screen. Save the
    //! state of this View here. This includes freeing resources from
    //! memory.
    function onHide() {
    }
    
    function updateCount(delta) {
      count += delta;
      System.println("new count: " + count + " / " + notes.size());
      if (count == -1) {
        count = notes.size() - 1;
      } else if (count == notes.size()) {
        count = 0;
      }
      System.println("adjusted count: " + count + " / " + notes.size());
      WatchUi.requestUpdate();
    }
    
    function next() {
      updateCount(1);
    }
    
    function previous() {
      updateCount(-1);
    }
}
