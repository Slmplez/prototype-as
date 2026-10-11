using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class Caption
{
	private CaptionState m_CaptionState;

	private bool m_Enabled = true;

	private string m_Text;

	private DockLabelAlignmentStyle m_Alignment;

	private Font m_Font;

	public CaptionState CaptionState
	{
		get
		{
			return m_CaptionState;
		}
		set
		{
			m_CaptionState = value;
		}
	}

	public bool Enabled => m_Enabled;

	public string Text
	{
		get
		{
			return m_Text;
		}
		set
		{
			m_Text = value;
		}
	}

	public DockLabelAlignmentStyle TextAlignment
	{
		get
		{
			return m_Alignment;
		}
		set
		{
			m_Alignment = value;
		}
	}

	public Font Font
	{
		get
		{
			return m_Font;
		}
		set
		{
			m_Font = value;
		}
	}

	public Caption()
	{
	}

	public Caption(CaptionState state)
	{
		m_CaptionState = state;
	}

	public Caption(bool enabled)
	{
		m_Enabled = enabled;
	}

	public Caption(string text)
	{
		m_Text = text;
	}

	public Caption(CaptionState state, string text, DockLabelAlignmentStyle alignment, Font font)
	{
		m_CaptionState = state;
		m_Text = text;
		m_Alignment = alignment;
		m_Font = font;
	}
}
