// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon Inspector Amazon Inspector enables you to analyze the behavior of your AWS resources and to identify potential security issues. For more information, see  Amazon Inspector User Guide.
*/
public struct Inspector {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "InspectorService",
            service: "inspector",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-02-16",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [InspectorErrorType.self]
        )
    }

    ///  Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings.
    public func addAttributesToFindings(_ input: AddAttributesToFindingsRequest) throws -> Future<AddAttributesToFindingsResponse> {
        return try client.send(operation: "AddAttributesToFindings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new assessment target using the ARN of the resource group that is generated by CreateResourceGroup. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target. If the service-linked role isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments. You can create up to 50 assessment targets per AWS account. You can run up to 500 concurrent agents per AWS account. For more information, see  Amazon Inspector Assessment Targets.
    public func createAssessmentTarget(_ input: CreateAssessmentTargetRequest) throws -> Future<CreateAssessmentTargetResponse> {
        return try client.send(operation: "CreateAssessmentTarget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an assessment template for the assessment target that is specified by the ARN of the assessment target. If the service-linked role isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments.
    public func createAssessmentTemplate(_ input: CreateAssessmentTemplateRequest) throws -> Future<CreateAssessmentTemplateResponse> {
        return try client.send(operation: "CreateAssessmentTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts the generation of an exclusions preview for the specified assessment template. The exclusions preview lists the potential exclusions (ExclusionPreview) that Inspector can detect before it runs the assessment. 
    public func createExclusionsPreview(_ input: CreateExclusionsPreviewRequest) throws -> Future<CreateExclusionsPreviewResponse> {
        return try client.send(operation: "CreateExclusionsPreview", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target. The created resource group is then used to create an Amazon Inspector assessment target. For more information, see CreateAssessmentTarget.
    public func createResourceGroup(_ input: CreateResourceGroupRequest) throws -> Future<CreateResourceGroupResponse> {
        return try client.send(operation: "CreateResourceGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the assessment run that is specified by the ARN of the assessment run.
    @discardableResult public func deleteAssessmentRun(_ input: DeleteAssessmentRunRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteAssessmentRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the assessment target that is specified by the ARN of the assessment target.
    @discardableResult public func deleteAssessmentTarget(_ input: DeleteAssessmentTargetRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteAssessmentTarget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the assessment template that is specified by the ARN of the assessment template.
    @discardableResult public func deleteAssessmentTemplate(_ input: DeleteAssessmentTemplateRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteAssessmentTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the assessment runs that are specified by the ARNs of the assessment runs.
    public func describeAssessmentRuns(_ input: DescribeAssessmentRunsRequest) throws -> Future<DescribeAssessmentRunsResponse> {
        return try client.send(operation: "DescribeAssessmentRuns", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the assessment targets that are specified by the ARNs of the assessment targets.
    public func describeAssessmentTargets(_ input: DescribeAssessmentTargetsRequest) throws -> Future<DescribeAssessmentTargetsResponse> {
        return try client.send(operation: "DescribeAssessmentTargets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the assessment templates that are specified by the ARNs of the assessment templates.
    public func describeAssessmentTemplates(_ input: DescribeAssessmentTemplatesRequest) throws -> Future<DescribeAssessmentTemplatesResponse> {
        return try client.send(operation: "DescribeAssessmentTemplates", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the IAM role that enables Amazon Inspector to access your AWS account.
    public func describeCrossAccountAccessRole() throws -> Future<DescribeCrossAccountAccessRoleResponse> {
        return try client.send(operation: "DescribeCrossAccountAccessRole", path: "/", httpMethod: "POST")
    }

    ///  Describes the exclusions that are specified by the exclusions' ARNs.
    public func describeExclusions(_ input: DescribeExclusionsRequest) throws -> Future<DescribeExclusionsResponse> {
        return try client.send(operation: "DescribeExclusions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the findings that are specified by the ARNs of the findings.
    public func describeFindings(_ input: DescribeFindingsRequest) throws -> Future<DescribeFindingsResponse> {
        return try client.send(operation: "DescribeFindings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the resource groups that are specified by the ARNs of the resource groups.
    public func describeResourceGroups(_ input: DescribeResourceGroupsRequest) throws -> Future<DescribeResourceGroupsResponse> {
        return try client.send(operation: "DescribeResourceGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the rules packages that are specified by the ARNs of the rules packages.
    public func describeRulesPackages(_ input: DescribeRulesPackagesRequest) throws -> Future<DescribeRulesPackagesResponse> {
        return try client.send(operation: "DescribeRulesPackages", path: "/", httpMethod: "POST", input: input)
    }

    ///  Produces an assessment report that includes detailed and comprehensive results of a specified assessment run. 
    public func getAssessmentReport(_ input: GetAssessmentReportRequest) throws -> Future<GetAssessmentReportResponse> {
        return try client.send(operation: "GetAssessmentReport", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token. You can obtain the preview token by running the CreateExclusionsPreview API.
    public func getExclusionsPreview(_ input: GetExclusionsPreviewRequest) throws -> Future<GetExclusionsPreviewResponse> {
        return try client.send(operation: "GetExclusionsPreview", path: "/", httpMethod: "POST", input: input)
    }

    ///  Information about the data that is collected for the specified assessment run.
    public func getTelemetryMetadata(_ input: GetTelemetryMetadataRequest) throws -> Future<GetTelemetryMetadataResponse> {
        return try client.send(operation: "GetTelemetryMetadata", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.
    public func listAssessmentRunAgents(_ input: ListAssessmentRunAgentsRequest) throws -> Future<ListAssessmentRunAgentsResponse> {
        return try client.send(operation: "ListAssessmentRunAgents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.
    public func listAssessmentRuns(_ input: ListAssessmentRunsRequest) throws -> Future<ListAssessmentRunsResponse> {
        return try client.send(operation: "ListAssessmentRuns", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see Amazon Inspector Assessment Targets.
    public func listAssessmentTargets(_ input: ListAssessmentTargetsRequest) throws -> Future<ListAssessmentTargetsResponse> {
        return try client.send(operation: "ListAssessmentTargets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
    public func listAssessmentTemplates(_ input: ListAssessmentTemplatesRequest) throws -> Future<ListAssessmentTemplatesResponse> {
        return try client.send(operation: "ListAssessmentTemplates", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see SubscribeToEvent and UnsubscribeFromEvent.
    public func listEventSubscriptions(_ input: ListEventSubscriptionsRequest) throws -> Future<ListEventSubscriptionsResponse> {
        return try client.send(operation: "ListEventSubscriptions", path: "/", httpMethod: "POST", input: input)
    }

    ///  List exclusions that are generated by the assessment run.
    public func listExclusions(_ input: ListExclusionsRequest) throws -> Future<ListExclusionsResponse> {
        return try client.send(operation: "ListExclusions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.
    public func listFindings(_ input: ListFindingsRequest) throws -> Future<ListFindingsResponse> {
        return try client.send(operation: "ListFindings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all available Amazon Inspector rules packages.
    public func listRulesPackages(_ input: ListRulesPackagesRequest) throws -> Future<ListRulesPackagesResponse> {
        return try client.send(operation: "ListRulesPackages", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all tags associated with an assessment template.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Previews the agents installed on the EC2 instances that are part of the specified assessment target.
    public func previewAgents(_ input: PreviewAgentsRequest) throws -> Future<PreviewAgentsResponse> {
        return try client.send(operation: "PreviewAgents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments.
    @discardableResult public func registerCrossAccountAccessRole(_ input: RegisterCrossAccountAccessRoleRequest) throws -> Future<Void> {
        return try client.send(operation: "RegisterCrossAccountAccessRole", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists.
    public func removeAttributesFromFindings(_ input: RemoveAttributesFromFindingsRequest) throws -> Future<RemoveAttributesFromFindingsResponse> {
        return try client.send(operation: "RemoveAttributesFromFindings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template.
    @discardableResult public func setTagsForResource(_ input: SetTagsForResourceRequest) throws -> Future<Void> {
        return try client.send(operation: "SetTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts the assessment run specified by the ARN of the assessment template. For this API to function properly, you must not exceed the limit of running up to 500 concurrent agents per AWS account.
    public func startAssessmentRun(_ input: StartAssessmentRunRequest) throws -> Future<StartAssessmentRunResponse> {
        return try client.send(operation: "StartAssessmentRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops the assessment run that is specified by the ARN of the assessment run.
    @discardableResult public func stopAssessmentRun(_ input: StopAssessmentRunRequest) throws -> Future<Void> {
        return try client.send(operation: "StopAssessmentRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    @discardableResult public func subscribeToEvent(_ input: SubscribeToEventRequest) throws -> Future<Void> {
        return try client.send(operation: "SubscribeToEvent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    @discardableResult public func unsubscribeFromEvent(_ input: UnsubscribeFromEventRequest) throws -> Future<Void> {
        return try client.send(operation: "UnsubscribeFromEvent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the assessment target that is specified by the ARN of the assessment target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
    @discardableResult public func updateAssessmentTarget(_ input: UpdateAssessmentTargetRequest) throws -> Future<Void> {
        return try client.send(operation: "UpdateAssessmentTarget", path: "/", httpMethod: "POST", input: input)
    }
}
