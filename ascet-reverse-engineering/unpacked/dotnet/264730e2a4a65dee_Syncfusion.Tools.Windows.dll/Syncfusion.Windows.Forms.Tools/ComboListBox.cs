using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[DocumentationExclude]
public class ComboListBox : ListBox
{
	private static readonly Color c_textColorOffice2007 = Color.Black;

	private static readonly Color c_borderColorOffice2007 = Color.FromArgb(200, 177, 128);

	private static readonly Color c_foreColorTopFirstOffice2007 = Color.FromArgb(255, 253, 235);

	private static readonly Color c_foreColorTopLastOffice2007 = Color.FromArgb(255, 235, 178);

	private static readonly Color c_foreColorBottomFirstOffice2007 = Color.FromArgb(255, 213, 98);

	private static readonly Color c_foreColorBottomLastOffice2007 = Color.FromArgb(255, 228, 145);

	private static readonly Color c_foreColorBottomLineOffice2007 = Color.FromArgb(255, 248, 181);

	private ComboBoxAdv m_comboBox;

	public override DrawMode DrawMode
	{
		get
		{
			return base.DrawMode;
		}
		set
		{
			base.DrawMode = DrawMode.OwnerDrawFixed;
		}
	}

	public ComboListBox(ComboBoxAdv comboBox)
	{
		if (comboBox == null)
		{
			throw new NullReferenceException("comboBox");
		}
		m_comboBox = comboBox;
		if (!m_comboBox.IsInitializing)
		{
			foreach (object item in m_comboBox.Items)
			{
				base.Items.Add(item);
			}
		}
		DrawMode = DrawMode.OwnerDrawFixed;
	}

	protected virtual void DrawImage(DrawItemEventArgs e)
	{
		if (m_comboBox.ShowImagesInComboListBox && m_comboBox.ImageList != null && m_comboBox.ImageList.Images.Count > 0)
		{
			int num = m_comboBox.ImageIndexes[e.Index];
			if (num >= 0 && m_comboBox.ImageList.Images.Count > num)
			{
				Rectangle rect = ((m_comboBox.RightToLeft != RightToLeft.Yes) ? new Rectangle(e.Bounds.Location, new Size(ItemHeight, ItemHeight)) : new Rectangle(e.Bounds.X + e.Bounds.Width - ItemHeight, e.Bounds.Y, ItemHeight, ItemHeight));
				rect.Inflate(-1, -1);
				e.Graphics.DrawImage(m_comboBox.ImageList.Images[num], rect);
			}
		}
	}

	protected virtual void DrawText(DrawItemEventArgs e)
	{
		int index = e.Index;
		if (index == -1)
		{
			return;
		}
		TextFormatFlags textFormatFlags = TextFormatFlags.NoPrefix | TextFormatFlags.SingleLine | TextFormatFlags.TextBoxControl;
		HorizontalAlignment textAlign = m_comboBox.TextAlign;
		switch (textAlign)
		{
		case HorizontalAlignment.Left:
			textFormatFlags = textFormatFlags;
			break;
		case HorizontalAlignment.Center:
			textFormatFlags |= TextFormatFlags.HorizontalCenter;
			break;
		case HorizontalAlignment.Right:
			textFormatFlags |= TextFormatFlags.Right;
			break;
		}
		Rectangle bounds = e.Bounds;
		int num = m_comboBox.ImageIndexes[index];
		if (m_comboBox.ForceImageIndent || (m_comboBox.ImageList != null && num >= 0 && num < m_comboBox.ImageList.Images.Count && m_comboBox.ShowImagesInComboListBox))
		{
			bounds.Width -= ItemHeight;
		}
		if (m_comboBox.RightToLeft == RightToLeft.Yes)
		{
			textFormatFlags |= TextFormatFlags.RightToLeft;
			if (textAlign != HorizontalAlignment.Center)
			{
				textFormatFlags ^= TextFormatFlags.Right;
			}
		}
		else
		{
			bounds.X = e.Bounds.Right - bounds.Width;
		}
		Color foreColor = ((m_comboBox.Style == VisualStyle.Office2007) ? c_textColorOffice2007 : e.ForeColor);
		TextRenderer.DrawText(e.Graphics, base.Items[index].ToString(), Font, bounds, foreColor, textFormatFlags);
	}

	protected virtual void DrawBackground(DrawItemEventArgs e)
	{
		if (m_comboBox.Style == VisualStyle.Office2007)
		{
			DrawBackgroundOffice2007(e);
		}
		else
		{
			e.Graphics.FillRectangle(new SolidBrush(e.BackColor), e.Bounds);
		}
	}

	protected virtual void DrawBackgroundOffice2007(DrawItemEventArgs e)
	{
		if ((e.State & DrawItemState.Selected) != DrawItemState.None)
		{
			Graphics graphics = e.Graphics;
			Rectangle bounds = e.Bounds;
			Pen pen = new Pen(c_borderColorOffice2007);
			graphics.DrawLine(pen, bounds.X + 1, bounds.Y, bounds.Right - 2, bounds.Y);
			graphics.DrawLine(pen, bounds.X, bounds.Y + 1, bounds.X, bounds.Bottom - 2);
			graphics.DrawLine(pen, bounds.X + 1, bounds.Bottom - 1, bounds.Right - 2, bounds.Bottom - 1);
			graphics.DrawLine(pen, bounds.Right - 1, bounds.Y + 1, bounds.Right - 1, bounds.Bottom - 2);
			bounds.Inflate(-2, -2);
			RectangleF rect = new RectangleF(bounds.X, bounds.Y, bounds.Width, (float)bounds.Height / 2f);
			RectangleF rect2 = new RectangleF(bounds.X, (float)bounds.Y + (float)bounds.Height / 2f, bounds.Width, (float)bounds.Height / 2f);
			using (LinearGradientBrush brush = new LinearGradientBrush(rect, c_foreColorTopFirstOffice2007, c_foreColorTopLastOffice2007, LinearGradientMode.Vertical))
			{
				graphics.FillRectangle(brush, rect);
			}
			using (LinearGradientBrush brush2 = new LinearGradientBrush(rect2, c_foreColorBottomFirstOffice2007, c_foreColorBottomLastOffice2007, LinearGradientMode.Vertical))
			{
				graphics.FillRectangle(brush2, rect2);
			}
			Pen pen2 = new Pen(c_foreColorBottomLineOffice2007);
			graphics.DrawLine(pen2, rect2.X - 1f, rect2.Y, rect2.X - 1f, rect2.Bottom);
			graphics.DrawLine(pen2, rect2.Right, rect2.Y, rect2.Right, rect2.Bottom);
			graphics.DrawLine(pen2, rect2.X, rect2.Bottom, rect2.Right, rect2.Bottom);
		}
		else
		{
			e.Graphics.FillRectangle(new SolidBrush(e.BackColor), e.Bounds);
		}
	}

	protected override void OnDrawItem(DrawItemEventArgs e)
	{
		DrawBackground(e);
		DrawImage(e);
		DrawText(e);
		base.OnDrawItem(e);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			m_comboBox = null;
		}
		base.Dispose(disposing);
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 513)
		{
			if (FindForm() is PopupHost)
			{
				return;
			}
			if (!base.Parent.ContainsFocus)
			{
				base.Parent.Focus();
			}
		}
		base.WndProc(ref m);
	}

	protected override void OnFontChanged(EventArgs e)
	{
		int num = 2;
		ItemHeight = Font.Height + num;
		base.OnFontChanged(e);
	}
}
