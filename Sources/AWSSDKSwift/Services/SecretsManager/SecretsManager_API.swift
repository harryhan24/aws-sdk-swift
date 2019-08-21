// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Secrets Manager API Reference AWS Secrets Manager is a web service that enables you to store, manage, and retrieve, secrets. This guide provides descriptions of the Secrets Manager API. For more information about using this service, see the AWS Secrets Manager User Guide.  API Version  This version of the Secrets Manager API Reference documents the Secrets Manager API version 2017-10-17.  As an alternative to using the API directly, you can use one of the AWS SDKs, which consist of libraries and sample code for various programming languages and platforms (such as Java, Ruby, .NET, iOS, and Android). The SDKs provide a convenient way to create programmatic access to AWS Secrets Manager. For example, the SDKs take care of cryptographically signing requests, managing errors, and retrying requests automatically. For more information about the AWS SDKs, including how to download and install them, see Tools for Amazon Web Services.  We recommend that you use the AWS SDKs to make programmatic API calls to Secrets Manager. However, you also can use the Secrets Manager HTTP Query API to make direct calls to the Secrets Manager web service. To learn more about the Secrets Manager HTTP Query API, see Making Query Requests in the AWS Secrets Manager User Guide.  Secrets Manager supports GET and POST requests for all actions. That is, the API doesn't require you to use GET for some actions and POST for others. However, GET requests are subject to the limitation size of a URL. Therefore, for operations that require larger sizes, use a POST request.  Support and Feedback for AWS Secrets Manager  We welcome your feedback. Send your comments to awssecretsmanager-feedback@amazon.com, or post your feedback and questions in the AWS Secrets Manager Discussion Forum. For more information about the AWS Discussion Forums, see Forums Help.  How examples are presented  The JSON that AWS Secrets Manager expects as your request parameters and that the service returns as a response to HTTP query requests are single, long strings without line breaks or white space formatting. The JSON shown in the examples is formatted with both line breaks and white space to improve readability. When example input parameters would also result in long strings that extend beyond the screen, we insert line breaks to enhance readability. You should always submit the input as a single JSON text string.  Logging API Requests  AWS Secrets Manager supports AWS CloudTrail, a service that records AWS API calls for your AWS account and delivers log files to an Amazon S3 bucket. By using information that's collected by AWS CloudTrail, you can determine which requests were successfully made to Secrets Manager, who made the request, when it was made, and so on. For more about AWS Secrets Manager and its support for AWS CloudTrail, see Logging AWS Secrets Manager Events with AWS CloudTrail in the AWS Secrets Manager User Guide. To learn more about CloudTrail, including how to turn it on and find your log files, see the AWS CloudTrail User Guide.
*/
public struct SecretsManager {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "secretsmanager",
            service: "secretsmanager",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-10-17",
            endpoint: endpoint,
            serviceEndpoints: ["us-east-1-fips": "secretsmanager-fips.us-east-1.amazonaws.com", "us-east-2-fips": "secretsmanager-fips.us-east-2.amazonaws.com", "us-west-1-fips": "secretsmanager-fips.us-west-1.amazonaws.com", "us-west-2-fips": "secretsmanager-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [SecretsManagerErrorType.self]
        )
    }

    ///  Disables automatic scheduled rotation and cancels the rotation of a secret if one is currently in progress. To re-enable scheduled rotation, call RotateSecret with AutomaticallyRotateAfterDays set to a value greater than 0. This will immediately rotate your secret and then enable the automatic schedule.  If you cancel a rotation that is in progress, it can leave the VersionStage labels in an unexpected state. Depending on what step of the rotation was in progress, you might need to remove the staging label AWSPENDING from the partially created version, specified by the VersionId response value. You should also evaluate the partially rotated new version to see if it should be deleted, which you can do by removing all staging labels from the new version's VersionStage field.  To successfully start a rotation, the staging label AWSPENDING must be in one of the following states:   Not be attached to any version at all   Attached to the same version as the staging label AWSCURRENT    If the staging label AWSPENDING is attached to a different version than the version with AWSCURRENT then the attempt to rotate fails.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:CancelRotateSecret    Related operations    To configure rotation for a secret or to manually trigger a rotation, use RotateSecret.   To get the rotation configuration details for a secret, use DescribeSecret.   To list all of the currently available secrets, use ListSecrets.   To list all of the versions currently associated with a secret, use ListSecretVersionIds.  
    public func cancelRotateSecret(_ input: CancelRotateSecretRequest) throws -> Future<CancelRotateSecretResponse> {
        return try client.send(operation: "CancelRotateSecret", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new secret. A secret in Secrets Manager consists of both the protected secret data and the important information needed to manage the secret. Secrets Manager stores the encrypted secret data in one of a collection of "versions" associated with the secret. Each version contains a copy of the encrypted secret data. Each version is associated with one or more "staging labels" that identify where the version is in the rotation cycle. The SecretVersionsToStages field of the secret contains the mapping of staging labels to the active versions of the secret. Versions without a staging label are considered deprecated and are not included in the list. You provide the secret data to be encrypted by putting text in either the SecretString parameter or binary data in the SecretBinary parameter, but not both. If you include SecretString or SecretBinary then Secrets Manager also creates an initial secret version and automatically attaches the staging label AWSCURRENT to the new version.    If you call an operation that needs to encrypt or decrypt the SecretString or SecretBinary for a secret in the same account as the calling user and that secret doesn't specify a AWS KMS encryption key, Secrets Manager uses the account's default AWS managed customer master key (CMK) with the alias aws/secretsmanager. If this key doesn't already exist in your account then Secrets Manager creates it for you automatically. All users and roles in the same AWS account automatically have access to use the default CMK. Note that if an Secrets Manager API call results in AWS having to create the account's AWS-managed CMK, it can result in a one-time significant delay in returning the result.   If the secret is in a different AWS account from the credentials calling an API that requires encryption or decryption of the secret value then you must create and use a custom AWS KMS CMK because you can't access the default CMK for the account using credentials from a different AWS account. Store the ARN of the CMK in the secret when you create the secret or when you update it by including it in the KMSKeyId. If you call an API that must encrypt or decrypt SecretString or SecretBinary using credentials from a different account then the AWS KMS key policy must grant cross-account access to that other account's user or role for both the kms:GenerateDataKey and kms:Decrypt operations.       Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:CreateSecret   kms:GenerateDataKey - needed only if you use a customer-managed AWS KMS key to encrypt the secret. You do not need this permission to use the account's default AWS managed CMK for Secrets Manager.   kms:Decrypt - needed only if you use a customer-managed AWS KMS key to encrypt the secret. You do not need this permission to use the account's default AWS managed CMK for Secrets Manager.   secretsmanager:TagResource - needed only if you include the Tags parameter.     Related operations    To delete a secret, use DeleteSecret.   To modify an existing secret, use UpdateSecret.   To create a new version of a secret, use PutSecretValue.   To retrieve the encrypted secure string and secure binary values, use GetSecretValue.   To retrieve all other details for a secret, use DescribeSecret. This does not include the encrypted secure string and secure binary values.   To retrieve the list of secret versions associated with the current secret, use DescribeSecret and examine the SecretVersionsToStages response value.  
    public func createSecret(_ input: CreateSecretRequest) throws -> Future<CreateSecretResponse> {
        return try client.send(operation: "CreateSecret", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the resource-based permission policy that's attached to the secret.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:DeleteResourcePolicy    Related operations    To attach a resource policy to a secret, use PutResourcePolicy.   To retrieve the current resource-based policy that's attached to a secret, use GetResourcePolicy.   To list all of the currently available secrets, use ListSecrets.  
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyRequest) throws -> Future<DeleteResourcePolicyResponse> {
        return try client.send(operation: "DeleteResourcePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an entire secret and all of its versions. You can optionally include a recovery window during which you can restore the secret. If you don't specify a recovery window value, the operation defaults to 30 days. Secrets Manager attaches a DeletionDate stamp to the secret that specifies the end of the recovery window. At the end of the recovery window, Secrets Manager deletes the secret permanently. At any time before recovery window ends, you can use RestoreSecret to remove the DeletionDate and cancel the deletion of the secret. You cannot access the encrypted secret information in any secret that is scheduled for deletion. If you need to access that information, you must cancel the deletion with RestoreSecret and then retrieve the information.    There is no explicit operation to delete a version of a secret. Instead, remove all staging labels from the VersionStage field of a version. That marks the version as deprecated and allows Secrets Manager to delete it as needed. Versions that do not have any staging labels do not show up in ListSecretVersionIds unless you specify IncludeDeprecated.   The permanent secret deletion at the end of the waiting period is performed as a background task with low priority. There is no guarantee of a specific time after the recovery window for the actual delete operation to occur.     Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:DeleteSecret    Related operations    To create a secret, use CreateSecret.   To cancel deletion of a version of a secret before the recovery window has expired, use RestoreSecret.  
    public func deleteSecret(_ input: DeleteSecretRequest) throws -> Future<DeleteSecretResponse> {
        return try client.send(operation: "DeleteSecret", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the details of a secret. It does not include the encrypted fields. Only those fields that are populated with a value are returned in the response.   Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:DescribeSecret    Related operations    To create a secret, use CreateSecret.   To modify a secret, use UpdateSecret.   To retrieve the encrypted secret information in a version of the secret, use GetSecretValue.   To list all of the secrets in the AWS account, use ListSecrets.  
    public func describeSecret(_ input: DescribeSecretRequest) throws -> Future<DescribeSecretResponse> {
        return try client.send(operation: "DescribeSecret", path: "/", httpMethod: "POST", input: input)
    }

    ///  Generates a random password of the specified complexity. This operation is intended for use in the Lambda rotation function. Per best practice, we recommend that you specify the maximum length and include every character type that the system you are generating a password for can support.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:GetRandomPassword  
    public func getRandomPassword(_ input: GetRandomPasswordRequest) throws -> Future<GetRandomPasswordResponse> {
        return try client.send(operation: "GetRandomPassword", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the JSON text of the resource-based policy document that's attached to the specified secret. The JSON request string input and response output are shown formatted with white space and line breaks for better readability. Submit your input as a single line JSON string.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:GetResourcePolicy    Related operations    To attach a resource policy to a secret, use PutResourcePolicy.   To delete the resource-based policy that's attached to a secret, use DeleteResourcePolicy.   To list all of the currently available secrets, use ListSecrets.  
    public func getResourcePolicy(_ input: GetResourcePolicyRequest) throws -> Future<GetResourcePolicyResponse> {
        return try client.send(operation: "GetResourcePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the contents of the encrypted fields SecretString or SecretBinary from the specified version of a secret, whichever contains content.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:GetSecretValue   kms:Decrypt - required only if you use a customer-managed AWS KMS key to encrypt the secret. You do not need this permission to use the account's default AWS managed CMK for Secrets Manager.    Related operations    To create a new version of the secret with different encrypted information, use PutSecretValue.   To retrieve the non-encrypted details for the secret, use DescribeSecret.  
    public func getSecretValue(_ input: GetSecretValueRequest) throws -> Future<GetSecretValueResponse> {
        return try client.send(operation: "GetSecretValue", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all of the versions attached to the specified secret. The output does not include the SecretString or SecretBinary fields. By default, the list includes only versions that have at least one staging label in VersionStage attached.  Always check the NextToken response parameter when calling any of the List* operations. These operations can occasionally return an empty or shorter than expected list of results even when there are more results available. When this happens, the NextToken response parameter contains a value to pass to the next call to the same API to request the next part of the list.   Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:ListSecretVersionIds    Related operations    To list the secrets in an account, use ListSecrets.  
    public func listSecretVersionIds(_ input: ListSecretVersionIdsRequest) throws -> Future<ListSecretVersionIdsResponse> {
        return try client.send(operation: "ListSecretVersionIds", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all of the secrets that are stored by Secrets Manager in the AWS account. To list the versions currently stored for a specific secret, use ListSecretVersionIds. The encrypted fields SecretString and SecretBinary are not included in the output. To get that information, call the GetSecretValue operation.  Always check the NextToken response parameter when calling any of the List* operations. These operations can occasionally return an empty or shorter than expected list of results even when there are more results available. When this happens, the NextToken response parameter contains a value to pass to the next call to the same API to request the next part of the list.   Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:ListSecrets    Related operations    To list the versions attached to a secret, use ListSecretVersionIds.  
    public func listSecrets(_ input: ListSecretsRequest) throws -> Future<ListSecretsResponse> {
        return try client.send(operation: "ListSecrets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attaches the contents of the specified resource-based permission policy to a secret. A resource-based policy is optional. Alternatively, you can use IAM identity-based policies that specify the secret's Amazon Resource Name (ARN) in the policy statement's Resources element. You can also use a combination of both identity-based and resource-based policies. The affected users and roles receive the permissions that are permitted by all of the relevant policies. For more information, see Using Resource-Based Policies for AWS Secrets Manager. For the complete description of the AWS policy syntax and grammar, see IAM JSON Policy Reference in the IAM User Guide.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:PutResourcePolicy    Related operations    To retrieve the resource policy that's attached to a secret, use GetResourcePolicy.   To delete the resource-based policy that's attached to a secret, use DeleteResourcePolicy.   To list all of the currently available secrets, use ListSecrets.  
    public func putResourcePolicy(_ input: PutResourcePolicyRequest) throws -> Future<PutResourcePolicyResponse> {
        return try client.send(operation: "PutResourcePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stores a new encrypted secret value in the specified secret. To do this, the operation creates a new version and attaches it to the secret. The version can contain a new SecretString value or a new SecretBinary value. You can also specify the staging labels that are initially attached to the new version.  The Secrets Manager console uses only the SecretString field. To add binary data to a secret with the SecretBinary field you must use the AWS CLI or one of the AWS SDKs.    If this operation creates the first version for the secret then Secrets Manager automatically attaches the staging label AWSCURRENT to the new version.   If another version of this secret already exists, then this operation does not automatically move any staging labels other than those that you explicitly specify in the VersionStages parameter.   If this operation moves the staging label AWSCURRENT from another version to this version (because you included it in the StagingLabels parameter) then Secrets Manager also automatically moves the staging label AWSPREVIOUS to the version that AWSCURRENT was removed from.   This operation is idempotent. If a version with a VersionId with the same value as the ClientRequestToken parameter already exists and you specify the same secret data, the operation succeeds but does nothing. However, if the secret data is different, then the operation fails because you cannot modify an existing version; you can only create new ones.      If you call an operation that needs to encrypt or decrypt the SecretString or SecretBinary for a secret in the same account as the calling user and that secret doesn't specify a AWS KMS encryption key, Secrets Manager uses the account's default AWS managed customer master key (CMK) with the alias aws/secretsmanager. If this key doesn't already exist in your account then Secrets Manager creates it for you automatically. All users and roles in the same AWS account automatically have access to use the default CMK. Note that if an Secrets Manager API call results in AWS having to create the account's AWS-managed CMK, it can result in a one-time significant delay in returning the result.   If the secret is in a different AWS account from the credentials calling an API that requires encryption or decryption of the secret value then you must create and use a custom AWS KMS CMK because you can't access the default CMK for the account using credentials from a different AWS account. Store the ARN of the CMK in the secret when you create the secret or when you update it by including it in the KMSKeyId. If you call an API that must encrypt or decrypt SecretString or SecretBinary using credentials from a different account then the AWS KMS key policy must grant cross-account access to that other account's user or role for both the kms:GenerateDataKey and kms:Decrypt operations.     Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:PutSecretValue   kms:GenerateDataKey - needed only if you use a customer-managed AWS KMS key to encrypt the secret. You do not need this permission to use the account's default AWS managed CMK for Secrets Manager.    Related operations    To retrieve the encrypted value you store in the version of a secret, use GetSecretValue.   To create a secret, use CreateSecret.   To get the details for a secret, use DescribeSecret.   To list the versions attached to a secret, use ListSecretVersionIds.  
    public func putSecretValue(_ input: PutSecretValueRequest) throws -> Future<PutSecretValueResponse> {
        return try client.send(operation: "PutSecretValue", path: "/", httpMethod: "POST", input: input)
    }

    ///  Cancels the scheduled deletion of a secret by removing the DeletedDate time stamp. This makes the secret accessible to query once again.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:RestoreSecret    Related operations    To delete a secret, use DeleteSecret.  
    public func restoreSecret(_ input: RestoreSecretRequest) throws -> Future<RestoreSecretResponse> {
        return try client.send(operation: "RestoreSecret", path: "/", httpMethod: "POST", input: input)
    }

    ///  Configures and starts the asynchronous process of rotating this secret. If you include the configuration parameters, the operation sets those values for the secret and then immediately starts a rotation. If you do not include the configuration parameters, the operation starts a rotation with the values already stored in the secret. After the rotation completes, the protected service and its clients all use the new version of the secret.  This required configuration information includes the ARN of an AWS Lambda function and the time between scheduled rotations. The Lambda rotation function creates a new version of the secret and creates or updates the credentials on the protected service to match. After testing the new credentials, the function marks the new secret with the staging label AWSCURRENT so that your clients all immediately begin to use the new version. For more information about rotating secrets and how to configure a Lambda function to rotate the secrets for your protected service, see Rotating Secrets in AWS Secrets Manager in the AWS Secrets Manager User Guide. Secrets Manager schedules the next rotation when the previous one is complete. Secrets Manager schedules the date by adding the rotation interval (number of days) to the actual date of the last rotation. The service chooses the hour within that 24-hour date window randomly. The minute is also chosen somewhat randomly, but weighted towards the top of the hour and influenced by a variety of factors that help distribute load. The rotation function must end with the versions of the secret in one of two states:   The AWSPENDING and AWSCURRENT staging labels are attached to the same version of the secret, or   The AWSPENDING staging label is not attached to any version of the secret.   If instead the AWSPENDING staging label is present but is not attached to the same version as AWSCURRENT then any later invocation of RotateSecret assumes that a previous rotation request is still in progress and returns an error.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:RotateSecret   lambda:InvokeFunction (on the function specified in the secret's metadata)    Related operations    To list the secrets in your account, use ListSecrets.   To get the details for a version of a secret, use DescribeSecret.   To create a new version of a secret, use CreateSecret.   To attach staging labels to or remove staging labels from a version of a secret, use UpdateSecretVersionStage.  
    public func rotateSecret(_ input: RotateSecretRequest) throws -> Future<RotateSecretResponse> {
        return try client.send(operation: "RotateSecret", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attaches one or more tags, each consisting of a key name and a value, to the specified secret. Tags are part of the secret's overall metadata, and are not associated with any specific version of the secret. This operation only appends tags to the existing list of tags. To remove tags, you must use UntagResource. The following basic restrictions apply to tags:   Maximum number of tags per secret—50   Maximum key length—127 Unicode characters in UTF-8   Maximum value length—255 Unicode characters in UTF-8   Tag keys and values are case sensitive.   Do not use the aws: prefix in your tag names or values because it is reserved for AWS use. You can't edit or delete tag names or values with this prefix. Tags with this prefix do not count against your tags per secret limit.   If your tagging schema will be used across multiple services and resources, remember that other services might have restrictions on allowed characters. Generally allowed characters are: letters, spaces, and numbers representable in UTF-8, plus the following special characters: + - = . _ : / @.    If you use tags as part of your security strategy, then adding or removing a tag can change permissions. If successfully completing this operation would result in you losing your permissions for this secret, then the operation is blocked and returns an Access Denied error.   Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:TagResource    Related operations    To remove one or more tags from the collection attached to a secret, use UntagResource.   To view the list of tags attached to a secret, use DescribeSecret.  
    @discardableResult public func tagResource(_ input: TagResourceRequest) throws -> Future<Void> {
        return try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags from the specified secret. This operation is idempotent. If a requested tag is not attached to the secret, no error is returned and the secret metadata is unchanged.  If you use tags as part of your security strategy, then removing a tag can change permissions. If successfully completing this operation would result in you losing your permissions for this secret, then the operation is blocked and returns an Access Denied error.   Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:UntagResource    Related operations    To add one or more tags to the collection attached to a secret, use TagResource.   To view the list of tags attached to a secret, use DescribeSecret.  
    @discardableResult public func untagResource(_ input: UntagResourceRequest) throws -> Future<Void> {
        return try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies many of the details of the specified secret. If you include a ClientRequestToken and either SecretString or SecretBinary then it also creates a new version attached to the secret. To modify the rotation configuration of a secret, use RotateSecret instead.  The Secrets Manager console uses only the SecretString parameter and therefore limits you to encrypting and storing only a text string. To encrypt and store binary data as part of the version of a secret, you must use either the AWS CLI or one of the AWS SDKs.    If a version with a VersionId with the same value as the ClientRequestToken parameter already exists, the operation results in an error. You cannot modify an existing version, you can only create a new version.   If you include SecretString or SecretBinary to create a new secret version, Secrets Manager automatically attaches the staging label AWSCURRENT to the new version.       If you call an operation that needs to encrypt or decrypt the SecretString or SecretBinary for a secret in the same account as the calling user and that secret doesn't specify a AWS KMS encryption key, Secrets Manager uses the account's default AWS managed customer master key (CMK) with the alias aws/secretsmanager. If this key doesn't already exist in your account then Secrets Manager creates it for you automatically. All users and roles in the same AWS account automatically have access to use the default CMK. Note that if an Secrets Manager API call results in AWS having to create the account's AWS-managed CMK, it can result in a one-time significant delay in returning the result.   If the secret is in a different AWS account from the credentials calling an API that requires encryption or decryption of the secret value then you must create and use a custom AWS KMS CMK because you can't access the default CMK for the account using credentials from a different AWS account. Store the ARN of the CMK in the secret when you create the secret or when you update it by including it in the KMSKeyId. If you call an API that must encrypt or decrypt SecretString or SecretBinary using credentials from a different account then the AWS KMS key policy must grant cross-account access to that other account's user or role for both the kms:GenerateDataKey and kms:Decrypt operations.     Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:UpdateSecret   kms:GenerateDataKey - needed only if you use a custom AWS KMS key to encrypt the secret. You do not need this permission to use the account's AWS managed CMK for Secrets Manager.   kms:Decrypt - needed only if you use a custom AWS KMS key to encrypt the secret. You do not need this permission to use the account's AWS managed CMK for Secrets Manager.    Related operations    To create a new secret, use CreateSecret.   To add only a new version to an existing secret, use PutSecretValue.   To get the details for a secret, use DescribeSecret.   To list the versions contained in a secret, use ListSecretVersionIds.  
    public func updateSecret(_ input: UpdateSecretRequest) throws -> Future<UpdateSecretResponse> {
        return try client.send(operation: "UpdateSecret", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the staging labels attached to a version of a secret. Staging labels are used to track a version as it progresses through the secret rotation process. You can attach a staging label to only one version of a secret at a time. If a staging label to be added is already attached to another version, then it is moved--removed from the other version first and then attached to this one. For more information about staging labels, see Staging Labels in the AWS Secrets Manager User Guide.  The staging labels that you specify in the VersionStage parameter are added to the existing list of staging labels--they don't replace it. You can move the AWSCURRENT staging label to this version by including it in this call.  Whenever you move AWSCURRENT, Secrets Manager automatically moves the label AWSPREVIOUS to the version that AWSCURRENT was removed from.  If this action results in the last label being removed from a version, then the version is considered to be 'deprecated' and can be deleted by Secrets Manager.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:UpdateSecretVersionStage    Related operations    To get the list of staging labels that are currently associated with a version of a secret, use  DescribeSecret  and examine the SecretVersionsToStages response value.   
    public func updateSecretVersionStage(_ input: UpdateSecretVersionStageRequest) throws -> Future<UpdateSecretVersionStageResponse> {
        return try client.send(operation: "UpdateSecretVersionStage", path: "/", httpMethod: "POST", input: input)
    }
}
