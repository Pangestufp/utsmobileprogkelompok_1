import 'package:flutter/material.dart';

class TambahkahStock extends StatefulWidget {
  const TambahkahStock({super.key});

  @override
  State<TambahkahStock> createState() => _TambahkahStockState();
}

class _TambahkahStockState extends State<TambahkahStock> {

  Future<DateTime> _selectDate(DateTime selectedDate) async {
    DateTime _initialDate = selectedDate;
    final DateTime? _pickedDate = await showDatePicker(
      context: context,
      initialDate: _initialDate,
      firstDate: DateTime.now().subtract(Duration(days: 365)),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
    if (_pickedDate != null) {
      selectedDate = DateTime(
          _pickedDate.year,
          _pickedDate.month,
          _pickedDate.day,
          _initialDate.hour,
          _initialDate.minute,
          _initialDate.second,
          _initialDate.millisecond,
          _initialDate.microsecond);
    }
    return selectedDate;
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
