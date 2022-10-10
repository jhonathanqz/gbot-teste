import 'package:flutter/services.dart';

class ChannelFactory {
  static MethodChannel _channelFactory;
  static MethodChannel _channelBarcode;
  static MethodChannel _channelLed;

  static MethodChannel get baseChannelFactory {
    _channelFactory ??= const MethodChannel('samples.flutter.dev/flutterGBot');

    return _channelFactory;
  }

  static MethodChannel get baseChannelBarcode {
    _channelBarcode ??= const MethodChannel('samples.flutter.dev/barcode');

    return _channelBarcode;
  }

  static MethodChannel get baseChannelLed {
    _channelLed ??= const MethodChannel('samples.flutter.dev/led');

    return _channelLed;
  }
}
