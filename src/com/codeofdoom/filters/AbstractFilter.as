package com.codeofdoom.filters
{
	import flash.errors.IllegalOperationError;

	public class AbstractFilter implements IFilter
	{
		private var _dataField:String;
		private var _propertyField:String;
		
		public function AbstractFilter(dataField:String, propertyField:String)
		{
			_dataField = dataField;
			_propertyField= propertyField;
		}
		
		public function filter(item:Object):Boolean
		{
			throw IllegalOperationError("YOU MUST IMPLEMENT THIS FUNCTION!!!");
		}
		
		public function get dataField():String
		{
			return _dataField;
		}
		
		public function set dataField(value:String):void
		{
			_dataField = value;
		}
		
		public function set propertyField(value:String):void
		{
			_propertyField = value;
		}
		public function get propertyField():String
		{
			return _propertyField;
		}
	}
}