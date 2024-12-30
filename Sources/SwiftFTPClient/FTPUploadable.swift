//
//  FTPUploadable.swift
//
//
//  Created by Alexander Ruiz Ponce on 14/09/24.
//

import Foundation

public enum FTPTransferType {
    case binary
    case ascii
}

/// Represents the types of data that can be uploaded via FTP.
public enum FTPUploadable {
    /// Represents a file on the local filesystem to be uploaded.
    /// - Parameters:
    ///   - url: The local URL of the file.
    ///   - remoteFileName: The desired filename on the remote server.
    case file(url: URL, remoteFileName: String, transferType: FTPTransferType = .binary)

    /// Represents raw data to be uploaded.
    /// - Parameters:
    ///   - data: The data to be uploaded.
    ///   - remoteFileName: The desired filename on the remote server.
    case data(data: Data, remoteFileName: String, transferType: FTPTransferType = .binary)
}
