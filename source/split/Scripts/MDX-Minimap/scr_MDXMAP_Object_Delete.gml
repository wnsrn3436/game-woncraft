/*************************************************************/
/* MDX - Minimap | www.midx.co.nr | (c) 2006, Midx           */
/*************************************************************/
/* Arg0: Object Index                                        */
/*************************************************************/

    var OBJPOS,OBJEX;

    OBJEX = ds_grid_value_exists(global._MDXMAP_OBJLIST,0,0,0,ds_grid_height(global._MDXMAP_OBJLIST),argument0);
    
    if (OBJEX)
        {
            OBJPOS = ds_grid_value_y(global._MDXMAP_OBJLIST,0,0,0,ds_grid_height(global._MDXMAP_OBJLIST),argument0);
            ds_grid_set(global._MDXMAP_OBJLIST,0,OBJPOS,-1);
            ds_grid_set(global._MDXMAP_OBJLIST,1,OBJPOS,-1);
            ds_grid_set(global._MDXMAP_OBJLIST,2,OBJPOS,-1);
            ds_grid_set(global._MDXMAP_OBJLIST,3,OBJPOS,-1);
            ds_grid_resize(global._MDXMAP_OBJLIST,ds_grid_width(global._MDXMAP_OBJLIST), ds_grid_height(global._MDXMAP_OBJLIST)-1);
        }