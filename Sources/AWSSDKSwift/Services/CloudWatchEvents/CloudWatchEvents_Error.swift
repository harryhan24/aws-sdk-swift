// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CloudWatchEvents
public enum CloudWatchEventsErrorType: AWSErrorType {
    case resourceNotFoundException(message: String?)
    case concurrentModificationException(message: String?)
    case internalException(message: String?)
    case limitExceededException(message: String?)
    case invalidEventPatternException(message: String?)
    case policyLengthExceededException(message: String?)
}

extension CloudWatchEventsErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "InternalException":
            self = .internalException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "InvalidEventPatternException":
            self = .invalidEventPatternException(message: message)
        case "PolicyLengthExceededException":
            self = .policyLengthExceededException(message: message)
        default:
            return nil
        }
    }
}