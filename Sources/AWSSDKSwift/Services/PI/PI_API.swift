// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Performance Insights enables you to monitor and explore different dimensions of database load based on data captured from a running RDS instance. The guide provides detailed information about Performance Insights data types, parameters and errors. For more information about Performance Insights capabilities see Using Amazon RDS Performance Insights  in the Amazon RDS User Guide.  The AWS Performance Insights API provides visibility into the performance of your RDS instance, when Performance Insights is enabled for supported engine types. While Amazon CloudWatch provides the authoritative source for AWS service vended monitoring metrics, AWS Performance Insights offers a domain-specific view of database load measured as Average Active Sessions and provided to API consumers as a 2-dimensional time-series dataset. The time dimension of the data provides DB load data for each time point in the queried time range, and each time point decomposes overall load in relation to the requested dimensions, such as SQL, Wait-event, User or Host, measured at that time point.
*/
public struct PI {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "PerformanceInsightsv20180227",
            service: "pi",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-02-27",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [PIErrorType.self]
        )
    }

    ///  For a specific time period, retrieve the top N dimension keys for a metric.
    public func describeDimensionKeys(_ input: DescribeDimensionKeysRequest) throws -> Future<DescribeDimensionKeysResponse> {
        return try client.send(operation: "DescribeDimensionKeys", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieve Performance Insights metrics for a set of data sources, over a time period. You can provide specific dimension groups and dimensions, and provide aggregation and filtering criteria for each group.
    public func getResourceMetrics(_ input: GetResourceMetricsRequest) throws -> Future<GetResourceMetricsResponse> {
        return try client.send(operation: "GetResourceMetrics", path: "/", httpMethod: "POST", input: input)
    }
}
