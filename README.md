# hundredpay_example

A Flutter plugin for making payments via 100pay - Supports Android and ios.

## Features

- Accept cryptopayments on your website
- Withdraw to your crypto wallet or fiat balance
- create payment invoice
- create payment links
- create your own coin on any supported network
- launch an ICO/IDO to raise funds for your project
- analytics to monitor your business
- swap crypto
- buy/sell crypto

## Getting started

Before you can start accepting crypto payments, you need to create a [100pay](https://app.100pay.co) account and obtain your api keys from the [100Developers platform](https://app.100pay.co/profile)

FOR ANDROID COMPATIBILITY: Ensure your minSdkVersion is 19 or higher

```dart
defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId '...'
        minSdkVersion 19 // Ensure this line is 19 or higher
        targetSdkVersion flutter.targetSdkVersion
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
    }
```

## Example

```dart
 HundredPay.makePayment(
                        customerEmail: emailController.text,
                        customerPhoneNumber: '0800000000',
                        customerName: 'customer',
                        customerUserId: '111111',
                        amount: '$amount',
                        userId: '12345',
                        refId: ref,
                        description: "For montly sub",
                        apiKey: '',//should look like this "LIVE;PK;ej...."
                        currency: 'NGN',
                        country: 'NG',
                        chargeSource: 'api',
                        onError: (error) {

                      },
                        callBackUrl: "callBackUrl",
                         onComplete: ({completed}) {

                      },
                        context: context);

```
