import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress Indicators"),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text("Circular progress indicator"),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator(
            strokeWidth: 7,
            backgroundColor: Colors.black45,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Circular y Linear indicator controlado"),
          SizedBox(
            height: 20,
          ),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    // This widget builds based on a stream of data that updates every 300 milliseconds
    return StreamBuilder(
      // Stream that emits a value every 300 milliseconds,
      // The value emitted is a number starting from 0 and increasing by 0.02 every time
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        // This function calculates the value to be emitted by the stream
        // It starts at 0 and increases by 0.02 every time the stream emits
        // and return values between 0.0 and 1.0
        return (value * 2) / 100;
      }).takeWhile((value) =>
          value < 100), // Stop emitting values when value reaches 100
      builder: (context, snapshot) {
        // Get the latest progress value from the stream (or 0 if no data yet)
        final progressValue = snapshot.data ?? 0;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progressValue, // Set progress based on stream data
                strokeWidth: 3,
                backgroundColor: Colors.black12,
              ),
              const SizedBox(
                width: 20,
              ),

              /// [LinearProgressIndicator] needs a max width to show
              Expanded(
                child: LinearProgressIndicator(
                  value: progressValue, // Set progress based on stream data
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
