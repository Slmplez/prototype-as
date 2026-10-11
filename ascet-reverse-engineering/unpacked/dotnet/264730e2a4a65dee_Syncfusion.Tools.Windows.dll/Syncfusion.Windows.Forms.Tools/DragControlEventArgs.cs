using System;
using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class DragControlEventArgs : EventArgs
{
	private DragTarget m_DragTarget = DragTarget.None;

	private Rectangle m_HostDockArea = Rectangle.Empty;

	public DragTarget DragTarget => m_DragTarget;

	public Rectangle HostDockArea => m_HostDockArea;

	public DragControlEventArgs()
	{
	}

	public DragControlEventArgs(DragTarget dragTarget, Rectangle hostDockArea)
	{
		m_DragTarget = dragTarget;
		m_HostDockArea = hostDockArea;
	}
}
