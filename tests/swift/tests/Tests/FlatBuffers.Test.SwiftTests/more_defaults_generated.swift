// automatically generated by the FlatBuffers compiler, do not modify
// swiftlint:disable all
// swiftformat:disable all

import FlatBuffers

public enum ABC: Int32, Enum, Verifiable {
  public typealias T = Int32
  public static var byteSize: Int { return MemoryLayout<Int32>.size }
  public var value: Int32 { return self.rawValue }
  case a = 0
  case b = 1
  case c = 2

  public static var max: ABC { return .c }
  public static var min: ABC { return .a }
}

extension ABC: Encodable {
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    switch self {
    case .a: try container.encode("A")
    case .b: try container.encode("B")
    case .c: try container.encode("C")
    }
  }
}

public struct MoreDefaults: FlatBufferObject, Verifiable, ObjectAPIPacker {

  static func validateVersion() { FlatBuffersVersion_22_10_25() }
  public var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Table

  public static func getRootAsMoreDefaults(bb: ByteBuffer) -> MoreDefaults { return MoreDefaults(Table(bb: bb, position: Int32(bb.read(def: UOffset.self, position: bb.reader)) + Int32(bb.reader))) }

  private init(_ t: Table) { _accessor = t }
  public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

  private enum VTOFFSET: VOffset {
    case ints = 4
    case floats = 6
    case emptyString = 8
    case someString = 10
    case abcs = 12
    case bools = 14
    var v: Int32 { Int32(self.rawValue) }
    var p: VOffset { self.rawValue }
  }

  public var hasInts: Bool { let o = _accessor.offset(VTOFFSET.ints.v); return o == 0 ? false : true }
  public var intsCount: Int32 { let o = _accessor.offset(VTOFFSET.ints.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func ints(at index: Int32) -> Int32 { let o = _accessor.offset(VTOFFSET.ints.v); return o == 0 ? 0 : _accessor.directRead(of: Int32.self, offset: _accessor.vector(at: o) + index * 4) }
  public var ints: [Int32] { return _accessor.getVector(at: VTOFFSET.ints.v) ?? [] }
  public var hasFloats: Bool { let o = _accessor.offset(VTOFFSET.floats.v); return o == 0 ? false : true }
  public var floatsCount: Int32 { let o = _accessor.offset(VTOFFSET.floats.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func floats(at index: Int32) -> Float32 { let o = _accessor.offset(VTOFFSET.floats.v); return o == 0 ? 0 : _accessor.directRead(of: Float32.self, offset: _accessor.vector(at: o) + index * 4) }
  public var floats: [Float32] { return _accessor.getVector(at: VTOFFSET.floats.v) ?? [] }
  public var emptyString: String? { let o = _accessor.offset(VTOFFSET.emptyString.v); return o == 0 ? "" : _accessor.string(at: o) }
  public var emptyStringSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.emptyString.v) }
  public var someString: String? { let o = _accessor.offset(VTOFFSET.someString.v); return o == 0 ? "some" : _accessor.string(at: o) }
  public var someStringSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.someString.v) }
  public var hasAbcs: Bool { let o = _accessor.offset(VTOFFSET.abcs.v); return o == 0 ? false : true }
  public var abcsCount: Int32 { let o = _accessor.offset(VTOFFSET.abcs.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func abcs(at index: Int32) -> ABC? { let o = _accessor.offset(VTOFFSET.abcs.v); return o == 0 ? ABC.a : ABC(rawValue: _accessor.directRead(of: Int32.self, offset: _accessor.vector(at: o) + index * 4)) }
  public var hasBools: Bool { let o = _accessor.offset(VTOFFSET.bools.v); return o == 0 ? false : true }
  public var boolsCount: Int32 { let o = _accessor.offset(VTOFFSET.bools.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func bools(at index: Int32) -> Bool { let o = _accessor.offset(VTOFFSET.bools.v); return o == 0 ? true : _accessor.directRead(of: Bool.self, offset: _accessor.vector(at: o) + index * 1) }
  public var bools: [Bool] { return _accessor.getVector(at: VTOFFSET.bools.v) ?? [] }
  public static func startMoreDefaults(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 6) }
  public static func addVectorOf(ints: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: ints, at: VTOFFSET.ints.p) }
  public static func addVectorOf(floats: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: floats, at: VTOFFSET.floats.p) }
  public static func add(emptyString: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: emptyString, at: VTOFFSET.emptyString.p) }
  public static func add(someString: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: someString, at: VTOFFSET.someString.p) }
  public static func addVectorOf(abcs: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: abcs, at: VTOFFSET.abcs.p) }
  public static func addVectorOf(bools: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: bools, at: VTOFFSET.bools.p) }
  public static func endMoreDefaults(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset { let end = Offset(offset: fbb.endTable(at: start)); return end }
  public static func createMoreDefaults(
    _ fbb: inout FlatBufferBuilder,
    intsVectorOffset ints: Offset = Offset(),
    floatsVectorOffset floats: Offset = Offset(),
    emptyStringOffset emptyString: Offset = Offset(),
    someStringOffset someString: Offset = Offset(),
    abcsVectorOffset abcs: Offset = Offset(),
    boolsVectorOffset bools: Offset = Offset()
  ) -> Offset {
    let __start = MoreDefaults.startMoreDefaults(&fbb)
    MoreDefaults.addVectorOf(ints: ints, &fbb)
    MoreDefaults.addVectorOf(floats: floats, &fbb)
    MoreDefaults.add(emptyString: emptyString, &fbb)
    MoreDefaults.add(someString: someString, &fbb)
    MoreDefaults.addVectorOf(abcs: abcs, &fbb)
    MoreDefaults.addVectorOf(bools: bools, &fbb)
    return MoreDefaults.endMoreDefaults(&fbb, start: __start)
  }
  

  public mutating func unpack() -> MoreDefaultsT {
    return MoreDefaultsT(&self)
  }
  public static func pack(_ builder: inout FlatBufferBuilder, obj: inout MoreDefaultsT?) -> Offset {
    guard var obj = obj else { return Offset() }
    return pack(&builder, obj: &obj)
  }

  public static func pack(_ builder: inout FlatBufferBuilder, obj: inout MoreDefaultsT) -> Offset {
    let __ints = builder.createVector(obj.ints)
    let __floats = builder.createVector(obj.floats)
    let __emptyString: Offset
    if let s = obj.emptyString {
      __emptyString = builder.create(string: s)
    } else {
      __emptyString = Offset()
    }

    let __someString: Offset
    if let s = obj.someString {
      __someString = builder.create(string: s)
    } else {
      __someString = Offset()
    }

    let __abcs = builder.createVector(obj.abcs)
    let __bools = builder.createVector(obj.bools)
    let __root = MoreDefaults.startMoreDefaults(&builder)
    MoreDefaults.addVectorOf(ints: __ints, &builder)
    MoreDefaults.addVectorOf(floats: __floats, &builder)
    MoreDefaults.add(emptyString: __emptyString, &builder)
    MoreDefaults.add(someString: __someString, &builder)
    MoreDefaults.addVectorOf(abcs: __abcs, &builder)
    MoreDefaults.addVectorOf(bools: __bools, &builder)
    return MoreDefaults.endMoreDefaults(&builder, start: __root)
  }

  public static func verify<T>(_ verifier: inout Verifier, at position: Int, of type: T.Type) throws where T: Verifiable {
    var _v = try verifier.visitTable(at: position)
    try _v.visit(field: VTOFFSET.ints.p, fieldName: "ints", required: false, type: ForwardOffset<Vector<Int32, Int32>>.self)
    try _v.visit(field: VTOFFSET.floats.p, fieldName: "floats", required: false, type: ForwardOffset<Vector<Float32, Float32>>.self)
    try _v.visit(field: VTOFFSET.emptyString.p, fieldName: "emptyString", required: false, type: ForwardOffset<String>.self)
    try _v.visit(field: VTOFFSET.someString.p, fieldName: "someString", required: false, type: ForwardOffset<String>.self)
    try _v.visit(field: VTOFFSET.abcs.p, fieldName: "abcs", required: false, type: ForwardOffset<Vector<ABC, ABC>>.self)
    try _v.visit(field: VTOFFSET.bools.p, fieldName: "bools", required: false, type: ForwardOffset<Vector<Bool, Bool>>.self)
    _v.finish()
  }
}

extension MoreDefaults: Encodable {

  enum CodingKeys: String, CodingKey {
    case ints = "ints"
    case floats = "floats"
    case emptyString = "empty_string"
    case someString = "some_string"
    case abcs = "abcs"
    case bools = "bools"
  }
  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if intsCount > 0 {
      try container.encodeIfPresent(ints, forKey: .ints)
    }
    if floatsCount > 0 {
      try container.encodeIfPresent(floats, forKey: .floats)
    }
    try container.encodeIfPresent(emptyString, forKey: .emptyString)
    try container.encodeIfPresent(someString, forKey: .someString)
    if abcsCount > 0 {
      var contentEncoder = container.nestedUnkeyedContainer(forKey: .abcs)
      for index in 0..<abcsCount {
        guard let type = abcs(at: index) else { continue }
        try contentEncoder.encode(type)
      }
    }
    if boolsCount > 0 {
      try container.encodeIfPresent(bools, forKey: .bools)
    }
  }
}

public class MoreDefaultsT: NativeObject {

  public var ints: [Int32]
  public var floats: [Float32]
  public var emptyString: String?
  public var someString: String?
  public var abcs: [ABC]
  public var bools: [Bool]

  public init(_ _t: inout MoreDefaults) {
    ints = []
    for index in 0..<_t.intsCount {
        ints.append(_t.ints(at: index))
    }
    floats = []
    for index in 0..<_t.floatsCount {
        floats.append(_t.floats(at: index))
    }
    emptyString = _t.emptyString
    someString = _t.someString
    abcs = []
    for index in 0..<_t.abcsCount {
        abcs.append(_t.abcs(at: index)!)
    }
    bools = []
    for index in 0..<_t.boolsCount {
        bools.append(_t.bools(at: index))
    }
  }

  public init() {
    ints = []
    floats = []
    emptyString = ""
    someString = "some"
    abcs = []
    bools = []
  }

  public func serialize() -> ByteBuffer { return serialize(type: MoreDefaults.self) }

}
