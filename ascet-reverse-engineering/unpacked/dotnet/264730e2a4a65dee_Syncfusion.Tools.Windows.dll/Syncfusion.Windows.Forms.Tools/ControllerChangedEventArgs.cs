using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class ControllerChangedEventArgs : EventArgs
{
	protected DockInfo dockInfoNew;

	protected DCRelationship dcRS;

	public DockInfo NewDockInfo => dockInfoNew;

	public DCRelationship DCRelation => dcRS;

	public ControllerChangedEventArgs(DockInfo di, DCRelationship dcr)
	{
		dockInfoNew = di;
		dcRS = dcr;
	}
}
