//This actually makes a character start walking

//Args
// this - The character to start walking
// 0 - The direction for them to walk
var dir = argument0;

//Begin walking
self.isWalking = true;

//Set the sprite
self.sprite_index = asset_get_index("spr_c_"+self.name+"_walk_"+dir);
self.image_index = 0;
self.image_speed = 0.5;

//Set the target destination for grid walking
if (dir == "down"){
    self.targetX = self.x
    self.targetY = self.y+16
}else if (dir == "up"){
    self.targetX = self.x
    self.targetY = self.y-16
}else if (dir == "left"){
    self.targetX = self.x-16
    self.targetY = self.y
}else if (dir == "right"){
    self.targetX = self.x+16
    self.targetY = self.y
}

