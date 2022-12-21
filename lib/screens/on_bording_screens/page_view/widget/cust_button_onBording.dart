import 'package:flutter/material.dart';

import '../../../../util/constant.dart';
import '../../on_boarding_indicatort.dart';


class CustButtonOnBording extends StatelessWidget {
  const CustButtonOnBording({
    Key? key,
    required int index,
    required PageController controller,
  }) : _index = index, _controller = controller, super(key: key);

  final int _index;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 79),
      child: ElevatedButton(
        onPressed: () {
          _index == 2
              ? Navigator.pushReplacementNamed(context, 'login_screen')
              : _controller.nextPage(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut);
        },
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(219, 59)),
          backgroundColor:
          MaterialStateProperty.all(const Color(primeColorInApp)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
        ),
        child: ContentOnBordingButton(index: _index),
      ),
    );
  }
}

class ContentOnBordingButton extends StatelessWidget {
  const ContentOnBordingButton({
    Key? key,
    required int index,
  }) : _index = index, super(key: key);

  final int _index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          _index == 2 ? 'Get Started' :'Next',
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(width: 8),
     _index==0 || _index ==1 || _index==2 ? OnBoardingIndicatort(selected: _index == 0, visable: true,): Container(),
     _index==1 || _index==2 ?  OnBoardingIndicatort(selected: _index == 1,visable: true,):Container(),
     _index==2 ? OnBoardingIndicatort(selected: _index == 2,visable: true,):Container(),
      ],
    );
  }
}
