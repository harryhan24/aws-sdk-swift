// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS EC2 Connect Service is a service that enables system administrators to publish temporary SSH keys to their EC2 instances in order to establish connections to their instances without leaving a permanent authentication option.
*/
public struct EC2InstanceConnect {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AWSEC2InstanceConnectService",
            service: "ec2-instance-connect",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-04-02",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [EC2InstanceConnectErrorType.self]
        )
    }

    ///  Pushes an SSH public key to a particular OS user on a given EC2 instance for 60 seconds.
    public func sendSSHPublicKey(_ input: SendSSHPublicKeyRequest) throws -> Future<SendSSHPublicKeyResponse> {
        return try client.send(operation: "SendSSHPublicKey", path: "/", httpMethod: "POST", input: input)
    }
}
