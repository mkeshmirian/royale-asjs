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
package org.apache.royale.svg.elements
{
  COMPILE::JS
  {
    import org.apache.royale.html.util.addSvgElementToWrapper;
    import org.apache.royale.core.WrappedHTMLElement;
  }
  COMPILE::SWF
  public class Image{
    public function Image(){}
  }
  
  COMPILE::JS
  public class Image extends SVGBase
  {
    public function Image()
    {
      super();
    }
    override protected function createElement():WrappedHTMLElement{
      return addSvgElementToWrapper(this, 'image');
    }

    public function get href():String{
    	return element.getAttribute("href");
    }
    public function set href(value:String):void{
    	element.setAttribute("href",value);
    }

    public function get preserveAspectRatio():String{
    	return element.getAttribute("preserveAspectRatio");
    }
    public function set preserveAspectRatio(value:String):void{
    	element.setAttribute("preserveAspectRatio",value);
    }

  }
}