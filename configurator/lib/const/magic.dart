import 'dart:typed_data';

// handshake try host
// 2e 68 73 2e 74 72 79 2e 68
Uint8List handShakeTryAtHost = Uint8List.fromList('.hs.try.h'.codeUnits);

// handshake response arduino
// 2e 68 73 2e 72 65 73 2e 61
Uint8List handShakeTryResponse = Uint8List.fromList('.hs.res.a'.codeUnits);

// key configuration request host
Uint8List requestKeyConfiguration = Uint8List.fromList('.kc.req.h'.codeUnits);

// key configuration response arduino
Uint8List responseKeyConfiguration = Uint8List.fromList('.kc.res.a'.codeUnits);
