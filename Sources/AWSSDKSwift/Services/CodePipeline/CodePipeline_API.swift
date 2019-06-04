// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS CodePipeline  Overview  This is the AWS CodePipeline API Reference. This guide provides descriptions of the actions and data types for AWS CodePipeline. Some functionality for your pipeline is only configurable through the API. For additional information, see the AWS CodePipeline User Guide. You can use the AWS CodePipeline API to work with pipelines, stages, actions, and transitions, as described below.  Pipelines are models of automated release processes. Each pipeline is uniquely named, and consists of stages, actions, and transitions.  You can work with pipelines by calling:    CreatePipeline, which creates a uniquely-named pipeline.    DeletePipeline, which deletes the specified pipeline.    GetPipeline, which returns information about the pipeline structure and pipeline metadata, including the pipeline Amazon Resource Name (ARN).    GetPipelineExecution, which returns information about a specific execution of a pipeline.    GetPipelineState, which returns information about the current state of the stages and actions of a pipeline.    ListActionExecutions, which returns action-level details for past executions. The details include full stage and action-level details, including individual action duration, status, any errors which occurred during the execution, and input and output artifact location details.    ListPipelines, which gets a summary of all of the pipelines associated with your account.    ListPipelineExecutions, which gets a summary of the most recent executions for a pipeline.    StartPipelineExecution, which runs the the most recent revision of an artifact through the pipeline.    UpdatePipeline, which updates a pipeline with edits or changes to the structure of the pipeline.   Pipelines include stages. Each stage contains one or more actions that must complete before the next stage begins. A stage will result in success or failure. If a stage fails, then the pipeline stops at that stage and will remain stopped until either a new version of an artifact appears in the source location, or a user takes action to re-run the most recent artifact through the pipeline. You can call GetPipelineState, which displays the status of a pipeline, including the status of stages in the pipeline, or GetPipeline, which returns the entire structure of the pipeline, including the stages of that pipeline. For more information about the structure of stages and actions, also refer to the AWS CodePipeline Pipeline Structure Reference. Pipeline stages include actions, which are categorized into categories such as source or build actions performed within a stage of a pipeline. For example, you can use a source action to import artifacts into a pipeline from a source such as Amazon S3. Like stages, you do not work with actions directly in most cases, but you do define and interact with actions when working with pipeline operations such as CreatePipeline and GetPipelineState. Valid action categories are:   Source   Build   Test   Deploy   Approval   Invoke   Pipelines also include transitions, which allow the transition of artifacts from one stage to the next in a pipeline after the actions in one stage complete. You can work with transitions by calling:    DisableStageTransition, which prevents artifacts from transitioning to the next stage in a pipeline.    EnableStageTransition, which enables transition of artifacts between stages in a pipeline.     Using the API to integrate with AWS CodePipeline  For third-party integrators or developers who want to create their own integrations with AWS CodePipeline, the expected sequence varies from the standard API user. In order to integrate with AWS CodePipeline, developers will need to work with the following items:  Jobs, which are instances of an action. For example, a job for a source action might import a revision of an artifact from a source.  You can work with jobs by calling:    AcknowledgeJob, which confirms whether a job worker has received the specified job,    GetJobDetails, which returns the details of a job,    PollForJobs, which determines whether there are any jobs to act upon,     PutJobFailureResult, which provides details of a job failure, and    PutJobSuccessResult, which provides details of a job success.    Third party jobs, which are instances of an action created by a partner action and integrated into AWS CodePipeline. Partner actions are created by members of the AWS Partner Network. You can work with third party jobs by calling:    AcknowledgeThirdPartyJob, which confirms whether a job worker has received the specified job,    GetThirdPartyJobDetails, which requests the details of a job for a partner action,    PollForThirdPartyJobs, which determines whether there are any jobs to act upon,     PutThirdPartyJobFailureResult, which provides details of a job failure, and    PutThirdPartyJobSuccessResult, which provides details of a job success.  
*/
public struct CodePipeline {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "CodePipeline_20150709",
            service: "codepipeline",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-07-09",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [CodePipelineErrorType.self]
        )
    }

    ///  Returns information about a specified job and whether that job has been received by the job worker. Only used for custom actions.
    public func acknowledgeJob(_ input: AcknowledgeJobInput) throws -> Future<AcknowledgeJobOutput> {
        return try client.send(operation: "AcknowledgeJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Confirms a job worker has received the specified job. Only used for partner actions.
    public func acknowledgeThirdPartyJob(_ input: AcknowledgeThirdPartyJobInput) throws -> Future<AcknowledgeThirdPartyJobOutput> {
        return try client.send(operation: "AcknowledgeThirdPartyJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new custom action that can be used in all pipelines associated with the AWS account. Only used for custom actions.
    public func createCustomActionType(_ input: CreateCustomActionTypeInput) throws -> Future<CreateCustomActionTypeOutput> {
        return try client.send(operation: "CreateCustomActionType", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a pipeline.
    public func createPipeline(_ input: CreatePipelineInput) throws -> Future<CreatePipelineOutput> {
        return try client.send(operation: "CreatePipeline", path: "/", httpMethod: "POST", input: input)
    }

    ///  Marks a custom action as deleted. PollForJobs for the custom action will fail after the action is marked for deletion. Only used for custom actions.  To re-create a custom action after it has been deleted you must use a string in the version field that has never been used before. This string can be an incremented version number, for example. To restore a deleted custom action, use a JSON file that is identical to the deleted action, including the original string in the version field. 
    @discardableResult public func deleteCustomActionType(_ input: DeleteCustomActionTypeInput) throws -> Future<Void> {
        return try client.send(operation: "DeleteCustomActionType", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified pipeline.
    @discardableResult public func deletePipeline(_ input: DeletePipelineInput) throws -> Future<Void> {
        return try client.send(operation: "DeletePipeline", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a previously created webhook by name. Deleting the webhook stops AWS CodePipeline from starting a pipeline every time an external event occurs. The API will return successfully when trying to delete a webhook that is already deleted. If a deleted webhook is re-created by calling PutWebhook with the same name, it will have a different URL.
    public func deleteWebhook(_ input: DeleteWebhookInput) throws -> Future<DeleteWebhookOutput> {
        return try client.send(operation: "DeleteWebhook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the connection between the webhook that was created by CodePipeline and the external tool with events to be detected. Currently only supported for webhooks that target an action type of GitHub.
    public func deregisterWebhookWithThirdParty(_ input: DeregisterWebhookWithThirdPartyInput) throws -> Future<DeregisterWebhookWithThirdPartyOutput> {
        return try client.send(operation: "DeregisterWebhookWithThirdParty", path: "/", httpMethod: "POST", input: input)
    }

    ///  Prevents artifacts in a pipeline from transitioning to the next stage in the pipeline.
    @discardableResult public func disableStageTransition(_ input: DisableStageTransitionInput) throws -> Future<Void> {
        return try client.send(operation: "DisableStageTransition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Enables artifacts in a pipeline to transition to a stage in a pipeline.
    @discardableResult public func enableStageTransition(_ input: EnableStageTransitionInput) throws -> Future<Void> {
        return try client.send(operation: "EnableStageTransition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a job. Only used for custom actions.  When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action. 
    public func getJobDetails(_ input: GetJobDetailsInput) throws -> Future<GetJobDetailsOutput> {
        return try client.send(operation: "GetJobDetails", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the metadata, structure, stages, and actions of a pipeline. Can be used to return the entire structure of a pipeline in JSON format, which can then be modified and used to update the pipeline structure with UpdatePipeline.
    public func getPipeline(_ input: GetPipelineInput) throws -> Future<GetPipelineOutput> {
        return try client.send(operation: "GetPipeline", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about an execution of a pipeline, including details about artifacts, the pipeline execution ID, and the name, version, and status of the pipeline.
    public func getPipelineExecution(_ input: GetPipelineExecutionInput) throws -> Future<GetPipelineExecutionOutput> {
        return try client.send(operation: "GetPipelineExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the state of a pipeline, including the stages and actions.  Values returned in the revisionId and revisionUrl fields indicate the source revision information, such as the commit ID, for the current state. 
    public func getPipelineState(_ input: GetPipelineStateInput) throws -> Future<GetPipelineStateOutput> {
        return try client.send(operation: "GetPipelineState", path: "/", httpMethod: "POST", input: input)
    }

    ///  Requests the details of a job for a third party action. Only used for partner actions.  When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action. 
    public func getThirdPartyJobDetails(_ input: GetThirdPartyJobDetailsInput) throws -> Future<GetThirdPartyJobDetailsOutput> {
        return try client.send(operation: "GetThirdPartyJobDetails", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the action executions that have occurred in a pipeline.
    public func listActionExecutions(_ input: ListActionExecutionsInput) throws -> Future<ListActionExecutionsOutput> {
        return try client.send(operation: "ListActionExecutions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a summary of all AWS CodePipeline action types associated with your account.
    public func listActionTypes(_ input: ListActionTypesInput) throws -> Future<ListActionTypesOutput> {
        return try client.send(operation: "ListActionTypes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a summary of the most recent executions for a pipeline.
    public func listPipelineExecutions(_ input: ListPipelineExecutionsInput) throws -> Future<ListPipelineExecutionsOutput> {
        return try client.send(operation: "ListPipelineExecutions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a summary of all of the pipelines associated with your account.
    public func listPipelines(_ input: ListPipelinesInput) throws -> Future<ListPipelinesOutput> {
        return try client.send(operation: "ListPipelines", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the set of key/value pairs (metadata) that are used to manage the resource.
    public func listTagsForResource(_ input: ListTagsForResourceInput) throws -> Future<ListTagsForResourceOutput> {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a listing of all the webhooks in this region for this account. The output lists all webhooks and includes the webhook URL and ARN, as well the configuration for each webhook.
    public func listWebhooks(_ input: ListWebhooksInput) throws -> Future<ListWebhooksOutput> {
        return try client.send(operation: "ListWebhooks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about any jobs for AWS CodePipeline to act upon. PollForJobs is only valid for action types with "Custom" in the owner field. If the action type contains "AWS" or "ThirdParty" in the owner field, the PollForJobs action returns an error.  When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action. 
    public func pollForJobs(_ input: PollForJobsInput) throws -> Future<PollForJobsOutput> {
        return try client.send(operation: "PollForJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Determines whether there are any third party jobs for a job worker to act on. Only used for partner actions.  When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. 
    public func pollForThirdPartyJobs(_ input: PollForThirdPartyJobsInput) throws -> Future<PollForThirdPartyJobsOutput> {
        return try client.send(operation: "PollForThirdPartyJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides information to AWS CodePipeline about new revisions to a source.
    public func putActionRevision(_ input: PutActionRevisionInput) throws -> Future<PutActionRevisionOutput> {
        return try client.send(operation: "PutActionRevision", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides the response to a manual approval request to AWS CodePipeline. Valid responses include Approved and Rejected.
    public func putApprovalResult(_ input: PutApprovalResultInput) throws -> Future<PutApprovalResultOutput> {
        return try client.send(operation: "PutApprovalResult", path: "/", httpMethod: "POST", input: input)
    }

    ///  Represents the failure of a job as returned to the pipeline by a job worker. Only used for custom actions.
    @discardableResult public func putJobFailureResult(_ input: PutJobFailureResultInput) throws -> Future<Void> {
        return try client.send(operation: "PutJobFailureResult", path: "/", httpMethod: "POST", input: input)
    }

    ///  Represents the success of a job as returned to the pipeline by a job worker. Only used for custom actions.
    @discardableResult public func putJobSuccessResult(_ input: PutJobSuccessResultInput) throws -> Future<Void> {
        return try client.send(operation: "PutJobSuccessResult", path: "/", httpMethod: "POST", input: input)
    }

    ///  Represents the failure of a third party job as returned to the pipeline by a job worker. Only used for partner actions.
    @discardableResult public func putThirdPartyJobFailureResult(_ input: PutThirdPartyJobFailureResultInput) throws -> Future<Void> {
        return try client.send(operation: "PutThirdPartyJobFailureResult", path: "/", httpMethod: "POST", input: input)
    }

    ///  Represents the success of a third party job as returned to the pipeline by a job worker. Only used for partner actions.
    @discardableResult public func putThirdPartyJobSuccessResult(_ input: PutThirdPartyJobSuccessResultInput) throws -> Future<Void> {
        return try client.send(operation: "PutThirdPartyJobSuccessResult", path: "/", httpMethod: "POST", input: input)
    }

    ///  Defines a webhook and returns a unique webhook URL generated by CodePipeline. This URL can be supplied to third party source hosting providers to call every time there's a code change. When CodePipeline receives a POST request on this URL, the pipeline defined in the webhook is started as long as the POST request satisfied the authentication and filtering requirements supplied when defining the webhook. RegisterWebhookWithThirdParty and DeregisterWebhookWithThirdParty APIs can be used to automatically configure supported third parties to call the generated webhook URL.
    public func putWebhook(_ input: PutWebhookInput) throws -> Future<PutWebhookOutput> {
        return try client.send(operation: "PutWebhook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Configures a connection between the webhook that was created and the external tool with events to be detected.
    public func registerWebhookWithThirdParty(_ input: RegisterWebhookWithThirdPartyInput) throws -> Future<RegisterWebhookWithThirdPartyOutput> {
        return try client.send(operation: "RegisterWebhookWithThirdParty", path: "/", httpMethod: "POST", input: input)
    }

    ///  Resumes the pipeline execution by retrying the last failed actions in a stage.
    public func retryStageExecution(_ input: RetryStageExecutionInput) throws -> Future<RetryStageExecutionOutput> {
        return try client.send(operation: "RetryStageExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts the specified pipeline. Specifically, it begins processing the latest commit to the source location specified as part of the pipeline.
    public func startPipelineExecution(_ input: StartPipelineExecutionInput) throws -> Future<StartPipelineExecutionOutput> {
        return try client.send(operation: "StartPipelineExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource. 
    public func tagResource(_ input: TagResourceInput) throws -> Future<TagResourceOutput> {
        return try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes tags from an AWS resource.
    public func untagResource(_ input: UntagResourceInput) throws -> Future<UntagResourceOutput> {
        return try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a specified pipeline with edits or changes to its structure. Use a JSON file with the pipeline structure in conjunction with UpdatePipeline to provide the full structure of the pipeline. Updating the pipeline increases the version number of the pipeline by 1.
    public func updatePipeline(_ input: UpdatePipelineInput) throws -> Future<UpdatePipelineOutput> {
        return try client.send(operation: "UpdatePipeline", path: "/", httpMethod: "POST", input: input)
    }


}