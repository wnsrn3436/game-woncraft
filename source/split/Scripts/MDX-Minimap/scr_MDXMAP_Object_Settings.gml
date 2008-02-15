/*************************************************************/
/* MDX - Minimap | www.midx.co.nr | (c) 2006, Midx           */
/*************************************************************/
/* Arg0: Object Index                                        */
/* Arg1: Display Shape (0=rectangle,1=circle)                */
/* Arg2: Display Colour                                      */
/* Arg3: Display Alpha                                       */
/*************************************************************/

    var OBJEX,OBJPOS;

    OBJEX = ds_grid_value_exists(global._MDXMAP_OBJLIST,0,0,0,ds_grid_height(global._MDXMAP_OBJLIST),argument0);
    
    if (OBJEX)
    {
        OBJPOS = ds_grid_value_y(global._MDXMAP_OBJLIST,0,0,0,ds_grid_height(global._MDXMAP_OBJLIST),argument0);
        ds_grid_set(global._MDXMAP_OBJLIST,1,OBJPOS,argument1);
        ds_grid_set(global._MDXMAP_OBJLIST,2,OBJPOS,argument2);
        ds_grid_set(global._MDXMAP_OBJLIST,3,OBJPOS,argument3);
    }
