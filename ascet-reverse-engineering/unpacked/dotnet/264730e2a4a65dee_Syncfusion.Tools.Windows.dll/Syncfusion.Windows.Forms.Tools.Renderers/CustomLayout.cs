using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal abstract class CustomLayout : ControlStyleLayout
{
	private const int DEF_BUTTON_MARGIN = 3;

	private const int DEF_BUTTON_SEPARATOR_WIDTH = 2;

	private const int DEF_THIN_BORDER_WIDTH = 1;

	private const int DEF_THICK_BORDER_WIDTH = 4;

	private int m_TextRectHeight;

	public override int BorderWidth
	{
		get
		{
			if (base.Floating)
			{
				return ThickBorderWidth;
			}
			return ThinBorderWidth;
		}
	}

	public override int ThickBorderWidth => 4;

	public override int ThinBorderWidth => 1;

	protected override int ButtonMargin => 3;

	protected override int ButtonSeparator => 2;

	protected int ButtonCount => base.Table.Buttons.Count;

	public override Rectangle TextBounds
	{
		get
		{
			Rectangle empty = Rectangle.Empty;
			empty.Y = CaptionBounds.Y + (CaptionWidth - TextRectHeight) / 2;
			empty.Height = TextRectHeight;
			int num = (base.ImageEnabled ? ImageBounds.Width : 0);
			if (num == 0 && base.ImageEnabled)
			{
				return Rectangle.Empty;
			}
			int num2 = CaptionBounds.Width - TextLeftMargin - TextRightMargin - num;
			empty.Width = ((num2 > 0) ? num2 : 0);
			if (base.IsMirrored)
			{
				empty.X = TextRightMargin;
			}
			else
			{
				empty.X = TextLeftMargin + BorderWidth + num;
			}
			if (empty.Width <= 0)
			{
				return Rectangle.Empty;
			}
			return empty;
		}
	}

	public override Rectangle ImageBounds
	{
		get
		{
			Rectangle rectangle = Rectangle.Empty;
			if (base.ImageEnabled)
			{
				int y = (CaptionBounds.Height - ImageSize) / 2 + BorderWidth;
				if (base.IsMirrored)
				{
					if (base.Table.Buttons.Count <= 0 || GetButtonBounds(base.Table.Buttons.Count - 1).Right <= CaptionBounds.Width - ImageSize - ImageLeftMargin)
					{
						rectangle = new Rectangle(ImageRightMargin, y, ImageSize, ImageSize);
					}
				}
				else if (base.Table.Buttons.Count <= 0 || GetButtonBounds(base.Table.Buttons.Count - 1).Left >= ImageLeftMargin + ImageSize)
				{
					rectangle = new Rectangle(ImageLeftMargin, y, ImageSize, ImageSize);
				}
			}
			if (CaptionBounds.Contains(rectangle))
			{
				return rectangle;
			}
			return Rectangle.Empty;
		}
	}

	protected abstract int ImageSize { get; }

	protected abstract int TextLeftMargin { get; }

	protected abstract int TextRightMargin { get; }

	protected abstract int ImageLeftMargin { get; }

	protected abstract int ImageRightMargin { get; }

	public override Rectangle CaptionBounds
	{
		get
		{
			if (base.CaptionEnabled)
			{
				return new Rectangle(base.ControlBounds.Left + BorderWidth, base.ControlBounds.Top + BorderWidth, base.ControlBounds.Left + base.ControlBounds.Width - 2 * BorderWidth, CaptionWidth);
			}
			return Rectangle.Empty;
		}
	}

	public override int TextRectHeight
	{
		get
		{
			return m_TextRectHeight;
		}
		set
		{
			if (m_TextRectHeight != value)
			{
				m_TextRectHeight = value;
			}
		}
	}

	public override Rectangle ThickBorderCaptionBounds
	{
		get
		{
			if (base.CaptionEnabled)
			{
				return new Rectangle(base.ControlBounds.Left + ThickBorderWidth, base.ControlBounds.Top + ThickBorderWidth, base.ControlBounds.Left + base.ControlBounds.Width - 2 * ThickBorderWidth, CaptionWidth);
			}
			return Rectangle.Empty;
		}
	}

	public override Rectangle ThinBorderCaptionBounds
	{
		get
		{
			if (base.CaptionEnabled)
			{
				return new Rectangle(base.ControlBounds.Left + ThinBorderWidth, base.ControlBounds.Top + ThinBorderWidth, base.ControlBounds.Left + base.ControlBounds.Width - 2 * ThinBorderWidth, CaptionWidth);
			}
			return Rectangle.Empty;
		}
	}

	public CustomLayout()
	{
	}

	public override HitTestArea HitTest(MouseButtons button, Point point)
	{
		Rectangle controlBounds = base.ControlBounds;
		int num = -1;
		controlBounds.Inflate(-BorderWidth, -BorderWidth);
		if (base.ControlBounds.Contains(point) && !controlBounds.Contains(point))
		{
			return HitTestArea.Border;
		}
		if (CaptionBounds.Contains(point))
		{
			if (button == MouseButtons.Left || button == MouseButtons.None)
			{
				SetCaptionButtonIndex(button, point);
				num = GetHitButtonIndex();
				if (num >= 0)
				{
					return HitTestArea.Button;
				}
			}
			return HitTestArea.Caption;
		}
		return HitTestArea.None;
	}
}
