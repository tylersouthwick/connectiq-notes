using Toybox.Application as App;
using Toybox.WatchUi as Ui;

class notesApp extends App.AppBase {

    var notes;
    var view;
    function initialize() {
        AppBase.initialize();
        var notesProperty = App.getApp().getProperty("Notes");
        System.println("notes: " + notesProperty);
        
        notes = new Notes(notesProperty);
        
        System.println("notes: " + notes);
    }
    
    function onSettingsChanged() {
      System.println("settings changed!");
      var notesProperty = App.getApp().getProperty("Notes");
      notes.update(notesProperty);
      view.updateCount(0);
    }

    //! onStart() is called on application start up
    function onStart() {
    }

    //! onStop() is called when your application is exiting
    function onStop() {
    }

    //! Return the initial view of your application here
    function getInitialView() {
        view = new notesView(notes);
        return [ view, new notesDelegate(view) ];
    }

}
