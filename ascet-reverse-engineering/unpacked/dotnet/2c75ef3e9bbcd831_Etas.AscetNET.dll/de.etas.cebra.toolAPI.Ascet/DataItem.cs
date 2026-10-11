using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ProgId("Ascet.DataItem")]
[Guid("FE116C64-AC8A-11D3-9138-02FEFE0102B6")]
[ClassInterface(ClassInterfaceType.None)]
public class DataItem : ConfigurationItem, IDataItem, IConfigurationItem, DataItem_Dispatch
{
	public DataItem(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public virtual bool IsArray()
	{
		return false;
	}

	public override bool IsDataItem()
	{
		return true;
	}

	public virtual bool IsDistribution()
	{
		return false;
	}

	public virtual bool IsMatrix()
	{
		return false;
	}

	public virtual bool IsOneDTable()
	{
		return false;
	}

	public virtual bool IsScalar()
	{
		return false;
	}

	public virtual bool IsTwoDTable()
	{
		return false;
	}

	protected internal virtual void setVal()
	{
		if (configuration != null && !configuration.nullHandle() && primitiveModelElement != null && !primitiveModelElement.nullHandle())
		{
			configuration.SetItem(this, primitiveModelElement);
		}
	}

	object DataItem_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
