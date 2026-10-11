using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Inca;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.Experiment")]
[Guid("707CCCEA-8869-11D3-8A09-00A0247767D8")]
public class Experiment : TransientItem, Experiment_Dispatch, IExperiment, ITransientItem
{
	public const string ETAS_BINARY = "EtasBinary";

	public const string DIADEM_ATF = "DiademATF";

	public const string ETAS_ASCII = "ETASAscii";

	public const string ETAS_GROUPASCII = "ETASGroupAscii";

	public const string MATLAB_MFILE = "ETASMATLABMFILE";

	public const string FAMOS_CHANNEL = "FamosChannel";

	public const string FAMOS_RECORD = "FamosRecord";

	public const string ETAS_MDF = "ETASMDF";

	public const string ETAS_MDF4 = "ETASMDF4";

	public Experiment(ClientSender sender, Identifiable h)
		: base(sender, h)
	{
	}

	public static Experiment factory(SmalltalkToolAPI sender, Identifiable handle)
	{
		try
		{
			if (sender.performIsMethod(handle, "IncaOnlineExperiment"))
			{
				return new IncaOnlineExperiment(sender.Sender, handle);
			}
			if (sender.performIsMethod(handle, "OnlineExperiment"))
			{
				return new OnlineExperiment(sender.Sender, handle);
			}
			if (sender.performIsMethod(handle, "Experiment"))
			{
				return new Experiment(sender.Sender, handle);
			}
		}
		catch (Exception ex)
		{
			sender.logEntry("Experiment::factory(" + sender.GetType().FullName + ", " + handle.GetType().FullName + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsExperiment()
	{
		return true;
	}

	public virtual bool IsIncaOnlineExperiment()
	{
		return false;
	}

	public virtual bool IsOnlineExperiment()
	{
		return false;
	}
}
