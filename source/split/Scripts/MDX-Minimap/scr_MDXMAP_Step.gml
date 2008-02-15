/*************************************************************/
/* MDX - Minimap | www.midx.co.nr | (c) 2006, Midx           */
/*************************************************************/

    if (global._MDXMAP_VPCLICKMOVE)
    {
        var VPPX,VPPY;
        VPPX = max(0,  scr_MDXMAP_Get_MouseX()-view_wview/2); VPPX = min(VPPX, room_width-view_wview);
        VPPY = max(0,  scr_MDXMAP_Get_MouseY()-view_hview/2); VPPY = min(VPPY, room_height-view_hview);
    
        if (mouse_x>view_xview[global._MDXMAP_VPVIEW]+global._MDXMAP_XPOS && mouse_x<view_xview[global._MDXMAP_VPVIEW]+global._MDXMAP_XPOS+global._MDXMAP_WSIZE && mouse_y>view_yview[global._MDXMAP_VPVIEW]+global._MDXMAP_YPOS && mouse_y<view_yview[global._MDXMAP_VPVIEW]+global._MDXMAP_YPOS+global._MDXMAP_HSIZE)&&mouse_check_button(mb_left)
        {           
            view_xview[0] = VPPX;
            view_yview[0] = VPPY;
            global._MDXMAP_MOVING = true;
        }
        else
        {
            global._MDXMAP_MOVING = false;
        }

    }