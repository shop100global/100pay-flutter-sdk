#include "include/pay_flutter_sdk_main/pay_flutter_sdk_main_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "pay_flutter_sdk_main_plugin.h"

void PayFlutterSdkMainPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  pay_flutter_sdk_main::PayFlutterSdkMainPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
