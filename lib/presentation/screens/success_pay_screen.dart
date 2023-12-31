import 'package:flutter/material.dart';

import '../widgets/success_pay_content.dart';

class SuccessPAyScreen extends StatelessWidget {
  const SuccessPAyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.only(
              top: 70,
              left: 20,
              right: 20,
              bottom: 20
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFD9D9D9),

                ),
              ),
              Positioned(
                  bottom: MediaQuery.of(context).size.width*0.45,
                  left: -17.5,
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 17.5,
                  )
              ),
              Positioned(
                  bottom: MediaQuery.of(context).size.width*0.45,
                  right: -17.5,
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 17.5,
                  )
              ),
              Positioned(
                // top: MediaQuery.of(context).size.width*0.4,
                left: 8,
                right: 20,
                bottom: MediaQuery.of(context).size.width*0.45+17.5,
                child: Row(
                  children: List.generate(
                      150~/5,
                          (index) => Expanded(
                        child: Container(
                          color: index%2==0?Colors.transparent
                              :const Color(0xFFB8B8B8),
                          height: 2,
                        ),
                      )),
                ),
              ),
              const Positioned(
                top: -50,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor:  Color(0xFFD9D9D9),
                  radius: 50,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0xFF34A853),
                    child: Icon(Icons.check,color: Colors.white,size: 70,),
                  ),
                ),
              ),
              const SuccessPayContent(),
            ],
          )
      ),
    );
  }
}
