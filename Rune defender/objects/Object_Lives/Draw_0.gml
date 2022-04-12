var cx=camera_get_view_x(view_camera[1]);
var cy=camera_get_view_y(view_camera[1]);
var cw=camera_get_view_width(view_camera[1]);

draw_set_font(fnt_score);                                  
draw_set_color(c_white);
draw_text((cx+800)+(cw/2),cy+25,string(lp));

