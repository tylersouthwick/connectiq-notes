using Toybox.Application as App;
using Toybox.WatchUi as Ui;

class notesApp extends App.AppBase {

    var notes;
    function initialize() {
        AppBase.initialize();
        var notesProperty = App.getApp().getProperty("Notes");
        System.println("notes: " + notesProperty);
        
        notes = new Notes(notesProperty);
        
        System.println("notes: " + notes);
    }

    //! onStart() is called on application start up
    function onStart() {
    }

    //! onStop() is called when your application is exiting
    function onStop() {
    }

    //! Return the initial view of your application here
    function getInitialView() {
    var view = new notesView(notes);
        return [ view, new notesDelegate(view) ];
    }

}
