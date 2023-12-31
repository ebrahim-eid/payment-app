import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/components.dart';
import '../../utils/text_styles.dart';

class SuccessPayContent extends StatelessWidget {
  const SuccessPayContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(height: 55,),
          const Text(
            'Thank you!',
            style:TextStyles.style25,
          ),
          const Text('Your transaction was successful',
            style: TextStyles.styleGray20,
          ),
          const SizedBox(height: 42,),
          const Row(
            children: [
              Text('Date',style: TextStyles.style18,),
              Spacer(),
              Text('01/24/2023',style: TextStyles.style18Bold,),

            ],
          ),
          const SizedBox(height: 20,),
          const Row(
            children: [
              Text('Time',style: TextStyles.style18,),
              Spacer(),
              Text('10:15 AM',style: TextStyles.style18Bold,),

            ],
          ),
          const SizedBox(height: 20,),
          const Row(
            children: [
              Text('To',style: TextStyles.style18,),
              Spacer(),
              Text('Ibrahim',style: TextStyles.style18Bold,),

            ],
          ),
          const SizedBox(height: 34,),
           myDivider(),
          const SizedBox(height: 28,),
          const Row(
            children: [
              Text('Total',style: TextStyles.style24,),
              Spacer(),
              Text(r'$50.97',style: TextStyles.style24,),

            ],
          ),
          const SizedBox(height: 30,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            height: 73,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/images/master.svg'),
                const SizedBox(width: 24,),
                const Text('Credit Card Mastercard **78',style: TextStyles.style18)
              ],
            ),
          ),
          const SizedBox(height: 105,),
          Row(
            children: [
              SvgPicture.asset('assets/images/barCode.svg'),
              const Spacer(),
              Container(
                height: 58,
                width: 113,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: const Color(0xFF34A853),width: 1.5),
                ),
                child: const Center(child: Text('PAID',style: TextStyles.style24Green,)),
              )
            ],
          )
        ],
      ),
    );
  }
}
