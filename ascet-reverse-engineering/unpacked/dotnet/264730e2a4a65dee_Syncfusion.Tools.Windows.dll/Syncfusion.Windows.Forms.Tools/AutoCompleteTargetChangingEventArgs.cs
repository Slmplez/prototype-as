using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class AutoCompleteTargetChangingEventArgs : EventArgs
{
	private Control m_editControl;

	private bool m_isLeaving;

	public Control EditControl => m_editControl;

	public bool IsLeaving => m_isLeaving;

	public AutoCompleteTargetChangingEventArgs(Control editControl, bool isLeaving)
	{
		m_editControl = editControl;
		m_isLeaving = isLeaving;
	}
}
