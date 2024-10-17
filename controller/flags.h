#ifndef FLAGS
#define FLAGS

enum serial_comm_state_flag {
  idle = 1 << 0,
  ext_recv = 1 << 1,  // Need to receive more data from serial
  need_clear = 1 << 2,
} typedef SerialCommState;

#endif
