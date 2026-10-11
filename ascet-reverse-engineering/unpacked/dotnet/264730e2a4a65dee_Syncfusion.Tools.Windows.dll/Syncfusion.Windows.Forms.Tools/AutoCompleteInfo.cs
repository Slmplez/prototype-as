using System;
using System.Data;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
public class AutoCompleteInfo
{
	private DataTable completeListValue;

	public DataTable CompleteList
	{
		get
		{
			return completeListValue;
		}
		set
		{
			completeListValue = value;
		}
	}

	public AutoCompleteInfo()
	{
		completeListValue = new DataTable();
	}
}
