using System;

namespace Syncfusion.Windows.Forms.Tools;

public sealed class GroupItemRenamedEventArgs : EventArgs
{
	private int nIndex = -1;

	private string strNew;

	private string strOld;

	public int Index => nIndex;

	public string NewLabel => strNew;

	public string OldLabel => strOld;

	public GroupItemRenamedEventArgs(int nindex, string oldtext, string newtext)
	{
		nIndex = nindex;
		strNew = newtext;
		strOld = oldtext;
	}
}
