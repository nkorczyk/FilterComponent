package com.codeofdoom.filters
{
	import com.codeofdoom.model.FilterModel;

	public class IsEqualFilter extends AbstractFilter
	{
		public function IsEqualFilter(dataField:String, propertyField:String)
		{
			super(dataField,propertyField);
		}
		
		override public function filter(item:Object):Boolean
		{
			var model:FilterModel = FilterModel.getInstance();
			if (model.hasOwnProperty(propertyField))
			{
				var value1:int = item[dataField] as int;
				var value2:int = FilterModel.getInstance()[propertyField] as Number;	
				if (value1 == value2)
					return true;
				else
					return false;
			}
			else
			{
				//if the model does not have the specified property, ignore it.
				return true;
			}
		}
	}
}