part of permission_handler;

/// Defines the state of a permission group
enum PermissionStatus {
  /// Permission to access the requested feature is denied by the user.
  denied,

  /// The feature is disabled (or not available) on the device.
  disabled,

  /// Permission to access the requested feature is granted by the user.
  granted,

  /// The user granted restricted access to the requested feature (only on iOS).
  restricted,

  /// Permission is in an unknown state
  unknown
}

/// Defines the permission groups for which permissions can be checked or requested.
enum PermissionGroup {
  /// The unknown permission only used for return type, never requested
  unknown,

  /// Android: Camera
  /// iOS: Photos (Camera Roll and Camera)
  camera,

  /// Android: Nothing
  /// iOS: Photos
  photos,

  /// Android: External Storage
  /// iOS: Nothing
  storage,

  /// Android: None
  /// iOS: MPMediaLibrary
  mediaLibrary
}
