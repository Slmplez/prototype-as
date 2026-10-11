using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
public abstract class Dialog : UserInterface
{
	public Dialog(ClientSender sender, Identifiable h)
		: base(sender, h)
	{
	}

	public override bool IsDialog()
	{
		return true;
	}
}
