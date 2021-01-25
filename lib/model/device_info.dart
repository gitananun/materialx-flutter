
class DeviceInfo {

  String device;
  String os_version;
  String app_version;
  String serial;
  String regid;

  DeviceInfo();

  DeviceInfo.fromJson(Map<String, dynamic> json) {
    this.device = json['device'];
    this.os_version = json['os_version'];
    this.app_version = json['app_version'];
    this.serial = json['serial'];
    this.regid = json['regid'];
  }

  Map<String, String> toJson() => {
    'device': device,
    'os_version': os_version,
    'app_version': app_version,
    'serial': serial,
    'regid': regid,
  };

}