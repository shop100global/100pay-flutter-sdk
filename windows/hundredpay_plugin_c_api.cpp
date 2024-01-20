#include "include/hundredpay/hundredpay_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "hundredpay_plugin.h"

void HundredpayPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  hundredpay::HundredpayPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
