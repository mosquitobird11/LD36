//If the calling object is walking then check direction and move it

//Args
// this - The character to check for walking

var complete = false;

//Jump Object
if (self.isWalking){
    if (self.facing == "down"){
        self.y += 1.5;
    }else if (self.facing == "left"){
        self.x -= 1.5;
    }else if (self.facing == "right"){
        self.x += 1.5;
    }else if (self.facing == "up"){
        self.y -= 1.5;
    }
    
    //Check if travelled far enough
    if (self.facing == "down" && self.y >= self.targetY){
        complete = true;
    }else if (self.facing == "left" && self.x <= self.targetX){
        complete = true;
    }else if (self.facing == "right" && self.x >= self.targetX){
        complete = true;
    }else if (self.facing == "up" && self.y <= self.targetY){
        complete = true;
    }
    
}

//if complete jump to exact location and set sprite
if (complete){
    self.x = self.targetX;
    self.y = self.targetY;
    var s = asset_get_index("spr_c_"+self.name+"_"+self.facing);
    self.sprite_index = s;
    self.image_index = 0;
    self.image_speed = 0;
    self.isWalking = false;
}
