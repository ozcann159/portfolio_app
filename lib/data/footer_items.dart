import 'package:portfolio_app/models/footer_item.dart';
import 'package:portfolio_app/utils/constants.dart';

const List<FooterItem> footerItems = [
  FooterItem(
    iconPath: 'assets/map.png',
    title: 'ADDRESS',
    text1: address,
  ),
  FooterItem(
    iconPath: 'assets/phone.png',
    title: 'PHONE',
    text1: '',
  ),
  FooterItem(
    iconPath: 'assets/email.png',
    title: 'EMAIL',
    text1: email1,
    // text2: email2,
  ),
  FooterItem(
    iconPath: 'assets/whatsapp.png',
    title: 'WHATSAPP',
    text1: '',
  )
];
