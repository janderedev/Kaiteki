import 'dart:developer';

import 'package:kaiteki/fediverse/backends/mastodon/client.dart';
import 'package:test/test.dart';

void main() {
  late MastodonClient client;
  setUpAll(() => client = MastodonClient("mastodon.social"));
  test("fetch instance", () async {
    final instance = await client.getInstance();
    log(
      "We are testing on ${instance.uri} (${instance.title}), an instance run by ${instance.contactAccount?.displayName} (@${instance.contactAccount?.acct}), running Mastodon ${instance.version}.",
    );
  });
  test("fetch user profile", () async {
    final user = await client.getAccount("1");
    log("${user.displayName} (@${user.username}) - ${_multiLineTrim(user.note)}");
  });
  test("fetch emojis", () async {
    final emoji = await client.getCustomEmojis();
    log("This instance has ${emoji.length} emojis");
  });
  test("fetch federated timeline", () async {
    final statuses = await client.getPublicTimeline();
    expect(statuses.length, greaterThan(0));
    log("Fetched ${statuses.length} status(es)");
  });
}

String? _multiLineTrim(String? input) {
  if (input == null) return null;
  return input.split("\n").map((l) => l.trim()).join(" ");
}
