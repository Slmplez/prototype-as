using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ProgId("Ascet.ExperimentElement")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[Guid("707CCCEB-8869-11D3-8A09-00A0247767D8")]
public class ExperimentElement : TransientItem, ExperimentElement_Dispatch
{
	protected internal Experiment experiment;

	public ExperimentElement(ClientSender sender, Identifiable h)
		: base(sender, h)
	{
	}

	public ExperimentElement(Experiment e, Identifiable h)
		: base(e.Sender, h)
	{
		experiment = e;
	}
}
