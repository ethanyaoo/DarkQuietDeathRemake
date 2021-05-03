function DialogueResponses(responseChoices)
{
	switch(responseChoices)
	{
		case 0:
			break;
			
		case 1:
			NewTextbox("Hello! This is A");
			break;
			
		case 2: 
			NewTextbox("Hello! This is B", ["3:Yes!", "0:No."]);
			break;
			
		case 3:
			NewTextbox("Bye bye");
			break;
		
		default:
			break;
	}
}