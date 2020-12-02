// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ps locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ps';

  static m0(firstname, lastname) => "زما نوم دي ${firstname} ${lastname}";

  static m1(name) => "زما نوم دي ${name}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "full_name" : m0,
    "hint" : MessageLookupByLibrary.simpleMessage("ژبه وټاکئ"),
    "msg" : MessageLookupByLibrary.simpleMessage("اې! ته څنګه یاست؟"),
    "name" : m1,
    "title" : MessageLookupByLibrary.simpleMessage("د ځایی کولو ډیمو")
  };
}
