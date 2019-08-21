// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Security Hub provides you with a comprehensive view of the security state of your AWS environment and resources. It also provides you with the compliance status of your environment based on CIS AWS Foundations compliance checks. Security Hub collects security data from AWS accounts, services, and integrated third-party products and helps you analyze security trends in your environment to identify the highest priority security issues. For more information about Security Hub, see the  AWS Security Hub User Guide . When you use operations in the Security Hub API, the requests are executed only in the AWS Region that is currently active or in the specific AWS Region that you specify in your request. Any configuration or settings change that results from the operation is applied only to that Region. To make the same change in other Regions, execute the same command for each Region to apply the change to. For example, if your Region is set to us-west-2, when you use CreateMembers to add a member account to Security Hub, the association of the member account with the master account is created only in the us-west-2 Region. Security Hub must be enabled for the member account in the same Region that the invite was sent from.
*/
public struct SecurityHub {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "securityhub",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-10-26",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [SecurityHubErrorType.self]
        )
    }

    ///  Accepts the invitation to be a member account and be monitored by the Security Hub master account that the invitation was sent from. When the member account accepts the invitation, permission is granted to the master account to view findings generated in the member account.
    public func acceptInvitation(_ input: AcceptInvitationRequest) throws -> Future<AcceptInvitationResponse> {
        return try client.send(operation: "AcceptInvitation", path: "/master", httpMethod: "POST", input: input)
    }

    ///  Disables the standards specified by the provided StandardsSubscriptionArns. For more information, see Standards Supported in AWS Security Hub.
    public func batchDisableStandards(_ input: BatchDisableStandardsRequest) throws -> Future<BatchDisableStandardsResponse> {
        return try client.send(operation: "BatchDisableStandards", path: "/standards/deregister", httpMethod: "POST", input: input)
    }

    ///  Enables the standards specified by the provided standardsArn. In this release, only CIS AWS Foundations standards are supported. For more information, see Standards Supported in AWS Security Hub.
    public func batchEnableStandards(_ input: BatchEnableStandardsRequest) throws -> Future<BatchEnableStandardsResponse> {
        return try client.send(operation: "BatchEnableStandards", path: "/standards/register", httpMethod: "POST", input: input)
    }

    ///  Imports security findings generated from an integrated third-party product into Security Hub. This action is requested by the integrated product to import its findings into Security Hub. The maximum allowed size for a finding is 240 Kb. An error is returned for any finding larger than 240 Kb.
    public func batchImportFindings(_ input: BatchImportFindingsRequest) throws -> Future<BatchImportFindingsResponse> {
        return try client.send(operation: "BatchImportFindings", path: "/findings/import", httpMethod: "POST", input: input)
    }

    ///  Creates a custom action target in Security Hub. You can use custom actions on findings and insights in Security Hub to trigger target actions in Amazon CloudWatch Events.
    public func createActionTarget(_ input: CreateActionTargetRequest) throws -> Future<CreateActionTargetResponse> {
        return try client.send(operation: "CreateActionTarget", path: "/actionTargets", httpMethod: "POST", input: input)
    }

    ///  Creates a custom insight in Security Hub. An insight is a consolidation of findings that relate to a security issue that requires attention or remediation. Use the GroupByAttribute to group the related findings in the insight.
    public func createInsight(_ input: CreateInsightRequest) throws -> Future<CreateInsightResponse> {
        return try client.send(operation: "CreateInsight", path: "/insights", httpMethod: "POST", input: input)
    }

    ///  Creates a member association in Security Hub between the specified accounts and the account used to make the request, which is the master account. To successfully create a member, you must use this action from an account that already has Security Hub enabled. You can use the EnableSecurityHub to enable Security Hub. After you use CreateMembers to create member account associations in Security Hub, you need to use the InviteMembers action, which invites the accounts to enable Security Hub and become member accounts in Security Hub. If the invitation is accepted by the account owner, the account becomes a member account in Security Hub, and a permission policy is added that permits the master account to view the findings generated in the member account. When Security Hub is enabled in the invited account, findings start being sent to both the member and master accounts. You can remove the association between the master and member accounts by using the DisassociateFromMasterAccount or DisassociateMembers operation.
    public func createMembers(_ input: CreateMembersRequest) throws -> Future<CreateMembersResponse> {
        return try client.send(operation: "CreateMembers", path: "/members", httpMethod: "POST", input: input)
    }

    ///  Declines invitations to become a member account.
    public func declineInvitations(_ input: DeclineInvitationsRequest) throws -> Future<DeclineInvitationsResponse> {
        return try client.send(operation: "DeclineInvitations", path: "/invitations/decline", httpMethod: "POST", input: input)
    }

    ///  Deletes a custom action target from Security Hub. Deleting a custom action target doesn't affect any findings or insights that were already sent to Amazon CloudWatch Events using the custom action.
    public func deleteActionTarget(_ input: DeleteActionTargetRequest) throws -> Future<DeleteActionTargetResponse> {
        return try client.send(operation: "DeleteActionTarget", path: "/actionTargets/{ActionTargetArn+}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the insight specified by the InsightArn.
    public func deleteInsight(_ input: DeleteInsightRequest) throws -> Future<DeleteInsightResponse> {
        return try client.send(operation: "DeleteInsight", path: "/insights/{InsightArn+}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes invitations received by the AWS account to become a member account.
    public func deleteInvitations(_ input: DeleteInvitationsRequest) throws -> Future<DeleteInvitationsResponse> {
        return try client.send(operation: "DeleteInvitations", path: "/invitations/delete", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified member accounts from Security Hub.
    public func deleteMembers(_ input: DeleteMembersRequest) throws -> Future<DeleteMembersResponse> {
        return try client.send(operation: "DeleteMembers", path: "/members/delete", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the custom action targets in Security Hub in your account.
    public func describeActionTargets(_ input: DescribeActionTargetsRequest) throws -> Future<DescribeActionTargetsResponse> {
        return try client.send(operation: "DescribeActionTargets", path: "/actionTargets/get", httpMethod: "POST", input: input)
    }

    ///  Returns details about the Hub resource in your account, including the HubArn and the time when you enabled Security Hub.
    public func describeHub(_ input: DescribeHubRequest) throws -> Future<DescribeHubResponse> {
        return try client.send(operation: "DescribeHub", path: "/accounts", httpMethod: "GET", input: input)
    }

    ///  Returns information about the products available that you can subscribe to and integrate with Security Hub to consolidate findings.
    public func describeProducts(_ input: DescribeProductsRequest) throws -> Future<DescribeProductsResponse> {
        return try client.send(operation: "DescribeProducts", path: "/products", httpMethod: "GET", input: input)
    }

    ///  Disables the integration of the specified product with Security Hub. Findings from that product are no longer sent to Security Hub after the integration is disabled.
    public func disableImportFindingsForProduct(_ input: DisableImportFindingsForProductRequest) throws -> Future<DisableImportFindingsForProductResponse> {
        return try client.send(operation: "DisableImportFindingsForProduct", path: "/productSubscriptions/{ProductSubscriptionArn+}", httpMethod: "DELETE", input: input)
    }

    ///  Disables Security Hub in your account only in the current Region. To disable Security Hub in all Regions, you must submit one request per Region where you have enabled Security Hub. When you disable Security Hub for a master account, it doesn't disable Security Hub for any associated member accounts. When you disable Security Hub, your existing findings and insights and any Security Hub configuration settings are deleted after 90 days and can't be recovered. Any standards that were enabled are disabled, and your master and member account associations are removed. If you want to save your existing findings, you must export them before you disable Security Hub.
    public func disableSecurityHub(_ input: DisableSecurityHubRequest) throws -> Future<DisableSecurityHubResponse> {
        return try client.send(operation: "DisableSecurityHub", path: "/accounts", httpMethod: "DELETE", input: input)
    }

    ///  Disassociates the current Security Hub member account from the associated master account.
    public func disassociateFromMasterAccount(_ input: DisassociateFromMasterAccountRequest) throws -> Future<DisassociateFromMasterAccountResponse> {
        return try client.send(operation: "DisassociateFromMasterAccount", path: "/master/disassociate", httpMethod: "POST", input: input)
    }

    ///  Disassociates the specified member accounts from the associated master account.
    public func disassociateMembers(_ input: DisassociateMembersRequest) throws -> Future<DisassociateMembersResponse> {
        return try client.send(operation: "DisassociateMembers", path: "/members/disassociate", httpMethod: "POST", input: input)
    }

    ///  Enables the integration of a partner product with Security Hub. Integrated products send findings to Security Hub. When you enable a product integration, a permission policy that grants permission for the product to send findings to Security Hub is applied.
    public func enableImportFindingsForProduct(_ input: EnableImportFindingsForProductRequest) throws -> Future<EnableImportFindingsForProductResponse> {
        return try client.send(operation: "EnableImportFindingsForProduct", path: "/productSubscriptions", httpMethod: "POST", input: input)
    }

    ///  Enables Security Hub for your account in the current Region or the Region you specify in the request. When you enable Security Hub, you grant to Security Hub the permissions necessary to gather findings from AWS Config, Amazon GuardDuty, Amazon Inspector, and Amazon Macie. To learn more, see Setting Up AWS Security Hub.
    public func enableSecurityHub(_ input: EnableSecurityHubRequest) throws -> Future<EnableSecurityHubResponse> {
        return try client.send(operation: "EnableSecurityHub", path: "/accounts", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the standards that are currently enabled.
    public func getEnabledStandards(_ input: GetEnabledStandardsRequest) throws -> Future<GetEnabledStandardsResponse> {
        return try client.send(operation: "GetEnabledStandards", path: "/standards/get", httpMethod: "POST", input: input)
    }

    ///  Returns a list of findings that match the specified criteria.
    public func getFindings(_ input: GetFindingsRequest) throws -> Future<GetFindingsResponse> {
        return try client.send(operation: "GetFindings", path: "/findings", httpMethod: "POST", input: input)
    }

    ///  Lists the results of the Security Hub insight that the insight ARN specifies.
    public func getInsightResults(_ input: GetInsightResultsRequest) throws -> Future<GetInsightResultsResponse> {
        return try client.send(operation: "GetInsightResults", path: "/insights/results/{InsightArn+}", httpMethod: "GET", input: input)
    }

    ///  Lists and describes insights that insight ARNs specify.
    public func getInsights(_ input: GetInsightsRequest) throws -> Future<GetInsightsResponse> {
        return try client.send(operation: "GetInsights", path: "/insights/get", httpMethod: "POST", input: input)
    }

    ///  Returns the count of all Security Hub membership invitations that were sent to the current member account, not including the currently accepted invitation. 
    public func getInvitationsCount(_ input: GetInvitationsCountRequest) throws -> Future<GetInvitationsCountResponse> {
        return try client.send(operation: "GetInvitationsCount", path: "/invitations/count", httpMethod: "GET", input: input)
    }

    ///  Provides the details for the Security Hub master account to the current member account. 
    public func getMasterAccount(_ input: GetMasterAccountRequest) throws -> Future<GetMasterAccountResponse> {
        return try client.send(operation: "GetMasterAccount", path: "/master", httpMethod: "GET", input: input)
    }

    ///  Returns the details on the Security Hub member accounts that the account IDs specify.
    public func getMembers(_ input: GetMembersRequest) throws -> Future<GetMembersResponse> {
        return try client.send(operation: "GetMembers", path: "/members/get", httpMethod: "POST", input: input)
    }

    ///  Invites other AWS accounts to become member accounts for the Security Hub master account that the invitation is sent from. Before you can use this action to invite a member, you must first create the member account in Security Hub by using the CreateMembers action. When the account owner accepts the invitation to become a member account and enables Security Hub, the master account can view the findings generated from member account.
    public func inviteMembers(_ input: InviteMembersRequest) throws -> Future<InviteMembersResponse> {
        return try client.send(operation: "InviteMembers", path: "/members/invite", httpMethod: "POST", input: input)
    }

    ///  Lists all findings-generating solutions (products) whose findings you have subscribed to receive in Security Hub.
    public func listEnabledProductsForImport(_ input: ListEnabledProductsForImportRequest) throws -> Future<ListEnabledProductsForImportResponse> {
        return try client.send(operation: "ListEnabledProductsForImport", path: "/productSubscriptions", httpMethod: "GET", input: input)
    }

    ///  Lists all Security Hub membership invitations that were sent to the current AWS account. 
    public func listInvitations(_ input: ListInvitationsRequest) throws -> Future<ListInvitationsResponse> {
        return try client.send(operation: "ListInvitations", path: "/invitations", httpMethod: "GET", input: input)
    }

    ///  Lists details about all member accounts for the current Security Hub master account.
    public func listMembers(_ input: ListMembersRequest) throws -> Future<ListMembersResponse> {
        return try client.send(operation: "ListMembers", path: "/members", httpMethod: "GET", input: input)
    }

    ///  Returns a list of tags associated with a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: "GET", input: input)
    }

    ///  Adds one or more tags to a resource.
    public func tagResource(_ input: TagResourceRequest) throws -> Future<TagResourceResponse> {
        return try client.send(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags from a resource.
    public func untagResource(_ input: UntagResourceRequest) throws -> Future<UntagResourceResponse> {
        return try client.send(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: "DELETE", input: input)
    }

    ///  Updates the name and description of a custom action target in Security Hub.
    public func updateActionTarget(_ input: UpdateActionTargetRequest) throws -> Future<UpdateActionTargetResponse> {
        return try client.send(operation: "UpdateActionTarget", path: "/actionTargets/{ActionTargetArn+}", httpMethod: "PATCH", input: input)
    }

    ///  Updates the Note and RecordState of the Security Hub-aggregated findings that the filter attributes specify. Any member account that can view the finding also sees the update to the finding.
    public func updateFindings(_ input: UpdateFindingsRequest) throws -> Future<UpdateFindingsResponse> {
        return try client.send(operation: "UpdateFindings", path: "/findings", httpMethod: "PATCH", input: input)
    }

    ///  Updates the Security Hub insight that the insight ARN specifies.
    public func updateInsight(_ input: UpdateInsightRequest) throws -> Future<UpdateInsightResponse> {
        return try client.send(operation: "UpdateInsight", path: "/insights/{InsightArn+}", httpMethod: "PATCH", input: input)
    }
}
