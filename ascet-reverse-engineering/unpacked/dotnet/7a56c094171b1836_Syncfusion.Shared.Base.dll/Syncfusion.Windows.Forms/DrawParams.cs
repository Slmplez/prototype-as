using System.Drawing;

namespace Syncfusion.Windows.Forms;

public class DrawParams
{
	private ContentAlignment m_align = ContentAlignment.MiddleLeft;

	private RectangleF m_bounds = Rectangle.Empty;

	private Color m_backColor = Color.Empty;

	private bool m_enabled;

	private bool m_bRightToLeft;

	public Color ControlBackColor
	{
		get
		{
			return m_backColor;
		}
		set
		{
			if (value != m_backColor)
			{
				m_backColor = value;
			}
		}
	}

	public ContentAlignment Align
	{
		get
		{
			return m_align;
		}
		set
		{
			if (value != m_align)
			{
				m_align = value;
			}
		}
	}

	public RectangleF Bounds
	{
		get
		{
			return m_bounds;
		}
		set
		{
			if (value != m_bounds)
			{
				m_bounds = value;
			}
		}
	}

	public bool Enabled
	{
		get
		{
			return m_enabled;
		}
		set
		{
			m_enabled = value;
		}
	}

	public bool RightToLeft
	{
		get
		{
			return m_bRightToLeft;
		}
		set
		{
			m_bRightToLeft = value;
		}
	}

	public DrawParams()
	{
	}

	public DrawParams(bool enabled, Color back, RectangleF bounds, ContentAlignment align)
		: this(enabled, back, bounds, align, bRightToLeft: false)
	{
	}

	public DrawParams(bool enabled, Color back, RectangleF bounds, ContentAlignment align, bool bRightToLeft)
	{
		m_enabled = enabled;
		m_backColor = back;
		m_bounds = bounds;
		m_align = align;
		m_bRightToLeft = bRightToLeft;
	}
}
