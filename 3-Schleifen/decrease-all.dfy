method decrease_all(a: array<int>)
    modifies a
{
    var i := 0;

    while i < a.Length
        modifies a
        invariant 0 <= i <= a.Length;
        invariant forall k: int ::
            i <= k < a.Length ==> a[k] == old(a[k])
        invariant forall k: int ::
            0 <= k < i ==> a[k] == old(a[k])-1
    {
        a[i] := a[i] - 1;
        i := i + 1;
    }

    var k: int;
    assume 0 <= k < a.Length -1;
    assert a[k] == old(a[k]) - 1;
}