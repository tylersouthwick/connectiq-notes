using Toybox.WatchUi as Ui;

class notesView extends Ui.View {

    var notes;
    
    function initialize(theNotes) {
        notes = theNotes;
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
        view.setText(notes.get());
        
        
        var status = View.findDrawableById("NotesStatus");
        status.setText("" + (notes.index()) + " / " + notes.size());
        View.onUpdate(dc);
    }

    //! Called when this View is removed from the screen. Save the
    //! state of this View here. This includes freeing resources from
    //! memory.
    function onHide() {
    }
    
    function updateCount(delta) {
      notes.updateCount(delta);
      //System.println("adjusted count: " + count + " / " + notes.size());
      WatchUi.requestUpdate();
    }
    
}
