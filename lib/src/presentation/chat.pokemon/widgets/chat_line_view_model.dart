import 'package:dksn_githubql/src/data/model/public_chat.dart';
import 'package:dksn_githubql/src/data/repository/chat_repository_impl.dart';
import 'package:dksn_githubql/src/domain/repository/chat_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chatLineViewModelProvider = StreamProvider((ref) {
  final stream = ref.read(chatRepositoryProvider).readChat().snapshots();
  return stream.map(
      (event) => event.docs.map((e) => PublicChat.fromJson(e.data())).toList());
});
