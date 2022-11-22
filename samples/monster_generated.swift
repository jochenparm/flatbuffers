// automatically generated by the FlatBuffers compiler, do not modify
// swiftlint:disable all
// swiftformat:disable all

import FlatBuffers

public enum MyGame_Sample_Color: Int8, Enum {
  public typealias T = Int8
  public static var byteSize: Int { return MemoryLayout<Int8>.size }
  public var value: Int8 { return self.rawValue }
  case red = 0
  case green = 1
  case blue = 2


  public static var max: MyGame_Sample_Color { return .blue }
  public static var min: MyGame_Sample_Color { return .red }
}

public enum MyGame_Sample_Equipment: UInt8, Enum {
  public typealias T = UInt8
  public static var byteSize: Int { return MemoryLayout<UInt8>.size }
  public var value: UInt8 { return self.rawValue }
  case none_ = 0
  case weapon = 1


  public static var max: MyGame_Sample_Equipment { return .weapon }
  public static var min: MyGame_Sample_Equipment { return .none_ }
}

public struct MyGame_Sample_Vec3: NativeStruct {

  static func validateVersion() { FlatBuffersVersion_22_11_22() }

  private var _x: Float32
  private var _y: Float32
  private var _z: Float32

  public init(x: Float32, y: Float32, z: Float32) {
    _x = x
    _y = y
    _z = z
  }

  public init() {
    _x = 0.0
    _y = 0.0
    _z = 0.0
  }

  public var x: Float32 { _x }
  public var y: Float32 { _y }
  public var z: Float32 { _z }
}

public struct MyGame_Sample_Vec3_Mutable: FlatBufferObject {

  static func validateVersion() { FlatBuffersVersion_22_11_22() }
  public var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Struct

  public init(_ bb: ByteBuffer, o: Int32) { _accessor = Struct(bb: bb, position: o) }

  public var x: Float32 { return _accessor.readBuffer(of: Float32.self, at: 0) }
  @discardableResult public func mutate(x: Float32) -> Bool { return _accessor.mutate(x, index: 0) }
  public var y: Float32 { return _accessor.readBuffer(of: Float32.self, at: 4) }
  @discardableResult public func mutate(y: Float32) -> Bool { return _accessor.mutate(y, index: 4) }
  public var z: Float32 { return _accessor.readBuffer(of: Float32.self, at: 8) }
  @discardableResult public func mutate(z: Float32) -> Bool { return _accessor.mutate(z, index: 8) }
}

public struct MyGame_Sample_Monster: FlatBufferObject {

  static func validateVersion() { FlatBuffersVersion_22_11_22() }
  public var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Table

  public static func getRootAsMonster(bb: ByteBuffer) -> MyGame_Sample_Monster { return MyGame_Sample_Monster(Table(bb: bb, position: Int32(bb.read(def: UOffset.self, position: bb.reader)) + Int32(bb.reader))) }

  private init(_ t: Table) { _accessor = t }
  public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

  private enum VTOFFSET: VOffset {
    case pos = 4
    case mana = 6
    case hp = 8
    case name = 10
    case inventory = 14
    case color = 16
    case weapons = 18
    case equippedType = 20
    case equipped = 22
    case path = 24
    var v: Int32 { Int32(self.rawValue) }
    var p: VOffset { self.rawValue }
  }

  public var pos: MyGame_Sample_Vec3? { let o = _accessor.offset(VTOFFSET.pos.v); return o == 0 ? nil : _accessor.readBuffer(of: MyGame_Sample_Vec3.self, at: o) }
  public var mutablePos: MyGame_Sample_Vec3_Mutable? { let o = _accessor.offset(VTOFFSET.pos.v); return o == 0 ? nil : MyGame_Sample_Vec3_Mutable(_accessor.bb, o: o + _accessor.postion) }
  public var mana: Int16 { let o = _accessor.offset(VTOFFSET.mana.v); return o == 0 ? 150 : _accessor.readBuffer(of: Int16.self, at: o) }
  @discardableResult public func mutate(mana: Int16) -> Bool {let o = _accessor.offset(VTOFFSET.mana.v);  return _accessor.mutate(mana, index: o) }
  public var hp: Int16 { let o = _accessor.offset(VTOFFSET.hp.v); return o == 0 ? 100 : _accessor.readBuffer(of: Int16.self, at: o) }
  @discardableResult public func mutate(hp: Int16) -> Bool {let o = _accessor.offset(VTOFFSET.hp.v);  return _accessor.mutate(hp, index: o) }
  public var name: String? { let o = _accessor.offset(VTOFFSET.name.v); return o == 0 ? nil : _accessor.string(at: o) }
  public var nameSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.name.v) }
  public var inventoryCount: Int32 { let o = _accessor.offset(VTOFFSET.inventory.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func inventory(at index: Int32) -> UInt8 { let o = _accessor.offset(VTOFFSET.inventory.v); return o == 0 ? 0 : _accessor.directRead(of: UInt8.self, offset: _accessor.vector(at: o) + index * 1) }
  public var inventory: [UInt8] { return _accessor.getVector(at: VTOFFSET.inventory.v) ?? [] }
  public func mutate(inventory: UInt8, at index: Int32) -> Bool { let o = _accessor.offset(VTOFFSET.inventory.v); return _accessor.directMutate(inventory, index: _accessor.vector(at: o) + index * 1) }
  public var color: MyGame_Sample_Color { let o = _accessor.offset(VTOFFSET.color.v); return o == 0 ? .blue : MyGame_Sample_Color(rawValue: _accessor.readBuffer(of: Int8.self, at: o)) ?? .blue }
  @discardableResult public func mutate(color: MyGame_Sample_Color) -> Bool {let o = _accessor.offset(VTOFFSET.color.v);  return _accessor.mutate(color.rawValue, index: o) }
  public var weaponsCount: Int32 { let o = _accessor.offset(VTOFFSET.weapons.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func weapons(at index: Int32) -> MyGame_Sample_Weapon? { let o = _accessor.offset(VTOFFSET.weapons.v); return o == 0 ? nil : MyGame_Sample_Weapon(_accessor.bb, o: _accessor.indirect(_accessor.vector(at: o) + index * 4)) }
  public var equippedType: MyGame_Sample_Equipment { let o = _accessor.offset(VTOFFSET.equippedType.v); return o == 0 ? .none_ : MyGame_Sample_Equipment(rawValue: _accessor.readBuffer(of: UInt8.self, at: o)) ?? .none_ }
  public func equipped<T: FlatbuffersInitializable>(type: T.Type) -> T? { let o = _accessor.offset(VTOFFSET.equipped.v); return o == 0 ? nil : _accessor.union(o) }
  public var pathCount: Int32 { let o = _accessor.offset(VTOFFSET.path.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func path(at index: Int32) -> MyGame_Sample_Vec3? { let o = _accessor.offset(VTOFFSET.path.v); return o == 0 ? nil : _accessor.directRead(of: MyGame_Sample_Vec3.self, offset: _accessor.vector(at: o) + index * 12) }
  public func mutablePath(at index: Int32) -> MyGame_Sample_Vec3_Mutable? { let o = _accessor.offset(VTOFFSET.path.v); return o == 0 ? nil : MyGame_Sample_Vec3_Mutable(_accessor.bb, o: _accessor.vector(at: o) + index * 12) }
  public static func startMonster(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 11) }
  public static func add(pos: MyGame_Sample_Vec3?, _ fbb: inout FlatBufferBuilder) { guard let pos = pos else { return }; fbb.create(struct: pos, position: VTOFFSET.pos.p) }
  public static func add(mana: Int16, _ fbb: inout FlatBufferBuilder) { fbb.add(element: mana, def: 150, at: VTOFFSET.mana.p) }
  public static func add(hp: Int16, _ fbb: inout FlatBufferBuilder) { fbb.add(element: hp, def: 100, at: VTOFFSET.hp.p) }
  public static func add(name: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: name, at: VTOFFSET.name.p) }
  public static func addVectorOf(inventory: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: inventory, at: VTOFFSET.inventory.p) }
  public static func add(color: MyGame_Sample_Color, _ fbb: inout FlatBufferBuilder) { fbb.add(element: color.rawValue, def: 2, at: VTOFFSET.color.p) }
  public static func addVectorOf(weapons: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: weapons, at: VTOFFSET.weapons.p) }
  public static func add(equippedType: MyGame_Sample_Equipment, _ fbb: inout FlatBufferBuilder) { fbb.add(element: equippedType.rawValue, def: 0, at: VTOFFSET.equippedType.p) }
  public static func add(equipped: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: equipped, at: VTOFFSET.equipped.p) }
  public static func addVectorOf(path: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: path, at: VTOFFSET.path.p) }
  public static func startVectorOfPath(_ size: Int, in builder: inout FlatBufferBuilder) {
    builder.startVector(size * MemoryLayout<MyGame_Sample_Vec3>.size, elementSize: MemoryLayout<MyGame_Sample_Vec3>.alignment)
  }
  public static func endMonster(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset { let end = Offset(offset: fbb.endTable(at: start)); return end }
  public static func createMonster(
    _ fbb: inout FlatBufferBuilder,
    pos: MyGame_Sample_Vec3? = nil,
    mana: Int16 = 150,
    hp: Int16 = 100,
    nameOffset name: Offset = Offset(),
    inventoryVectorOffset inventory: Offset = Offset(),
    color: MyGame_Sample_Color = .blue,
    weaponsVectorOffset weapons: Offset = Offset(),
    equippedType: MyGame_Sample_Equipment = .none_,
    equippedOffset equipped: Offset = Offset(),
    pathVectorOffset path: Offset = Offset()
  ) -> Offset {
    let __start = MyGame_Sample_Monster.startMonster(&fbb)
    MyGame_Sample_Monster.add(pos: pos, &fbb)
    MyGame_Sample_Monster.add(mana: mana, &fbb)
    MyGame_Sample_Monster.add(hp: hp, &fbb)
    MyGame_Sample_Monster.add(name: name, &fbb)
    MyGame_Sample_Monster.addVectorOf(inventory: inventory, &fbb)
    MyGame_Sample_Monster.add(color: color, &fbb)
    MyGame_Sample_Monster.addVectorOf(weapons: weapons, &fbb)
    MyGame_Sample_Monster.add(equippedType: equippedType, &fbb)
    MyGame_Sample_Monster.add(equipped: equipped, &fbb)
    MyGame_Sample_Monster.addVectorOf(path: path, &fbb)
    return MyGame_Sample_Monster.endMonster(&fbb, start: __start)
  }
}

public struct MyGame_Sample_Weapon: FlatBufferObject {

  static func validateVersion() { FlatBuffersVersion_22_11_22() }
  public var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Table

  public static func getRootAsWeapon(bb: ByteBuffer) -> MyGame_Sample_Weapon { return MyGame_Sample_Weapon(Table(bb: bb, position: Int32(bb.read(def: UOffset.self, position: bb.reader)) + Int32(bb.reader))) }

  private init(_ t: Table) { _accessor = t }
  public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

  private enum VTOFFSET: VOffset {
    case name = 4
    case damage = 6
    var v: Int32 { Int32(self.rawValue) }
    var p: VOffset { self.rawValue }
  }

  public var name: String? { let o = _accessor.offset(VTOFFSET.name.v); return o == 0 ? nil : _accessor.string(at: o) }
  public var nameSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.name.v) }
  public var damage: Int16 { let o = _accessor.offset(VTOFFSET.damage.v); return o == 0 ? 0 : _accessor.readBuffer(of: Int16.self, at: o) }
  @discardableResult public func mutate(damage: Int16) -> Bool {let o = _accessor.offset(VTOFFSET.damage.v);  return _accessor.mutate(damage, index: o) }
  public static func startWeapon(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 2) }
  public static func add(name: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: name, at: VTOFFSET.name.p) }
  public static func add(damage: Int16, _ fbb: inout FlatBufferBuilder) { fbb.add(element: damage, def: 0, at: VTOFFSET.damage.p) }
  public static func endWeapon(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset { let end = Offset(offset: fbb.endTable(at: start)); return end }
  public static func createWeapon(
    _ fbb: inout FlatBufferBuilder,
    nameOffset name: Offset = Offset(),
    damage: Int16 = 0
  ) -> Offset {
    let __start = MyGame_Sample_Weapon.startWeapon(&fbb)
    MyGame_Sample_Weapon.add(name: name, &fbb)
    MyGame_Sample_Weapon.add(damage: damage, &fbb)
    return MyGame_Sample_Weapon.endWeapon(&fbb, start: __start)
  }
}

