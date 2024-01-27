#ifndef FLUTTER_PLUGIN_HUNDREDPAY_PLUGIN_H_
#define FLUTTER_PLUGIN_HUNDREDPAY_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace hundredpay {

class HundredpayPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  HundredpayPlugin();

  virtual ~HundredpayPlugin();

  // Disallow copy and assign.
  HundredpayPlugin(const HundredpayPlugin&) = delete;
  HundredpayPlugin& operator=(const HundredpayPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace hundredpay

#endif  // FLUTTER_PLUGIN_HUNDREDPAY_PLUGIN_H_
