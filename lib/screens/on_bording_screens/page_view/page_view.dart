import 'package:codes/screens/on_bording_screens/page_view/widget/cus_appBar_onBording.dart';
import 'package:codes/screens/on_bording_screens/page_view/widget/cust_button_onBording.dart';
import 'package:codes/screens/on_bording_screens/page_view/widget/det_txt_onBording.dart';
import 'package:codes/screens/on_bording_screens/page_view/widget/image_in_onBording.dart';
import 'package:codes/screens/on_bording_screens/page_view/widget/main_txt_onBording.dart';
import 'package:flutter/material.dart';
import '../../../model/p_models.dart';
import '../../../util/constant.dart';


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
      appBar: CustAppBarOnBording(index: _index,),
      body: Column(
        children: [
          ImageInOnBording(controller: _controller, data: _data),
           SizedBox(height: MediaQuery.of(context).size.height *0.04),
          MainTxtOnBording(data: _data, index: _index),
          DetTxtOnBording(data: _data, index: _index),
           SizedBox(height: MediaQuery.of(context).size.height *0.05),
          CustButtonOnBording(index: _index, controller: _controller),
           SizedBox(height: MediaQuery.of(context).size.height *0.11)
        ],
      ),
    );
  }
}




