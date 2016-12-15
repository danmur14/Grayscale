///scr_runner_death
scr_input();
global.pause = 1;
if(enter_key) {
    room_restart();
}
if(enter_key && instance_exists(obj_runner_test)) {
    room_goto(0);
}
