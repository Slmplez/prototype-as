using System.ComponentModel;
using System.Data;

namespace Syncfusion.Windows.Forms.Tools;

public class AutoCompleteAddItemCancelEventArgs : CancelEventArgs
{
	private int m_imageColumnIndex;

	private DataRow m_rowItem;

	public DataRow RowItem
	{
		get
		{
			return m_rowItem;
		}
		set
		{
			m_rowItem = value;
		}
	}

	public int ImageColumnIndex
	{
		get
		{
			return m_imageColumnIndex;
		}
		set
		{
			m_imageColumnIndex = value;
		}
	}

	public AutoCompleteAddItemCancelEventArgs()
	{
		m_imageColumnIndex = -1;
		m_rowItem = null;
	}
}
