//Made by MeemawHustlin for Insaniquarium Deluxe

state("popcapgame1")
{
	int isLoadingScreen : "popcapgame1.exe", 0x001E8F28, 0x7B0, 0x9C0;
}

init
{
	timer.IsGameTimePaused = true;
	vars.isLoading = true;
}

exit
{
	timer.IsGameTimePaused = true;
}

isLoading
{
	if(timer.IsGameTimePaused) {return current.isLoadingScreen != 2;}
	else {return false;}
}