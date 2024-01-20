import 'package:flutter/material.dart';
import 'package:hundredpay/src/hundred_pay_response_model.dart';

import 'make_api_call.dart';
import 'pay_ui.dart';

class HundredPay {
  static makePayment({
    required String customerEmail,
    required String customerPhoneNumber,
    required String customerName,
    required String customerUserId,
    required String amount,
    String? userId,
    String? refId,
    required String? description,
    required String? apiKey,
    String? currency,
    String? country,
    String? chargeSource,
    String? callBackUrl,
    required Map? metadata,
    required BuildContext? context,
    required void Function() onClosed,
    required void Function() onSuccess,
  }) async {
    if (apiKey == null) {
      throw Exception("Please provide api key from the dashboard");
    } else if (apiKey.isEmpty) {
      throw Exception("Please provide api key from the dashboard");
    }
    if (context == null) {
      throw Exception("Please provide a context");
    }
    Map metadata0 = {};
    if (metadata == null) {
      metadata0 = {"is_approved": "yes"};
    } else {
      metadata0 = metadata;
    }
    showWebviewModal(
      context: context,
      amount: amount,
      callBackUrl: callBackUrl!,
      metadata: metadata0,
      customerEmail: customerEmail,
      customerName: customerName,
      customerPhoneNumber: customerPhoneNumber,
      customerUserId: customerUserId,
      refId: refId!,
      description: description!,
      chargeSource: chargeSource!,
      country: country!,
      currency: country,
      userId: userId!,
      apiKey: apiKey,
    );
  }

  static showWebviewModal({
    required String amount,
    required String customerEmail,
    required String customerPhoneNumber,
    required String customerName,
    required String customerUserId,
    required String refId,
    required String description,
    required String currency,
    required String country,
    required String callBackUrl,
    required String chargeSource,
    required Map metadata,
    required String userId,
    required String apiKey,
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      // backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
      builder: (BuildContext bc) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          height: MediaQuery.of(context).size.height * 0.9,
          child: FutureBuilder<HundredPayResponseModel>(
              future: MakeApiCall.makePayment(
                  amount: amount,
                  customerEmail: customerEmail,
                  customerPhoneNumber: customerPhoneNumber,
                  customerName: customerName,
                  customerUserId: customerUserId,
                  refId: refId,
                  description: description,
                  currency: currency,
                  country: country,
                  callBackUrl: callBackUrl,
                  metadata: metadata,
                  chargeSource: chargeSource,
                  userId: userId,
                  apiKey: apiKey),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                return PayUi(
                  url: snapshot.data!.hostedUrl!,
                );
              }),
        );
      },
    );
  }
}
