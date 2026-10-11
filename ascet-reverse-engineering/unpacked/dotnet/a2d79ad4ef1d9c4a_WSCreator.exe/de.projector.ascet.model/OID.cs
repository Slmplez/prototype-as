using System;

namespace de.projector.ascet.model;

public class OID : IComparable<OID>
{
	public string _oid;

	public OID(string oid)
	{
		_oid = oid;
	}

	public override string ToString()
	{
		return _oid;
	}

	public int CompareTo(OID other)
	{
		return _oid.CompareTo(other._oid);
	}

	public override int GetHashCode()
	{
		return _oid.GetHashCode();
	}

	public override bool Equals(object obj)
	{
		if (!(obj is OID))
		{
			return false;
		}
		return _oid.Equals(((OID)obj)._oid);
	}
}
