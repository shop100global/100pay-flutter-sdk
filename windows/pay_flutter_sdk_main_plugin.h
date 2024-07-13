#ifndef FLUTTER_PLUGIN_PAY_FLUTTER_SDK_MAIN_PLUGIN_H_
#define FLUTTER_PLUGIN_PAY_FLUTTER_SDK_MAIN_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace pay_flutter_sdk_main {

class PayFlutterSdkMainPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  PayFlutterSdkMainPlugin();

  virtual ~PayFlutterSdkMainPlugin();

  // Disallow copy and assign.
  PayFlutterSdkMainPlugin(const PayFlutterSdkMainPlugin&) = delete;
  PayFlutterSdkMainPlugin& operator=(const PayFlutterSdkMainPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace pay_flutter_sdk_main

#endif  // FLUTTER_PLUGIN_PAY_FLUTTER_SDK_MAIN_PLUGIN_H_
