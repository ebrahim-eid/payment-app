import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key, required this.formKey, required this.autoValidateMode}) : super(key: key);

  final GlobalKey<FormState> formKey;
  final AutovalidateMode autoValidateMode;

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //by default does not show the name
        CreditCardWidget(
            cardNumber: cardNumber,
            enableFloatingCard: true,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            isHolderNameVisible: true,
            onCreditCardWidgetChange: (value) {}),
        CreditCardForm(
          autovalidateMode: widget.autoValidateMode,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (creditCardModel) {
              cardHolderName = creditCardModel.cardHolderName;
              expiryDate = creditCardModel.expiryDate;
              cardNumber = creditCardModel.cardNumber;
              cvvCode = creditCardModel.cvvCode;
              showBackView =
                  creditCardModel.isCvvFocused; //make active field true
              setState(() {});
            },
            formKey: widget.formKey),
      ],
    );
  }
}
