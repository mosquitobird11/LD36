//Use this script to check if a character can walk in a direction, then make
//him start walking

//Args
// this - The character to check for movement
// 0 - The direction to move
var dir = argument0;

//Make sure that character is not walking already
if (!self.isWalking){
    //check for collisions before you begin to walk
    if (!s_check_collision(dir)){
        s_begin_walk(dir);
    }
}
