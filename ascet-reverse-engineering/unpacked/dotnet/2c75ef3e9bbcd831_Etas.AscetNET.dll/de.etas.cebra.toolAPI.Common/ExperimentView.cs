using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.ExperimentView")]
[Guid("707CCCEC-8869-11D3-8A09-00A0247767D8")]
[ComVisible(true)]
public class ExperimentView : View, ExperimentView_Dispatch, IExperimentView, IView, IUserInterface, ITransientItem
{
	public ExperimentView(ClientSender sender, Identifiable h)
		: base(sender, h)
	{
	}

	protected internal virtual Experiment identifyExperiment(Identifiable id)
	{
		try
		{
			if (isXXX(id, "OnlineExperiment"))
			{
				return new OnlineExperiment(Sender, id);
			}
			if (isXXX(id, "Experiment"))
			{
				return new Experiment(Sender, id);
			}
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyExperiment(): failed. -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsExperimentView()
	{
		return true;
	}

	public virtual bool IsIncaExperimentView()
	{
		return false;
	}
}
