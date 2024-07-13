import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pay_flutter_sdk_main/pay_flutter_sdk_main_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelPayFlutterSdkMain platform = MethodChannelPayFlutterSdkMain();
  const MethodChannel channel = MethodChannel('pay_flutter_sdk_main');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
