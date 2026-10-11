using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal abstract class ControlStyleLayout : IControlStyleLayout
{
	private Rectangle m_ControlBounds;

	private bool m_IsMirrored;

	private Orientation m_Orientation;

	private bool m_CaptionEnabled = true;

	private bool m_Floating;

	private bool m_ImageEnabled;

	private CaptionButtonOptionsTable m_Table = new CaptionButtonOptionsTable();

	private int m_captionButtonIndex = -1;

	private int m_activeButtonIndex = -1;

	private int m_pushedButtonIndex = -1;

	public Rectangle ControlBounds
	{
		get
		{
			return m_ControlBounds;
		}
		set
		{
			m_ControlBounds = value;
		}
	}

	public bool IsMirrored
	{
		get
		{
			return m_IsMirrored;
		}
		set
		{
			m_IsMirrored = value;
		}
	}

	public Orientation CaptionOrientation
	{
		get
		{
			return m_Orientation;
		}
		set
		{
			m_Orientation = value;
		}
	}

	public bool CaptionEnabled
	{
		get
		{
			return m_CaptionEnabled;
		}
		set
		{
			m_CaptionEnabled = value;
		}
	}

	public bool Floating
	{
		get
		{
			return m_Floating;
		}
		set
		{
			m_Floating = value;
		}
	}

	public bool ImageEnabled
	{
		get
		{
			return m_ImageEnabled;
		}
		set
		{
			m_ImageEnabled = value;
		}
	}

	public CaptionButtonOptionsTable Table
	{
		get
		{
			return m_Table;
		}
		set
		{
			if (m_Table != value)
			{
				m_Table = value;
			}
		}
	}

	public int ActiveButtonIndex => m_activeButtonIndex;

	public int PushedButtonIndex => m_pushedButtonIndex;

	public abstract int BorderWidth { get; }

	public abstract int ThickBorderWidth { get; }

	public abstract int ThinBorderWidth { get; }

	public abstract int OuterBorderWidth { get; }

	public abstract int CaptionWidth { get; }

	public abstract Rectangle CaptionBounds { get; }

	public abstract Rectangle ThinBorderCaptionBounds { get; }

	public abstract Rectangle ThickBorderCaptionBounds { get; }

	public abstract Rectangle TextBounds { get; }

	public abstract Rectangle ImageBounds { get; }

	public abstract int TextRectHeight { get; set; }

	protected abstract int ButtonSize { get; }

	protected abstract int ButtonMargin { get; }

	protected abstract int ButtonSeparator { get; }

	public abstract HitTestArea HitTest(MouseButtons button, Point point);

	public virtual Rectangle GetButtonImageBounds()
	{
		return new Rectangle(0, 0, ButtonSize, ButtonSize);
	}

	public void ResetCaptionButtonIndices()
	{
		m_captionButtonIndex = -1;
		m_activeButtonIndex = -1;
		m_pushedButtonIndex = -1;
	}

	protected virtual void SetCaptionButtonIndex(MouseButtons button, Point pt)
	{
		for (int i = 0; i < Table.Buttons.Count; i++)
		{
			Rectangle buttonBounds = GetButtonBounds(i);
			if (!(buttonBounds != Rectangle.Empty) || !buttonBounds.Contains(pt))
			{
				continue;
			}
			if (i >= 0)
			{
				if (button == MouseButtons.Left)
				{
					m_pushedButtonIndex = i;
					m_activeButtonIndex = -1;
				}
				else
				{
					m_pushedButtonIndex = -1;
					m_activeButtonIndex = i;
				}
			}
			m_captionButtonIndex = i;
			return;
		}
		m_captionButtonIndex = -1;
		m_activeButtonIndex = -1;
		m_pushedButtonIndex = -1;
	}

	public virtual int GetHitButtonIndex()
	{
		return m_captionButtonIndex;
	}

	public virtual CaptionButton GetHitButton()
	{
		if (m_captionButtonIndex >= 0 && m_captionButtonIndex < Table.Buttons.Count)
		{
			return Table.Buttons[m_captionButtonIndex];
		}
		return null;
	}

	public virtual Rectangle GetButtonBounds(int index)
	{
		Rectangle empty = Rectangle.Empty;
		int num = (CaptionWidth - ButtonSize) / 2;
		int num2 = (ButtonSize + ButtonSeparator) * index;
		if (IsMirrored)
		{
			empty.X = ControlBounds.Left + BorderWidth + ButtonMargin + num2;
		}
		else
		{
			empty.X = ControlBounds.Left + ControlBounds.Width - BorderWidth - ButtonMargin - num2 - ButtonSize;
		}
		empty.Y = CaptionBounds.Y + num;
		empty.Size = new Size(ButtonSize, ButtonSize);
		if (CaptionBounds.Contains(empty))
		{
			return empty;
		}
		return Rectangle.Empty;
	}
}
