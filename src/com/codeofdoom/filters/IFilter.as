package com.codeofdoom.filters
{
	public interface IFilter
	{
		function filter(item:Object):Boolean;
		function get dataField():String;
		function set dataField(value:String):void;
		function get propertyField():String;
		function set propertyField(value:String):void;
	}
}