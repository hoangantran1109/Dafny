method linear_search(a: array<int>, x: int)
{
    var i := a.Length -1;
    var b := false;

    while i >= 0
        invariant -1 <= i <= a.Length-1
        invariant forall k: int ::
            i < k <= a.Length-1  ==> a[k] != x
    {
        if a[i] == x {
            b := true;
            break;
        }
        i := i - 1;
    }

    var k: int;
    assume 0 <= k < a.Length -1;

    assert  b ==> a[i] == x;
    assert !b ==> a[k] != x;
}