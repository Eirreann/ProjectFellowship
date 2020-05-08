var class_obj = instance_create_layer(0,0,"Instances", Class);

var _name = argument0;
var _HP_w = argument1;
var _MP_w = argument2;
var _Str_w = argument3;
var _Dex_w = argument4;
var _Int_w = argument5;
var _Fth_w = argument6;
var _Skl_w = argument7;


class_obj.name = _name;
class_obj.hp_w = _HP_w;
class_obj.mp_w = _MP_w;
class_obj.str_w = _Str_w;
class_obj.dex_w = _Dex_w;
class_obj.int_w = _Int_w;
class_obj.fth_w = _Fth_w;
class_obj.skl_w = _Skl_w;

return class_obj;