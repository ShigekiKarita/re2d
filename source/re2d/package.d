module re2d;

public import re2d.stringpiece;
public import re2d.re2;

@nogc nothrow pure unittest {
  int i;
  StringPiece s;
  assert(RE2.FullMatch("γ«γγΌπ:1234", `([^:]+):(\d+)`, &s, &i));
  assert(s.toString == "γ«γγΌπ");
  assert(i == 1234);
}
