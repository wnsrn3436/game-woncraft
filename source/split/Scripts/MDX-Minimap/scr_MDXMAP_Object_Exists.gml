/*************************************************************/
/* MDX - Minimap | www.midx.co.nr | (c) 2006, Midx           */
/*************************************************************/
/* Arg0: Object Index                                        */
/*************************************************************/

    var OBJEX;

    OBJEX = ds_grid_value_exists(global._MDXMAP_OBJLIST,0,0,0,ds_grid_height(global._MDXMAP_OBJLIST),argument0);
    return OBJEX;