from libc.stdint cimport int8_t, int16_t, int32_t, int64_t, intptr_t
from libc.stdint cimport uint8_t, uint16_t, uint32_t, uint64_t, uintptr_t
cdef extern from *:
  ctypedef bint bool
  ctypedef struct va_list

cdef extern from *:

  cdef enum:
    X # = 2,
    Y,
  ctypedef uint32_t C;

  ctypedef struct A:
    int32_t _0;

  ctypedef struct B:
    int32_t x;
    float y;

  ctypedef struct D:
    uint8_t List;
    uintptr_t Of;
    B Things;

  cdef enum:
    Foo,
    Bar,
    Baz,
  ctypedef uint8_t F_Tag;

  ctypedef struct Bar_Body:
    F_Tag tag;
    uint8_t x;
    int16_t y;

  ctypedef union F:
    F_Tag tag;
    F_Tag foo_tag;
    int16_t foo;
    Bar_Body bar;

  cdef enum:
    Hello,
    There,
    Everyone,
  ctypedef uint8_t H_Tag;

  ctypedef struct There_Body:
    uint8_t x;
    int16_t y;

  ctypedef struct H:
    H_Tag tag;
    int16_t hello;
    There_Body there;

  cdef enum:
    ThereAgain,
    SomethingElse,
  ctypedef uint8_t I_Tag;

  ctypedef struct ThereAgain_Body:
    uint8_t x;
    int16_t y;

  ctypedef struct I:
    I_Tag tag;
    ThereAgain_Body there_again;

  void root(A a, B b, C c, D d, F f, H h, I i);
