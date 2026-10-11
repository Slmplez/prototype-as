using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class SelectedIndexChangingArgs : CancelEventArgs
{
	private int m_nPrevIndex = -1;

	private int m_nNewIndex = -1;

	public int PrevIndex
	{
		get
		{
			return m_nPrevIndex;
		}
		set
		{
			m_nPrevIndex = value;
		}
	}

	public int NewIndex
	{
		get
		{
			return m_nNewIndex;
		}
		set
		{
			m_nNewIndex = value;
		}
	}

	public SelectedIndexChangingArgs(int nPrevIndex, int nNewIndex, bool bCancel)
		: base(bCancel)
	{
		m_nPrevIndex = nPrevIndex;
		m_nNewIndex = nNewIndex;
	}

	public SelectedIndexChangingArgs(int nPrevIndex, int nNewIndex)
		: this(nPrevIndex, nNewIndex, bCancel: false)
	{
	}
}
