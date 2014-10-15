//
//  Period.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (type-Period.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Time range defined by start and end date/time.
 */
public class Period: FHIRElement
{
	override public class var resourceName: String {
		get { return "Period" }
	}
	
	/// End time with inclusive boundary, if not ongoing
	public var end: NSDate?
	
	/// Starting time with inclusive boundary
	public var start: NSDate?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["end"] as? String {
				self.end = NSDate(json: val)
			}
			if let val = js["start"] as? String {
				self.start = NSDate(json: val)
			}
		}
	}
}
