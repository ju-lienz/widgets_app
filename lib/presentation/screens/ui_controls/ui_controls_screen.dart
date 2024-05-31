import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Controls"),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

//Posible values
enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = false;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBrakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text("Developer mode"),
          subtitle: const Text("Controles adicionales"),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          initiallyExpanded: true,
          title: const Text("Vehiculo de transporte"),
          subtitle: Text('$selectedTransportation'),
          children: [
            //A group of radio checks
            RadioListTile(
              title: const Text('By car'),
              subtitle: const Text('Viajar por carro'),
              value: Transportation
                  .car, // Enlazar valor seleccionado con valor actual
              groupValue: selectedTransportation, // Current selected option
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('Viajar por bote'),
              value: Transportation
                  .boat, // Enlazar valor seleccionado con valor actual
              groupValue: selectedTransportation, // Current selected option
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('Viajar por avion'),
              value: Transportation
                  .plane, // Enlazar valor seleccionado con valor actual
              groupValue: selectedTransportation, // Current selected option
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By submarine'),
              subtitle: const Text('Viajar por submarino'),
              value: Transportation
                  .submarine, // Enlazar valor seleccionado con valor actual
              groupValue: selectedTransportation, // Current selected option
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            ),
          ],
        ),
        //An individual checkbox
        CheckboxListTile(
          title: const Text("Incluir desayuno:"),
          value: wantsBrakfast,
          onChanged: (value) => setState(() {
            wantsBrakfast = !wantsBrakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text("Incluir almuerzo:"),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text("Incluir cena:"),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
