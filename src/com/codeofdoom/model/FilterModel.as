package com.codeofdoom.model
{
	import flash.errors.IllegalOperationError;
	
	import mx.collections.ArrayCollection;

	public class FilterModel
	{
		private static var _instance:FilterModel = new FilterModel();
		public var startDate:Date;
		public var endDate:Date;
		public var ageText:int;
		public var name:String;
		public var filterList:ArrayCollection;
		
		public function FilterModel()
		{
			if (_instance != null)
				throw IllegalOperationError("you may only access this through getInstance()");
		}
		
		public static function getInstance():FilterModel
		{
			return _instance;
		}
	}
}