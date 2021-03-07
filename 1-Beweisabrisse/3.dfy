method test()
{
    var x: int;
    var y: int;
    assume y <= x;
    assert y < x || y == x;
    var z := x - y;
    assert z >= 0;
    if x == y {
        assert x == y ;
        assert z == 0 ;
        x := x - z;
        assert x == y - z;
    } else {
        assert x > y;
        assert z > 0;
        x := 1;
        assert x <= z;
        assert x == 1;
    }
    assert z >= 0;
    assert x != y ==> x == 1;
}