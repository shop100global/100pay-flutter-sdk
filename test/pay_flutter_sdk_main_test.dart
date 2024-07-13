import 'package:flutter_test/flutter_test.dart';
import 'package:pay_flutter_sdk_main/pay_flutter_sdk_main.dart';
import 'package:pay_flutter_sdk_main/pay_flutter_sdk_main_platform_interface.dart';
import 'package:pay_flutter_sdk_main/pay_flutter_sdk_main_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPayFlutterSdkMainPlatform
    with MockPlatformInterfaceMixin
    implements PayFlutterSdkMainPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PayFlutterSdkMainPlatform initialPlatform = PayFlutterSdkMainPlatform.instance;

  test('$MethodChannelPayFlutterSdkMain is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPayFlutterSdkMain>());
  });

  test('getPlatformVersion', () async {
    PayFlutterSdkMain payFlutterSdkMainPlugin = PayFlutterSdkMain();
    MockPayFlutterSdkMainPlatform fakePlatform = MockPayFlutterSdkMainPlatform();
    PayFlutterSdkMainPlatform.instance = fakePlatform;

    expect(await payFlutterSdkMainPlugin.getPlatformVersion(), '42');
  });
}
