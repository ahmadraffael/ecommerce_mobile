import 'package:ecommerce_mobile/features/preference/preference.dart';
import 'package:ecommerce_mobile/features/home/screen/message_screen/widget/message_item.dart';
import 'package:flutter/material.dart';

class AllMessagesTab extends StatelessWidget {
  const AllMessagesTab({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        messageItem(photo: MainAssets.profile1, username: 'Ajang', lastChat: 'Gimana mase, jadi ga?', time: '09:45'),
        messageItem(photo: MainAssets.profile2, username: 'Samsudin', lastChat: 'Mas, masih ready?', time: '09:01'),
        messageItem(photo: MainAssets.profile3, username: 'Fadlillah', lastChat: 'Selamat siang mas', time: '08:34'),
        messageItem(photo: MainAssets.profile4, username: 'Yoksar', lastChat: 'You: Siap mas', time: '08:12'),
        messageItem(photo: MainAssets.profile5, username: 'Rano', lastChat: 'Hohohoh😂😂', time: '08:00'),
      ],
    );
  }
}
class BuyingMessagesTab extends StatelessWidget {
  const BuyingMessagesTab({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        messageItem(photo: MainAssets.profile1, username: 'Ajang', lastChat: 'Gimana mase, jadi ga?', time: '09:45'),
        messageItem(photo: MainAssets.profile4, username: 'Yoksar', lastChat: 'You: Siap mas', time: '08:12'),
        messageItem(photo: MainAssets.profile5, username: 'Rano', lastChat: 'Hohohoh😂😂', time: '08:00'),
      ],
    );
  }
}
class SellingMessagesTab extends StatelessWidget {
  const SellingMessagesTab({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        messageItem(photo: MainAssets.profile2, username: 'Samsudin', lastChat: 'Mas, masih ready?', time: '09:01'),
        messageItem(photo: MainAssets.profile3, username: 'Fadlillah', lastChat: 'Selamat siang mas', time: '08:34'),
      ],
    );
  }
}