using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("AFBDFB37-B34A-4e70-9A8A-F076DD881292")]
[ComVisible(true)]
[ProgId("Ascet.ImplementationType")]
public class ImplementationType : PersistentItem, IImplementationType, ImplementationType_Dispatch
{
	public ImplementationType(PersistentItem el, Identifiable h)
		: base(el.Sender, h)
	{
	}

	object ImplementationType_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
