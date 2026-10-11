using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
public abstract class PersistentItem : SmalltalkToolAPI, IPersistentItem
{
	protected internal DataBase dataBase;

	protected internal PersistentItem(ClientSender sender, Identifiable h)
		: base(sender)
	{
		setIdentifier(h);
	}

	public PersistentItem(DataBase db, Identifiable h)
		: base(db.Sender)
	{
		dataBase = db;
		setIdentifier(h);
	}

	protected internal static bool checkNumericType(string item)
	{
		if (item.ToUpper().Equals("log".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("sdisc".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("udisc".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("cont".ToUpper()))
		{
			return true;
		}
		return false;
	}

	public override void CreateApplicationError()
	{
		base.CreateApplicationError();
	}

	public DataBase GetDataBase()
	{
		return dataBase;
	}

	public override int GetToolErrorCode()
	{
		return base.GetToolErrorCode();
	}

	public override string GetToolErrorMessage()
	{
		return base.GetToolErrorMessage();
	}

	public virtual bool IsAbstractBlockDiagramElement()
	{
		return false;
	}

	public virtual bool IsAbstractMethod()
	{
		return false;
	}

	public virtual bool IsAscetDiagram()
	{
		return false;
	}

	public virtual bool IsAscetProjectFile()
	{
		return false;
	}

	public virtual bool IsCodeGenerator()
	{
		return false;
	}

	public virtual bool IsConfiguration()
	{
		return false;
	}

	public virtual bool IsConfigurationItem()
	{
		return false;
	}

	public virtual bool IsDataBaseItem()
	{
		return false;
	}

	public virtual bool IsDeviceDescription()
	{
		return false;
	}

	public virtual bool IsFormula()
	{
		return false;
	}

	public virtual bool IsHWDevice()
	{
		return false;
	}

	public virtual bool IsHWSubDevice()
	{
		return false;
	}

	public virtual bool IsHWSystem()
	{
		return false;
	}

	public virtual bool IsImplInfo()
	{
		return false;
	}

	public virtual bool IsModelElement()
	{
		return false;
	}

	public virtual bool IsSubDeviceDescription()
	{
		return false;
	}

	public virtual bool IsSystemDescription()
	{
		return false;
	}

	public virtual bool IsTarget()
	{
		return false;
	}

	public virtual bool IsTask()
	{
		return false;
	}

	public override bool IsToolErrorAvailable()
	{
		return base.IsToolErrorAvailable();
	}
}
