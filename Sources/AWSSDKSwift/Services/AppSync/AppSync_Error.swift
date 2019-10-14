// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for AppSync
public enum AppSyncErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case apiKeyLimitExceededException(message: String?)
    case apiKeyValidityOutOfBoundsException(message: String?)
    case apiLimitExceededException(message: String?)
    case badRequestException(message: String?)
    case concurrentModificationException(message: String?)
    case graphQLSchemaException(message: String?)
    case internalFailureException(message: String?)
    case limitExceededException(message: String?)
    case notFoundException(message: String?)
    case unauthorizedException(message: String?)
}

extension AppSyncErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "ApiKeyLimitExceededException":
            self = .apiKeyLimitExceededException(message: message)
        case "ApiKeyValidityOutOfBoundsException":
            self = .apiKeyValidityOutOfBoundsException(message: message)
        case "ApiLimitExceededException":
            self = .apiLimitExceededException(message: message)
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "GraphQLSchemaException":
            self = .graphQLSchemaException(message: message)
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        default:
            return nil
        }
    }
}

extension AppSyncErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .apiKeyLimitExceededException(let message):
            return "ApiKeyLimitExceededException: \(message ?? "")"
        case .apiKeyValidityOutOfBoundsException(let message):
            return "ApiKeyValidityOutOfBoundsException: \(message ?? "")"
        case .apiLimitExceededException(let message):
            return "ApiLimitExceededException: \(message ?? "")"
        case .badRequestException(let message):
            return "BadRequestException: \(message ?? "")"
        case .concurrentModificationException(let message):
            return "ConcurrentModificationException: \(message ?? "")"
        case .graphQLSchemaException(let message):
            return "GraphQLSchemaException: \(message ?? "")"
        case .internalFailureException(let message):
            return "InternalFailureException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        case .unauthorizedException(let message):
            return "UnauthorizedException: \(message ?? "")"
        }
    }
}
