using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Events;

public class SplitterMoveEventArgs : EventArgs
{
	private PointF m_oldSplitPosition = PointF.Empty;

	private PointF m_newSplitPosition = PointF.Empty;

	public PointF OldSplitPosition => m_oldSplitPosition;

	public PointF NewSplitPosition => m_newSplitPosition;

	public SplitterMoveEventArgs(PointF oldSplitPosition, PointF newSplitPosition)
	{
		m_oldSplitPosition = oldSplitPosition;
		m_newSplitPosition = newSplitPosition;
	}
}
