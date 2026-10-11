using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class GroupBarItemSelectionChangingEventArgs : CancelEventArgs
{
	private int m_nNewSelected = -1;

	private int m_nOldSelected = -1;

	public int NewSelected => m_nNewSelected;

	public int OldSelected => m_nOldSelected;

	public GroupBarItemSelectionChangingEventArgs(int nNewSelected, int nOldSelected)
	{
		m_nNewSelected = nNewSelected;
		m_nOldSelected = nOldSelected;
	}
}
