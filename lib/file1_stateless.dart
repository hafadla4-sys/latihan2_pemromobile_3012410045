
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int hitung = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File 2 - Stateful Counter'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.touch_app,
              size: 70,
              color: Colors.teal,
            ),
            const SizedBox(height: 16),

            const Text(
              'Jumlah Tekanan Tombol',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),

            Text(
              '$hitung',
              style: const TextStyle(
                fontSize: 56,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 28),

            Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      hitung++;
                    });
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Tambah'),
                ),

                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      hitung--;
                    });
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text('Kurang'),
                ),

                OutlinedButton.icon(
                  onPressed: () {
                    setState(() {
                      hitung = 0;
                    });
                  },
                  icon: const Icon(Icons.refresh),
                  label: const Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}