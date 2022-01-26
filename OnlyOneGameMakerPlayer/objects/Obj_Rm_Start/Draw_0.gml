/// @description Debug Start Menu
/// Obj_Rm_Start : Draw
var original_color = draw_get_color();


// Resets y to start after being changed from draw button funciton
y = ystart;

// Draw Button Function
var draw_but = function(text="button",on_click=function(){}) {
	draw_set_color(c_white);
	if point_in_rectangle(mouse_x, mouse_y, x, y, x+300, y+24) {
		if mouse_check_button_pressed(mb_left)
			on_click();
		draw_set_color(c_red);
	}
	draw_text(x, y, text);
	y += 32;
}

// Make button for each room for testing
var i = 0; 
while(room_exists(i)) {
	goto = i;
	draw_but(room_get_name(goto), function(){
		room_goto(goto);
	});
	i++;
}

// Quit Game Button
draw_but("Quit", function() {
	game_end();
});
	
// return to orginal color after changing it for text
draw_set_color(original_color);
