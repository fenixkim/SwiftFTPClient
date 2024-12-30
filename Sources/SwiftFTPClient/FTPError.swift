//
//  FTPError.swift
//
//
//  Created by Alexander Ruiz Ponce on 14/09/24.
//

import Foundation

/// Represents errors that can occur during FTP operations.
public enum FTPError: Error {
    case connectionFailed(String)
    case authenticationFailed(String)
    case transferTypeFailed(String)
    case transferFailed(String)
    case cancelled
    case other(String)
}
