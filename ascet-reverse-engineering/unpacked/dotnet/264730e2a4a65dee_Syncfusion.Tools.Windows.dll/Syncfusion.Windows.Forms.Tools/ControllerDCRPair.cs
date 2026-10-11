using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public sealed class ControllerDCRPair
{
	public DockControllerBase Controller;

	public DCRelationship DCR;

	public ControllerDCRPair(DockControllerBase dc, DCRelationship dcr)
	{
		Controller = dc;
		DCR = dcr;
	}
}
