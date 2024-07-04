
import 'package:flutter/material.dart';

import '../../../../../Core/app_rounded_blur.dart';

class menuComponent extends StatelessWidget {
    menuComponent({super.key});
   String summaryText = 'Summary';
  @override
  Widget build(BuildContext context) {
    return AppRoundedButtonBlur(
      icon: const Icon(
        Icons.summarize,
        color: Colors.white,
      ),
      onTap: () {

        showBottomSheet(
          elevation: 16,
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: DraggableScrollableSheet(
                maxChildSize: .5,
                initialChildSize: .5,
                minChildSize: .2,
                builder: (context, scrollController) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    height: 200,
                    child: TextButton(
                      onPressed: () {},
                        child:  Text(
                          summaryText,
                          style: const TextStyle(fontFamily: 'Poppins', color: Colors.black),
                        ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
