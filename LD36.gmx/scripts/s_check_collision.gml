//Returns
// True: There is a collision in the given direction
// False: There is no collisions with solids in the given direction

//Args
// 0 - Direction
// self - The object checking for a collision (a moving character)

var dir = argument0;

if (dir == "down"){
    if (position_meeting(self.x,self.y+32,obj_block)){
        return true;
    }
    if (position_meeting(self.x,self.y+32,obj_no_down)){
        return true;
    } 
}else if (dir == "up"){
    if (position_meeting(self.x,self.y,obj_block)){
        return true;
    }
    if (position_meeting(self.x,self.y,obj_no_up)){
        return true;
    }
}else if (dir == "left"){
    if(position_meeting(self.x-16,self.y+16,obj_block)){
        return true;
    }
    if(position_meeting(self.x-16,self.y+16,obj_no_left)){
        return true;
    }
}else if (dir == "right"){
    if(position_meeting(self.x+16,self.y+16,obj_block)){
        return true;
    }
    if(position_meeting(self.x+16,self.y+16,obj_no_right)){
        return true;
    }
}

return false;
