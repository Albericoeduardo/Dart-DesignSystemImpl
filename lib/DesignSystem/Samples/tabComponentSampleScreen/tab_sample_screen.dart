import 'package:develop_design_system/DesignSystem/Components/Tab/tab.dart';
import 'package:develop_design_system/DesignSystem/Components/Tab/tab_view_model.dart';
import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab page Demo"),
      ),
      body: TabComponent.instantiate(
        tabViewModel: TabViewModel(
          tabs: [
            const Tab(text: 'Home',),
            const Tab(text: 'Messages',),
            const Tab(text: 'Label',),
            const Tab(text: 'Label',),
          ],
          initialIndex: 0,
        ),
      )
    );
  }
}