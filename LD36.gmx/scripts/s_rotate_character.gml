//Args
//this - The character
//0 - The direction to face
var dir = argument0;

//Sets the player's sprite and facing variables
if (!self.isWalking){
    self.sprite_index = asset_get_index("spr_c_"+self.name+"_"+dir);
    self.image_index = 0;
    self.image_speed = 0;
    
    self.facing = dir;
}
