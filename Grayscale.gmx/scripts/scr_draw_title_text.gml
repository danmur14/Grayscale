///scr_draw_title_text
var _sprite, _fontLayout, _x, _y, _string, i, _Xoffset, _Yoffset;

_x = argument0;
_y = argument1;
_string = argument2;
_sprite = argument3;

_fontLayout = "abcdefghijklmnopqrstuvwxyz";

if(charMap[0] == 0) {
    for(i = 0; i <= 25; i++) {
        charMap[i] = -1;
    }
    for(i = 0; i <= string_length(_fontLayout); i++) {
        charMap[ord(string_char_at(_fontLayout, i))] = i - 1;
    }
}

_Xoffset = 0;
_Yoffset = 0;

for(i = 1; i <= string_length(_string); i++) {
    var c;
    c = ord(string_char_at(_string, i));
    
    if(charMap[c] != -1) {
        draw_sprite(_sprite, charMap[c], _x + _Xoffset, _y + _Yoffset);
    }
    _Xoffset += 17;
    _Yoffset += 0;
    
}
