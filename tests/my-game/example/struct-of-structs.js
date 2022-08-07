// automatically generated by the FlatBuffers compiler, do not modify
import { Ability } from '../../my-game/example/ability';
import { Test } from '../../my-game/example/test';
export class StructOfStructs {
    constructor() {
        this.bb = null;
        this.bb_pos = 0;
    }
    __init(i, bb) {
        this.bb_pos = i;
        this.bb = bb;
        return this;
    }
    a(obj) {
        return (obj || new Ability()).__init(this.bb_pos, this.bb);
    }
    b(obj) {
        return (obj || new Test()).__init(this.bb_pos + 8, this.bb);
    }
    c(obj) {
        return (obj || new Ability()).__init(this.bb_pos + 12, this.bb);
    }
    static getFullyQualifiedName() {
        return 'MyGame.Example.StructOfStructs';
    }
    static sizeOf() {
        return 20;
    }
    static createStructOfStructs(builder, a_id, a_distance, b_a, b_b, c_id, c_distance) {
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
    unpack() {
        return new StructOfStructsT((this.a() !== null ? this.a().unpack() : null), (this.b() !== null ? this.b().unpack() : null), (this.c() !== null ? this.c().unpack() : null));
    }
    unpackTo(_o) {
        _o.a = (this.a() !== null ? this.a().unpack() : null);
        _o.b = (this.b() !== null ? this.b().unpack() : null);
        _o.c = (this.c() !== null ? this.c().unpack() : null);
    }
}
export class StructOfStructsT {
    constructor(a = null, b = null, c = null) {
        this.a = a;
        this.b = b;
        this.c = c;
    }
    pack(builder) {
        var _a, _b, _c, _d, _e, _f, _g, _h, _j, _k, _l, _m;
        return StructOfStructs.createStructOfStructs(builder, ((_b = (_a = this.a) === null || _a === void 0 ? void 0 : _a.id) !== null && _b !== void 0 ? _b : 0), ((_d = (_c = this.a) === null || _c === void 0 ? void 0 : _c.distance) !== null && _d !== void 0 ? _d : 0), ((_f = (_e = this.b) === null || _e === void 0 ? void 0 : _e.a) !== null && _f !== void 0 ? _f : 0), ((_h = (_g = this.b) === null || _g === void 0 ? void 0 : _g.b) !== null && _h !== void 0 ? _h : 0), ((_k = (_j = this.c) === null || _j === void 0 ? void 0 : _j.id) !== null && _k !== void 0 ? _k : 0), ((_m = (_l = this.c) === null || _l === void 0 ? void 0 : _l.distance) !== null && _m !== void 0 ? _m : 0));
    }
}
