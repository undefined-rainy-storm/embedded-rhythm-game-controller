import 'dart:typed_data';

// handshake try host
// 2e 68 73 2e 74 72 79 2e 68
Uint8List handshakeRequest = Uint8List.fromList('.hs.try.h'.codeUnits);

// handshake response arduino
// 2e 68 73 2e 72 65 73 2e 61
Uint8List handshakeResponse = Uint8List.fromList('.hs.res.a'.codeUnits);

// key configuration request host
// 2e 6b 63 2e 72 65 71 2e 68
Uint8List loadKeyConfigurationRequest =
    Uint8List.fromList('.kc.req.h'.codeUnits);

// key configuration response arduino
// 2e 6b 63 2e 72 65 73 2e 61
Uint8List loadKeyConfigurationResponse =
    Uint8List.fromList('.kc.res.a'.codeUnits);
