// automatically generated by the FlatBuffers compiler, do not modify

package MyGame.Example;

import com.google.flatbuffers.BaseVector;
import com.google.flatbuffers.BooleanVector;
import com.google.flatbuffers.ByteVector;
import com.google.flatbuffers.Constants;
import com.google.flatbuffers.DoubleVector;
import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.FloatVector;
import com.google.flatbuffers.IntVector;
import com.google.flatbuffers.LongVector;
import com.google.flatbuffers.ShortVector;
import com.google.flatbuffers.StringVector;
import com.google.flatbuffers.Struct;
import com.google.flatbuffers.Table;
import com.google.flatbuffers.UnionVector;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@SuppressWarnings("unused")
public final class TypeAliases extends Table {
  public static void ValidateVersion() { Constants.FLATBUFFERS_23_1_4(); }
  public static TypeAliases getRootAsTypeAliases(ByteBuffer _bb) { return getRootAsTypeAliases(_bb, new TypeAliases()); }
  public static TypeAliases getRootAsTypeAliases(ByteBuffer _bb, TypeAliases obj) { _bb.order(ByteOrder.LITTLE_ENDIAN); return (obj.__assign(_bb.getInt(_bb.position()) + _bb.position(), _bb)); }
  public void __init(int _i, ByteBuffer _bb) { __reset(_i, _bb); }
  public TypeAliases __assign(int _i, ByteBuffer _bb) { __init(_i, _bb); return this; }

  public byte i8() { int o = __offset(4); return o != 0 ? bb.get(o + bb_pos) : 0; }
  public boolean mutateI8(byte i8) { int o = __offset(4); if (o != 0) { bb.put(o + bb_pos, i8); return true; } else { return false; } }
  public int u8() { int o = __offset(6); return o != 0 ? bb.get(o + bb_pos) & 0xFF : 0; }
  public boolean mutateU8(int u8) { int o = __offset(6); if (o != 0) { bb.put(o + bb_pos, (byte) u8); return true; } else { return false; } }
  public short i16() { int o = __offset(8); return o != 0 ? bb.getShort(o + bb_pos) : 0; }
  public boolean mutateI16(short i16) { int o = __offset(8); if (o != 0) { bb.putShort(o + bb_pos, i16); return true; } else { return false; } }
  public int u16() { int o = __offset(10); return o != 0 ? bb.getShort(o + bb_pos) & 0xFFFF : 0; }
  public boolean mutateU16(int u16) { int o = __offset(10); if (o != 0) { bb.putShort(o + bb_pos, (short) u16); return true; } else { return false; } }
  public int i32() { int o = __offset(12); return o != 0 ? bb.getInt(o + bb_pos) : 0; }
  public boolean mutateI32(int i32) { int o = __offset(12); if (o != 0) { bb.putInt(o + bb_pos, i32); return true; } else { return false; } }
  public long u32() { int o = __offset(14); return o != 0 ? (long)bb.getInt(o + bb_pos) & 0xFFFFFFFFL : 0L; }
  public boolean mutateU32(long u32) { int o = __offset(14); if (o != 0) { bb.putInt(o + bb_pos, (int) u32); return true; } else { return false; } }
  public long i64() { int o = __offset(16); return o != 0 ? bb.getLong(o + bb_pos) : 0L; }
  public boolean mutateI64(long i64) { int o = __offset(16); if (o != 0) { bb.putLong(o + bb_pos, i64); return true; } else { return false; } }
  public long u64() { int o = __offset(18); return o != 0 ? bb.getLong(o + bb_pos) : 0L; }
  public boolean mutateU64(long u64) { int o = __offset(18); if (o != 0) { bb.putLong(o + bb_pos, u64); return true; } else { return false; } }
  public float f32() { int o = __offset(20); return o != 0 ? bb.getFloat(o + bb_pos) : 0.0f; }
  public boolean mutateF32(float f32) { int o = __offset(20); if (o != 0) { bb.putFloat(o + bb_pos, f32); return true; } else { return false; } }
  public double f64() { int o = __offset(22); return o != 0 ? bb.getDouble(o + bb_pos) : 0.0; }
  public boolean mutateF64(double f64) { int o = __offset(22); if (o != 0) { bb.putDouble(o + bb_pos, f64); return true; } else { return false; } }
  public byte v8(int j) { int o = __offset(24); return o != 0 ? bb.get(__vector(o) + j * 1) : 0; }
  public int v8Length() { int o = __offset(24); return o != 0 ? __vector_len(o) : 0; }
  public ByteVector v8Vector() { return v8Vector(new ByteVector()); }
  public ByteVector v8Vector(ByteVector obj) { int o = __offset(24); return o != 0 ? obj.__assign(__vector(o), bb) : null; }
  public ByteBuffer v8AsByteBuffer() { return __vector_as_bytebuffer(24, 1); }
  public ByteBuffer v8InByteBuffer(ByteBuffer _bb) { return __vector_in_bytebuffer(_bb, 24, 1); }
  public boolean mutateV8(int j, byte v8) { int o = __offset(24); if (o != 0) { bb.put(__vector(o) + j * 1, v8); return true; } else { return false; } }
  public double vf64(int j) { int o = __offset(26); return o != 0 ? bb.getDouble(__vector(o) + j * 8) : 0; }
  public int vf64Length() { int o = __offset(26); return o != 0 ? __vector_len(o) : 0; }
  public DoubleVector vf64Vector() { return vf64Vector(new DoubleVector()); }
  public DoubleVector vf64Vector(DoubleVector obj) { int o = __offset(26); return o != 0 ? obj.__assign(__vector(o), bb) : null; }
  public ByteBuffer vf64AsByteBuffer() { return __vector_as_bytebuffer(26, 8); }
  public ByteBuffer vf64InByteBuffer(ByteBuffer _bb) { return __vector_in_bytebuffer(_bb, 26, 8); }
  public boolean mutateVf64(int j, double vf64) { int o = __offset(26); if (o != 0) { bb.putDouble(__vector(o) + j * 8, vf64); return true; } else { return false; } }

  public static int createTypeAliases(FlatBufferBuilder builder,
      byte i8,
      int u8,
      short i16,
      int u16,
      int i32,
      long u32,
      long i64,
      long u64,
      float f32,
      double f64,
      int v8Offset,
      int vf64Offset) {
    builder.startTable(12);
    TypeAliases.addF64(builder, f64);
    TypeAliases.addU64(builder, u64);
    TypeAliases.addI64(builder, i64);
    TypeAliases.addVf64(builder, vf64Offset);
    TypeAliases.addV8(builder, v8Offset);
    TypeAliases.addF32(builder, f32);
    TypeAliases.addU32(builder, u32);
    TypeAliases.addI32(builder, i32);
    TypeAliases.addU16(builder, u16);
    TypeAliases.addI16(builder, i16);
    TypeAliases.addU8(builder, u8);
    TypeAliases.addI8(builder, i8);
    return TypeAliases.endTypeAliases(builder);
  }

  public static void startTypeAliases(FlatBufferBuilder builder) { builder.startTable(12); }
  public static void addI8(FlatBufferBuilder builder, byte i8) { builder.addByte(0, i8, 0); }
  public static void addU8(FlatBufferBuilder builder, int u8) { builder.addByte(1, (byte) u8, (byte) 0); }
  public static void addI16(FlatBufferBuilder builder, short i16) { builder.addShort(2, i16, 0); }
  public static void addU16(FlatBufferBuilder builder, int u16) { builder.addShort(3, (short) u16, (short) 0); }
  public static void addI32(FlatBufferBuilder builder, int i32) { builder.addInt(4, i32, 0); }
  public static void addU32(FlatBufferBuilder builder, long u32) { builder.addInt(5, (int) u32, (int) 0L); }
  public static void addI64(FlatBufferBuilder builder, long i64) { builder.addLong(6, i64, 0L); }
  public static void addU64(FlatBufferBuilder builder, long u64) { builder.addLong(7, u64, 0L); }
  public static void addF32(FlatBufferBuilder builder, float f32) { builder.addFloat(8, f32, 0.0f); }
  public static void addF64(FlatBufferBuilder builder, double f64) { builder.addDouble(9, f64, 0.0); }
  public static void addV8(FlatBufferBuilder builder, int v8Offset) { builder.addOffset(10, v8Offset, 0); }
  public static int createV8Vector(FlatBufferBuilder builder, byte[] data) { return builder.createByteVector(data); }
  public static int createV8Vector(FlatBufferBuilder builder, ByteBuffer data) { return builder.createByteVector(data); }
  public static void startV8Vector(FlatBufferBuilder builder, int numElems) { builder.startVector(1, numElems, 1); }
  public static void addVf64(FlatBufferBuilder builder, int vf64Offset) { builder.addOffset(11, vf64Offset, 0); }
  public static int createVf64Vector(FlatBufferBuilder builder, double[] data) { builder.startVector(8, data.length, 8); for (int i = data.length - 1; i >= 0; i--) builder.addDouble(data[i]); return builder.endVector(); }
  public static void startVf64Vector(FlatBufferBuilder builder, int numElems) { builder.startVector(8, numElems, 8); }
  public static int endTypeAliases(FlatBufferBuilder builder) {
    int o = builder.endTable();
    return o;
  }

  public static final class Vector extends BaseVector {
    public Vector __assign(int _vector, int _element_size, ByteBuffer _bb) { __reset(_vector, _element_size, _bb); return this; }

    public TypeAliases get(int j) { return get(new TypeAliases(), j); }
    public TypeAliases get(TypeAliases obj, int j) {  return obj.__assign(__indirect(__element(j), bb), bb); }
  }
  public TypeAliasesT unpack() {
    TypeAliasesT _o = new TypeAliasesT();
    unpackTo(_o);
    return _o;
  }
  public void unpackTo(TypeAliasesT _o) {
    byte _oI8 = i8();
    _o.setI8(_oI8);
    int _oU8 = u8();
    _o.setU8(_oU8);
    short _oI16 = i16();
    _o.setI16(_oI16);
    int _oU16 = u16();
    _o.setU16(_oU16);
    int _oI32 = i32();
    _o.setI32(_oI32);
    long _oU32 = u32();
    _o.setU32(_oU32);
    long _oI64 = i64();
    _o.setI64(_oI64);
    long _oU64 = u64();
    _o.setU64(_oU64);
    float _oF32 = f32();
    _o.setF32(_oF32);
    double _oF64 = f64();
    _o.setF64(_oF64);
    byte[] _oV8 = new byte[v8Length()];
    for (int _j = 0; _j < v8Length(); ++_j) {_oV8[_j] = v8(_j);}
    _o.setV8(_oV8);
    double[] _oVf64 = new double[vf64Length()];
    for (int _j = 0; _j < vf64Length(); ++_j) {_oVf64[_j] = vf64(_j);}
    _o.setVf64(_oVf64);
  }
  public static int pack(FlatBufferBuilder builder, TypeAliasesT _o) {
    if (_o == null) return 0;
    int _v8 = 0;
    if (_o.getV8() != null) {
      _v8 = createV8Vector(builder, _o.getV8());
    }
    int _vf64 = 0;
    if (_o.getVf64() != null) {
      _vf64 = createVf64Vector(builder, _o.getVf64());
    }
    return createTypeAliases(
      builder,
      _o.getI8(),
      _o.getU8(),
      _o.getI16(),
      _o.getU16(),
      _o.getI32(),
      _o.getU32(),
      _o.getI64(),
      _o.getU64(),
      _o.getF32(),
      _o.getF64(),
      _v8,
      _vf64);
  }
}

