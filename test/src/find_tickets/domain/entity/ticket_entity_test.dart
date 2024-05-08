// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:effective_test_work/core/utils/json.dart';
import 'package:effective_test_work/src/find_tickets/data/model/ticket_dto.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../core/fixtures/fixture_reader.dart';

void main() {
  late final List inputJson;
  setUp(() {
    inputJson =
        (json.decode(fixture('tickets.json')) as Json)['tickets'] as List;
  });
  test('should add two numbers together', () {
    List<TicketDTO> list = [];
    for (final element in inputJson) {
      list.add(TicketDTO.fromJson(element as Json));
    }
    print(list);
    expect(1 + 1, 2);
  });
}
