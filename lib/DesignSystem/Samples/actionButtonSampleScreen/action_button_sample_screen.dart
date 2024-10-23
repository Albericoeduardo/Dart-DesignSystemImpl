import 'package:develop_design_system/DesignSystem/Components/Buttons/ActionButton/action_button.dart';
import 'package:develop_design_system/DesignSystem/Components/Buttons/ActionButton/action_button_view_model.dart';
import 'package:flutter/material.dart';

class ActionButtonPage extends StatelessWidget {
  const ActionButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Styled Input Field Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ActionButton.instantiate(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.large,
                        style: ActionButtonStyle.primary,
                        text: 'Large',
                        isLoading: false,
                        onPressed: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton.instantiate(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.medium,
                        style: ActionButtonStyle.primary,
                        text: 'Medium',
                        isLoading: false,
                        onPressed: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton.instantiate(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.small,
                        style: ActionButtonStyle.primary,
                        text: 'Small',
                        isLoading: false,
                        onPressed: () {}
                      )
                    ),
                  ],
                ),
                Column(
                  children: [
                    ActionButton.instantiate(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.large,
                        style: ActionButtonStyle.secondary,
                        text: 'Large',
                        icon: Icons.navigate_next_outlined,
                        isLoading: false,
                        onPressed: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton.instantiate(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.medium,
                        style: ActionButtonStyle.secondary,
                        text: 'Medium',
                        icon: Icons.navigate_next_outlined,
                        isLoading: false,
                        onPressed: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton.instantiate(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.small,
                        style: ActionButtonStyle.secondary,
                        text: 'Small',
                        icon: Icons.navigate_next_outlined,
                        isLoading: false,
                        onPressed: () {}
                      )
                    ),
                  ],
                ),
                Column(
                  children: [
                    ActionButton.instantiate(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.large,
                        style: ActionButtonStyle.tertiary,
                        text: 'Large',
                        isLoading: false,
                        onPressed: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton.instantiate(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.medium,
                        style: ActionButtonStyle.tertiary,
                        text: 'Medium',
                        icon: Icons.navigate_next_outlined,
                        isLoading: false,
                        onPressed: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton.instantiate(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.small,
                        style: ActionButtonStyle.tertiary,
                        icon: Icons.navigate_next_outlined,
                        text: 'Small',
                        isLoading: false,
                        onPressed: () {}
                      )
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}