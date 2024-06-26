import 'package:FinGlow/presentation/views/FinancialAdvisor.dart';
import 'package:FinGlow/presentation/views/Seminarsandevents.dart';
import 'package:FinGlow/presentation/widgets/AccountingandBillingButtonWidget.dart';
import 'package:FinGlow/presentation/widgets/FinancialAdvisorButtonWidget.dart';
import 'package:FinGlow/presentation/widgets/NotificationsButtonWidget.dart';
import 'package:FinGlow/presentation/widgets/PaymentscheduleButtonWidget.dart';
import 'package:FinGlow/presentation/widgets/ProfileButtonWidget.dart';
import 'package:FinGlow/presentation/widgets/SeminarsandeventsButtonWidget.dart';
import 'package:FinGlow/presentation/widgets/ServicesButtonWidget.dart';
import 'package:flutter/material.dart';

class MoreFeaturesView extends StatefulWidget {
  const MoreFeaturesView({super.key});

  @override
  State<MoreFeaturesView> createState() => _MoreFeaturesViewState();
}

class _MoreFeaturesViewState extends State<MoreFeaturesView> {
  void _handleProfileTap() {
    // ignore: avoid_print
    print('Profile tapped!');
  }

  void _handleNotificationsTap() {
    // ignore: avoid_print
    print('Notifications tapped!');
  }

  void _handleFinancialAdvisorTap() {
    // ignore: avoid_print
    Navigator.push(context, MaterialPageRoute(builder: (context) => const FinancialAdvisor()));
  }

  void _handleServicesTap() {
    // ignore: avoid_print
    print('Services tapped!');
  }

  void _handleSeminarsandeventsTap() {
    // ignore: avoid_print
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SeminarsandeventsView()));
  }

  void _handlePaymentscheduleTap() {
    // ignore: avoid_print
    print('Payment schedule tapped!');
  }

  void _handleAccountingandBillingTap() {
    // ignore: avoid_print
    print('Accounting and Billing tapped!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(1, 19, 48, 1),
              Color.fromRGBO(4, 38, 92, 1),
            ],
            stops: [0.3, 0.7],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Other widgets...
              ProfileButtonWidget(onTap: _handleProfileTap),
              NotificationsButtonWidget(onTap: _handleNotificationsTap),
              FinancialAdvisorButtonWidget(onTap: _handleFinancialAdvisorTap),
              ServicesButtonWidget(onTap: _handleServicesTap),
              SeminarsandeventsButtonWidget(onTap: _handleSeminarsandeventsTap),
              PaymentscheduleButtonWidget(onTap: _handlePaymentscheduleTap),
              AccountingandBillingButtonWidget(onTap: _handleAccountingandBillingTap),
              // More widgets...
            ],
          ),
        ),
      ),
    );
  }
}
