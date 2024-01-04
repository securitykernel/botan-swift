// The Swift Programming Language
// https://docs.swift.org/swift-book

import CBotan

public func version() -> String {
    let ver: UnsafePointer<CChar> = botan_version_string();
    return String(cString: ver)
}

public func errorDescription(err: Int32) -> String {
    return String(cString: botan_error_description(err))
}
