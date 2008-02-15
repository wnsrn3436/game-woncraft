/*************************************************************/
/* MDX - Minimap | www.midx.co.nr | (c) 2006, Midx           */
/*************************************************************/
/* Arg0: Map Background Colour                               */
/* Arg1: Map Background Alpha                                */
/* Arg2: Map Border Colour                                   */
/* Arg3: Map Border Alpha                                    */
/* Arg4: ViewPort Background Colour                          */
/* Arg5: ViewPort Background Alpha                           */
/* Arg6: ViewPort Border Colour                              */
/* Arg7: ViewPort Border Alpha                               */
/* Arg8: Show ViewPort ? (true or false)                     */
/* Arg9: ViewPort number (Default =  0)                      */
/* Arg10: Move ViewPort when clicking on map ? (true or false)/
/* Arg11: Move Map with the view ? (true or false)           */
/*************************************************************/

    global._MDXMAP_BGCOL = argument0;
    global._MDXMAP_BGALP = argument1;
    global._MDXMAP_BGBORDERCOL = argument2;
    global._MDXMAP_BGBORDERALP = argument3;
    
    global._MDXMAP_VPBGCOL = argument4;
    global._MDXMAP_VPBGALP = argument5;
    global._MDXMAP_VPBORDERCOL = argument6;
    global._MDXMAP_VPBORDERALP = argument7;
    
    global._MDXMAP_VPSHOW = argument8;
    global._MDXMAP_VPVIEW = argument9;
    global._MDXMAP_VPCLICKMOVE = argument10;
    global._MDXMAP_MAPSTICK = argument11;