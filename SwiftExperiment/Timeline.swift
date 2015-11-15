//
//  Timeline.swift
//  SwiftExperiment
//
//  Created by George Pimm on 13/11/2015.
//  Copyright © 2015 George Pimm. All rights reserved.
//

import Foundation

class ValueSupplier
{
  var callback: ((Timeline) -> Any)
  
  init(callback: ((Timeline) -> Any))
  {
    self.callback = callback
  }
  
  func sample(tl: Timeline) -> Any
  {
    return self.callback(tl)
  }
}

class TimelineObject
{
  let construction: Float;
  let destruction: Float;
  let supplier: ValueSupplier;
  
  init(construction: Float, destruction: Float, supplier: ValueSupplier)
  {
    self.construction = construction;
    self.destruction = destruction;
    self.supplier = supplier;
  }
}

class Timeline
{
  var objects: [TimelineObject]
  
  init()
  {
    self.objects = [];
  }
  
  func add_object(obj: TimelineObject)
  {
    self.objects.append(obj)
  }
  
  func sample<T>(name: String) -> T
  {
    let t: Any = 5;
    
    switch t
    {
    case let t as Float:
      return T.Type(t)
    case let t as Int:
      return T.Type(t)
    }
  }
}