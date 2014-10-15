//
//  OperationOutcome.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (operationoutcome.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Information about the success/failure of an action.
 *
 *  Scope and Usage Operation Outcomes are sets of error, warning and information messages that provide detailed
 *  information about the outcome of some attempted system operation. They are provided as a direct system response, or
 *  component of one, where they provide information about the outcome of the operation.
 *  
 *  Specifically, OperationOutcomes are used in the following circumstances:
 *  
 *  * When an RESTful operation fails
 *  * As the response on a validation operation, to provide information about the outcomes
 *  * As part of a message response, usually when the message has not been processed correctly
 */
public class OperationOutcome: FHIRResource
{
	override public class var resourceName: String {
		get { return "OperationOutcome" }
	}
	
	/// A single issue associated with the action
	public var issue: [OperationOutcomeIssue]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	public convenience init(issue: [OperationOutcomeIssue]?) {
		self.init(json: nil)
		if nil != issue {
			self.issue = issue
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["issue"] as? [NSDictionary] {
				self.issue = OperationOutcomeIssue.from(val) as? [OperationOutcomeIssue]
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
		}
	}
}


/**
 *  A single issue associated with the action.
 *
 *  An error, warning or information message that results from a system action.
 */
public class OperationOutcomeIssue: FHIRElement
{	
	/// Additional description of the issue
	public var details: String?
	
	/// XPath of element(s) related to issue
	public var location: [String]?
	
	/// fatal | error | warning | information
	public var severity: String?
	
	/// Error or warning code
	public var type: Coding?
	
	public convenience init(severity: String?) {
		self.init(json: nil)
		if nil != severity {
			self.severity = severity
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["details"] as? String {
				self.details = val
			}
			if let val = js["location"] as? [String] {
				self.location = val
			}
			if let val = js["severity"] as? String {
				self.severity = val
			}
			if let val = js["type"] as? NSDictionary {
				self.type = Coding(json: val)
			}
		}
	}
}
