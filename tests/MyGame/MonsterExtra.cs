// <auto-generated>
//  automatically generated by the FlatBuffers compiler, do not modify
// </auto-generated>

namespace MyGame
{

using global::System;
using global::System.Collections.Generic;
using global::Google.FlatBuffers;

public struct MonsterExtra : IFlatbufferObject
{
  private Table __p;
  public ByteBuffer ByteBuffer { get { return __p.bb; } }
  public static void ValidateVersion() { FlatBufferConstants.FLATBUFFERS_24_3_7(); }
  public static MonsterExtra GetRootAsMonsterExtra(ByteBuffer _bb) { return GetRootAsMonsterExtra(_bb, new MonsterExtra()); }
  public static MonsterExtra GetRootAsMonsterExtra(ByteBuffer _bb, MonsterExtra obj) { return (obj.__assign(_bb.GetInt(_bb.Position) + _bb.Position, _bb)); }
  public static bool MonsterExtraBufferHasIdentifier(ByteBuffer _bb) { return Table.__has_identifier(_bb, "MONE"); }
  public static bool VerifyMonsterExtra(ByteBuffer _bb) {Google.FlatBuffers.Verifier verifier = new Google.FlatBuffers.Verifier(_bb); return verifier.VerifyBuffer("MONE", false, MonsterExtraVerify.Verify); }
  public void __init(int _i, ByteBuffer _bb) { __p = new Table(_i, _bb); }
  public MonsterExtra __assign(int _i, ByteBuffer _bb) { __init(_i, _bb); return this; }

  public double D0 { get { int o = __p.__offset(4); return o != 0 ? __p.bb.GetDouble(o + __p.bb_pos) : (double)Double.NaN; } }
  public bool MutateD0(double d0) { int o = __p.__offset(4); if (o != 0) { __p.bb.PutDouble(o + __p.bb_pos, d0); return true; } else { return false; } }
  public double D1 { get { int o = __p.__offset(6); return o != 0 ? __p.bb.GetDouble(o + __p.bb_pos) : (double)Double.NaN; } }
  public bool MutateD1(double d1) { int o = __p.__offset(6); if (o != 0) { __p.bb.PutDouble(o + __p.bb_pos, d1); return true; } else { return false; } }
  public double D2 { get { int o = __p.__offset(8); return o != 0 ? __p.bb.GetDouble(o + __p.bb_pos) : (double)Double.PositiveInfinity; } }
  public bool MutateD2(double d2) { int o = __p.__offset(8); if (o != 0) { __p.bb.PutDouble(o + __p.bb_pos, d2); return true; } else { return false; } }
  public double D3 { get { int o = __p.__offset(10); return o != 0 ? __p.bb.GetDouble(o + __p.bb_pos) : (double)Double.NegativeInfinity; } }
  public bool MutateD3(double d3) { int o = __p.__offset(10); if (o != 0) { __p.bb.PutDouble(o + __p.bb_pos, d3); return true; } else { return false; } }
  public float F0 { get { int o = __p.__offset(12); return o != 0 ? __p.bb.GetFloat(o + __p.bb_pos) : (float)Single.NaN; } }
  public bool MutateF0(float f0) { int o = __p.__offset(12); if (o != 0) { __p.bb.PutFloat(o + __p.bb_pos, f0); return true; } else { return false; } }
  public float F1 { get { int o = __p.__offset(14); return o != 0 ? __p.bb.GetFloat(o + __p.bb_pos) : (float)Single.NaN; } }
  public bool MutateF1(float f1) { int o = __p.__offset(14); if (o != 0) { __p.bb.PutFloat(o + __p.bb_pos, f1); return true; } else { return false; } }
  public float F2 { get { int o = __p.__offset(16); return o != 0 ? __p.bb.GetFloat(o + __p.bb_pos) : (float)Single.PositiveInfinity; } }
  public bool MutateF2(float f2) { int o = __p.__offset(16); if (o != 0) { __p.bb.PutFloat(o + __p.bb_pos, f2); return true; } else { return false; } }
  public float F3 { get { int o = __p.__offset(18); return o != 0 ? __p.bb.GetFloat(o + __p.bb_pos) : (float)Single.NegativeInfinity; } }
  public bool MutateF3(float f3) { int o = __p.__offset(18); if (o != 0) { __p.bb.PutFloat(o + __p.bb_pos, f3); return true; } else { return false; } }
  public double Dvec(int j) { int o = __p.__offset(20); return o != 0 ? __p.bb.GetDouble(__p.__vector(o) + j * 8) : (double)0; }
  public int DvecLength { get { int o = __p.__offset(20); return o != 0 ? __p.__vector_len(o) : 0; } }
#if ENABLE_SPAN_T
  public Span<double> GetDvecBytes() { return __p.__vector_as_span<double>(20, 8); }
#else
  public ArraySegment<byte>? GetDvecBytes() { return __p.__vector_as_arraysegment(20); }
#endif
  public double[] GetDvecArray() { return __p.__vector_as_array<double>(20); }
  public bool MutateDvec(int j, double dvec) { int o = __p.__offset(20); if (o != 0) { __p.bb.PutDouble(__p.__vector(o) + j * 8, dvec); return true; } else { return false; } }
  public float Fvec(int j) { int o = __p.__offset(22); return o != 0 ? __p.bb.GetFloat(__p.__vector(o) + j * 4) : (float)0; }
  public int FvecLength { get { int o = __p.__offset(22); return o != 0 ? __p.__vector_len(o) : 0; } }
#if ENABLE_SPAN_T
  public Span<float> GetFvecBytes() { return __p.__vector_as_span<float>(22, 4); }
#else
  public ArraySegment<byte>? GetFvecBytes() { return __p.__vector_as_arraysegment(22); }
#endif
  public float[] GetFvecArray() { return __p.__vector_as_array<float>(22); }
  public bool MutateFvec(int j, float fvec) { int o = __p.__offset(22); if (o != 0) { __p.bb.PutFloat(__p.__vector(o) + j * 4, fvec); return true; } else { return false; } }

  public static Offset<MyGame.MonsterExtra> CreateMonsterExtra(FlatBufferBuilder builder,
      double d0 = Double.NaN,
      double d1 = Double.NaN,
      double d2 = Double.PositiveInfinity,
      double d3 = Double.NegativeInfinity,
      float f0 = Single.NaN,
      float f1 = Single.NaN,
      float f2 = Single.PositiveInfinity,
      float f3 = Single.NegativeInfinity,
      VectorOffset dvecOffset = default(VectorOffset),
      VectorOffset fvecOffset = default(VectorOffset)) {
    builder.StartTable(11);
    MonsterExtra.AddD3(builder, d3);
    MonsterExtra.AddD2(builder, d2);
    MonsterExtra.AddD1(builder, d1);
    MonsterExtra.AddD0(builder, d0);
    MonsterExtra.AddFvec(builder, fvecOffset);
    MonsterExtra.AddDvec(builder, dvecOffset);
    MonsterExtra.AddF3(builder, f3);
    MonsterExtra.AddF2(builder, f2);
    MonsterExtra.AddF1(builder, f1);
    MonsterExtra.AddF0(builder, f0);
    return MonsterExtra.EndMonsterExtra(builder);
  }

  public static void StartMonsterExtra(FlatBufferBuilder builder) { builder.StartTable(11); }
  public static void AddD0(FlatBufferBuilder builder, double d0) { builder.AddDouble(0, d0, Double.NaN); }
  public static void AddD1(FlatBufferBuilder builder, double d1) { builder.AddDouble(1, d1, Double.NaN); }
  public static void AddD2(FlatBufferBuilder builder, double d2) { builder.AddDouble(2, d2, Double.PositiveInfinity); }
  public static void AddD3(FlatBufferBuilder builder, double d3) { builder.AddDouble(3, d3, Double.NegativeInfinity); }
  public static void AddF0(FlatBufferBuilder builder, float f0) { builder.AddFloat(4, f0, Single.NaN); }
  public static void AddF1(FlatBufferBuilder builder, float f1) { builder.AddFloat(5, f1, Single.NaN); }
  public static void AddF2(FlatBufferBuilder builder, float f2) { builder.AddFloat(6, f2, Single.PositiveInfinity); }
  public static void AddF3(FlatBufferBuilder builder, float f3) { builder.AddFloat(7, f3, Single.NegativeInfinity); }
  public static void AddDvec(FlatBufferBuilder builder, VectorOffset dvecOffset) { builder.AddOffset(8, dvecOffset.Value, 0); }
  public static VectorOffset CreateDvecVector(FlatBufferBuilder builder, double[] data) { builder.StartVector(8, data.Length, 8); for (int i = data.Length - 1; i >= 0; i--) builder.AddDouble(data[i]); return builder.EndVector(); }
  public static VectorOffset CreateDvecVectorBlock(FlatBufferBuilder builder, double[] data) { builder.StartVector(8, data.Length, 8); builder.Add(data); return builder.EndVector(); }
  public static VectorOffset CreateDvecVectorBlock(FlatBufferBuilder builder, ArraySegment<double> data) { builder.StartVector(8, data.Count, 8); builder.Add(data); return builder.EndVector(); }
  public static VectorOffset CreateDvecVectorBlock(FlatBufferBuilder builder, IntPtr dataPtr, int sizeInBytes) { builder.StartVector(1, sizeInBytes, 1); builder.Add<double>(dataPtr, sizeInBytes); return builder.EndVector(); }
  public static void StartDvecVector(FlatBufferBuilder builder, int numElems) { builder.StartVector(8, numElems, 8); }
  public static void AddFvec(FlatBufferBuilder builder, VectorOffset fvecOffset) { builder.AddOffset(9, fvecOffset.Value, 0); }
  public static VectorOffset CreateFvecVector(FlatBufferBuilder builder, float[] data) { builder.StartVector(4, data.Length, 4); for (int i = data.Length - 1; i >= 0; i--) builder.AddFloat(data[i]); return builder.EndVector(); }
  public static VectorOffset CreateFvecVectorBlock(FlatBufferBuilder builder, float[] data) { builder.StartVector(4, data.Length, 4); builder.Add(data); return builder.EndVector(); }
  public static VectorOffset CreateFvecVectorBlock(FlatBufferBuilder builder, ArraySegment<float> data) { builder.StartVector(4, data.Count, 4); builder.Add(data); return builder.EndVector(); }
  public static VectorOffset CreateFvecVectorBlock(FlatBufferBuilder builder, IntPtr dataPtr, int sizeInBytes) { builder.StartVector(1, sizeInBytes, 1); builder.Add<float>(dataPtr, sizeInBytes); return builder.EndVector(); }
  public static void StartFvecVector(FlatBufferBuilder builder, int numElems) { builder.StartVector(4, numElems, 4); }
  public static Offset<MyGame.MonsterExtra> EndMonsterExtra(FlatBufferBuilder builder) {
    int o = builder.EndTable();
    return new Offset<MyGame.MonsterExtra>(o);
  }
  public static void FinishMonsterExtraBuffer(FlatBufferBuilder builder, Offset<MyGame.MonsterExtra> offset) { builder.Finish(offset.Value, "MONE"); }
  public static void FinishSizePrefixedMonsterExtraBuffer(FlatBufferBuilder builder, Offset<MyGame.MonsterExtra> offset) { builder.FinishSizePrefixed(offset.Value, "MONE"); }
  public MonsterExtraT UnPack() {
    var _o = new MonsterExtraT();
    this.UnPackTo(_o);
    return _o;
  }
  public void UnPackTo(MonsterExtraT _o) {
    _o.D0 = this.D0;
    _o.D1 = this.D1;
    _o.D2 = this.D2;
    _o.D3 = this.D3;
    _o.F0 = this.F0;
    _o.F1 = this.F1;
    _o.F2 = this.F2;
    _o.F3 = this.F3;
    _o.Dvec = new List<double>();
    for (var _j = 0; _j < this.DvecLength; ++_j) {_o.Dvec.Add(this.Dvec(_j));}
    _o.Fvec = new List<float>();
    for (var _j = 0; _j < this.FvecLength; ++_j) {_o.Fvec.Add(this.Fvec(_j));}
  }
  public static Offset<MyGame.MonsterExtra> Pack(FlatBufferBuilder builder, MonsterExtraT _o) {
    if (_o == null) return default(Offset<MyGame.MonsterExtra>);
    var _dvec = default(VectorOffset);
    if (_o.Dvec != null) {
      var __dvec = _o.Dvec.ToArray();
      _dvec = CreateDvecVector(builder, __dvec);
    }
    var _fvec = default(VectorOffset);
    if (_o.Fvec != null) {
      var __fvec = _o.Fvec.ToArray();
      _fvec = CreateFvecVector(builder, __fvec);
    }
    return CreateMonsterExtra(
      builder,
      _o.D0,
      _o.D1,
      _o.D2,
      _o.D3,
      _o.F0,
      _o.F1,
      _o.F2,
      _o.F3,
      _dvec,
      _fvec);
  }
}

public class MonsterExtraT
{
  [Newtonsoft.Json.JsonProperty("d0")]
  public double D0 { get; set; }
  [Newtonsoft.Json.JsonProperty("d1")]
  public double D1 { get; set; }
  [Newtonsoft.Json.JsonProperty("d2")]
  public double D2 { get; set; }
  [Newtonsoft.Json.JsonProperty("d3")]
  public double D3 { get; set; }
  [Newtonsoft.Json.JsonProperty("f0")]
  public float F0 { get; set; }
  [Newtonsoft.Json.JsonProperty("f1")]
  public float F1 { get; set; }
  [Newtonsoft.Json.JsonProperty("f2")]
  public float F2 { get; set; }
  [Newtonsoft.Json.JsonProperty("f3")]
  public float F3 { get; set; }
  [Newtonsoft.Json.JsonProperty("dvec")]
  public List<double> Dvec { get; set; }
  [Newtonsoft.Json.JsonProperty("fvec")]
  public List<float> Fvec { get; set; }

  public MonsterExtraT() {
    this.D0 = Double.NaN;
    this.D1 = Double.NaN;
    this.D2 = Double.PositiveInfinity;
    this.D3 = Double.NegativeInfinity;
    this.F0 = Single.NaN;
    this.F1 = Single.NaN;
    this.F2 = Single.PositiveInfinity;
    this.F3 = Single.NegativeInfinity;
    this.Dvec = null;
    this.Fvec = null;
  }

  public static MonsterExtraT DeserializeFromJson(string jsonText) {
    return Newtonsoft.Json.JsonConvert.DeserializeObject<MonsterExtraT>(jsonText);
  }
  public string SerializeToJson() {
    return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
  }
  public static MonsterExtraT DeserializeFromBinary(byte[] fbBuffer) {
    return MonsterExtra.GetRootAsMonsterExtra(new ByteBuffer(fbBuffer)).UnPack();
  }
  public byte[] SerializeToBinary() {
    var fbb = new FlatBufferBuilder(0x10000);
    MonsterExtra.FinishMonsterExtraBuffer(fbb, MonsterExtra.Pack(fbb, this));
    return fbb.DataBuffer.ToSizedArray();
  }
}


static public class MonsterExtraVerify
{
  static public bool Verify(Google.FlatBuffers.Verifier verifier, uint tablePos)
  {
    return verifier.VerifyTableStart(tablePos)
      && verifier.VerifyField(tablePos, 4 /*D0*/, 8 /*double*/, 8, false)
      && verifier.VerifyField(tablePos, 6 /*D1*/, 8 /*double*/, 8, false)
      && verifier.VerifyField(tablePos, 8 /*D2*/, 8 /*double*/, 8, false)
      && verifier.VerifyField(tablePos, 10 /*D3*/, 8 /*double*/, 8, false)
      && verifier.VerifyField(tablePos, 12 /*F0*/, 4 /*float*/, 4, false)
      && verifier.VerifyField(tablePos, 14 /*F1*/, 4 /*float*/, 4, false)
      && verifier.VerifyField(tablePos, 16 /*F2*/, 4 /*float*/, 4, false)
      && verifier.VerifyField(tablePos, 18 /*F3*/, 4 /*float*/, 4, false)
      && verifier.VerifyVectorOfData(tablePos, 20 /*Dvec*/, 8 /*double*/, false)
      && verifier.VerifyVectorOfData(tablePos, 22 /*Fvec*/, 4 /*float*/, false)
      && verifier.VerifyTableEnd(tablePos);
  }
}

}
