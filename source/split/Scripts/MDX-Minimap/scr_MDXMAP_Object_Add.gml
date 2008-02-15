/*************************************************************/
/* MDX - Minimap | www.midx.co.nr | (c) 2006, Midx           */
/*************************************************************/
/* Arg0: Object Index                                        */
/* Arg1: Display Shape (0=rectangle,1=circle)                */
/* Arg2: Display Colour                                      */
/* Arg3: Display Alpha                                       */
/*************************************************************/

    var OBJEX;
    
    OBJEX = ds_grid_value_exists(global._MDXMAP_OBJLIST,0,0,0,ds_grid_height(global._MDXMAP_OBJLIST),argument0);

    if !OBJEX
    {
        ds_grid_resize(global._MDXMAP_OBJLIST,4,ds_grid_height(global._MDXMAP_OBJLIST)+1);
        ds_grid_add(global._MDXMAP_OBJLIST,0,ds_grid_height(global._MDXMAP_OBJLIST)-1,argument0);
        ds_grid_add(global._MDXMAP_OBJLIST,1,ds_grid_height(global._MDXMAP_OBJLIST)-1,argument1);
        ds_grid_add(global._MDXMAP_OBJLIST,2,ds_grid_height(global._MDXMAP_OBJLIST)-1,argument2);
        ds_grid_add(global._MDXMAP_OBJLIST,3,ds_grid_height(global._MDXMAP_OBJLIST)-1,argument3);
    }