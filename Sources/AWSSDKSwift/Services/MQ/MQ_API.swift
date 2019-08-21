// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon MQ is a managed message broker service for Apache ActiveMQ that makes it easy to set up and operate message brokers in the cloud. A message broker allows software applications and components to communicate using various programming languages, operating systems, and formal messaging protocols.
*/
public struct MQ {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "mq",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-11-27",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MQErrorType.self]
        )
    }

    ///  Creates a broker. Note: This API is asynchronous.
    public func createBroker(_ input: CreateBrokerRequest) throws -> Future<CreateBrokerResponse> {
        return try client.send(operation: "CreateBroker", path: "/v1/brokers", httpMethod: "POST", input: input)
    }

    ///  Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).
    public func createConfiguration(_ input: CreateConfigurationRequest) throws -> Future<CreateConfigurationResponse> {
        return try client.send(operation: "CreateConfiguration", path: "/v1/configurations", httpMethod: "POST", input: input)
    }

    ///  Add a tag to a resource.
    @discardableResult public func createTags(_ input: CreateTagsRequest) throws -> Future<Void> {
        return try client.send(operation: "CreateTags", path: "/v1/tags/{resource-arn}", httpMethod: "POST", input: input)
    }

    ///  Creates an ActiveMQ user.
    public func createUser(_ input: CreateUserRequest) throws -> Future<CreateUserResponse> {
        return try client.send(operation: "CreateUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: "POST", input: input)
    }

    ///  Deletes a broker. Note: This API is asynchronous.
    public func deleteBroker(_ input: DeleteBrokerRequest) throws -> Future<DeleteBrokerResponse> {
        return try client.send(operation: "DeleteBroker", path: "/v1/brokers/{broker-id}", httpMethod: "DELETE", input: input)
    }

    ///  Removes a tag from a resource.
    @discardableResult public func deleteTags(_ input: DeleteTagsRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteTags", path: "/v1/tags/{resource-arn}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an ActiveMQ user.
    public func deleteUser(_ input: DeleteUserRequest) throws -> Future<DeleteUserResponse> {
        return try client.send(operation: "DeleteUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: "DELETE", input: input)
    }

    ///  Returns information about the specified broker.
    public func describeBroker(_ input: DescribeBrokerRequest) throws -> Future<DescribeBrokerResponse> {
        return try client.send(operation: "DescribeBroker", path: "/v1/brokers/{broker-id}", httpMethod: "GET", input: input)
    }

    ///  Describe available engine types and versions.
    public func describeBrokerEngineTypes(_ input: DescribeBrokerEngineTypesRequest) throws -> Future<DescribeBrokerEngineTypesResponse> {
        return try client.send(operation: "DescribeBrokerEngineTypes", path: "/v1/broker-engine-types", httpMethod: "GET", input: input)
    }

    ///  Describe available broker instance options.
    public func describeBrokerInstanceOptions(_ input: DescribeBrokerInstanceOptionsRequest) throws -> Future<DescribeBrokerInstanceOptionsResponse> {
        return try client.send(operation: "DescribeBrokerInstanceOptions", path: "/v1/broker-instance-options", httpMethod: "GET", input: input)
    }

    ///  Returns information about the specified configuration.
    public func describeConfiguration(_ input: DescribeConfigurationRequest) throws -> Future<DescribeConfigurationResponse> {
        return try client.send(operation: "DescribeConfiguration", path: "/v1/configurations/{configuration-id}", httpMethod: "GET", input: input)
    }

    ///  Returns the specified configuration revision for the specified configuration.
    public func describeConfigurationRevision(_ input: DescribeConfigurationRevisionRequest) throws -> Future<DescribeConfigurationRevisionResponse> {
        return try client.send(operation: "DescribeConfigurationRevision", path: "/v1/configurations/{configuration-id}/revisions/{configuration-revision}", httpMethod: "GET", input: input)
    }

    ///  Returns information about an ActiveMQ user.
    public func describeUser(_ input: DescribeUserRequest) throws -> Future<DescribeUserResponse> {
        return try client.send(operation: "DescribeUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: "GET", input: input)
    }

    ///  Returns a list of all brokers.
    public func listBrokers(_ input: ListBrokersRequest) throws -> Future<ListBrokersResponse> {
        return try client.send(operation: "ListBrokers", path: "/v1/brokers", httpMethod: "GET", input: input)
    }

    ///  Returns a list of all revisions for the specified configuration.
    public func listConfigurationRevisions(_ input: ListConfigurationRevisionsRequest) throws -> Future<ListConfigurationRevisionsResponse> {
        return try client.send(operation: "ListConfigurationRevisions", path: "/v1/configurations/{configuration-id}/revisions", httpMethod: "GET", input: input)
    }

    ///  Returns a list of all configurations.
    public func listConfigurations(_ input: ListConfigurationsRequest) throws -> Future<ListConfigurationsResponse> {
        return try client.send(operation: "ListConfigurations", path: "/v1/configurations", httpMethod: "GET", input: input)
    }

    ///  Lists tags for a resource.
    public func listTags(_ input: ListTagsRequest) throws -> Future<ListTagsResponse> {
        return try client.send(operation: "ListTags", path: "/v1/tags/{resource-arn}", httpMethod: "GET", input: input)
    }

    ///  Returns a list of all ActiveMQ users.
    public func listUsers(_ input: ListUsersRequest) throws -> Future<ListUsersResponse> {
        return try client.send(operation: "ListUsers", path: "/v1/brokers/{broker-id}/users", httpMethod: "GET", input: input)
    }

    ///  Reboots a broker. Note: This API is asynchronous.
    public func rebootBroker(_ input: RebootBrokerRequest) throws -> Future<RebootBrokerResponse> {
        return try client.send(operation: "RebootBroker", path: "/v1/brokers/{broker-id}/reboot", httpMethod: "POST", input: input)
    }

    ///  Adds a pending configuration change to a broker.
    public func updateBroker(_ input: UpdateBrokerRequest) throws -> Future<UpdateBrokerResponse> {
        return try client.send(operation: "UpdateBroker", path: "/v1/brokers/{broker-id}", httpMethod: "PUT", input: input)
    }

    ///  Updates the specified configuration.
    public func updateConfiguration(_ input: UpdateConfigurationRequest) throws -> Future<UpdateConfigurationResponse> {
        return try client.send(operation: "UpdateConfiguration", path: "/v1/configurations/{configuration-id}", httpMethod: "PUT", input: input)
    }

    ///  Updates the information for an ActiveMQ user.
    public func updateUser(_ input: UpdateUserRequest) throws -> Future<UpdateUserResponse> {
        return try client.send(operation: "UpdateUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: "PUT", input: input)
    }
}
