#[ Property
  Automatically generated by the FlatBuffers compiler, do not modify.
  Or modify. I'm a message, not a cop.

  flatc version: 24.3.6

  Declared by  : 
]#

import flatbuffers

type Property* = object of FlatObj
func property*(self: Property): bool =
  return Get[bool](self.tab, self.tab.Pos + 0)
func `property=`*(self: var Property, n: bool): bool =
  return self.tab.Mutate(self.tab.Pos + 0, n)
proc PropertyCreate*(self: var Builder, property: bool): uoffset =
  self.Prep(1, 1)
  self.Prepend(property)
  return self.Offset()
