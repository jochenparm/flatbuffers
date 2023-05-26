// automatically generated by the FlatBuffers compiler, do not modify


#ifndef FLATBUFFERS_GENERATED_NATIVETYPETEST_GEOMETRY_H_
#define FLATBUFFERS_GENERATED_NATIVETYPETEST_GEOMETRY_H_

#include "flatbuffers/flatbuffers.h"

// Ensure the included flatbuffers.h is the same version as when this file was
// generated, otherwise it may not be compatible.
static_assert(FLATBUFFERS_VERSION_MAJOR == 23 &&
              FLATBUFFERS_VERSION_MINOR == 5 &&
              FLATBUFFERS_VERSION_REVISION == 26,
             "Non-compatible flatbuffers version included");

#include "native_type_test_impl.h"

namespace Geometry {

struct Vector3D;

struct Vector3DAlt;

struct ApplicationData;
struct ApplicationDataBuilder;
struct ApplicationDataT;

inline const ::flatbuffers::TypeTable *Vector3DTypeTable();

inline const ::flatbuffers::TypeTable *Vector3DAltTypeTable();

inline const ::flatbuffers::TypeTable *ApplicationDataTypeTable();

FLATBUFFERS_MANUALLY_ALIGNED_STRUCT(4) Vector3D FLATBUFFERS_FINAL_CLASS {
 private:
  float x_;
  float y_;
  float z_;

 public:
  static const ::flatbuffers::TypeTable *MiniReflectTypeTable() {
    return Vector3DTypeTable();
  }
  Vector3D()
      : x_(0),
        y_(0),
        z_(0) {
  }
  Vector3D(float _x, float _y, float _z)
      : x_(::flatbuffers::EndianScalar(_x)),
        y_(::flatbuffers::EndianScalar(_y)),
        z_(::flatbuffers::EndianScalar(_z)) {
  }
  float x() const {
    return ::flatbuffers::EndianScalar(x_);
  }
  void mutate_x(float _x) {
    ::flatbuffers::WriteScalar(&x_, _x);
  }
  float y() const {
    return ::flatbuffers::EndianScalar(y_);
  }
  void mutate_y(float _y) {
    ::flatbuffers::WriteScalar(&y_, _y);
  }
  float z() const {
    return ::flatbuffers::EndianScalar(z_);
  }
  void mutate_z(float _z) {
    ::flatbuffers::WriteScalar(&z_, _z);
  }
};
FLATBUFFERS_STRUCT_END(Vector3D, 12);

FLATBUFFERS_MANUALLY_ALIGNED_STRUCT(4) Vector3DAlt FLATBUFFERS_FINAL_CLASS {
 private:
  float a_;
  float b_;
  float c_;

 public:
  static const ::flatbuffers::TypeTable *MiniReflectTypeTable() {
    return Vector3DAltTypeTable();
  }
  Vector3DAlt()
      : a_(0),
        b_(0),
        c_(0) {
  }
  Vector3DAlt(float _a, float _b, float _c)
      : a_(::flatbuffers::EndianScalar(_a)),
        b_(::flatbuffers::EndianScalar(_b)),
        c_(::flatbuffers::EndianScalar(_c)) {
  }
  float a() const {
    return ::flatbuffers::EndianScalar(a_);
  }
  void mutate_a(float _a) {
    ::flatbuffers::WriteScalar(&a_, _a);
  }
  float b() const {
    return ::flatbuffers::EndianScalar(b_);
  }
  void mutate_b(float _b) {
    ::flatbuffers::WriteScalar(&b_, _b);
  }
  float c() const {
    return ::flatbuffers::EndianScalar(c_);
  }
  void mutate_c(float _c) {
    ::flatbuffers::WriteScalar(&c_, _c);
  }
};
FLATBUFFERS_STRUCT_END(Vector3DAlt, 12);

struct ApplicationDataT : public ::flatbuffers::NativeTable {
  typedef ApplicationData TableType;
  std::vector<Native::Vector3D> vectors{};
  std::vector<Native::Vector3D> vectors_alt{};
};

struct ApplicationData FLATBUFFERS_FINAL_CLASS : private ::flatbuffers::Table {
  typedef ApplicationDataT NativeTableType;
  typedef ApplicationDataBuilder Builder;
  static const ::flatbuffers::TypeTable *MiniReflectTypeTable() {
    return ApplicationDataTypeTable();
  }
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_VECTORS = 4,
    VT_VECTORS_ALT = 6
  };
  const ::flatbuffers::Vector<const Geometry::Vector3D *> *vectors() const {
    return GetPointer<const ::flatbuffers::Vector<const Geometry::Vector3D *> *>(VT_VECTORS);
  }
  ::flatbuffers::Vector<const Geometry::Vector3D *> *mutable_vectors() {
    return GetPointer<::flatbuffers::Vector<const Geometry::Vector3D *> *>(VT_VECTORS);
  }
  const ::flatbuffers::Vector<const Geometry::Vector3DAlt *> *vectors_alt() const {
    return GetPointer<const ::flatbuffers::Vector<const Geometry::Vector3DAlt *> *>(VT_VECTORS_ALT);
  }
  ::flatbuffers::Vector<const Geometry::Vector3DAlt *> *mutable_vectors_alt() {
    return GetPointer<::flatbuffers::Vector<const Geometry::Vector3DAlt *> *>(VT_VECTORS_ALT);
  }
  bool Verify(::flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_VECTORS) &&
           verifier.VerifyVector(vectors()) &&
           VerifyOffset(verifier, VT_VECTORS_ALT) &&
           verifier.VerifyVector(vectors_alt()) &&
           verifier.EndTable();
  }
  ApplicationDataT *UnPack(const ::flatbuffers::resolver_function_t *_resolver = nullptr) const;
  void UnPackTo(ApplicationDataT *_o, const ::flatbuffers::resolver_function_t *_resolver = nullptr) const;
  static ::flatbuffers::Offset<ApplicationData> Pack(::flatbuffers::FlatBufferBuilder &_fbb, const ApplicationDataT* _o, const ::flatbuffers::rehasher_function_t *_rehasher = nullptr);
};

struct ApplicationDataBuilder {
  typedef ApplicationData Table;
  ::flatbuffers::FlatBufferBuilder &fbb_;
  ::flatbuffers::uoffset_t start_;
  void add_vectors(::flatbuffers::Offset<::flatbuffers::Vector<const Geometry::Vector3D *>> vectors) {
    fbb_.AddOffset(ApplicationData::VT_VECTORS, vectors);
  }
  void add_vectors_alt(::flatbuffers::Offset<::flatbuffers::Vector<const Geometry::Vector3DAlt *>> vectors_alt) {
    fbb_.AddOffset(ApplicationData::VT_VECTORS_ALT, vectors_alt);
  }
  explicit ApplicationDataBuilder(::flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  ::flatbuffers::Offset<ApplicationData> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = ::flatbuffers::Offset<ApplicationData>(end);
    return o;
  }
};

inline ::flatbuffers::Offset<ApplicationData> CreateApplicationData(
    ::flatbuffers::FlatBufferBuilder &_fbb,
    ::flatbuffers::Offset<::flatbuffers::Vector<const Geometry::Vector3D *>> vectors = 0,
    ::flatbuffers::Offset<::flatbuffers::Vector<const Geometry::Vector3DAlt *>> vectors_alt = 0) {
  ApplicationDataBuilder builder_(_fbb);
  builder_.add_vectors_alt(vectors_alt);
  builder_.add_vectors(vectors);
  return builder_.Finish();
}

inline ::flatbuffers::Offset<ApplicationData> CreateApplicationDataDirect(
    ::flatbuffers::FlatBufferBuilder &_fbb,
    const std::vector<Geometry::Vector3D> *vectors = nullptr,
    const std::vector<Geometry::Vector3DAlt> *vectors_alt = nullptr) {
  auto vectors__ = vectors ? _fbb.CreateVectorOfStructs<Geometry::Vector3D>(*vectors) : 0;
  auto vectors_alt__ = vectors_alt ? _fbb.CreateVectorOfStructs<Geometry::Vector3DAlt>(*vectors_alt) : 0;
  return Geometry::CreateApplicationData(
      _fbb,
      vectors__,
      vectors_alt__);
}

::flatbuffers::Offset<ApplicationData> CreateApplicationData(::flatbuffers::FlatBufferBuilder &_fbb, const ApplicationDataT *_o, const ::flatbuffers::rehasher_function_t *_rehasher = nullptr);

inline ApplicationDataT *ApplicationData::UnPack(const ::flatbuffers::resolver_function_t *_resolver) const {
  auto _o = std::unique_ptr<ApplicationDataT>(new ApplicationDataT());
  UnPackTo(_o.get(), _resolver);
  return _o.release();
}

inline void ApplicationData::UnPackTo(ApplicationDataT *_o, const ::flatbuffers::resolver_function_t *_resolver) const {
  (void)_o;
  (void)_resolver;
  { auto _e = vectors(); if (_e) { _o->vectors.resize(_e->size()); for (::flatbuffers::uoffset_t _i = 0; _i < _e->size(); _i++) { _o->vectors[_i] = ::flatbuffers::UnPack(*_e->Get(_i)); } } else { _o->vectors.resize(0); } }
  { auto _e = vectors_alt(); if (_e) { _o->vectors_alt.resize(_e->size()); for (::flatbuffers::uoffset_t _i = 0; _i < _e->size(); _i++) { _o->vectors_alt[_i] = ::flatbuffers::UnPackVector3DAlt(*_e->Get(_i)); } } else { _o->vectors_alt.resize(0); } }
}

inline ::flatbuffers::Offset<ApplicationData> ApplicationData::Pack(::flatbuffers::FlatBufferBuilder &_fbb, const ApplicationDataT* _o, const ::flatbuffers::rehasher_function_t *_rehasher) {
  return CreateApplicationData(_fbb, _o, _rehasher);
}

inline ::flatbuffers::Offset<ApplicationData> CreateApplicationData(::flatbuffers::FlatBufferBuilder &_fbb, const ApplicationDataT *_o, const ::flatbuffers::rehasher_function_t *_rehasher) {
  (void)_rehasher;
  (void)_o;
  struct _VectorArgs { ::flatbuffers::FlatBufferBuilder *__fbb; const ApplicationDataT* __o; const ::flatbuffers::rehasher_function_t *__rehasher; } _va = { &_fbb, _o, _rehasher}; (void)_va;
  auto _vectors = _o->vectors.size() ? _fbb.CreateVectorOfNativeStructs<Geometry::Vector3D, Native::Vector3D>(_o->vectors) : 0;
  auto _vectors_alt = _o->vectors_alt.size() ? _fbb.CreateVectorOfNativeStructs<Geometry::Vector3DAlt, Native::Vector3D>(_o->vectors_alt, ::flatbuffers::PackVector3DAlt) : 0;
  return Geometry::CreateApplicationData(
      _fbb,
      _vectors,
      _vectors_alt);
}

inline const ::flatbuffers::TypeTable *Vector3DTypeTable() {
  static const ::flatbuffers::TypeCode type_codes[] = {
    { ::flatbuffers::ET_FLOAT, 0, -1 },
    { ::flatbuffers::ET_FLOAT, 0, -1 },
    { ::flatbuffers::ET_FLOAT, 0, -1 }
  };
  static const int64_t values[] = { 0, 4, 8, 12 };
  static const char * const names[] = {
    "x",
    "y",
    "z"
  };
  static const ::flatbuffers::TypeTable tt = {
    ::flatbuffers::ST_STRUCT, 3, type_codes, nullptr, nullptr, values, names
  };
  return &tt;
}

inline const ::flatbuffers::TypeTable *Vector3DAltTypeTable() {
  static const ::flatbuffers::TypeCode type_codes[] = {
    { ::flatbuffers::ET_FLOAT, 0, -1 },
    { ::flatbuffers::ET_FLOAT, 0, -1 },
    { ::flatbuffers::ET_FLOAT, 0, -1 }
  };
  static const int64_t values[] = { 0, 4, 8, 12 };
  static const char * const names[] = {
    "a",
    "b",
    "c"
  };
  static const ::flatbuffers::TypeTable tt = {
    ::flatbuffers::ST_STRUCT, 3, type_codes, nullptr, nullptr, values, names
  };
  return &tt;
}

inline const ::flatbuffers::TypeTable *ApplicationDataTypeTable() {
  static const ::flatbuffers::TypeCode type_codes[] = {
    { ::flatbuffers::ET_SEQUENCE, 1, 0 },
    { ::flatbuffers::ET_SEQUENCE, 1, 1 }
  };
  static const ::flatbuffers::TypeFunction type_refs[] = {
    Geometry::Vector3DTypeTable,
    Geometry::Vector3DAltTypeTable
  };
  static const char * const names[] = {
    "vectors",
    "vectors_alt"
  };
  static const ::flatbuffers::TypeTable tt = {
    ::flatbuffers::ST_TABLE, 2, type_codes, type_refs, nullptr, nullptr, names
  };
  return &tt;
}

inline const Geometry::ApplicationData *GetApplicationData(const void *buf) {
  return ::flatbuffers::GetRoot<Geometry::ApplicationData>(buf);
}

inline const Geometry::ApplicationData *GetSizePrefixedApplicationData(const void *buf) {
  return ::flatbuffers::GetSizePrefixedRoot<Geometry::ApplicationData>(buf);
}

inline ApplicationData *GetMutableApplicationData(void *buf) {
  return ::flatbuffers::GetMutableRoot<ApplicationData>(buf);
}

inline Geometry::ApplicationData *GetMutableSizePrefixedApplicationData(void *buf) {
  return ::flatbuffers::GetMutableSizePrefixedRoot<Geometry::ApplicationData>(buf);
}

inline bool VerifyApplicationDataBuffer(
    ::flatbuffers::Verifier &verifier) {
  return verifier.VerifyBuffer<Geometry::ApplicationData>(nullptr);
}

inline bool VerifySizePrefixedApplicationDataBuffer(
    ::flatbuffers::Verifier &verifier) {
  return verifier.VerifySizePrefixedBuffer<Geometry::ApplicationData>(nullptr);
}

inline void FinishApplicationDataBuffer(
    ::flatbuffers::FlatBufferBuilder &fbb,
    ::flatbuffers::Offset<Geometry::ApplicationData> root) {
  fbb.Finish(root);
}

inline void FinishSizePrefixedApplicationDataBuffer(
    ::flatbuffers::FlatBufferBuilder &fbb,
    ::flatbuffers::Offset<Geometry::ApplicationData> root) {
  fbb.FinishSizePrefixed(root);
}

inline std::unique_ptr<Geometry::ApplicationDataT> UnPackApplicationData(
    const void *buf,
    const ::flatbuffers::resolver_function_t *res = nullptr) {
  return std::unique_ptr<Geometry::ApplicationDataT>(GetApplicationData(buf)->UnPack(res));
}

inline std::unique_ptr<Geometry::ApplicationDataT> UnPackSizePrefixedApplicationData(
    const void *buf,
    const ::flatbuffers::resolver_function_t *res = nullptr) {
  return std::unique_ptr<Geometry::ApplicationDataT>(GetSizePrefixedApplicationData(buf)->UnPack(res));
}

}  // namespace Geometry

#endif  // FLATBUFFERS_GENERATED_NATIVETYPETEST_GEOMETRY_H_
