using System.Runtime.InteropServices;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public sealed class ControlSequence
{
	internal char controlCharacter;

	internal ControlSequence(char z)
	{
		controlCharacter = z;
	}
}
