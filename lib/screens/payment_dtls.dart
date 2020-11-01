import 'package:flutter/material.dart';
import 'package:tola/components/text_form.dart';
import 'package:tola/presentation/components/bottom_button.dart';
import 'package:tola/screens/booking_verification.dart';

class MomoPaymentDetails extends StatefulWidget {
  @override
  _MomoPaymentDetailsState createState() => _MomoPaymentDetailsState();
}

class _MomoPaymentDetailsState extends State<MomoPaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Details'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TolaTextFormField(
                hintText: 'Amount',
              ),
              SizedBox(
                height: 20.0,
              ),
              TolaTextFormField(
                hintText: 'MTN Phone Number',
              ),
              SizedBox(
                height: 20.0,
              ),
              TolaButton(
                buttonTitle: 'Verify',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerifyBooking()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
