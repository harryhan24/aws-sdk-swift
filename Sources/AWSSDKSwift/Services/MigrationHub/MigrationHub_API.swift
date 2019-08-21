// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
The AWS Migration Hub API methods help to obtain server and application migration status and integrate your resource-specific migration tool by providing a programmatic interface to Migration Hub. 
*/
public struct MigrationHub {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AWSMigrationHub",
            service: "mgh",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-05-31",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MigrationHubErrorType.self]
        )
    }

    ///  Associates a created artifact of an AWS cloud resource, the target receiving the migration, with the migration task performed by a migration tool. This API has the following traits:   Migration tools can call the AssociateCreatedArtifact operation to indicate which AWS artifact is associated with a migration task.   The created artifact name must be provided in ARN (Amazon Resource Name) format which will contain information about type and region; for example: arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b.   Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance, or DMS endpoint, etc.  
    public func associateCreatedArtifact(_ input: AssociateCreatedArtifactRequest) throws -> Future<AssociateCreatedArtifactResult> {
        return try client.send(operation: "AssociateCreatedArtifact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a discovered resource ID from Application Discovery Service (ADS) with a migration task.
    public func associateDiscoveredResource(_ input: AssociateDiscoveredResourceRequest) throws -> Future<AssociateDiscoveredResourceResult> {
        return try client.send(operation: "AssociateDiscoveredResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a progress update stream which is an AWS resource used for access control as well as a namespace for migration task names that is implicitly linked to your AWS account. It must uniquely identify the migration tool as it is used for all updates made by the tool; however, it does not need to be unique for each AWS account because it is scoped to the AWS account.
    public func createProgressUpdateStream(_ input: CreateProgressUpdateStreamRequest) throws -> Future<CreateProgressUpdateStreamResult> {
        return try client.send(operation: "CreateProgressUpdateStream", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a progress update stream, including all of its tasks, which was previously created as an AWS resource used for access control. This API has the following traits:   The only parameter needed for DeleteProgressUpdateStream is the stream name (same as a CreateProgressUpdateStream call).   The call will return, and a background process will asynchronously delete the stream and all of its resources (tasks, associated resources, resource attributes, created artifacts).   If the stream takes time to be deleted, it might still show up on a ListProgressUpdateStreams call.    CreateProgressUpdateStream, ImportMigrationTask, NotifyMigrationTaskState, and all Associate[*] APIs realted to the tasks belonging to the stream will throw "InvalidInputException" if the stream of the same name is in the process of being deleted.   Once the stream and all of its resources are deleted, CreateProgressUpdateStream for a stream of the same name will succeed, and that stream will be an entirely new logical resource (without any resources associated with the old stream).  
    public func deleteProgressUpdateStream(_ input: DeleteProgressUpdateStreamRequest) throws -> Future<DeleteProgressUpdateStreamResult> {
        return try client.send(operation: "DeleteProgressUpdateStream", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the migration status of an application.
    public func describeApplicationState(_ input: DescribeApplicationStateRequest) throws -> Future<DescribeApplicationStateResult> {
        return try client.send(operation: "DescribeApplicationState", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of all attributes associated with a specific migration task.
    public func describeMigrationTask(_ input: DescribeMigrationTaskRequest) throws -> Future<DescribeMigrationTaskResult> {
        return try client.send(operation: "DescribeMigrationTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a created artifact of an AWS resource with a migration task performed by a migration tool that was previously associated. This API has the following traits:   A migration user can call the DisassociateCreatedArtifacts operation to disassociate a created AWS Artifact from a migration task.   The created artifact name must be provided in ARN (Amazon Resource Name) format which will contain information about type and region; for example: arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b.   Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance, or RDS instance, etc.  
    public func disassociateCreatedArtifact(_ input: DisassociateCreatedArtifactRequest) throws -> Future<DisassociateCreatedArtifactResult> {
        return try client.send(operation: "DisassociateCreatedArtifact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociate an Application Discovery Service (ADS) discovered resource from a migration task.
    public func disassociateDiscoveredResource(_ input: DisassociateDiscoveredResourceRequest) throws -> Future<DisassociateDiscoveredResourceResult> {
        return try client.send(operation: "DisassociateDiscoveredResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers a new migration task which represents a server, database, etc., being migrated to AWS by a migration tool. This API is a prerequisite to calling the NotifyMigrationTaskState API as the migration tool must first register the migration task with Migration Hub.
    public func importMigrationTask(_ input: ImportMigrationTaskRequest) throws -> Future<ImportMigrationTaskResult> {
        return try client.send(operation: "ImportMigrationTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the created artifacts attached to a given migration task in an update stream. This API has the following traits:   Gets the list of the created artifacts while migration is taking place.   Shows the artifacts created by the migration tool that was associated by the AssociateCreatedArtifact API.    Lists created artifacts in a paginated interface.   
    public func listCreatedArtifacts(_ input: ListCreatedArtifactsRequest) throws -> Future<ListCreatedArtifactsResult> {
        return try client.send(operation: "ListCreatedArtifacts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists discovered resources associated with the given MigrationTask.
    public func listDiscoveredResources(_ input: ListDiscoveredResourcesRequest) throws -> Future<ListDiscoveredResourcesResult> {
        return try client.send(operation: "ListDiscoveredResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all, or filtered by resource name, migration tasks associated with the user account making this call. This API has the following traits:   Can show a summary list of the most recent migration tasks.   Can show a summary list of migration tasks associated with a given discovered resource.   Lists migration tasks in a paginated interface.  
    public func listMigrationTasks(_ input: ListMigrationTasksRequest) throws -> Future<ListMigrationTasksResult> {
        return try client.send(operation: "ListMigrationTasks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists progress update streams associated with the user account making this call.
    public func listProgressUpdateStreams(_ input: ListProgressUpdateStreamsRequest) throws -> Future<ListProgressUpdateStreamsResult> {
        return try client.send(operation: "ListProgressUpdateStreams", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the migration state of an application. For a given application identified by the value passed to ApplicationId, its status is set or updated by passing one of three values to Status: NOT_STARTED | IN_PROGRESS | COMPLETED.
    public func notifyApplicationState(_ input: NotifyApplicationStateRequest) throws -> Future<NotifyApplicationStateResult> {
        return try client.send(operation: "NotifyApplicationState", path: "/", httpMethod: "POST", input: input)
    }

    ///  Notifies Migration Hub of the current status, progress, or other detail regarding a migration task. This API has the following traits:   Migration tools will call the NotifyMigrationTaskState API to share the latest progress and status.    MigrationTaskName is used for addressing updates to the correct target.    ProgressUpdateStream is used for access control and to provide a namespace for each migration tool.  
    public func notifyMigrationTaskState(_ input: NotifyMigrationTaskStateRequest) throws -> Future<NotifyMigrationTaskStateResult> {
        return try client.send(operation: "NotifyMigrationTaskState", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides identifying details of the resource being migrated so that it can be associated in the Application Discovery Service (ADS)'s repository. This association occurs asynchronously after PutResourceAttributes returns.    Keep in mind that subsequent calls to PutResourceAttributes will override previously stored attributes. For example, if it is first called with a MAC address, but later, it is desired to add an IP address, it will then be required to call it with both the IP and MAC addresses to prevent overiding the MAC address.   Note the instructions regarding the special use case of the  ResourceAttributeList  parameter when specifying any "VM" related value.      Because this is an asynchronous call, it will always return 200, whether an association occurs or not. To confirm if an association was found based on the provided details, call ListDiscoveredResources. 
    public func putResourceAttributes(_ input: PutResourceAttributesRequest) throws -> Future<PutResourceAttributesResult> {
        return try client.send(operation: "PutResourceAttributes", path: "/", httpMethod: "POST", input: input)
    }
}
