import 'package:flutter/material.dart';
import '../components/main_drawer.dart';
import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {
  final Settings settings;
  final Function(Settings) onSettingsChanged;

  const SettingsScreen(this.settings, this.onSettingsChanged, {Key? key})
      : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Settings? settings;

  @override
  void initState() {
    super.initState();
    settings = widget.settings;
  }

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: value 
            ? Theme.of(context).colorScheme.primary.withOpacity(0.1)
            : Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: value 
              ? Theme.of(context).colorScheme.primary.withOpacity(0.5) 
              : Colors.grey.withOpacity(0.4),
          width: 2,
        ),
      ),
      child: SwitchListTile.adaptive(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: value ? Theme.of(context).colorScheme.primary : Colors.black,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: value ? Colors.grey[700] : Colors.grey[600],
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        value: value,
        activeColor: Theme.of(context).colorScheme.primary,
        inactiveThumbColor: Colors.grey[400],
        inactiveTrackColor: Colors.grey[300],
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        onChanged: (value) {
          onChanged(value);
          widget.onSettingsChanged(settings!);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Configurações'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Ajuste à sua preferência!',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _createSwitch(
                  'Sem Glutén',
                  'Só exibe refeições sem glúten!',
                  settings!.isGlutenFree,
                  (value) => setState(() => settings!.isGlutenFree = value),
                ),
                _createSwitch(
                  'Sem Lactose',
                  'Só exibe refeições sem lactose!',
                  settings!.isLactoseFree,
                  (value) => setState(() => settings!.isLactoseFree = value),
                ),
                _createSwitch(
                  'Vegana',
                  'Só exibe refeições veganas!',
                  settings!.isVegan,
                  (value) => setState(() => settings!.isVegan = value),
                ),
                _createSwitch(
                  'Vegetariana',
                  'Só exibe refeições vegetarianas!',
                  settings!.isVegetarian,
                  (value) => setState(() => settings!.isVegetarian = value),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
