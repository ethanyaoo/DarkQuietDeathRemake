function DialogueResponses(responseChoices)
{
	switch(responseChoices)
	{
		case 0:
			break;
			
		case 1:
			NewTextbox("Hello", ["2:Nice weather", "3:Where is this?"]);
			break;
			
		case 2: 
			NewTextbox(". . . ", ["0:(Leave)"]);
			break;
			
		case 3:
			NewTextbox("The entrance", ["4:Of where?", "6:Of what?"]);
			break;
			
		case 4:
			NewTextbox("Nowhere", ["0:(Leave)", "5:Can I leave?"]);
			break;
			
		case 5:
			NewTextbox("No", ["0:(Leave)"]);
			break;
			
		case 6:
			NewTextbox("The prison", ["7:Is there anyone else?", "8:What?"]);
			break;
			
		case 7:
			NewTextbox("West", ["0:(Leave)"]);
			break;
			
		case 8:
			NewTextbox("Wait your turn", ["0:(Leave)"]);
			break;
		
		default:
			break;
	}
}