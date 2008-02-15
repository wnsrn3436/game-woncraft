/*************************************************************/
/* MDX - Minimap | www.midx.co.nr | (c) 2006, Midx           */
/*************************************************************/

    var TEMPCOL,TEMPALPHA,OBJ,OBJSHAPE,OBJCOL,OBJALP;

    TEMPCOL = draw_get_color();
    TEMPALPHA = draw_get_alpha();
    
    draw_set_color(global._MDXMAP_BGCOL);
    draw_set_alpha(global._MDXMAP_BGALP);
    if (global._MDXMAP_MAPSTICK)
    {
        draw_rectangle(view_xview[global._MDXMAP_VPVIEW]+global._MDXMAP_XPOS, 
        view_yview[global._MDXMAP_VPVIEW]+global._MDXMAP_YPOS,
        view_xview[global._MDXMAP_VPVIEW]+global._MDXMAP_XPOS+global._MDXMAP_WSIZE,
        view_yview[global._MDXMAP_VPVIEW]+global._MDXMAP_YPOS+global._MDXMAP_HSIZE,
        false);
        
        for (i=0;i<ds_grid_height(global._MDXMAP_OBJLIST);i+=1)
        {
            draw_set_color(ds_grid_get(global._MDXMAP_OBJLIST,2,i));
            draw_set_alpha(ds_grid_get(global._MDXMAP_OBJLIST,3,i));
            OBJ = ds_grid_get(global._MDXMAP_OBJLIST,0,i);
            OBJSHAPE = ds_grid_get(global._MDXMAP_OBJLIST,1,i);
            
            if (OBJSHAPE=0)
            {
                with (OBJ)
                {
                    if x>room_width-room_width && x<room_width && y > room_height-room_height && y < room_height
                    {
                        draw_rectangle(view_xview[global._MDXMAP_VPVIEW]+global._MDXMAP_XPOS+(x/(room_width/global._MDXMAP_WSIZE)),
                        view_yview[global._MDXMAP_VPVIEW]+global._MDXMAP_YPOS+(y/(room_height/global._MDXMAP_HSIZE)), 
                        view_xview[global._MDXMAP_VPVIEW]+global._MDXMAP_XPOS+(x/(room_width/global._MDXMAP_WSIZE)+floor(sprite_width/(room_width/global._MDXMAP_WSIZE))), 
                        view_yview[global._MDXMAP_VPVIEW]+global._MDXMAP_YPOS+(y/(room_height/global._MDXMAP_HSIZE)+floor(sprite_height/(room_height/global._MDXMAP_HSIZE))),
                        false);
                    }
                }
            }
            
             if (OBJSHAPE=1)
            {
                with (OBJ)
                {
                    if x>room_width-room_width && x<room_width && y > room_height-room_height && y < room_height
                    {
                        draw_ellipse(view_xview[global._MDXMAP_VPVIEW]+global._MDXMAP_XPOS+(x/(room_width/global._MDXMAP_WSIZE)),
                        view_yview[global._MDXMAP_VPVIEW]+global._MDXMAP_YPOS+(y/(room_height/global._MDXMAP_HSIZE)),
                        view_xview[global._MDXMAP_VPVIEW]+global._MDXMAP_XPOS+(x/(room_width/global._MDXMAP_WSIZE)+floor(sprite_width/(room_width/global._MDXMAP_WSIZE))),
                        view_yview[global._MDXMAP_VPVIEW]+global._MDXMAP_YPOS+(y/(room_height/global._MDXMAP_HSIZE)+floor(sprite_height/(room_height/global._MDXMAP_HSIZE))),
                        false);
                    }
                }
            }
            
        }
        
        if (global._MDXMAP_VPSHOW)
        {
            draw_set_color(global._MDXMAP_VPBGCOL);
            draw_set_alpha(global._MDXMAP_VPBGALP);
        
            var VPX,VPY,VPW,VPH;
            VPX=view_xview[global._MDXMAP_VPVIEW]+global._MDXMAP_XPOS+(view_xview[global._MDXMAP_VPVIEW]/(room_width/global._MDXMAP_WSIZE))
            VPY=view_yview[global._MDXMAP_VPVIEW]+global._MDXMAP_YPOS+(view_yview[global._MDXMAP_VPVIEW]/(room_height/global._MDXMAP_HSIZE))
            VPW = VPX + floor(view_wview[global._MDXMAP_VPVIEW]/(room_width/global._MDXMAP_WSIZE))
            VPH = VPY + floor(view_hview[global._MDXMAP_VPVIEW]/(room_height/global._MDXMAP_HSIZE))

            draw_rectangle(VPX,VPY,VPW,VPH,false);
        
            draw_set_color(global._MDXMAP_VPBORDERCOL);
            draw_set_alpha(global._MDXMAP_VPBORDERALP);
        
            draw_rectangle(VPX,VPY,VPW,VPH,true);
        }
        draw_set_color(global._MDXMAP_BGBORDERCOL);
        draw_set_alpha(global._MDXMAP_BGBORDERALP);
    
        draw_rectangle(view_xview[global._MDXMAP_VPVIEW]+global._MDXMAP_XPOS, 
        view_yview[global._MDXMAP_VPVIEW]+global._MDXMAP_YPOS,
        view_xview[global._MDXMAP_VPVIEW]+global._MDXMAP_XPOS+global._MDXMAP_WSIZE,
        view_yview[global._MDXMAP_VPVIEW]+global._MDXMAP_YPOS+global._MDXMAP_HSIZE,
        true);



    }
    else
    {
        draw_rectangle(global._MDXMAP_XPOS, 
        global._MDXMAP_YPOS,
        global._MDXMAP_XPOS+global._MDXMAP_WSIZE,
        global._MDXMAP_YPOS+global._MDXMAP_HSIZE,
        false);
        
        for (i=0;i<ds_grid_height(global._MDXMAP_OBJLIST);i+=1)
        {
            draw_set_color(ds_grid_get(global._MDXMAP_OBJLIST,2,i));
            draw_set_alpha(ds_grid_get(global._MDXMAP_OBJLIST,3,i));
            OBJ = ds_grid_get(global._MDXMAP_OBJLIST,0,i);
            OBJSHAPE = ds_grid_get(global._MDXMAP_OBJLIST,1,i);
            
            if (OBJSHAPE=0)
            {
                with (OBJ)
                {
                    if x>room_width-room_width && x<room_width && y > room_height-room_height && y < room_height
                    {
                        draw_rectangle(global._MDXMAP_XPOS+(x/(room_width/global._MDXMAP_WSIZE)),
                        global._MDXMAP_YPOS+(y/(room_height/global._MDXMAP_HSIZE)), 
                        global._MDXMAP_XPOS+(x/(room_width/global._MDXMAP_WSIZE)+floor(sprite_width/(room_width/global._MDXMAP_WSIZE))), 
                        global._MDXMAP_YPOS+(y/(room_height/global._MDXMAP_HSIZE)+floor(sprite_height/(room_height/global._MDXMAP_HSIZE))),
                        false);
                    }
                }
            }
            
             if (OBJSHAPE=1)
            {
                with (OBJ)
                {
                    if x>room_width-room_width && x<room_width && y > room_height-room_height && y < room_height
                    {
                        draw_ellipse(global._MDXMAP_XPOS+(x/(room_width/global._MDXMAP_WSIZE)),
                        global._MDXMAP_YPOS+(y/(room_height/global._MDXMAP_HSIZE)),
                        global._MDXMAP_XPOS+(x/(room_width/global._MDXMAP_WSIZE)+floor(sprite_width/(room_width/global._MDXMAP_WSIZE))),
                        global._MDXMAP_YPOS+(y/(room_height/global._MDXMAP_HSIZE)+floor(sprite_height/(room_height/global._MDXMAP_HSIZE))),
                        false);
                    }
                }
            }
            
        }
        
        if (global._MDXMAP_VPSHOW)
        {
            draw_set_color(global._MDXMAP_VPBGCOL);
            draw_set_alpha(global._MDXMAP_VPBGALP);
        
            var VPX,VPY,VPW,VPH;
            VPX=global._MDXMAP_XPOS+(view_xview[global._MDXMAP_VPVIEW]/(room_width/global._MDXMAP_WSIZE))
            VPY=global._MDXMAP_YPOS+(view_yview[global._MDXMAP_VPVIEW]/(room_height/global._MDXMAP_HSIZE))
            VPW = VPX + floor(view_wview[global._MDXMAP_VPVIEW]/(room_width/global._MDXMAP_WSIZE))
            VPH = VPY + floor(view_hview[global._MDXMAP_VPVIEW]/(room_height/global._MDXMAP_HSIZE))

            draw_rectangle(VPX,VPY,VPW,VPH,false);
        
            draw_set_color(global._MDXMAP_VPBORDERCOL);
            draw_set_alpha(global._MDXMAP_VPBORDERALP);
        
            draw_rectangle(VPX,VPY,VPW,VPH,true);
        }
        draw_set_color(global._MDXMAP_BGBORDERCOL);
        draw_set_alpha(global._MDXMAP_BGBORDERALP);
    
        draw_rectangle(global._MDXMAP_XPOS, 
        global._MDXMAP_YPOS,
        global._MDXMAP_XPOS+global._MDXMAP_WSIZE,
        global._MDXMAP_YPOS+global._MDXMAP_HSIZE,
        true);



    }
    
    
    draw_set_color(TEMPCOL);
    draw_set_alpha(TEMPALPHA);