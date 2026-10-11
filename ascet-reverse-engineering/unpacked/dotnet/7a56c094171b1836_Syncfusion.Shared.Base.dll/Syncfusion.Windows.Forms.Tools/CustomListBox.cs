using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
internal class CustomListBox : ListBox
{
	public ListItemDrawEventHandler ItemDraw;

	private TextAlignment m_textAlignment = TextAlignment.Left;

	[DefaultValue(TextAlignment.Left)]
	internal TextAlignment TextAlignment
	{
		get
		{
			return m_textAlignment;
		}
		set
		{
			if (m_textAlignment != value)
			{
				m_textAlignment = value;
			}
		}
	}

	public CustomListBox()
	{
		base.DrawMode = DrawMode.OwnerDrawFixed;
	}

	protected override void OnDrawItem(DrawItemEventArgs e)
	{
		base.OnDrawItem(e);
		if (base.DesignMode)
		{
			return;
		}
		_ = e.Bounds;
		e.DrawBackground();
		if ((e.State & DrawItemState.Selected) == DrawItemState.Selected)
		{
			e.DrawFocusRectangle();
		}
		bool selected = (e.State & DrawItemState.Selected) == DrawItemState.Selected;
		ListItemDrawEventArgs e2 = new ListItemDrawEventArgs(selected, e.Index);
		if (OnItemDraw(e2))
		{
			using Brush brush = new SolidBrush(e2.BackColor);
			e.Graphics.FillRectangle(brush, e.Bounds);
		}
		if (e.Index >= 0 && e.Index < base.Items.Count)
		{
			StringFormat stringFormat = new StringFormat();
			if (GetIsMirrored())
			{
				stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
			}
			string itemText = GetItemText(base.Items[e.Index]);
			SizeF value = e.Graphics.MeasureString(itemText, e.Font, base.Width, stringFormat);
			Graphics graphics = e.Graphics;
			Point point = Point.Empty;
			point = ((!GetIsMirrored()) ? ((TextAlignment == TextAlignment.Left) ? e.Bounds.Location : ((TextAlignment != TextAlignment.Right) ? new Point(e.Bounds.Width / 2 - Size.Ceiling(value).Width / 2, e.Bounds.Y) : new Point(e.Bounds.Right - Size.Ceiling(value).Width, e.Bounds.Y))) : ((TextAlignment == TextAlignment.Left) ? new Point(e.Bounds.Right, e.Bounds.Y) : ((TextAlignment != TextAlignment.Right) ? new Point(e.Bounds.Width / 2 + Size.Ceiling(value).Width / 2, e.Bounds.Y) : new Point(e.Bounds.Left + Size.Ceiling(value).Width, e.Bounds.Y))));
			using Brush brush2 = new SolidBrush(e.ForeColor);
			graphics.DrawString(itemText, e.Font, brush2, point, stringFormat);
		}
	}

	public virtual bool OnItemDraw(ListItemDrawEventArgs e)
	{
		if (ItemDraw != null)
		{
			ItemDraw(this, e);
		}
		return e.Handled;
	}

	protected bool GetIsMirrored()
	{
		return RightToLeft.Yes == base.RightToLeft;
	}
}
