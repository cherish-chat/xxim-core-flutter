class CxnParams {
  final String packageId;
  final String platform;
  final String deviceId;
  final String deviceModel;
  final String osVersion;
  final String appVersion;
  final String language;
  final String networkUsed;
  final String aesKey;
  final String aesIv;
  final String ext;

  const CxnParams({
    required this.packageId,
    required this.platform,
    required this.deviceId,
    required this.deviceModel,
    required this.osVersion,
    required this.appVersion,
    required this.language,
    required this.networkUsed,
    this.aesKey = "",
    this.aesIv = "",
    this.ext = "",
  });
}
