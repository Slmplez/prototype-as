using System.Runtime.InteropServices;

namespace de.etas.types;

[ComVisible(false)]
public class RemoteHandle : ObjectHandle
{
	public static RemoteHandle Null = new RemoteHandle(0L);

	public static RemoteHandle POSITIVE_INFINITY = new RemoteHandle(1L);

	public static RemoteHandle NEGATIVE_INFINITY = new RemoteHandle(2L);

	public RemoteHandle()
	{
		registered = true;
	}

	private RemoteHandle(long id)
		: this()
	{
		objectIdent = id;
	}

	public RemoteHandle(Identifiable obj)
		: base(obj)
	{
		registered = true;
	}
}
