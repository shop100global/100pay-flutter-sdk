// To parse this JSON data, do
//
//     final D100Pay = D100PayFromJson(jsonString);

import 'dart:convert';

D100Pay D100PayFromJson(String str) => D100Pay.fromJson(json.decode(str));

String D100PayToJson(D100Pay data) => json.encode(data.toJson());

class D100Pay {
    D100Pay({
       required this.refId,
      required  this.customer,
      required  this.billing,
       required this.metadata,
       required this.callBackUrl,
       required this.userId,
       required this.chargeSource,
    });

    String refId;
    Customer customer;
    Billing billing;
    Metadata metadata;
    String callBackUrl;
    String userId;
    String chargeSource;

    factory D100Pay.fromJson(Map<String, dynamic> json) => D100Pay(
        refId: json["ref_id"],
        customer: Customer.fromJson(json["customer"]),
        billing: Billing.fromJson(json["billing"]),
        metadata: Metadata.fromJson(json["metadata"]),
        callBackUrl: json["call_back_url"],
        userId: json["userId"],
        chargeSource: json["charge_source"],
    );

    Map<String, dynamic> toJson() => {
        "ref_id": refId,
        "customer": customer.toJson(),
        "billing": billing.toJson(),
        "metadata": metadata.toJson(),
        "call_back_url": callBackUrl,
        "userId": userId,
        "charge_source": chargeSource,
    };
}

class Billing {
    Billing({
     required   this.description,
     required   this.amount,
     required   this.country,
     required   this.currency,
     required   this.vat,
     required   this.pricingType,
    });

    String description;
    String amount;
    String country;
    String currency;
    String vat;
    String pricingType;

    factory Billing.fromJson(Map<String, dynamic> json) => Billing(
        description: json["description"],
        amount: json["amount"],
        country: json["country"],
        currency: json["currency"],
        vat: json["vat"],
        pricingType: json["pricing_type"],
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "amount": amount,
        "country": country,
        "currency": currency,
        "vat": vat,
        "pricing_type": pricingType,
    };
}

class Customer {
    Customer({
       required this.userId,
      required  this.name,
     required   this.phone,
      required  this.email,
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
      required  this.isApproved,
    });

    String isApproved;

    factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        isApproved: json["is_approved"],
    );

    Map<String, dynamic> toJson() => {
        "is_approved": isApproved,
    };
}
