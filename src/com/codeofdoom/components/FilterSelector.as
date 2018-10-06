package com.codeofdoom.components
{
	import com.codeofdoom.filters.IFilter;
	
	import mx.controls.CheckBox;
	
	public class FilterSelector extends CheckBox
	{
		private var _filter:IFilter;
		
		public function FilterSelector()
		{
			super();
		}
		
		public function get filter():IFilter
		{
			return _filter;
		}
		public function set filter(value:IFilter):void{
			
			_filter = value;
		}
	}
}