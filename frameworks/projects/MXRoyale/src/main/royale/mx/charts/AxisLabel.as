////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////

package mx.charts
{

/**
 *  An AxisLabel object represents a single label on the chart axis.
 *  AxisLabel objects are generated by IAxis objects.
 *  The AxisLabel object is also passed as the data
 *  to custom AxisLabel objects that implement the IDataRenderer interface.
 *  	
 *  @see mx.charts.AxisRenderer
 *  @see mx.charts.chartClasses.IAxis
 *  
 *  @langversion 3.0
 *  @playerversion Flash 9
 *  @playerversion AIR 1.1
 *  @productversion Flex 3
 */
public class AxisLabel 
{
//    include "../core/Version.as";

	//--------------------------------------------------------------------------
	//
	//  Constructor
	//
	//--------------------------------------------------------------------------

	/**
	 *  Constructor.
	 *
	 *  @param position The position, specified as a value between 0 and 1,
	 *  of the label along the axis.
	 *
	 *  @param value The value the label represents.
	 *
	 *  @param text The text label that is actually rendered along the axis.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public function AxisLabel(position:Number = 0, value:Object = null,
							  text:String = null) 
	{
		super();

		this.position = position;
		this.value = value;
		this.text = text;
	}

	//--------------------------------------------------------------------------
	//
	//  Properties
	//
	//--------------------------------------------------------------------------

	//----------------------------------
	//  position
	//----------------------------------

	[Inspectable(environment="none")]

	/**
	 *  The position, specified as a value between 0 and 1,
	 *  of the label along the axis.
	 *  An AxisLabel with a position of 0 is placed at the minimum value
	 *  of the axis, while an AxisLabel with a position of 1 is placed
	 *  at the maximum value of the axis.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public var position:Number;	

	//----------------------------------
	//  text
	//----------------------------------

	[Inspectable(environment="none")]

	/**
	 *  The text label that is actually rendered along the axis.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public var text:String;

	//----------------------------------
	//  value
	//----------------------------------

	[Inspectable(environment="none")]

	/**
	 *  The value that the label represents.
	 *  The particular type of the value property
	 *  is specific to the axis that generated the label.
	 *  For example, a LinearAxis might generate numeric values,
	 *  while a DateTimeAxis might generate Date instance values.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public var value:Object;
}

}
