import 'package:centrifuge/centrifuge.dart' as centrifuge;


void main() async {
	final url = 'ws://122.51.39.8:8000/connection/websocket?format=protobuf';
	final token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJhcC0xMSJ9.gJeuzPza_DYFMlj4qt64UkbEpQ2hinHWACnRcfZeNpw';

	final _client = centrifuge.createClient(url);
	_client.setToken(token);
	_client.connectStream.listen((_) {
		print('connectStream');
	});
	_client.disconnectStream.listen((_) async {
		print('disconnectStream');
	});
	_client.connect();

	print('running');
	final a = await Future.delayed(Duration(seconds: 20), () {
		return "ddd";
	});
	print(a);
}