//
//  Timeline.swift
//  SwiftExperiment
//
//  Created by George Pimm on 13/11/2015.
//  Copyright © 2015 George Pimm. All rights reserved.
//

import Foundation


class TimelineObject
{
  let construction: Float;
  let destruction: Float;
  
  init(construction: Float, destruction: Float)
  {
    self.construction = construction;
    self.destruction = destruction;
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
}