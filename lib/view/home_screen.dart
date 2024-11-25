import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


class TradingDashboard extends StatefulWidget {
  const TradingDashboard({super.key});

  @override
  State<TradingDashboard> createState() => _TradingDashboardState();
}

class _TradingDashboardState extends State<TradingDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trading Dashboard'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Line Chart Section
            Expanded(
              flex: 3,
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: LineChart(
                    LineChartData(
                      gridData: const FlGridData(show: false),
                      titlesData: const FlTitlesData(show: true),
                      borderData: FlBorderData(
                        show: true,
                        border: const Border(
                          left: BorderSide(width: 1),
                          bottom: BorderSide(width: 1),
                        ),
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            const FlSpot(0, 1),
                            const FlSpot(1, 3),
                            const FlSpot(2, 1.8),
                            const FlSpot(3, 4),
                            const FlSpot(4, 3.5),
                            const FlSpot(5, 4.5),
                            const FlSpot(6, 4),
                          ],
                          isCurved: true,
                          color: const Color.fromARGB(255, 206, 35, 13),
                          barWidth: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Data Table Section
            Expanded(
              flex: 2,
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: const [
                        DataColumn(label: Text('Stock')),
                        DataColumn(label: Text('Price')),
                        DataColumn(label: Text('Volume')),
                        DataColumn(label: Text('Change')),
                      ],
                      rows: const [
                        DataRow(cells: [
                          DataCell(Text('AAPL')),
                          DataCell(Text('\$150')),
                          DataCell(Text('1.2M')),
                          DataCell(Text('+1.5%')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('GOOG')),
                          DataCell(Text('\$2800')),
                          DataCell(Text('500K')),
                          DataCell(Text('+2.1%')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('AMZN')),
                          DataCell(Text('\$3400')),
                          DataCell(Text('800K')),
                          DataCell(Text('-0.3%')),
                        ]),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
