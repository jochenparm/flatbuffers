#[ MyGame.Example.Referrable
  Automatically generated by the FlatBuffers compiler, do not modify.
  Or modify. I'm a message, not a cop.

  flatc version: 23.1.20

  Declared by  : 
  Rooting type : MyGame.Example.Monster ()
]#

import flatbuffers

type Referrable* = object of FlatObj
func id*(self: Referrable): uint64 =
  let o = self.tab.Offset(4)
  if o != 0:
    return Get[uint64](self.tab, self.tab.Pos + o)
  return 0
func `id=`*(self: var Referrable, n: uint64): bool =
  return self.tab.MutateSlot(4, n)
proc ReferrableStart*(builder: var Builder) =
  builder.StartObject(1)
proc ReferrableAddid*(builder: var Builder, id: uint64) =
  builder.PrependSlot(0, id, default(uint64))
proc ReferrableEnd*(builder: var Builder): uoffset =
  return builder.EndObject()
