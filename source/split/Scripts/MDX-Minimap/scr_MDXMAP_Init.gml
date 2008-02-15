/*************************************************************/
/* MDX - Minimap | www.midx.co.nr | (c) 2006, Midx           */
/*************************************************************/
/* Arg0: X                                                   */
/* Arg1: Y                                                   */
/* Arg2: Width                                               */
/* Arg3: Height
/*************************************************************/

    global._MDXMAP_XPOS = argument0;
    global._MDXMAP_YPOS = argument1;
    global._MDXMAP_WSIZE = argument2;
    global._MDXMAP_HSIZE = argument3;
    
    global._MDXMAP_BGCOL = c_black;
    global._MDXMAP_BGALP = 1;
    global._MDXMAP_BGBORDERCOL = c_white;
    global._MDXMAP_BGBORDERALP = 1;
    
    global._MDXMAP_VPBGCOL = c_black;
    global._MDXMAP_VPBGALP = 0;
    global._MDXMAP_VPBORDERCOL = c_white;
    global._MDXMAP_VPBORDERALP = 1;
    
    global._MDXMAP_VPSHOW = true;
    global._MDXMAP_VPVIEW = 0;
    global._MDXMAP_VPCLICKMOVE = true;
    global._MDXMAP_MAPSTICK = true;
    
    global._MDXMAP_OBJLIST = ds_grid_create(4,0);
    global._MDXMAP_MOVING = false;
