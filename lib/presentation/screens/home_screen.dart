import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/presentation/screens/payment_details_screen.dart';

import '../../utils/components.dart';
import '../../utils/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyles.style25,
        ),
        leading: Center(child: SvgPicture.asset('assets/images/Arrow 1.svg')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              const Expanded(child:  Image(image: AssetImage('assets/images/collection.png'))),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Text(
                    'Order Subtotal',
                    style: TextStyles.style18,
                  ),
                  Spacer(),
                  Text(
                    r'$42.97',
                    style: TextStyles.style18,
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              const Row(
                children: [
                  Text(
                    'Discount',
                    style: TextStyles.style18,
                  ),
                  Spacer(),
                  Text(
                    r'$0',
                    style: TextStyles.style18,
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              const Row(
                children: [
                  Text(
                    'Shipping',
                    style: TextStyles.style18,
                  ),
                  Spacer(),
                  Text(
                    r'$8',
                    style: TextStyles.style18,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              myDivider(),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Text(
                    'Total',
                    style: TextStyles.style24,
                  ),
                  Spacer(),
                  Text(
                    r'$50.97',
                    style: TextStyles.style24,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              defaultButton(
                  text: 'Complete Payment',
                  function: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>const PaymentDetailsScreen()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
