import 'package:outcaster_project1/library/source.dart';
import 'package:flutter/cupertino.dart';
import '../utils/color.dart';
import '../utils/string.dart';

///
/// Ios UI
///

class IosPage extends StatefulWidget {
  const IosPage({Key? key}) : super(key: key);

  @override
  State<IosPage> createState() => _IosPageState();
}

class _IosPageState extends State<IosPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ibg,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: const Color(0xffF64728),
        middle: const Text(
          iSettingsUi,
          style: TextStyle(color: iWhite),
        ),
        trailing: CupertinoButton(
          padding: const EdgeInsets.only(bottom: 1.5,left: 5),
          onPressed: () {
            setState(() {
              isIos = false;
            });
          },
          child: const Icon(
            Icons.add,
            color: iWhite,
          ),
        ),
      ),
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
              iCommon,
              style: TextStyle(
                  color: iBgText,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: iWhite,
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.language,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      iLanguage,
                      style: TextStyle(color: iText),
                    ),
                    const Spacer(),
                    Text(
                      iEnglish,
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.cloud_outlined,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      iEnvironment,
                      style: TextStyle(color: iText),
                    ),
                    const Spacer(),
                    Text(
                      iProduction,
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              iAccount,
              style: TextStyle(
                  color: iBgText,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: iWhite,
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.call,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      iPhone,
                      style: TextStyle(color: iText),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      iEmail,
                      style: TextStyle(color: iText),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.exit_to_app,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      iSignOut,
                      style: TextStyle(color: iText),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              iSecurity,
              style: TextStyle(
                  color: iBgText,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: iWhite,
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.phonelink_lock_outlined,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      iLockAppInBackground,
                      style: TextStyle(color: iText),
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                        activeColor: iRed,
                        value: fswitchval, onChanged: (val){
                      setState(() {
                        fswitchval = val;
                      });
                    }),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.fingerprint,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      iUseFingerprint,
                      style: TextStyle(color: iText),
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                        activeColor: iRed,
                        value: sswitchval, onChanged: (val){
                      setState(() {
                        sswitchval = val;
                      });
                    }),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      iChangePassword,
                      style: TextStyle(color: iText),
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                        activeColor: iRed,
                        value: tswitchval, onChanged: (val){
                      setState(() {
                        tswitchval = val;
                      });
                    }),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              iMisc,
              style: TextStyle(
                  color: iBgText,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: iWhite,
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.insert_drive_file,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      iTermsOfService,
                      style: TextStyle(color: iText),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.open_in_new_rounded,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      iOpenSourceLicenses,
                      style: TextStyle(color: iText),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
