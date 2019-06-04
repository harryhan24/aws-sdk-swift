// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon Macie Amazon Macie is a security service that uses machine learning to automatically discover, classify, and protect sensitive data in AWS. Macie recognizes sensitive data such as personally identifiable information (PII) or intellectual property, and provides you with dashboards and alerts that give visibility into how this data is being accessed or moved. For more information, see the Macie User Guide. 
*/
public struct Macie {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "MacieService",
            service: "macie",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-12-19",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [MacieErrorType.self]
        )
    }

    ///  Associates a specified AWS account with Amazon Macie as a member account.
    @discardableResult public func associateMemberAccount(_ input: AssociateMemberAccountRequest) throws -> Future<Void> {
        return try client.send(operation: "AssociateMemberAccount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates specified S3 resources with Amazon Macie for monitoring and data classification. If memberAccountId isn't specified, the action associates specified S3 resources with Macie for the current master account. If memberAccountId is specified, the action associates specified S3 resources with Macie for the specified member account. 
    public func associateS3Resources(_ input: AssociateS3ResourcesRequest) throws -> Future<AssociateS3ResourcesResult> {
        return try client.send(operation: "AssociateS3Resources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified member account from Amazon Macie.
    @discardableResult public func disassociateMemberAccount(_ input: DisassociateMemberAccountRequest) throws -> Future<Void> {
        return try client.send(operation: "DisassociateMemberAccount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes specified S3 resources from being monitored by Amazon Macie. If memberAccountId isn't specified, the action removes specified S3 resources from Macie for the current master account. If memberAccountId is specified, the action removes specified S3 resources from Macie for the specified member account.
    public func disassociateS3Resources(_ input: DisassociateS3ResourcesRequest) throws -> Future<DisassociateS3ResourcesResult> {
        return try client.send(operation: "DisassociateS3Resources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all Amazon Macie member accounts for the current Amazon Macie master account.
    public func listMemberAccounts(_ input: ListMemberAccountsRequest) throws -> Future<ListMemberAccountsResult> {
        return try client.send(operation: "ListMemberAccounts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the S3 resources associated with Amazon Macie. If memberAccountId isn't specified, the action lists the S3 resources associated with Amazon Macie for the current master account. If memberAccountId is specified, the action lists the S3 resources associated with Amazon Macie for the specified member account. 
    public func listS3Resources(_ input: ListS3ResourcesRequest) throws -> Future<ListS3ResourcesResult> {
        return try client.send(operation: "ListS3Resources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the classification types for the specified S3 resources. If memberAccountId isn't specified, the action updates the classification types of the S3 resources associated with Amazon Macie for the current master account. If memberAccountId is specified, the action updates the classification types of the S3 resources associated with Amazon Macie for the specified member account. 
    public func updateS3Resources(_ input: UpdateS3ResourcesRequest) throws -> Future<UpdateS3ResourcesResult> {
        return try client.send(operation: "UpdateS3Resources", path: "/", httpMethod: "POST", input: input)
    }


}