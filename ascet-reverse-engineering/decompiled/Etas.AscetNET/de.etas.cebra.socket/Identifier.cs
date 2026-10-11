using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.socket;

[ComVisible(false)]
internal sealed class Identifier : ObjectHandle
{
	public Identifier()
	{
	}

	public Identifier(Identifiable obj)
		: base(obj)
	{
	}
}
