import 'package:codes/logic/localData/shared_pref.dart';
import 'package:codes/model/p_models.dart';
import 'package:codes/screens/on_bording_screens/page_view/widget/cus_appBar_onBording.dart';
import 'package:codes/screens/on_bording_screens/page_view/widget/cust_button_onBording.dart';
import 'package:codes/screens/on_bording_screens/page_view/widget/det_txt_onBording.dart';
import 'package:codes/screens/on_bording_screens/page_view/widget/image_in_onBording.dart';
import 'package:codes/screens/on_bording_screens/page_view/widget/main_txt_onBording.dart';
import 'package:codes/util/constant.dart';
import 'package:flutter/material.dart';

class MPageView extends StatefulWidget {
  const MPageView({Key? key}) : super(key: key);

  @override
  State<MPageView> createState() => _MPageViewState();
}

class _MPageViewState extends State<MPageView> {
  late PageController _controller;
  final List<PageModel> _data = PageModel.data;

  int _index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SharedPrefController().setShowOnce(true);
    _controller = PageController();
    _controller.addListener(() {
      setState(() {
        _index = _controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _controller = PageController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(backGroundColor),
      appBar: CustomAppBarOnBoarding(
        index: _index,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: ImageInOnBording(controller: _controller, data: _data)),
            MainTxtOnBording(data: _data, index: _index),
            const SizedBox(height: 16),
            DetTxtOnBoarding(data: _data, index: _index),
            const SizedBox(height: 35),
            CustButtonOnBording(index: _index, controller: _controller),
            const Expanded(child: SizedBox(height: 1))
          ],
        ),
      ),
    );
  }
}
