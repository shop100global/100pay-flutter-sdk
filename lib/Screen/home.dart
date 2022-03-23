import 'package:flutter/material.dart';
import '../Model/creat_charge_api.dart';
import '../Provider/creat_charge_controller.dart';
import '../Widgets/list_till_view.dart';

class Shop100 extends StatefulWidget {
  const Shop100({Key? key}) : super(key: key);

  @override
  State<Shop100> createState() => _Shop100State();
}

class _Shop100State extends State<Shop100> {
  final TextEditingController _controller = TextEditingController();
  Future<The100Pay>? _future100Pay;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shop100'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: (_future100Pay == null) ? buildColumn() : buildFutureBuilder(),
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Make Payment'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _future100Pay = create100Pay(_controller.text);
            });
          },
          child: const Text('PAY WITH 100PAY'),
        ),
      ],
    );
  }

  FutureBuilder<The100Pay> buildFutureBuilder() {
    return FutureBuilder<The100Pay>(
      future: _future100Pay,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.hasError) {
            return const ScaffoldMessenger(child: Text('data error'));
          }
          showModalBottomSheet<void>(
            backgroundColor: Colors.transparent,
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.bottomRight,
                        child: Center(
                          child: Row(
                            children: const [
                              Text('Close '),
                              Icon(Icons.close),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 7),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.82,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  const Text('Shop100'),
                                  const SizedBox(width: 190),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'BUY CRYPTO',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const Icon(Icons.payment),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: TextButton(
                                onPressed: () {
                                  showDialog(
                                    useSafeArea: true,
                                    context: context,
                                    builder: (_) => Visibility(
                                      //visible: hideCons,
                                      child: Card(
                                        // margin: const EdgeInsets.only(top: 20),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      15.0),
                                                  child: Row(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          // setState(() {
                                                          //   hideCons ==
                                                          //       false;
                                                          // });
                                                        },
                                                        child: Container(
                                                          height: 40,
                                                          width: 160,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.blue,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 15),
                                                            child: Row(
                                                              children: const [
                                                                Icon(
                                                                  Icons
                                                                      .arrow_back_ios,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 20,
                                                                ),
                                                                Text(
                                                                  'BACK TO COINS',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 100,
                                                      ),
                                                      const CircleAvatar(
                                                        radius: 33,
                                                        backgroundImage:
                                                            NetworkImage(
                                                                "https://res.cloudinary.com/estaterally/image/upload/v1644945649/coins/bnb_ihf6sq.png"),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 5),
                                                  child: ListTile(
                                                    leading: CircleAvatar(
                                                      radius: 25,
                                                      backgroundImage: NetworkImage(
                                                          "https://res.cloudinary.com/estaterally/image/upload/v1644945649/coins/bnb_ihf6sq.png"),
                                                    ),
                                                    title: Text(
                                                      'USDT',
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                    subtitle: Text(
                                                        '24.03222431578319'),
                                                  ),
                                                ),
                                                const SizedBox(height: 20),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 146),
                                                  child: Container(
                                                    height: 180,
                                                    width: 200,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                const SizedBox(height: 15),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 65),
                                                  child: Text(
                                                      'asdasdasdasdasdasdasdasdasasasasassd\nsdfasdasdasdaasaasdasdassafaf\nasdfasdassasasfassfssd\nsdasd'),
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      20.0),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: const Text(
                                                            'Address'),
                                                      ),
                                                      Container(
                                                        height: 55,
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            border:
                                                                Border.all()),
                                                        child: TextFormField(
                                                          decoration:
                                                              const InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                // const SizedBox(height: 10),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      20.0),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: const Text(
                                                            'Amount'),
                                                      ),
                                                      Container(
                                                        height: 50,
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            border:
                                                                Border.all()),
                                                        child: TextFormField(
                                                          decoration:
                                                              const InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none),
                                                        ),
                                                      ),
                                                      const SizedBox(height: 1),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Card(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 90),
                                                            child: Row(
                                                              children: const [
                                                                Icon(Icons
                                                                    .cancel),
                                                                Text(
                                                                    'CANCEL PAYMENT')
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                child: const Text('MY PAYMENTS'),
                              ),
                            ),
                            const Icon(Icons.arrow_forward_ios, size: 20),
                            const SizedBox(width: 170),
                            const CircleAvatar(radius: 30)
                          ]),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Search coins. ex: BTC or bitcoin'),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            child: Container(
                              child: ListView.builder(
                                itemCount: 10,
                                itemBuilder:
                                    (BuildContext context, int index) =>
                                        ExpansionTile(
                                  leading: const CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage(
                                        "https://res.cloudinary.com/estaterally/image/upload/v1644945649/coins/bnb_ihf6sq.png"),
                                  ),
                                  title: const Text(
                                    'Tether Usdt',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  children: buildExpansionTileChildren(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
          return Text(snapshot.data!.metadata.isApproved);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
