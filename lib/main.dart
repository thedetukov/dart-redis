import 'package:redis/redis.dart';

void main() async {
  final conn = RedisConnection();
  final Command command = await conn.connect('127.0.0.1', 6379);
  final dynamic response = await command.send_object(["SET", "key", "012345"]);
  print(response);
  final dynamic res = await command.send_object(["GET", "key"]);
  print(res);
}
