using System.Runtime.InteropServices;

namespace de.etas.types;

[ComVisible(false)]
public abstract class ObjectHandle : Identifiable
{
	protected internal long objectIdent;

	protected internal bool registered;

	public virtual bool Registered
	{
		get
		{
			return registered;
		}
		set
		{
			registered = value;
		}
	}

	public ObjectHandle()
	{
		objectIdent = 0L;
		registered = false;
	}

	public ObjectHandle(Identifiable obj)
	{
		if (obj == null)
		{
			objectIdent = 0L;
			return;
		}
		objectIdent = obj.getIdentifier();
		registered = obj.Registered;
	}

	public override bool Equals(object hndl)
	{
		if (base.Equals(hndl))
		{
			return true;
		}
		if (!(hndl is Identifiable))
		{
			return false;
		}
		if (hndl == null)
		{
			return objectIdent == 0;
		}
		return objectIdent == ((Identifiable)hndl).getIdentifier();
	}

	public long getIdentifier()
	{
		return objectIdent;
	}

	public override int GetHashCode()
	{
		return (int)objectIdent;
	}

	public bool nullHandle()
	{
		return objectIdent == 0;
	}

	public void setIdentifier(long id)
	{
		objectIdent = id;
	}

	public void setIdentifier(Identifiable id)
	{
		if (id == null)
		{
			objectIdent = 0L;
		}
		else
		{
			objectIdent = id.getIdentifier();
		}
	}
}
