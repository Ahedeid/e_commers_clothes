import 'package:codes/shared/custom_appBar.dart';
import 'package:flutter/material.dart';


class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '',
        action: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: ListView(
          children: [
            titleWidget(text: '1- Personal Information: '),
            SizedBox(height: 8),
            bodyWidget(
              text:
                  'We may collect personal information that you provide to us when you use the App, such as your name, email address, phone number, billing and shipping addresses, payment information, and other information necessary for the purpose of providing our services.',
            ),
            SizedBox(height: 16),
            titleWidget(text: '2-  Device Information: '),
            SizedBox(height: 8),
            bodyWidget(
              text:
                  'We may collect information about your mobile device, including the device type, operating system, unique device identifiers, and mobile network information.',
            ),
            SizedBox(height: 16),
            titleWidget(text: '3- Usage Information: '),
            SizedBox(height: 8),
            bodyWidget(
              text:
                  'We may collect information about how you use the App, including your interactions with products, services, and features. This may include data such as the pages or screens you visit, your search queries, and other actions you take within the App.',
            ),
            SizedBox(height: 16),
            titleWidget(text: '4- Cookies and Similar Technologies: '),
            SizedBox(height: 8),
            bodyWidget(
              text:
                  'We may use cookies and similar technologies to collect information about your usage of the App. These technologies help us personalize your experience, remember your preferences, and analyze app usage. You can manage your cookie preferences through your device or browser settings.',
            ),
            SizedBox(height: 16),
            titleWidget(text: '5- Cookies and Similar Technologies: '),
            SizedBox(height: 8),
            bodyWidget(
              text:
                  'We may use cookies and similar technologies to collect information about your usage of the App. These technologies help us personalize your experience, remember your preferences, and analyze app usage. You can manage your cookie preferences through your device or browser settings.',
            ),
            SizedBox(height: 16),
            titleWidget(text: '6-  Device Information: '),
            SizedBox(height: 8),
            bodyWidget(
              text:
                  'We may collect information about your mobile device, including the device type, operating system, unique device identifiers, and mobile network information.',
            ),
            SizedBox(height: 16),
            titleWidget(text: '7- Cookies and Similar Technologies: '),
            SizedBox(height: 8),
            bodyWidget(
              text:
                  'We may use cookies and similar technologies to collect information about your usage of the App. These technologies help us personalize your experience, remember your preferences, and analyze app usage. You can manage your cookie preferences through your device or browser settings.',
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class bodyWidget extends StatelessWidget {
  const bodyWidget({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
    );
  }
}

class titleWidget extends StatelessWidget {
  const titleWidget({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    );
  }
}
