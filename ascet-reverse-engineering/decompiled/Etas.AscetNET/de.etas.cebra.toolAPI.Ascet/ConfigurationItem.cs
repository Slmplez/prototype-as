using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
public abstract class ConfigurationItem : PersistentItem, IConfigurationItem
{
	protected internal Configuration configuration;

	protected internal PersistentItem primitiveModelElement;

	public ConfigurationItem(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(modelElement.GetDataBase(), h)
	{
		configuration = config;
		primitiveModelElement = modelElement;
	}

	public override bool IsConfigurationItem()
	{
		return true;
	}

	public virtual bool IsDataItem()
	{
		return false;
	}

	public virtual bool IsImplItem()
	{
		return false;
	}
}
