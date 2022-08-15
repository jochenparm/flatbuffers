// automatically generated by the FlatBuffers compiler, do not modify

import * as flatbuffers from 'flatbuffers';

import { Ability, AbilityT } from '../../my-game/example/ability';
import { Test, TestT } from '../../my-game/example/test';


export class StructOfStructs {
  bb: flatbuffers.ByteBuffer|null = null;
  bb_pos = 0;
  __init(i:number, bb:flatbuffers.ByteBuffer):StructOfStructs {
  this.bb_pos = i;
  this.bb = bb;
  return this;
}

a(obj?:Ability):Ability|null {
  return (obj || new Ability()).__init(this.bb_pos, this.bb!);
}

b(obj?:Test):Test|null {
  return (obj || new Test()).__init(this.bb_pos + 8, this.bb!);
}

c(obj?:Ability):Ability|null {
  return (obj || new Ability()).__init(this.bb_pos + 12, this.bb!);
}

static getFullyQualifiedName():string {
  return 'MyGame.Example.StructOfStructs';
}

static sizeOf():number {
  return 20;
}

static createStructOfStructs(builder:flatbuffers.Builder, a_id: number, a_distance: number, b_a: number, b_b: number, c_id: number, c_distance: number):flatbuffers.Offset {
  builder.prep(4, 20);
  builder.prep(4, 8);
  builder.writeInt32(c_distance);
  builder.writeInt32(c_id);
  builder.prep(2, 4);
  builder.pad(1);
  builder.writeInt8(b_b);
  builder.writeInt16(b_a);
  builder.prep(4, 8);
  builder.writeInt32(a_distance);
  builder.writeInt32(a_id);
  return builder.offset();
}


unpack(): StructOfStructsT {
  return new StructOfStructsT(
    (this.a() !== null ? this.a()!.unpack() : null),
    (this.b() !== null ? this.b()!.unpack() : null),
    (this.c() !== null ? this.c()!.unpack() : null)
  );
}


unpackTo(_o: StructOfStructsT): void {
  _o.a = (this.a() !== null ? this.a()!.unpack() : null);
  _o.b = (this.b() !== null ? this.b()!.unpack() : null);
  _o.c = (this.c() !== null ? this.c()!.unpack() : null);
}
}

export class StructOfStructsT {
constructor(
  public a: AbilityT|null = null,
  public b: TestT|null = null,
  public c: AbilityT|null = null
){}


pack(builder:flatbuffers.Builder): flatbuffers.Offset {
  return StructOfStructs.createStructOfStructs(builder,
    (this.a?.id ?? 0),
    (this.a?.distance ?? 0),
    (this.b?.a ?? 0),
    (this.b?.b ?? 0),
    (this.c?.id ?? 0),
    (this.c?.distance ?? 0)
  );
}
}
