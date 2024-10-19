class SerialPortIsNotOpened implements Exception {
  String cause;
  SerialPortIsNotOpened(this.cause);
}
class SerialPortIsNotClosed implements Exception {
  String cause;
  SerialPortIsNotClosed(this.cause);
}
class SerialPortCannotOpen implements Exception {
  String cause;
  SerialPortCannotOpen(this.cause);
}
class SerialPortCannotClose implements Exception {
  String cause;
  SerialPortCannotClose(this.cause);
}
