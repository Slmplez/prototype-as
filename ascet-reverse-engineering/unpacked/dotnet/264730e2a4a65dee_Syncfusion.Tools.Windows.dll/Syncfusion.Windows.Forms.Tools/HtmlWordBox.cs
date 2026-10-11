using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class HtmlWordBox
{
	private float left;

	private float top;

	private float width;

	private float height;

	private string word;

	private PointF lastMeasureOffset;

	private HtmlBox ownerBox;

	private Image image;

	public float FullWidth => Width;

	public Image Image
	{
		get
		{
			return image;
		}
		set
		{
			image = value;
			if (value != null)
			{
				if (Do.GetHtmlLengthNumber(OwnerBox.Width) > 0f && Do.GetUnit(OwnerBox.Width) == Do.Unit.Pixels)
				{
					Width = Do.GetHtmlLengthNumber(OwnerBox.Width);
				}
				else
				{
					Width = value.Width;
				}
				if (Do.GetHtmlLengthNumber(OwnerBox.Height) > 0f && Do.GetUnit(OwnerBox.Height) == Do.Unit.Pixels)
				{
					Height = Do.GetHtmlLengthNumber(OwnerBox.Height);
				}
				else
				{
					Height = value.Height;
				}
				Height += OwnerBox.ParseFloat(OwnerBox.Bottom_Border_Width, "BORDER") + OwnerBox.ParseFloat(OwnerBox.Border_Top_Width, "BORDER") + OwnerBox.ParseFloat(OwnerBox.Padding_Top, "FLOAT") + OwnerBox.ParseFloat(OwnerBox.Padding_Bottom, "FLOAT");
			}
		}
	}

	public bool IsImage => Image != null;

	public bool IsSpaces => string.IsNullOrEmpty(Text.Trim());

	public bool IsLineBreak => Text == "\n";

	public bool IsTab => Text == "\t";

	public HtmlBox OwnerBox => ownerBox;

	public string Text => word;

	internal PointF LastMeasureOffset
	{
		get
		{
			return lastMeasureOffset;
		}
		set
		{
			lastMeasureOffset = value;
		}
	}

	public float Left
	{
		get
		{
			return left;
		}
		set
		{
			left = value;
		}
	}

	public float Top
	{
		get
		{
			return top;
		}
		set
		{
			top = value;
		}
	}

	public float Width
	{
		get
		{
			return width;
		}
		set
		{
			width = value;
		}
	}

	public float Height
	{
		get
		{
			return height;
		}
		set
		{
			height = value;
		}
	}

	public float Right
	{
		get
		{
			return Bounds.Right;
		}
		set
		{
			Width = value - Left;
		}
	}

	public float Bottom
	{
		get
		{
			return Bounds.Bottom;
		}
		set
		{
			Height = value - Top;
		}
	}

	public RectangleF Bounds
	{
		get
		{
			return new RectangleF(Left, Top, Width, Height);
		}
		set
		{
			Left = value.Left;
			Top = value.Top;
			Width = value.Width;
			Height = value.Height;
		}
	}

	public PointF Location
	{
		get
		{
			return new PointF(Left, Top);
		}
		set
		{
			Left = value.X;
			Top = value.Y;
		}
	}

	public SizeF Size
	{
		get
		{
			return new SizeF(Width, Height);
		}
		set
		{
			Width = value.Width;
			Height = value.Height;
		}
	}

	internal HtmlWordBox(HtmlBox owner)
	{
		ownerBox = owner;
		word = string.Empty;
	}

	public HtmlWordBox(HtmlBox owner, Image image)
		: this(owner)
	{
		Image = image;
	}

	internal void ReplaceLineBreaksAndTabs()
	{
		word = word.Replace('\n', ' ');
		word = word.Replace('\t', ' ');
	}

	internal void AppendChar(char c)
	{
		word += c;
	}

	public override string ToString()
	{
		return string.Format("{0} ({1} char{2})", Text.Replace(' ', '-').Replace("\n", "\\n"), Text.Length, (Text.Length != 1) ? "s" : string.Empty);
	}
}
