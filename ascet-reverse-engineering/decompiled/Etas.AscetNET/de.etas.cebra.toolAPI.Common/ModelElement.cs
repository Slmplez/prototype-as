using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
public abstract class ModelElement : PersistentItem
{
	protected internal Component component;

	public ModelElement(Component item, Identifiable h)
		: base(item.GetDataBase(), h)
	{
		component = item;
	}

	public virtual bool IsAscetModelElement()
	{
		return false;
	}

	public override bool IsModelElement()
	{
		return true;
	}
}
