using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
public abstract class TransientItem : SmalltalkToolAPI, ITransientItem
{
	public TransientItem(ClientSender sender, Identifiable h)
		: base(sender)
	{
		setIdentifier(h);
	}

	public override void CreateApplicationError()
	{
		base.CreateApplicationError();
	}

	public override int GetToolErrorCode()
	{
		return base.GetToolErrorCode();
	}

	public override string GetToolErrorMessage()
	{
		return base.GetToolErrorMessage();
	}

	public virtual bool IsAbstractDevice()
	{
		return false;
	}

	public virtual bool IsExperiment()
	{
		return false;
	}

	public virtual bool IsExperimentDataItem()
	{
		return false;
	}

	public virtual bool IsExperimentDevice()
	{
		return false;
	}

	public virtual bool IsExperimentElement()
	{
		return false;
	}

	public override bool IsToolErrorAvailable()
	{
		return base.IsToolErrorAvailable();
	}

	public virtual bool IsUserInterface()
	{
		return false;
	}
}
