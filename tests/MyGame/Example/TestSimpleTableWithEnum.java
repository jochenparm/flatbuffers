// automatically generated by the FlatBuffers compiler, do not modify

package MyGame.Example;

import java.nio.*;
import java.lang.*;
import java.util.*;
import com.google.flatbuffers.*;

@SuppressWarnings("unused")
final class TestSimpleTableWithEnum extends Table {
  public static void ValidateVersion() { Constants.FLATBUFFERS_22_11_22(); }
  public static TestSimpleTableWithEnum getRootAsTestSimpleTableWithEnum(ByteBuffer _bb) { return getRootAsTestSimpleTableWithEnum(_bb, new TestSimpleTableWithEnum()); }
  public static TestSimpleTableWithEnum getRootAsTestSimpleTableWithEnum(ByteBuffer _bb, TestSimpleTableWithEnum obj) { _bb.order(ByteOrder.LITTLE_ENDIAN); return (obj.__assign(_bb.getInt(_bb.position()) + _bb.position(), _bb)); }
  public void __init(int _i, ByteBuffer _bb) { __reset(_i, _bb); }
  public TestSimpleTableWithEnum __assign(int _i, ByteBuffer _bb) { __init(_i, _bb); return this; }

  public int color() { int o = __offset(4); return o != 0 ? bb.get(o + bb_pos) & 0xFF : 2; }
  public boolean mutateColor(int color) { int o = __offset(4); if (o != 0) { bb.put(o + bb_pos, (byte) color); return true; } else { return false; } }

  public static int createTestSimpleTableWithEnum(FlatBufferBuilder builder,
      int color) {
    builder.startTable(1);
    TestSimpleTableWithEnum.addColor(builder, color);
    return TestSimpleTableWithEnum.endTestSimpleTableWithEnum(builder);
  }

  public static void startTestSimpleTableWithEnum(FlatBufferBuilder builder) { builder.startTable(1); }
  public static void addColor(FlatBufferBuilder builder, int color) { builder.addByte(0, (byte) color, (byte) 2); }
  public static int endTestSimpleTableWithEnum(FlatBufferBuilder builder) {
    int o = builder.endTable();
    return o;
  }

  static final class Vector extends BaseVector {
    public Vector __assign(int _vector, int _element_size, ByteBuffer _bb) { __reset(_vector, _element_size, _bb); return this; }

    public TestSimpleTableWithEnum get(int j) { return get(new TestSimpleTableWithEnum(), j); }
    public TestSimpleTableWithEnum get(TestSimpleTableWithEnum obj, int j) {  return obj.__assign(__indirect(__element(j), bb), bb); }
  }
  public TestSimpleTableWithEnumT unpack() {
    TestSimpleTableWithEnumT _o = new TestSimpleTableWithEnumT();
    unpackTo(_o);
    return _o;
  }
  public void unpackTo(TestSimpleTableWithEnumT _o) {
    int _oColor = color();
    _o.setColor(_oColor);
  }
  public static int pack(FlatBufferBuilder builder, TestSimpleTableWithEnumT _o) {
    if (_o == null) return 0;
    return createTestSimpleTableWithEnum(
      builder,
      _o.getColor());
  }
}

