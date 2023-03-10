//
// DucksmsCreditAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

extension DucksmsAPI {


open class DucksmsCreditAPI {
    /**
     Credit Balance
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func creditBalance(apiResponseQueue: DispatchQueue = DucksmsAPI.apiResponseQueue, completion: @escaping ((_ data: CreditBalance?,_ error: Error?) -> Void)) {
        creditBalanceWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Credit Balance
     - GET /api/v1/credits/balance
     - Get available credit balance
     - BASIC:
       - type: http
       - name: BearerToken
     - returns: RequestBuilder<CreditBalance> 
     */
    open class func creditBalanceWithRequestBuilder() -> RequestBuilder<CreditBalance> {
        let path = "/api/v1/credits/balance"
        let URLString = DucksmsAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<CreditBalance>.Type = DucksmsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter filterType
     */
    public enum FilterType_creditHistory: String, CaseIterable {
        case credit = "credit"
        case charge = "charge"
        case pending = "pending"
        case freeze = "freeze"
        case bonus = "bonus"
    }

    /**
     Credit History
     
     - parameter page: (query) Page number (optional)
     - parameter filterType: (query) Filter by credit type (optional)
     - parameter filterSmsSmsid: (query) Filter by sms id (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func creditHistory(page: Int? = nil, filterType: FilterType_creditHistory? = nil, filterSmsSmsid: Int? = nil, apiResponseQueue: DispatchQueue = DucksmsAPI.apiResponseQueue, completion: @escaping ((_ data: CreditHistory?,_ error: Error?) -> Void)) {
        creditHistoryWithRequestBuilder(page: page, filterType: filterType, filterSmsSmsid: filterSmsSmsid).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Credit History
     - GET /api/v1/credits/history
     - Get all credit history
     - BASIC:
       - type: http
       - name: BearerToken
     - responseHeaders: [X-Pagination-Count(Int), X-Pagination-Page(Int), X-Pagination-Limit(Int)]
     - parameter page: (query) Page number (optional)
     - parameter filterType: (query) Filter by credit type (optional)
     - parameter filterSmsSmsid: (query) Filter by sms id (optional)
     - returns: RequestBuilder<CreditHistory> 
     */
    open class func creditHistoryWithRequestBuilder(page: Int? = nil, filterType: FilterType_creditHistory? = nil, filterSmsSmsid: Int? = nil) -> RequestBuilder<CreditHistory> {
        let path = "/api/v1/credits/history"
        let URLString = DucksmsAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "filter[type]": filterType?.encodeToJSON(), 
            "filter[sms.smsid]": filterSmsSmsid?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<CreditHistory>.Type = DucksmsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
}
