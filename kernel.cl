__kernel void btc_puzzle_search(__global ulong* result, ulong target) {
    size_t id = get_global_id(0);
    // لێرەدا مەودای پازڵەکە دیاری دەکرێت (نموونە Puzzle 66)
    ulong current_key = 0x20000000000000000 + id; 

    if (current_key == target) {
        result[0] = current_key;
    }
}
