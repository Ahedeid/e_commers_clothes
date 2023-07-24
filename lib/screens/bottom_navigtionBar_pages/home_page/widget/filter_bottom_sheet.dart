import 'package:codes/screens/bottom_navigtionBar_pages/home_page/widget/sheet_title_range.dart';
import 'package:codes/shared/cust_button.dart';
import 'package:codes/util/constant.dart';
import 'package:flutter/material.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  static const double _lowerValue = 0.0;
  static const double _uperValue = 350.0;
  static const double _lowerValue2 = 0.0;
  static const double _uperValue2 = 350.0;

  RangeValues values = const RangeValues(_lowerValue, _uperValue);
  RangeValues values2 = const RangeValues(_lowerValue2, _uperValue2);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.67,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    child: const Text(
                      'Clear',
                      style: TextStyle(
                        fontSize: smallSize,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {}),
                SizedBox(width: 1),
                const Text(
                  'Filters',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 35),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            const Divider(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Category',
                  style:
                      TextStyle(fontSize: bigSize, fontWeight: FontWeight.bold),
                ),
                Text('')
              ],
            ),
            const SizedBox(height: 19),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(primeColorInApp)),
                        fixedSize: MaterialStatePropertyAll(Size(100, 46))),
                    onPressed: () {},
                    child: const Text(
                      'New Arrival',
                      style:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    )),
                const SizedBox(width: 9.5),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        fixedSize: MaterialStatePropertyAll(Size(110, 46))),
                    onPressed: () {},
                    child: const Text(
                      'Top Tranding',
                      style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w500),
                    )),
                const SizedBox(width: 9.5),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        fixedSize: MaterialStatePropertyAll(Size(140, 46))),
                    onPressed: () {},
                    child: const Text(
                      'Featured Products',
                      style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w500),
                    )),
              ],
            ),
            const SizedBox(height: 40),
            SheetTitleRange(
              txtA: 'Pricingconst',
              txtB: '\$50-\$200',
            ),
            const SizedBox(height: 30),
            RangeSlider(
              min: _lowerValue,
              max: _uperValue,
              divisions: 50,
              labels: const RangeLabels('\$ $_lowerValue', '\$ $_uperValue'),
              activeColor: const Color(primeColorInApp),
              values: values,
              onChanged: (val) => setState(() {
                values = val;
              }),
            ),
            const SizedBox(height: 30),
            SheetTitleRange(
              txtA: 'Distance',
              txtB: '500m-2Km',
            ),
            const SizedBox(height: 30),
            RangeSlider(
              min: _lowerValue2,
              max: _uperValue2,
              divisions: 50,
              labels: const RangeLabels('$_lowerValue2 m', '$_uperValue2 Km'),
              activeColor: const Color(primeColorInApp),
              values: values2,
              onChanged: (val) => setState(() {
                values2 = val;
              }),
            ),
            const SizedBox(height: 35),
            CustomButton(
              txt: 'Apply Filter',
              color: const Color(primeColorInApp),
              nav: '',
            ),
          ],
        ),
      ),
    );
  }
}
