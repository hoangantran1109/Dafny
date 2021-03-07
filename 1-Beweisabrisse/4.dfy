method test()
{
    var x := -1;
    var y: int;
    assume y != 0;
    assert y > 0 || y < 0 ;
    var z := x - y;
    assert z != x;
    if z < x {
        assert z < -1 && z != x;
        assert y > 0 && y != 0;
        z := x - z;
        assert z > 0 && z != 0;
    } else {
        assert z > -1 && z != x;
        assert y < 0 && y != 0;
        assert z == x - y;
        assert z >= 0 ;
    }
    assert z >= 0;
    assert x == -1 ;
    assert y != 0;
}