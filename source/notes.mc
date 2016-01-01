class Notes {
	var notes;
	var count;
  
	function initialize(notesString) {
		notes = ["hello", "world", "from", "notes"];
		count = 0;
	}
      
	function splitString(s, token) {
		var a = [];
		var i = 0;
		for (var x = 0; x < s.length(); x++) {
    		if (s.substring(x, x+1) == token || x == s.length() - 1) {
        		var sub = s.substring(i, x -1);
        	  	System.println("trying to add " + sub + " to " + a);
        	  	a += [sub];
        	  	i = x+1;
        	}
        }
        return a;
    }
  
  	function getNotes() {
    	return notes;
  	}
  
  	function size() {
    	return notes.size();
  	}
  
  	function get() {
    	return notes[index()];
  	}
  
  	function updateCount(delta) {
        count += delta;
      	//System.println("new count: " + count + " / " + notes.size());
      	if (count == -1) {
        	count = notes.size() - 1;
      	} else if (count == notes.size()) {
        	count = 0;
      	}
    }
      
    function index() {
    	return count;
    }
}