package com.codeofdoom.filters
{
	import com.codeofdoom.model.FilterModel;
	
	public class StartsWithFilter extends AbstractFilter
	{
		public function StartsWithFilter(dataField:String, propertyField:String)
		{
			super(dataField, propertyField);
		}

		override public function filter(item:Object):Boolean
		{
			var value:String = FilterModel.getInstance()[propertyField];
			//ignore case sensitivity 
			var index:int = ((item[dataField] as String).toLowerCase().indexOf(value.toLowerCase()));
			if (index == 0)
			{
				return true;
			}
			return false;
		}
	}
}