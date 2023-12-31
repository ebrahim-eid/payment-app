import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/presentation/screens/success_pay_screen.dart';
import 'package:payment_app/presentation/widgets/payment_item.dart';
import 'package:payment_app/utils/text_styles.dart';

import '../../utils/components.dart';
import '../widgets/credit_card.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {

  var formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  @override
  void dispose() {

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: const Text(
          'Payment Details',
          style: TextStyles.style25,
        ),
        leading: Center(child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: SvgPicture.asset('assets/images/Arrow 1.svg'))),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const PaymentMethodItem(),
              CreditCard(formKey: formKey,autoValidateMode: autoValidateMode,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: defaultButton(
            text: 'Pay',
            function: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder:(context)=> const SuccessPAyScreen()
                      ));
                }else{
                  autoValidateMode=AutovalidateMode.always;
                }
            }
        ),
      ),
    );
  }
}
