import 'package:flutter/material.dart';
import 'package:future_provider/screens/home.dart';
import 'package:future_provider/services/employee_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EmployeeService _employeeService = EmployeeService();
    return FutureProvider(
      create: (context) => _employeeService.fetchEmployees(),
      catchError: (context, error) {
        print(error.toString());
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Home(),
      ),
    );
  }
}
