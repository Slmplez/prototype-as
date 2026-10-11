using System;

namespace Syncfusion.Windows.Forms;

public class CultureChangedEventArgs : EventArgs
{
	private int newLCID;

	private int currentLCID;

	private CultureChangedReason reason = CultureChangedReason.ThreadCulture;

	public int NewLCID => newLCID;

	public int CurrentLCID => currentLCID;

	public CultureChangedReason Reason => reason;

	public CultureChangedEventArgs(int currentLCID, int newLCID, CultureChangedReason reason)
	{
		this.currentLCID = currentLCID;
		this.newLCID = newLCID;
		this.reason = reason;
	}
}
