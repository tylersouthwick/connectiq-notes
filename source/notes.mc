class Notes {
	var notes;
	var count;
    var delim = "|";
    
	function initialize(notesString) {
		notes = notesString;
		count = 0;
	}
	
	function update(notesString) {
	    notes = notesString;
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
  		var c = 0;
  		for (var x = 0; x < notes.length(); x++) {
  			if (notes.substring(x, x+1).equals( delim) || x == notes.length() - 1) {
        		c++;
        	}
  		}
    	return c;
  	}
  
  	function get() {
		var i = 0;
		var thisCount = 0;
    	for (var x = 0; x <= notes.length(); x++) {
    		var subToCheck = notes.substring(x, x+1);
    		//System.println("checking: " + subToCheck);
  			if (subToCheck.equals(delim) || x == notes.length()) {
        	  	if (thisCount == count) {
        			var sub = notes.substring(i, x);
        	  		System.println("returning " + sub);
        	  		return sub;
        	  	} else {
        	  		i = x+1;
        	  		thisCount++;
        	  	}
        	}
  		}
  	}
  
  	function updateCount(delta) {
        count += delta;
      	//System.println("new count: " + count + " / " + notes.size());
        var size = size();
        System.println("delta: " + delta + " - size: " + size);
      	if (count < 0) {
        	count = size - 1;
      	} else if (count >= size) {
        	count = 0;
      	}
    }
      
    function index() {
    	return count + 1;
    }
}