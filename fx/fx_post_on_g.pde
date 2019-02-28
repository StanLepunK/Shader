/**
Work around filter g it( little hard,
so the option to copy PGraphics g is used, but not sure that's be good with huge rendering sinze
*/
void setup_fx_post_on_g() {
	select_input();
}

void draw_fx_post_on_g(PImage img_1, PImage img_2, PImage pattern_1, PImage pattern_2) {
	set_movie(input());
	set_img(input());
	filter_g(img_1,img_2,pattern_1,pattern_2);
}


PImage temp ;
float angle_g;

void filter_g(PImage img_1, PImage img_2, PImage pattern_1, PImage pattern_2) {
	/*
	background_rope(255,0,0,50);
	fill(0,255,255);
	noStroke();
	rectMode(CENTER);
	angle_g += .01;
	pushMatrix();
	translate(mouseX,mouseY);
	rotate(angle_g);
	rect(0,0,width,height/4);
	popMatrix();
	*/
	
	// if(!window_change_is()) fx_mix_order_media(img_1,img_2,mode_mix);
	// if(!window_change_is()) fx_template(img_1);
	
	
	if((movie_input != null || img_input != null) && !window_change_is()) {
		if(img_input != null) {
			image(img_input);
		} else if(movie_input != null) {
			image(movie_input);
		}
		
		//select_filter(FX_HALFTONE_LINE);
		// select_filter(FX_DITHER,FX_HALFTONE_LINE);
		//select_filter(FX_HALFTONE_DOT);

		//select_filter(g,movie_input,null,FX_HALFTONE_DOT,FX_SCREEN);
		// select_filter(g,null,null,FX_SPLIT_RGB);
		//select_filter(g,null,null,FX_SPLIT_RGB);
		// println(get_fx(0).get_name());
		// select_filter(g,null,null,get_fx(0));
		
		// println(get_fx(3).get_name());
		
		
		// select_fx_post(g,null,null,get_fx(fx_manager,set_blur_gaussian));
		// select_fx_post(g,null,null,get_fx(fx_manager,set_blur_circular));
		// select_fx_post(g,null,null,get_fx(fx_manager,set_blur_radial));

		// select_fx_post(g,null,null,get_fx(fx_manager,set_colour_change_a));
		// select_fx_post(g,null,null,get_fx(fx_manager,set_colour_change_b));
		
		select_fx_post(g,g,null,get_fx(fx_manager,set_dither));
		// select_fx_post(g,null,null,get_fx(fx_manager,set_grain));
		// select_fx_post(g,null,null,get_fx(fx_manager,set_grain_scatter));

		// select_fx_post(g,null,null,get_fx(fx_manager,set_halftone_dot));
		// select_fx_post(g,null,null,get_fx(fx_manager,set_halftone_line));
		//select_fx_post(g,null,null,get_fx(fx_manager,set_halftone_multi));


		// select_fx_post(g,null,null,get_fx(fx_manager,set_level));

		// select_fx_post(g,g,null,get_fx(fx_manager,set_mix));

		// select_fx_post(g,null,null,get_fx(fx_manager,set_pixel));

		// select_fx_post(g,null,null,get_fx(fx_manager,set_reac_diff));
		// select_fx_post(g,null,null,get_fx(fx_manager,set_split));

		// select_fx_post(g,null,null,get_fx(fx_manager,set_warp_proc));
    
    // select_fx_post(g,img_1,img_1,get_fx(fx_manager,set_warp_tex)); 
		// select_fx_post(g,noise_nb,noise_nb,get_fx(fx_manager,set_warp_tex)); 
		//select_fx_post(g,pattern_1,pattern_2,get_fx(fx_manager,set_warp_tex_a)); 
		//select_fx_post(g,g,null,get_fx(fx_manager,set_warp_tex_b)); 
		//select_fx_post(g,pattern_1,null,get_fx(fx_manager,set_watercolor)); 
		
		// select_fx_post(g,g,get_fx(fx_manager,set_scale));
	
		//select_fx_post(g,g,FX_HALFTONE_DOT,FX_WARP_PROC,FX_SPLIT_RGB);


	} 
	if(img_input != null && !window_change_is()) {
		// fx(img_input,img_input, mode_mix);
	}

}


/*
void select_filter(int... type) {
	select_filter(g,g,type);
}
*/




/**
FILTER SELECTOR
v 0.0.3
2019-2019
*/
/*
void select_filter(PImage main, PImage layer_a, PImage layer_b, int... type)  {
	FX [] fx = new FX[type.length];
	for(int i = 0 ; i < fx.length ; i++) {
		fx[0] = new FX(null,type[i]);
	}
	if(fx != null) select_filter(main,layer_a,layer_b,fx);
}
*/
















