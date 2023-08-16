//Copyright (C)2014-2023 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//GOWIN Version: V1.9.8.11 Education
//Part Number: GW1NZ-LV1QN48C6/I5
//Device: GW1NZ-1
//Created Time: Wed Aug 16 21:43:28 2023

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    Gowin_rPLL your_instance_name(
        .clkout(clkout_o), //output clkout
        .clkin(clkin_i), //input clkin
        .fbdsel(fbdsel_i), //input [5:0] fbdsel
        .idsel(idsel_i), //input [5:0] idsel
        .odsel(odsel_i) //input [5:0] odsel
    );

//--------Copy end-------------------
