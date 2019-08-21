// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
 AWS Mobile Service provides mobile app and website developers with capabilities required to configure AWS resources and bootstrap their developer desktop projects with the necessary SDKs, constants, tools and samples to make use of those resources. 
*/
public struct Mobile {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "mobile",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-07-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MobileErrorType.self]
        )
    }

    ///   Creates an AWS Mobile Hub project. 
    public func createProject(_ input: CreateProjectRequest) throws -> Future<CreateProjectResult> {
        return try client.send(operation: "CreateProject", path: "/projects", httpMethod: "POST", input: input)
    }

    ///   Delets a project in AWS Mobile Hub. 
    public func deleteProject(_ input: DeleteProjectRequest) throws -> Future<DeleteProjectResult> {
        return try client.send(operation: "DeleteProject", path: "/projects/{projectId}", httpMethod: "DELETE", input: input)
    }

    ///   Get the bundle details for the requested bundle id. 
    public func describeBundle(_ input: DescribeBundleRequest) throws -> Future<DescribeBundleResult> {
        return try client.send(operation: "DescribeBundle", path: "/bundles/{bundleId}", httpMethod: "GET", input: input)
    }

    ///   Gets details about a project in AWS Mobile Hub. 
    public func describeProject(_ input: DescribeProjectRequest) throws -> Future<DescribeProjectResult> {
        return try client.send(operation: "DescribeProject", path: "/project", httpMethod: "GET", input: input)
    }

    ///   Generates customized software development kit (SDK) and or tool packages used to integrate mobile web or mobile app clients with backend AWS resources. 
    public func exportBundle(_ input: ExportBundleRequest) throws -> Future<ExportBundleResult> {
        return try client.send(operation: "ExportBundle", path: "/bundles/{bundleId}", httpMethod: "POST", input: input)
    }

    ///   Exports project configuration to a snapshot which can be downloaded and shared. Note that mobile app push credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account. 
    public func exportProject(_ input: ExportProjectRequest) throws -> Future<ExportProjectResult> {
        return try client.send(operation: "ExportProject", path: "/exports/{projectId}", httpMethod: "POST", input: input)
    }

    ///   List all available bundles. 
    public func listBundles(_ input: ListBundlesRequest) throws -> Future<ListBundlesResult> {
        return try client.send(operation: "ListBundles", path: "/bundles", httpMethod: "GET", input: input)
    }

    ///   Lists projects in AWS Mobile Hub. 
    public func listProjects(_ input: ListProjectsRequest) throws -> Future<ListProjectsResult> {
        return try client.send(operation: "ListProjects", path: "/projects", httpMethod: "GET", input: input)
    }

    ///   Update an existing project. 
    public func updateProject(_ input: UpdateProjectRequest) throws -> Future<UpdateProjectResult> {
        return try client.send(operation: "UpdateProject", path: "/update", httpMethod: "POST", input: input)
    }
}
