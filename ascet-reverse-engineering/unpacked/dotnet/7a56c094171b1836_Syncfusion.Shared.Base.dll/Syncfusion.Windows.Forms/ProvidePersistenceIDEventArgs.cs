using System;

namespace Syncfusion.Windows.Forms;

public class ProvidePersistenceIDEventArgs : EventArgs
{
	private string id;

	public string PersistenceID
	{
		get
		{
			return id;
		}
		set
		{
			id = value;
		}
	}

	public ProvidePersistenceIDEventArgs(string defaultID)
	{
		id = defaultID;
	}
}
