/// @desc Spacebar to login

// Make it so this can only run once...
if (can_connect) {
	http_get(HTTP_BASE + "login");
	can_connect = false;
	/// ### need to add checking if it fails stil....
}