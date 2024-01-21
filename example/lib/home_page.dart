import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:hundredpay/hundredpay.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final emailController = TextEditingController();
  final amountController = TextEditingController();

  @override
  void initState() {
    amountController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  String generateRef() {
    final randomCode = math.Random().nextInt(3234234);
    return '$randomCode';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 237, 237),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "100pay",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
              const SizedBox(height: 48),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: amountController,
                decoration: const InputDecoration(
                  hintText: 'Amount(₦)',
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () async {
                  final ref = generateRef();
                  final amount = int.parse(amountController.text);
                  try {
                    HundredPay.makePayment(
                        customerEmail: emailController.text,
                        customerPhoneNumber: '0800000000',
                        customerName: 'customer',
                        customerUserId: '111111',
                        amount: '$amount',
                        userId: '12345',
                        refId: ref,
                        onError: (error) {
                          log(error.toString());
                          Navigator.pop(context);
                        },
                        description: "For montly sub",
                        apiKey:
                            'LIVE;PK;eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6IjY1OTk5ZTc3NTU2MDMyMDAyYjJiNGZjMiIsInVzZXJJZCI6IjY1OTk5ZTc3NTU2MDMyMDAyYjJiNGZiZCIsImlhdCI6MTcwNDU2NjM5MX0.ruM185WGa6eUVRYum5EsNHn7h5oHgumPtsJPRt2ZjYk',
                        currency: 'NGN',
                        country: 'NG',
                        chargeSource: 'api',
                        callBackUrl: "callBackUrl",
                        context: context);
                  } catch (e) {
                    debugPrint(e.toString());
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[400]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Pay${amountController.text.isEmpty ? '' : ' ₦${amountController.text}'} with 100pay',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
