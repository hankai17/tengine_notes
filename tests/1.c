#include <stdio.h>
#include <string.h>
#include <stdint.h>

static void print_hex(uint8_t *data, uint32_t data_len) {
    printf("{");

    for (size_t i = 0; i < data_len; i++)
        if (i != (data_len - 1))
            printf("0x%x, ", data[i]);
        else
            printf("0x%x", data[i]);

    printf("}\n");
}

static inline uint32_t concat_bytes(uint8_t x, uint8_t y, uint8_t z) {
    return (x << 16) | (y << 8) | z;
}

int main()
{
    char buf[4] = {0};

    uint16_t c = 416;
    memcpy(buf, &c, 2);
    printf("buf: %x\n", *buf);

    print_hex(&c, 2);
    print_hex(buf, 4);

    char *data = &c;
    uint32_t res = concat_bytes(0, data[0], data[1]);
    print_hex(&res, 4);

    return 0;
}
