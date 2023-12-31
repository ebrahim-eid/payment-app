import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethodItem extends StatefulWidget {
  const PaymentMethodItem({
    Key? key,
  }) : super(key: key);

  @override
  State<PaymentMethodItem> createState() => _PaymentMethodItemState();
}

class _PaymentMethodItemState extends State<PaymentMethodItem> {
  bool isSelected=false;
  int itemIndex =1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            itemIndex =1;
            setState(() {

            });
          },
          child: AnimatedContainer(
            width: 103,
            height: 62,
            decoration: ShapeDecoration (
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side:  BorderSide(
                        width: 1.5,
                        color: itemIndex == 1?
                        const Color(0xFF34A853):const Color(0x80000000)
                    )),
                shadows:  [
                  itemIndex == 1?
                  const BoxShadow(
                      color: Color(0xFF34A853),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0):const BoxShadow(
                    // color: Colors.transparent,
                      blurRadius: 0,
                      offset: Offset(0, 0),
                      spreadRadius: 0)
                ]),
            duration: const Duration(milliseconds: 800),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/SVGRepo_iconCarrier.svg',
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: (){
            itemIndex=2;
            setState(() {

            });
          },
          child: AnimatedContainer(
            width: 103,
            height: 62,
            decoration: ShapeDecoration (
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side:  BorderSide(
                        width: 1.5,
                        color: itemIndex == 2?
                        const Color(0xFF34A853):const Color(0x80000000)
                    )),
                shadows:  [
                  itemIndex == 2?
                  const BoxShadow(
                      color: Color(0xFF34A853),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0):const BoxShadow(
                    // color: Colors.transparent,
                      blurRadius: 0,
                      offset: Offset(0, 0),
                      spreadRadius: 0)
                ]),
            duration: const Duration(milliseconds: 800),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/Group.svg',
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: (){
            itemIndex=3;
            setState(() {

            });
          },
          child: AnimatedContainer(
            width: 103,
            height: 62,
            decoration: ShapeDecoration (
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side:  BorderSide(
                        width: 1.5,
                        color: itemIndex == 3?
                        const Color(0xFF34A853):const Color(0x80000000)
                    )),
                shadows:  [
                  itemIndex == 3?
                  const BoxShadow(
                      color: Color(0xFF34A853),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0):const BoxShadow(
                    // color: Colors.transparent,
                      blurRadius: 0,
                      offset: Offset(0, 0),
                      spreadRadius: 0)
                ]),
            duration: const Duration(milliseconds: 800),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/ipo.svg',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
