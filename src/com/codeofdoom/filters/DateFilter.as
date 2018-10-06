package com.codeofdoom.filters
{
	import com.codeofdoom.model.FilterModel;
	
	public class DateFilter extends AbstractFilter
	{
		public function DateFilter(dataField:String)
		{
			super(dataField,null);
		}
		
		override public function filter(item:Object):Boolean
		{
			var d:Date = item[dataField] as Date;
			var start:Date = FilterModel.getInstance().startDate;
			var end:Date = FilterModel.getInstance().endDate;
			if (d && start && end)
			{
				if (d >= start && d <= end)
					return true;
			}
			else
			{
				return true;
			}
			return false;
			
		}
		
		
	}
}