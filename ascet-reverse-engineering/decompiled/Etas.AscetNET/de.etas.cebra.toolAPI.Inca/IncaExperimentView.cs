using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Inca;

[ClassInterface(ClassInterfaceType.None)]
[Guid("AFFCD742-87B8-11D3-8A08-00A0247767D8")]
[ProgId("Ascet.IncaExperimentView")]
[ComVisible(true)]
public class IncaExperimentView : ExperimentView, IncaExperimentView_Dispatch, IIncaExperimentView, IExperimentView, IView, IUserInterface, ITransientItem
{
	public IncaExperimentView(ClientSender sender, Identifiable h)
		: base(sender, h)
	{
	}

	protected internal override Experiment identifyExperiment(Identifiable id)
	{
		try
		{
			if (isXXX(id, "OnlineExperiment"))
			{
				return new IncaOnlineExperiment(Sender, id);
			}
			return base.identifyExperiment(id);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyExperiment(): failed. -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsIncaExperimentView()
	{
		return true;
	}
}
