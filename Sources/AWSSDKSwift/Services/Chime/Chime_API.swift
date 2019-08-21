// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
The Amazon Chime API (application programming interface) is designed for administrators to use to perform key tasks, such as creating and managing Amazon Chime accounts and users. This guide provides detailed information about the Amazon Chime API, including operations, types, inputs and outputs, and error codes. You can use an AWS SDK, the AWS Command Line Interface (AWS CLI), or the REST API to make API calls. We recommend using an AWS SDK or the AWS CLI. Each API operation includes links to information about using it with a language-specific AWS SDK or the AWS CLI.  Using an AWS SDK  You don't need to write code to calculate a signature for request authentication. The SDK clients authenticate your requests by using access keys that you provide. For more information about AWS SDKs, see the AWS Developer Center.  Using the AWS CLI  Use your access keys with the AWS CLI to make API calls. For information about setting up the AWS CLI, see Installing the AWS Command Line Interface in the AWS Command Line Interface User Guide. For a list of available Amazon Chime commands, see the Amazon Chime commands in the AWS CLI Command Reference.  Using REST API  If you use REST to make API calls, you must authenticate your request by providing a signature. Amazon Chime supports signature version 4. For more information, see Signature Version 4 Signing Process in the Amazon Web Services General Reference. When making REST API calls, use the service name chime and REST endpoint https://service.chime.aws.amazon.com.   Administrative permissions are controlled using AWS Identity and Access Management (IAM). For more information, see Control Access to the Amazon Chime Console in the Amazon Chime Administration Guide.
*/
public struct Chime {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "chime",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2018-05-01",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "service.chime.aws.amazon.com"],
            partitionEndpoint: "aws-global",
            middlewares: middlewares,
            possibleErrorTypes: [ChimeErrorType.self]
        )
    }

    ///  Associates a phone number with the specified Amazon Chime user.
    public func associatePhoneNumberWithUser(_ input: AssociatePhoneNumberWithUserRequest) throws -> Future<AssociatePhoneNumberWithUserResponse> {
        return try client.send(operation: "AssociatePhoneNumberWithUser", path: "/accounts/{accountId}/users/{userId}?operation=associate-phone-number", httpMethod: "POST", input: input)
    }

    ///  Associates a phone number with the specified Amazon Chime Voice Connector.
    public func associatePhoneNumbersWithVoiceConnector(_ input: AssociatePhoneNumbersWithVoiceConnectorRequest) throws -> Future<AssociatePhoneNumbersWithVoiceConnectorResponse> {
        return try client.send(operation: "AssociatePhoneNumbersWithVoiceConnector", path: "/voice-connectors/{voiceConnectorId}?operation=associate-phone-numbers", httpMethod: "POST", input: input)
    }

    ///  Moves phone numbers into the Deletion queue. Phone numbers must be disassociated from any users or Amazon Chime Voice Connectors before they can be deleted. Phone numbers remain in the Deletion queue for 7 days before they are deleted permanently.
    public func batchDeletePhoneNumber(_ input: BatchDeletePhoneNumberRequest) throws -> Future<BatchDeletePhoneNumberResponse> {
        return try client.send(operation: "BatchDeletePhoneNumber", path: "/phone-numbers?operation=batch-delete", httpMethod: "POST", input: input)
    }

    ///  Suspends up to 50 users from a Team or EnterpriseLWA Amazon Chime account. For more information about different account types, see Managing Your Amazon Chime Accounts in the Amazon Chime Administration Guide. Users suspended from a Team account are dissasociated from the account, but they can continue to use Amazon Chime as free users. To remove the suspension from suspended Team account users, invite them to the Team account again. You can use the InviteUsers action to do so. Users suspended from an EnterpriseLWA account are immediately signed out of Amazon Chime and can no longer sign in. To remove the suspension from suspended EnterpriseLWA account users, use the BatchUnsuspendUser action.  To sign out users without suspending them, use the LogoutUser action.
    public func batchSuspendUser(_ input: BatchSuspendUserRequest) throws -> Future<BatchSuspendUserResponse> {
        return try client.send(operation: "BatchSuspendUser", path: "/accounts/{accountId}/users?operation=suspend", httpMethod: "POST", input: input)
    }

    ///  Removes the suspension from up to 50 previously suspended users for the specified Amazon Chime EnterpriseLWA account. Only users on EnterpriseLWA accounts can be unsuspended using this action. For more information about different account types, see Managing Your Amazon Chime Accounts in the Amazon Chime Administration Guide. Previously suspended users who are unsuspended using this action are returned to Registered status. Users who are not previously suspended are ignored.
    public func batchUnsuspendUser(_ input: BatchUnsuspendUserRequest) throws -> Future<BatchUnsuspendUserResponse> {
        return try client.send(operation: "BatchUnsuspendUser", path: "/accounts/{accountId}/users?operation=unsuspend", httpMethod: "POST", input: input)
    }

    ///  Updates phone number product types. Choose from Amazon Chime Business Calling and Amazon Chime Voice Connector product types. For toll-free numbers, you can use only the Amazon Chime Voice Connector product type.
    public func batchUpdatePhoneNumber(_ input: BatchUpdatePhoneNumberRequest) throws -> Future<BatchUpdatePhoneNumberResponse> {
        return try client.send(operation: "BatchUpdatePhoneNumber", path: "/phone-numbers?operation=batch-update", httpMethod: "POST", input: input)
    }

    ///  Updates user details within the UpdateUserRequestItem object for up to 20 users for the specified Amazon Chime account. Currently, only LicenseType updates are supported for this action.
    public func batchUpdateUser(_ input: BatchUpdateUserRequest) throws -> Future<BatchUpdateUserResponse> {
        return try client.send(operation: "BatchUpdateUser", path: "/accounts/{accountId}/users", httpMethod: "POST", input: input)
    }

    ///  Creates an Amazon Chime account under the administrator's AWS account. Only Team account types are currently supported for this action. For more information about different account types, see Managing Your Amazon Chime Accounts in the Amazon Chime Administration Guide.
    public func createAccount(_ input: CreateAccountRequest) throws -> Future<CreateAccountResponse> {
        return try client.send(operation: "CreateAccount", path: "/accounts", httpMethod: "POST", input: input)
    }

    ///  Creates a bot for an Amazon Chime Enterprise account.
    public func createBot(_ input: CreateBotRequest) throws -> Future<CreateBotResponse> {
        return try client.send(operation: "CreateBot", path: "/accounts/{accountId}/bots", httpMethod: "POST", input: input)
    }

    ///  Creates an order for phone numbers to be provisioned. Choose from Amazon Chime Business Calling and Amazon Chime Voice Connector product types. For toll-free numbers, you can use only the Amazon Chime Voice Connector product type.
    public func createPhoneNumberOrder(_ input: CreatePhoneNumberOrderRequest) throws -> Future<CreatePhoneNumberOrderResponse> {
        return try client.send(operation: "CreatePhoneNumberOrder", path: "/phone-number-orders", httpMethod: "POST", input: input)
    }

    ///  Creates an Amazon Chime Voice Connector under the administrator's AWS account. Enabling CreateVoiceConnectorRequest$RequireEncryption configures your Amazon Chime Voice Connector to use TLS transport for SIP signaling and Secure RTP (SRTP) for media. Inbound calls use TLS transport, and unencrypted outbound calls are blocked.
    public func createVoiceConnector(_ input: CreateVoiceConnectorRequest) throws -> Future<CreateVoiceConnectorResponse> {
        return try client.send(operation: "CreateVoiceConnector", path: "/voice-connectors", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified Amazon Chime account. You must suspend all users before deleting a Team account. You can use the BatchSuspendUser action to do so. For EnterpriseLWA and EnterpriseAD accounts, you must release the claimed domains for your Amazon Chime account before deletion. As soon as you release the domain, all users under that account are suspended. Deleted accounts appear in your Disabled accounts list for 90 days. To restore a deleted account from your Disabled accounts list, you must contact AWS Support. After 90 days, deleted accounts are permanently removed from your Disabled accounts list.
    public func deleteAccount(_ input: DeleteAccountRequest) throws -> Future<DeleteAccountResponse> {
        return try client.send(operation: "DeleteAccount", path: "/accounts/{accountId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the events configuration that allows a bot to receive outgoing events.
    @discardableResult public func deleteEventsConfiguration(_ input: DeleteEventsConfigurationRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteEventsConfiguration", path: "/accounts/{accountId}/bots/{botId}/events-configuration", httpMethod: "DELETE", input: input)
    }

    ///  Moves the specified phone number into the Deletion queue. A phone number must be disassociated from any users or Amazon Chime Voice Connectors before it can be deleted. Deleted phone numbers remain in the Deletion queue for 7 days before they are deleted permanently.
    @discardableResult public func deletePhoneNumber(_ input: DeletePhoneNumberRequest) throws -> Future<Void> {
        return try client.send(operation: "DeletePhoneNumber", path: "/phone-numbers/{phoneNumberId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the specified Amazon Chime Voice Connector. Any phone numbers assigned to the Amazon Chime Voice Connector must be unassigned from it before it can be deleted.
    @discardableResult public func deleteVoiceConnector(_ input: DeleteVoiceConnectorRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteVoiceConnector", path: "/voice-connectors/{voiceConnectorId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the origination settings for the specified Amazon Chime Voice Connector.
    @discardableResult public func deleteVoiceConnectorOrigination(_ input: DeleteVoiceConnectorOriginationRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteVoiceConnectorOrigination", path: "/voice-connectors/{voiceConnectorId}/origination", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the termination settings for the specified Amazon Chime Voice Connector.
    @discardableResult public func deleteVoiceConnectorTermination(_ input: DeleteVoiceConnectorTerminationRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteVoiceConnectorTermination", path: "/voice-connectors/{voiceConnectorId}/termination", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the specified SIP credentials used by your equipment to authenticate during call termination.
    @discardableResult public func deleteVoiceConnectorTerminationCredentials(_ input: DeleteVoiceConnectorTerminationCredentialsRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteVoiceConnectorTerminationCredentials", path: "/voice-connectors/{voiceConnectorId}/termination/credentials?operation=delete", httpMethod: "POST", input: input)
    }

    ///  Disassociates the primary provisioned phone number from the specified Amazon Chime user.
    public func disassociatePhoneNumberFromUser(_ input: DisassociatePhoneNumberFromUserRequest) throws -> Future<DisassociatePhoneNumberFromUserResponse> {
        return try client.send(operation: "DisassociatePhoneNumberFromUser", path: "/accounts/{accountId}/users/{userId}?operation=disassociate-phone-number", httpMethod: "POST", input: input)
    }

    ///  Disassociates the specified phone number from the specified Amazon Chime Voice Connector.
    public func disassociatePhoneNumbersFromVoiceConnector(_ input: DisassociatePhoneNumbersFromVoiceConnectorRequest) throws -> Future<DisassociatePhoneNumbersFromVoiceConnectorResponse> {
        return try client.send(operation: "DisassociatePhoneNumbersFromVoiceConnector", path: "/voice-connectors/{voiceConnectorId}?operation=disassociate-phone-numbers", httpMethod: "POST", input: input)
    }

    ///  Retrieves details for the specified Amazon Chime account, such as account type and supported licenses.
    public func getAccount(_ input: GetAccountRequest) throws -> Future<GetAccountResponse> {
        return try client.send(operation: "GetAccount", path: "/accounts/{accountId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves account settings for the specified Amazon Chime account ID, such as remote control and dial out settings. For more information about these settings, see Use the Policies Page in the Amazon Chime Administration Guide.
    public func getAccountSettings(_ input: GetAccountSettingsRequest) throws -> Future<GetAccountSettingsResponse> {
        return try client.send(operation: "GetAccountSettings", path: "/accounts/{accountId}/settings", httpMethod: "GET", input: input)
    }

    ///  Retrieves details for the specified bot, such as bot email address, bot type, status, and display name.
    public func getBot(_ input: GetBotRequest) throws -> Future<GetBotResponse> {
        return try client.send(operation: "GetBot", path: "/accounts/{accountId}/bots/{botId}", httpMethod: "GET", input: input)
    }

    ///  Gets details for an events configuration that allows a bot to receive outgoing events, such as an HTTPS endpoint or Lambda function ARN. 
    public func getEventsConfiguration(_ input: GetEventsConfigurationRequest) throws -> Future<GetEventsConfigurationResponse> {
        return try client.send(operation: "GetEventsConfiguration", path: "/accounts/{accountId}/bots/{botId}/events-configuration", httpMethod: "GET", input: input)
    }

    ///  Retrieves global settings for the administrator's AWS account, such as Amazon Chime Business Calling and Amazon Chime Voice Connector settings.
    public func getGlobalSettings() throws -> Future<GetGlobalSettingsResponse> {
        return try client.send(operation: "GetGlobalSettings", path: "/settings", httpMethod: "GET")
    }

    ///  Retrieves details for the specified phone number ID, such as associations, capabilities, and product type.
    public func getPhoneNumber(_ input: GetPhoneNumberRequest) throws -> Future<GetPhoneNumberResponse> {
        return try client.send(operation: "GetPhoneNumber", path: "/phone-numbers/{phoneNumberId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves details for the specified phone number order, such as order creation timestamp, phone numbers in E.164 format, product type, and order status.
    public func getPhoneNumberOrder(_ input: GetPhoneNumberOrderRequest) throws -> Future<GetPhoneNumberOrderResponse> {
        return try client.send(operation: "GetPhoneNumberOrder", path: "/phone-number-orders/{phoneNumberOrderId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves details for the specified user ID, such as primary email address, license type, and personal meeting PIN. To retrieve user details with an email address instead of a user ID, use the ListUsers action, and then filter by email address.
    public func getUser(_ input: GetUserRequest) throws -> Future<GetUserResponse> {
        return try client.send(operation: "GetUser", path: "/accounts/{accountId}/users/{userId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves settings for the specified user ID, such as any associated phone number settings.
    public func getUserSettings(_ input: GetUserSettingsRequest) throws -> Future<GetUserSettingsResponse> {
        return try client.send(operation: "GetUserSettings", path: "/accounts/{accountId}/users/{userId}/settings", httpMethod: "GET", input: input)
    }

    ///  Retrieves details for the specified Amazon Chime Voice Connector, such as timestamps, name, outbound host, and encryption requirements.
    public func getVoiceConnector(_ input: GetVoiceConnectorRequest) throws -> Future<GetVoiceConnectorResponse> {
        return try client.send(operation: "GetVoiceConnector", path: "/voice-connectors/{voiceConnectorId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves origination setting details for the specified Amazon Chime Voice Connector.
    public func getVoiceConnectorOrigination(_ input: GetVoiceConnectorOriginationRequest) throws -> Future<GetVoiceConnectorOriginationResponse> {
        return try client.send(operation: "GetVoiceConnectorOrigination", path: "/voice-connectors/{voiceConnectorId}/origination", httpMethod: "GET", input: input)
    }

    ///  Retrieves termination setting details for the specified Amazon Chime Voice Connector.
    public func getVoiceConnectorTermination(_ input: GetVoiceConnectorTerminationRequest) throws -> Future<GetVoiceConnectorTerminationResponse> {
        return try client.send(operation: "GetVoiceConnectorTermination", path: "/voice-connectors/{voiceConnectorId}/termination", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the last time a SIP OPTIONS ping was received from your SIP infrastructure for the specified Amazon Chime Voice Connector.
    public func getVoiceConnectorTerminationHealth(_ input: GetVoiceConnectorTerminationHealthRequest) throws -> Future<GetVoiceConnectorTerminationHealthResponse> {
        return try client.send(operation: "GetVoiceConnectorTerminationHealth", path: "/voice-connectors/{voiceConnectorId}/termination/health", httpMethod: "GET", input: input)
    }

    ///  Sends email invites to as many as 50 users, inviting them to the specified Amazon Chime Team account. Only Team account types are currently supported for this action. 
    public func inviteUsers(_ input: InviteUsersRequest) throws -> Future<InviteUsersResponse> {
        return try client.send(operation: "InviteUsers", path: "/accounts/{accountId}/users?operation=add", httpMethod: "POST", input: input)
    }

    ///  Lists the Amazon Chime accounts under the administrator's AWS account. You can filter accounts by account name prefix. To find out which Amazon Chime account a user belongs to, you can filter by the user's email address, which returns one account result.
    public func listAccounts(_ input: ListAccountsRequest) throws -> Future<ListAccountsResponse> {
        return try client.send(operation: "ListAccounts", path: "/accounts", httpMethod: "GET", input: input)
    }

    ///  Lists the bots associated with the administrator's Amazon Chime Enterprise account ID.
    public func listBots(_ input: ListBotsRequest) throws -> Future<ListBotsResponse> {
        return try client.send(operation: "ListBots", path: "/accounts/{accountId}/bots", httpMethod: "GET", input: input)
    }

    ///  Lists the phone number orders for the administrator's Amazon Chime account.
    public func listPhoneNumberOrders(_ input: ListPhoneNumberOrdersRequest) throws -> Future<ListPhoneNumberOrdersResponse> {
        return try client.send(operation: "ListPhoneNumberOrders", path: "/phone-number-orders", httpMethod: "GET", input: input)
    }

    ///  Lists the phone numbers for the specified Amazon Chime account, Amazon Chime user, or Amazon Chime Voice Connector.
    public func listPhoneNumbers(_ input: ListPhoneNumbersRequest) throws -> Future<ListPhoneNumbersResponse> {
        return try client.send(operation: "ListPhoneNumbers", path: "/phone-numbers", httpMethod: "GET", input: input)
    }

    ///  Lists the users that belong to the specified Amazon Chime account. You can specify an email address to list only the user that the email address belongs to.
    public func listUsers(_ input: ListUsersRequest) throws -> Future<ListUsersResponse> {
        return try client.send(operation: "ListUsers", path: "/accounts/{accountId}/users", httpMethod: "GET", input: input)
    }

    ///  Lists the SIP credentials for the specified Amazon Chime Voice Connector.
    public func listVoiceConnectorTerminationCredentials(_ input: ListVoiceConnectorTerminationCredentialsRequest) throws -> Future<ListVoiceConnectorTerminationCredentialsResponse> {
        return try client.send(operation: "ListVoiceConnectorTerminationCredentials", path: "/voice-connectors/{voiceConnectorId}/termination/credentials", httpMethod: "GET", input: input)
    }

    ///  Lists the Amazon Chime Voice Connectors for the administrator's AWS account.
    public func listVoiceConnectors(_ input: ListVoiceConnectorsRequest) throws -> Future<ListVoiceConnectorsResponse> {
        return try client.send(operation: "ListVoiceConnectors", path: "/voice-connectors", httpMethod: "GET", input: input)
    }

    ///  Logs out the specified user from all of the devices they are currently logged into.
    public func logoutUser(_ input: LogoutUserRequest) throws -> Future<LogoutUserResponse> {
        return try client.send(operation: "LogoutUser", path: "/accounts/{accountId}/users/{userId}?operation=logout", httpMethod: "POST", input: input)
    }

    ///  Creates an events configuration that allows a bot to receive outgoing events sent by Amazon Chime. Choose either an HTTPS endpoint or a Lambda function ARN. For more information, see Bot.
    public func putEventsConfiguration(_ input: PutEventsConfigurationRequest) throws -> Future<PutEventsConfigurationResponse> {
        return try client.send(operation: "PutEventsConfiguration", path: "/accounts/{accountId}/bots/{botId}/events-configuration", httpMethod: "PUT", input: input)
    }

    ///  Adds origination settings for the specified Amazon Chime Voice Connector.
    public func putVoiceConnectorOrigination(_ input: PutVoiceConnectorOriginationRequest) throws -> Future<PutVoiceConnectorOriginationResponse> {
        return try client.send(operation: "PutVoiceConnectorOrigination", path: "/voice-connectors/{voiceConnectorId}/origination", httpMethod: "PUT", input: input)
    }

    ///  Adds termination settings for the specified Amazon Chime Voice Connector.
    public func putVoiceConnectorTermination(_ input: PutVoiceConnectorTerminationRequest) throws -> Future<PutVoiceConnectorTerminationResponse> {
        return try client.send(operation: "PutVoiceConnectorTermination", path: "/voice-connectors/{voiceConnectorId}/termination", httpMethod: "PUT", input: input)
    }

    ///  Adds termination SIP credentials for the specified Amazon Chime Voice Connector.
    @discardableResult public func putVoiceConnectorTerminationCredentials(_ input: PutVoiceConnectorTerminationCredentialsRequest) throws -> Future<Void> {
        return try client.send(operation: "PutVoiceConnectorTerminationCredentials", path: "/voice-connectors/{voiceConnectorId}/termination/credentials?operation=put", httpMethod: "POST", input: input)
    }

    ///  Regenerates the security token for a bot.
    public func regenerateSecurityToken(_ input: RegenerateSecurityTokenRequest) throws -> Future<RegenerateSecurityTokenResponse> {
        return try client.send(operation: "RegenerateSecurityToken", path: "/accounts/{accountId}/bots/{botId}?operation=regenerate-security-token", httpMethod: "POST", input: input)
    }

    ///  Resets the personal meeting PIN for the specified user on an Amazon Chime account. Returns the User object with the updated personal meeting PIN.
    public func resetPersonalPIN(_ input: ResetPersonalPINRequest) throws -> Future<ResetPersonalPINResponse> {
        return try client.send(operation: "ResetPersonalPIN", path: "/accounts/{accountId}/users/{userId}?operation=reset-personal-pin", httpMethod: "POST", input: input)
    }

    ///  Moves a phone number from the Deletion queue back into the phone number Inventory.
    public func restorePhoneNumber(_ input: RestorePhoneNumberRequest) throws -> Future<RestorePhoneNumberResponse> {
        return try client.send(operation: "RestorePhoneNumber", path: "/phone-numbers/{phoneNumberId}?operation=restore", httpMethod: "POST", input: input)
    }

    ///  Searches phone numbers that can be ordered.
    public func searchAvailablePhoneNumbers(_ input: SearchAvailablePhoneNumbersRequest) throws -> Future<SearchAvailablePhoneNumbersResponse> {
        return try client.send(operation: "SearchAvailablePhoneNumbers", path: "/search?type=phone-numbers", httpMethod: "GET", input: input)
    }

    ///  Updates account details for the specified Amazon Chime account. Currently, only account name updates are supported for this action.
    public func updateAccount(_ input: UpdateAccountRequest) throws -> Future<UpdateAccountResponse> {
        return try client.send(operation: "UpdateAccount", path: "/accounts/{accountId}", httpMethod: "POST", input: input)
    }

    ///  Updates the settings for the specified Amazon Chime account. You can update settings for remote control of shared screens, or for the dial-out option. For more information about these settings, see Use the Policies Page in the Amazon Chime Administration Guide.
    public func updateAccountSettings(_ input: UpdateAccountSettingsRequest) throws -> Future<UpdateAccountSettingsResponse> {
        return try client.send(operation: "UpdateAccountSettings", path: "/accounts/{accountId}/settings", httpMethod: "PUT", input: input)
    }

    ///  Updates the status of the specified bot, such as starting or stopping the bot from running in your Amazon Chime Enterprise account.
    public func updateBot(_ input: UpdateBotRequest) throws -> Future<UpdateBotResponse> {
        return try client.send(operation: "UpdateBot", path: "/accounts/{accountId}/bots/{botId}", httpMethod: "POST", input: input)
    }

    ///  Updates global settings for the administrator's AWS account, such as Amazon Chime Business Calling and Amazon Chime Voice Connector settings.
    @discardableResult public func updateGlobalSettings(_ input: UpdateGlobalSettingsRequest) throws -> Future<Void> {
        return try client.send(operation: "UpdateGlobalSettings", path: "/settings", httpMethod: "PUT", input: input)
    }

    ///  Updates phone number details, such as product type, for the specified phone number ID. For toll-free numbers, you can use only the Amazon Chime Voice Connector product type.
    public func updatePhoneNumber(_ input: UpdatePhoneNumberRequest) throws -> Future<UpdatePhoneNumberResponse> {
        return try client.send(operation: "UpdatePhoneNumber", path: "/phone-numbers/{phoneNumberId}", httpMethod: "POST", input: input)
    }

    ///  Updates user details for a specified user ID. Currently, only LicenseType updates are supported for this action.
    public func updateUser(_ input: UpdateUserRequest) throws -> Future<UpdateUserResponse> {
        return try client.send(operation: "UpdateUser", path: "/accounts/{accountId}/users/{userId}", httpMethod: "POST", input: input)
    }

    ///  Updates the settings for the specified user, such as phone number settings.
    @discardableResult public func updateUserSettings(_ input: UpdateUserSettingsRequest) throws -> Future<Void> {
        return try client.send(operation: "UpdateUserSettings", path: "/accounts/{accountId}/users/{userId}/settings", httpMethod: "PUT", input: input)
    }

    ///  Updates details for the specified Amazon Chime Voice Connector.
    public func updateVoiceConnector(_ input: UpdateVoiceConnectorRequest) throws -> Future<UpdateVoiceConnectorResponse> {
        return try client.send(operation: "UpdateVoiceConnector", path: "/voice-connectors/{voiceConnectorId}", httpMethod: "PUT", input: input)
    }
}
