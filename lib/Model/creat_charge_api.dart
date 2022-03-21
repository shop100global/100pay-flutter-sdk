// To parse this JSON data, do
//
//     final the100Pay = the100PayFromJson(jsonString);

import 'dart:convert';

The100Pay the100PayFromJson(String str) => The100Pay.fromJson(json.decode(str));

String the100PayToJson(The100Pay data) => json.encode(data.toJson());

class The100Pay {
  The100Pay({
    required this.billing,
    required this.status,
    required this.refId,
    required this.chargeSource,
    required this.createdAt,
    required this.id,
    required this.customer,
    required this.metadata,
    required this.callBackUrl,
    required this.userId,
    required this.appId,
    required this.chargeId,
    required this.v,
    required this.hostedUrl,
  });

  Billing billing;
  Status status;
  String refId;
  String chargeSource;
  DateTime createdAt;
  String id;
  Customer customer;
  Metadata metadata;
  String callBackUrl;
  String userId;
  String appId;
  String chargeId;
  int v;
  String hostedUrl;

  factory The100Pay.fromJson(Map<String, dynamic> json) => The100Pay(
        billing: Billing.fromJson(json["billing"]),
        status: Status.fromJson(json["status"]),
        refId: json["ref_id"],
        chargeSource: json["charge_source"],
        createdAt: DateTime.parse(json["createdAt"]),
        id: json["_id"],
        customer: Customer.fromJson(json["customer"]),
        metadata: Metadata.fromJson(json["metadata"]),
        callBackUrl: json["call_back_url"],
        userId: json["userId"],
        appId: json["app_id"],
        chargeId: json["chargeId"],
        v: json["__v"],
        hostedUrl: json["hosted_url"],
      );

  Map<String, dynamic> toJson() => {
        "billing": billing.toJson(),
        "status": status.toJson(),
        "ref_id": refId,
        "charge_source": chargeSource,
        "createdAt": createdAt.toIso8601String(),
        "_id": id,
        "customer": customer.toJson(),
        "metadata": metadata.toJson(),
        "call_back_url": callBackUrl,
        "userId": userId,
        "app_id": appId,
        "chargeId": chargeId,
        "__v": v,
        "hosted_url": hostedUrl,
      };
}

class Billing {
  Billing({
    required this.currency,
    required this.vat,
    required this.pricingType,
    required this.description,
    required this.amount,
    required this.country,
  });

  String currency;
  int vat;
  String pricingType;
  String description;
  String amount;
  String country;

  factory Billing.fromJson(Map<String, dynamic> json) => Billing(
        currency: json["currency"],
        vat: json["vat"],
        pricingType: json["pricing_type"],
        description: json["description"],
        amount: json["amount"],
        country: json["country"],
      );

  Map<String, dynamic> toJson() => {
        "currency": currency,
        "vat": vat,
        "pricing_type": pricingType,
        "description": description,
        "amount": amount,
        "country": country,
      };
}

class Customer {
  Customer({
    required this.userId,
    required this.name,
    required this.phone,
    required this.email,
  });

  String userId;
  String name;
  String phone;
  String email;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        userId: json["user_id"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "name": name,
        "phone": phone,
        "email": email,
      };
}

class Metadata {
  Metadata({
    required this.isApproved,
  });

  String isApproved;

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        isApproved: json["is_approved"],
      );

  Map<String, dynamic> toJson() => {
        "is_approved": isApproved,
      };
}

class Status {
  Status({
    required this.context,
    required this.value,
  });

  Context context;
  String value;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        context: Context.fromJson(json["context"]),
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "context": context.toJson(),
        "value": value,
      };
}

class Context {
  Context({
    required this.status,
    required this.value,
  });

  String status;
  int value;

  factory Context.fromJson(Map<String, dynamic> json) => Context(
        status: json["status"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "value": value,
      };
}
