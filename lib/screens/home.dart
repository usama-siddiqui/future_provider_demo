import 'package:flutter/material.dart';
import 'package:future_provider/models/employee.dart';
import 'package:future_provider/screens/employee_page.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Employee> _employeeList = Provider.of<List<Employee>>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Employees"),
      ),
      body: (_employeeList == null)
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _employeeList.length,
              itemBuilder: (context, position) {
                return ListTile(
                  title: Text(_employeeList[position].name),
                  subtitle: Text(_employeeList[position].email),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return EmployeePage(
                        id: _employeeList[position].id,
                        name: _employeeList[position].name,
                      );
                    }));
                  },
                );
              }),
    );
  }
}
