HomeController = {
        index: (req, res) -> res.view()
        guestbook: (req, res) -> 
        	# Declare an array of guestbook items ( 9 items )
        	# TODO -- Pull these data from repository / REST service
        	current_time = "30/01/2014 03:05 AM"
        	guests =  [
                {name: "Tukul", message: "Kembali ke lap-top!", timestamp: current_time},
                {name: "Raiden", message: "Dead On!", timestamp: current_time},
                {name: "LQ-84i", message: "Freedom..is not a choice..", timestamp: current_time},
                {name: "Mistral", message: "Je t'aime... de tout mon coeur.", timestamp: current_time},
                {name: "Monsoon", message: "Wind blows, rain falls, and the strong prey upon the weak.", timestamp: current_time},
                {name: "Sam", message: "We've both heard enough speeches about higher causes by now. History will decide who's right. End of story.", timestamp: current_time},
                {name: "Steven", message: "Every man will be free to fight his own wars", timestamp: current_time},
                {name: "Solid Snake", message: " Sounds like Stockholm Syndrome to me.", timestamp: current_time},
                {name: "Naomi", message: "Well, if you come back in one piece, maybe I'll let you do a strip search on me", timestamp: current_time}
            ]
        	res.view( { guestbook_items : guests } )
    }

module.exports = HomeController