import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/homecontroller.dart';

class My_cart extends StatefulWidget {
  const My_cart({super.key});

  @override
  State<My_cart> createState() => _My_cartState();
}

class _My_cartState extends State<My_cart> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(Homecontroller());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 116, top: 15, left: 8),
                  child: Icon(Icons.arrow_back),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                  ),
                  child: Text(
                    'My cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 85,
              width: 320,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Card(
                  elevation: 0,
                  color: Colors.red[50],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.card_travel, color: Colors.red),
                      ),
                      Text(
                        '  You have 3 items in your list chart',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  leading: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 100,
                        maxWidth: 100,
                      ),
                      child: Image.asset('assets/images/bean.png')),
                  title: const Text(
                    'Bean',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    '500.0',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                          onPressed: () {
                            controller.decrement();
                          },
                          child: const Text('-')),
                      const SizedBox(
                        width: 10,
                      ),
                      Obx(() => Text(
                            '${controller.initialCount}',
                          )),
                      TextButton(
                          onPressed: () {
                            controller.increment();
                          },
                          child: const Text('+')),
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
