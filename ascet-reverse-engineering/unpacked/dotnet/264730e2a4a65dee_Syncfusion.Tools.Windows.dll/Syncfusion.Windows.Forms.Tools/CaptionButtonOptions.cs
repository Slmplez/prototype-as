namespace Syncfusion.Windows.Forms.Tools;

public class CaptionButtonOptions
{
	protected bool m_bModifiedView;

	public bool ModifiedView
	{
		get
		{
			return m_bModifiedView;
		}
		set
		{
			if (m_bModifiedView != value)
			{
				m_bModifiedView = value;
			}
		}
	}

	public CaptionButtonOptions()
	{
	}

	public CaptionButtonOptions(bool bmodified)
	{
		m_bModifiedView = bmodified;
	}
}
