// automatically generated by the FlatBuffers compiler, do not modify
// @generated
extern crate alloc;
extern crate flatbuffers;
use alloc::boxed::Box;
use alloc::string::{String, ToString};
use alloc::vec::Vec;
use core::mem;
use core::cmp::Ordering;
use self::flatbuffers::{EndianScalar, Follow};
use super::*;
pub enum RootTableOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct RootTable<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for RootTable<'a> {
  type Inner = RootTable<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> RootTable<'a> {
  pub const VT_FIELD42_TYPE: flatbuffers::VOffsetT = 4;
  pub const VT_FIELD42: flatbuffers::VOffsetT = 6;

  pub const fn get_fully_qualified_name() -> &'static str {
    "RustNamerTest.RootTable"
  }

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    RootTable { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr>,
    args: &'args RootTableArgs
  ) -> flatbuffers::WIPOffset<RootTable<'bldr>> {
    let mut builder = RootTableBuilder::new(_fbb);
    if let Some(x) = args.field42 { builder.add_field42(x); }
    builder.add_field42_type(args.field42_type);
    builder.finish()
  }

  pub fn unpack(&self) -> RootTableT {
    let field42 = match self.field42_type() {
      FieldUnion::NONE => FieldUnionT::NONE,
      FieldUnion::f => FieldUnionT::F(Box::new(
        self.field42_as_f()
            .expect("Invalid union table, expected `FieldUnion::f`.")
            .unpack()
      )),
      _ => FieldUnionT::NONE,
    };
    RootTableT {
      field42,
    }
  }

  #[inline]
  pub fn field42_type(&self) -> FieldUnion {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<FieldUnion>(RootTable::VT_FIELD42_TYPE, Some(FieldUnion::NONE)).unwrap()}
  }
  #[inline]
  pub fn field42(&self) -> Option<flatbuffers::Table<'a>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Table<'a>>>(RootTable::VT_FIELD42, None)}
  }
  #[inline]
  #[allow(non_snake_case)]
  pub fn field42_as_f(&self) -> Option<FieldTable<'a>> {
    if self.field42_type() == FieldUnion::f {
      self.field42().map(|t| {
       // Safety:
       // Created from a valid Table for this object
       // Which contains a valid union in this slot
       unsafe { FieldTable::init_from_table(t) }
     })
    } else {
      None
    }
  }

}

impl flatbuffers::Verifiable for RootTable<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_union::<FieldUnion, _>("field42_type", Self::VT_FIELD42_TYPE, "field42", Self::VT_FIELD42, false, |key, v, pos| {
        match key {
          FieldUnion::f => v.verify_union_variant::<flatbuffers::ForwardsUOffset<FieldTable>>("FieldUnion::f", pos),
          _ => Ok(()),
        }
     })?
     .finish();
    Ok(())
  }
}
pub struct RootTableArgs {
    pub field42_type: FieldUnion,
    pub field42: Option<flatbuffers::WIPOffset<flatbuffers::UnionWIPOffset>>,
}
impl<'a> Default for RootTableArgs {
  #[inline]
  fn default() -> Self {
    RootTableArgs {
      field42_type: FieldUnion::NONE,
      field42: None,
    }
  }
}

pub struct RootTableBuilder<'a: 'b, 'b> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b> RootTableBuilder<'a, 'b> {
  #[inline]
  pub fn add_field42_type(&mut self, field42_type: FieldUnion) {
    self.fbb_.push_slot::<FieldUnion>(RootTable::VT_FIELD42_TYPE, field42_type, FieldUnion::NONE);
  }
  #[inline]
  pub fn add_field42(&mut self, field42: flatbuffers::WIPOffset<flatbuffers::UnionWIPOffset>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(RootTable::VT_FIELD42, field42);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a>) -> RootTableBuilder<'a, 'b> {
    let start = _fbb.start_table();
    RootTableBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<RootTable<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for RootTable<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("RootTable");
      ds.field("field42_type", &self.field42_type());
      match self.field42_type() {
        FieldUnion::f => {
          if let Some(x) = self.field42_as_f() {
            ds.field("field42", &x)
          } else {
            ds.field("field42", &"InvalidFlatbuffer: Union discriminant does not match value.")
          }
        },
        _ => {
          let x: Option<()> = None;
          ds.field("field42", &x)
        },
      };
      ds.finish()
  }
}
#[non_exhaustive]
#[derive(Debug, Clone, PartialEq)]
pub struct RootTableT {
  pub field42: FieldUnionT,
}
impl Default for RootTableT {
  fn default() -> Self {
    Self {
      field42: FieldUnionT::NONE,
    }
  }
}
impl RootTableT {
  pub fn pack<'b>(
    &self,
    _fbb: &mut flatbuffers::FlatBufferBuilder<'b>
  ) -> flatbuffers::WIPOffset<RootTable<'b>> {
    let field42_type = self.field42.field_union_type();
    let field42 = self.field42.pack(_fbb);
    RootTable::create(_fbb, &RootTableArgs{
      field42_type,
      field42,
    })
  }
}
