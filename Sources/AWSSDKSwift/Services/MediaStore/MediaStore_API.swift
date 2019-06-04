// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
An AWS Elemental MediaStore container is a namespace that holds folders and objects. You use a container endpoint to create, read, and delete objects. 
*/
public struct MediaStore {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "MediaStore_20170901",
            service: "mediastore",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-09-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [MediaStoreErrorType.self]
        )
    }

    ///  Creates a storage container to hold objects. A container is similar to a bucket in the Amazon S3 service.
    public func createContainer(_ input: CreateContainerInput) throws -> Future<CreateContainerOutput> {
        return try client.send(operation: "CreateContainer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified container. Before you make a DeleteContainer request, delete any objects in the container or in any folders in the container. You can delete only empty containers. 
    public func deleteContainer(_ input: DeleteContainerInput) throws -> Future<DeleteContainerOutput> {
        return try client.send(operation: "DeleteContainer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the access policy that is associated with the specified container.
    public func deleteContainerPolicy(_ input: DeleteContainerPolicyInput) throws -> Future<DeleteContainerPolicyOutput> {
        return try client.send(operation: "DeleteContainerPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the cross-origin resource sharing (CORS) configuration information that is set for the container. To use this operation, you must have permission to perform the MediaStore:DeleteCorsPolicy action. The container owner has this permission by default and can grant this permission to others.
    public func deleteCorsPolicy(_ input: DeleteCorsPolicyInput) throws -> Future<DeleteCorsPolicyOutput> {
        return try client.send(operation: "DeleteCorsPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes an object lifecycle policy from a container. It takes up to 20 minutes for the change to take effect.
    public func deleteLifecyclePolicy(_ input: DeleteLifecyclePolicyInput) throws -> Future<DeleteLifecyclePolicyOutput> {
        return try client.send(operation: "DeleteLifecyclePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the properties of the requested container. This request is commonly used to retrieve the endpoint of a container. An endpoint is a value assigned by the service when a new container is created. A container's endpoint does not change after it has been assigned. The DescribeContainer request returns a single Container object based on ContainerName. To return all Container objects that are associated with a specified AWS account, use ListContainers.
    public func describeContainer(_ input: DescribeContainerInput) throws -> Future<DescribeContainerOutput> {
        return try client.send(operation: "DescribeContainer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the access policy for the specified container. For information about the data that is included in an access policy, see the AWS Identity and Access Management User Guide.
    public func getContainerPolicy(_ input: GetContainerPolicyInput) throws -> Future<GetContainerPolicyOutput> {
        return try client.send(operation: "GetContainerPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the cross-origin resource sharing (CORS) configuration information that is set for the container. To use this operation, you must have permission to perform the MediaStore:GetCorsPolicy action. By default, the container owner has this permission and can grant it to others.
    public func getCorsPolicy(_ input: GetCorsPolicyInput) throws -> Future<GetCorsPolicyOutput> {
        return try client.send(operation: "GetCorsPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the object lifecycle policy that is assigned to a container.
    public func getLifecyclePolicy(_ input: GetLifecyclePolicyInput) throws -> Future<GetLifecyclePolicyOutput> {
        return try client.send(operation: "GetLifecyclePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the properties of all containers in AWS Elemental MediaStore.  You can query to receive all the containers in one response. Or you can include the MaxResults parameter to receive a limited number of containers in each response. In this case, the response includes a token. To get the next set of containers, send the command again, this time with the NextToken parameter (with the returned token as its value). The next set of responses appears, with a token if there are still more containers to receive.  See also DescribeContainer, which gets the properties of one container. 
    public func listContainers(_ input: ListContainersInput) throws -> Future<ListContainersOutput> {
        return try client.send(operation: "ListContainers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an access policy for the specified container to restrict the users and clients that can access it. For information about the data that is included in an access policy, see the AWS Identity and Access Management User Guide. For this release of the REST API, you can create only one policy for a container. If you enter PutContainerPolicy twice, the second command modifies the existing policy. 
    public func putContainerPolicy(_ input: PutContainerPolicyInput) throws -> Future<PutContainerPolicyOutput> {
        return try client.send(operation: "PutContainerPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the cross-origin resource sharing (CORS) configuration on a container so that the container can service cross-origin requests. For example, you might want to enable a request whose origin is http://www.example.com to access your AWS Elemental MediaStore container at my.example.container.com by using the browser's XMLHttpRequest capability. To enable CORS on a container, you attach a CORS policy to the container. In the CORS policy, you configure rules that identify origins and the HTTP methods that can be executed on your container. The policy can contain up to 398,000 characters. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed. To learn more about CORS, see Cross-Origin Resource Sharing (CORS) in AWS Elemental MediaStore.
    public func putCorsPolicy(_ input: PutCorsPolicyInput) throws -> Future<PutCorsPolicyOutput> {
        return try client.send(operation: "PutCorsPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Writes an object lifecycle policy to a container. If the container already has an object lifecycle policy, the service replaces the existing policy with the new policy. It takes up to 20 minutes for the change to take effect. For information about how to construct an object lifecycle policy, see Components of an Object Lifecycle Policy.
    public func putLifecyclePolicy(_ input: PutLifecyclePolicyInput) throws -> Future<PutLifecyclePolicyOutput> {
        return try client.send(operation: "PutLifecyclePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts access logging on the specified container. When you enable access logging on a container, MediaStore delivers access logs for objects stored in that container to Amazon CloudWatch Logs.
    public func startAccessLogging(_ input: StartAccessLoggingInput) throws -> Future<StartAccessLoggingOutput> {
        return try client.send(operation: "StartAccessLogging", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops access logging on the specified container. When you stop access logging on a container, MediaStore stops sending access logs to Amazon CloudWatch Logs. These access logs are not saved and are not retrievable.
    public func stopAccessLogging(_ input: StopAccessLoggingInput) throws -> Future<StopAccessLoggingOutput> {
        return try client.send(operation: "StopAccessLogging", path: "/", httpMethod: "POST", input: input)
    }


}