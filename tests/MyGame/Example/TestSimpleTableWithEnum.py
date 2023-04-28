# automatically generated by the FlatBuffers compiler, do not modify

# namespace: Example

import flatbuffers
from flatbuffers.compat import import_numpy
np = import_numpy()

class TestSimpleTableWithEnum(object):
    __slots__ = ['_tab']

    @classmethod
    def GetRootAs(cls, buf, offset=0):
        n = flatbuffers.encode.Get(flatbuffers.packer.uoffset, buf, offset)
        x = TestSimpleTableWithEnum()
        x.Init(buf, n + offset)
        return x

    @classmethod
    def GetRootAsTestSimpleTableWithEnum(cls, buf, offset=0):
        """This method is deprecated. Please switch to GetRootAs."""
        return cls.GetRootAs(buf, offset)
    @classmethod
    def TestSimpleTableWithEnumBufferHasIdentifier(cls, buf, offset, size_prefixed=False):
        return flatbuffers.util.BufferHasIdentifier(buf, offset, b"\x4D\x4F\x4E\x53", size_prefixed=size_prefixed)

    # TestSimpleTableWithEnum
    def Init(self, buf, pos):
        self._tab = flatbuffers.table.Table(buf, pos)

    # TestSimpleTableWithEnum
    def Color(self):
        o = flatbuffers.number_types.UOffsetTFlags.py_type(self._tab.Offset(4))
        if o != 0:
            return self._tab.Get(flatbuffers.number_types.Uint8Flags, o + self._tab.Pos)
        return 2

def TestSimpleTableWithEnumStart(builder):
    builder.StartObject(1)

def Start(builder):
    TestSimpleTableWithEnumStart(builder)

def TestSimpleTableWithEnumAddColor(builder, color):
    builder.PrependUint8Slot(0, color, 2)

def AddColor(builder: flatbuffers.Builder, color: int):
    TestSimpleTableWithEnumAddColor(builder, color)

def TestSimpleTableWithEnumEnd(builder):
    return builder.EndObject()

def End(builder):
    return TestSimpleTableWithEnumEnd(builder)


class TestSimpleTableWithEnumT(object):

    # TestSimpleTableWithEnumT
    def __init__(self):
        self.color = 2  # type: int

    @classmethod
    def InitFromBuf(cls, buf, pos):
        testSimpleTableWithEnum = TestSimpleTableWithEnum()
        testSimpleTableWithEnum.Init(buf, pos)
        return cls.InitFromObj(testSimpleTableWithEnum)

    @classmethod
    def InitFromPackedBuf(cls, buf, pos=0):
        n = flatbuffers.encode.Get(flatbuffers.packer.uoffset, buf, pos)
        return cls.InitFromBuf(buf, pos+n)

    @classmethod
    def InitFromObj(cls, testSimpleTableWithEnum):
        x = TestSimpleTableWithEnumT()
        x._UnPack(testSimpleTableWithEnum)
        return x

    # TestSimpleTableWithEnumT
    def _UnPack(self, testSimpleTableWithEnum):
        if testSimpleTableWithEnum is None:
            return
        self.color = testSimpleTableWithEnum.Color()

    # TestSimpleTableWithEnumT
    def Pack(self, builder):
        TestSimpleTableWithEnumStart(builder)
        TestSimpleTableWithEnumAddColor(builder, self.color)
        testSimpleTableWithEnum = TestSimpleTableWithEnumEnd(builder)
        return testSimpleTableWithEnum
