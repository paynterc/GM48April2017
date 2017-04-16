/// Flash when hit
// scr_flash(color);
var clr=argument[0];
d3d_set_fog(true, clr, 0, 0);
draw_self();
d3d_set_fog(false, clr, 0, 0);

