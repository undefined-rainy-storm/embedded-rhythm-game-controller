class SerialPortNotInstantiatedWell implements Exception {
  String cause;
  SerialPortNotInstantiatedWell(this.cause);
}

String typicalSerialPortNotInstantiatedWellMessage = 'SerialPort is `null`';

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

class SerialPortIsAlreadyUsed implements Exception {
  String cause;
  SerialPortIsAlreadyUsed(this.cause);
}

class StreamControllerNotInstantiatedWell implements Exception {
  String cause;
  StreamControllerNotInstantiatedWell(this.cause);
}

class SerialPortCommunicationDoneIncompleted implements Exception {
  String cause;
  SerialPortCommunicationDoneIncompleted(this.cause);
}

String typicalSerialPortCommunicationDoneIncompletedMessage =
    'Serial commuication has been done incompletely.';

class SerialPortCommunicationIncompletelyDoneThrownFromDevice
    implements Exception {
  String cause;
  SerialPortCommunicationIncompletelyDoneThrownFromDevice(this.cause);
}

String typicalSerialPortCommunicationIncompletelyDoneThrownFromDeviceMessage =
    'Device throws error that serial port communication has been done.';

class SerialPortCommunicationResponseIsOutOfScenario implements Exception {
  String cause;
  SerialPortCommunicationResponseIsOutOfScenario(this.cause);
}

String typicalSerialPortCommunicationResponseIsOutOfScenarioMessage =
    'Device\'s response cannot be like received. (out of scenario)';

class SerialPortCommunicationResultIsNotExpected implements Exception {
  String cause;
  SerialPortCommunicationResultIsNotExpected(this.cause);
}

String typicalSerialPortCommunicationResultIsNotExpectedMessage =
    'SerialPort communication result is not expected value.';
