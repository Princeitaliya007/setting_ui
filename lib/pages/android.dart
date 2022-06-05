import '../library/source.dart';
import '../utils/color.dart';
import '../utils/string.dart';

///
/// Android UI
///

class AndroidApp extends StatefulWidget {
  const AndroidApp({Key? key}) : super(key: key);

  @override
  State<AndroidApp> createState() => _AndroidAppState();
}

class _AndroidAppState extends State<AndroidApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(settingsUi),
        elevation: 0,
        backgroundColor: bgText,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isIos = true;
                });
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                common,
                style: TextStyle(
                    color: bgText,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.language),
              title: Text(
                language,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(english),
            ),
            const Divider(
              height: 1,
            ),
            const ListTile(
              leading: Icon(Icons.cloud_outlined),
              title: Text(
                environment,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(production),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                account,
                style: TextStyle(
                    color: bgText,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.call),
              title: Text(
                phone,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            const Divider(
              height: 1,
            ),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text(
                email,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            const Divider(
              height: 1,
            ),
            const ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                signOut,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            const Divider(
              height: 1,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                security,
                style: TextStyle(
                    color: bgText,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.phonelink_lock),
              title: const Text(
                lockAppInBackground,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Switch(
                  activeColor: bgText,
                  value: fswitchval,
                  onChanged: (val) {
                    setState(() {
                      fswitchval = val;
                    });
                  }),
            ),
            const Divider(
              height: 1,
            ),
            ListTile(
              leading: const Icon(Icons.fingerprint),
              title: const Text(
                useFingerprint,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Switch(
                  activeColor: bgText,
                  value: sswitchval,
                  onChanged: (val) {
                    sswitchval = val;
                    setState(() {});
                  }),
            ),
            const Divider(
              height: 1,
            ),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text(
                changePassword,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Switch(
                  activeColor: bgText,
                  value: tswitchval,
                  onChanged: (val) {
                    tswitchval = val;
                    setState(() {});
                  }),
            ),
            const Divider(
              height: 1,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                misc,
                style: TextStyle(
                    color: bgText,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.insert_drive_file),
              title: const Text(
                termsOfService,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_right),
              ),
            ),
            const Divider(
              height: 1,
            ),
            ListTile(
              leading: const Icon(Icons.open_in_new_rounded),
              title: const Text(
                openSourceLicenses,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_right),
              ),
            ),
          ],
        ),
      ),
    );
  }
}