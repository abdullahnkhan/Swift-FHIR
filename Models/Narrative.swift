//
//  Narrative.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (type-Narrative.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A human-readable formatted text, including images.
 */
public class Narrative: FHIRElement
{
	override public class var resourceName: String {
		get { return "Narrative" }
	}
	
	/// Limited xhtml content
	public var div: String?
	
	/// generated | extensions | additional
	public var status: String?
	
	public convenience init(div: String?, status: String?) {
		self.init(json: nil)
		if nil != div {
			self.div = div
		}
		if nil != status {
			self.status = status
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["div"] as? String {
				self.div = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
}
