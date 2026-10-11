using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(ContextMenuStripEx), "ToolboxIcons.ContextMenuStripEx.bmp")]
[Description("Represents Office 2007 Style context menuStrip with title.")]
public class ContextMenuStripEx : ContextMenuStrip
{
	internal const int CONTEXTMENUSTRIP_MARGIN = 6;

	private int m_iTitleHeight = -1;

	private Size m_szTitle = Size.Empty;

	private Font m_font;

	public override Rectangle DisplayRectangle
	{
		get
		{
			Rectangle displayRectangle = base.DisplayRectangle;
			displayRectangle.Y += TitleHeight;
			displayRectangle.Height -= TitleHeight;
			displayRectangle.Width = base.Width;
			return displayRectangle;
		}
	}

	internal int TitleHeight
	{
		get
		{
			return Math.Max(m_iTitleHeight, TitleSize.Height);
		}
		set
		{
			m_iTitleHeight = value;
		}
	}

	internal Size TitleSize
	{
		get
		{
			if (m_szTitle.IsEmpty && !string.IsNullOrEmpty(Text))
			{
				m_szTitle = TextRenderer.MeasureText(Text, HeaderFont);
				m_szTitle.Height += 12;
			}
			return m_szTitle;
		}
	}

	internal Font HeaderFont
	{
		get
		{
			if (m_font == null)
			{
				m_font = new Font(base.Font, FontStyle.Bold);
			}
			return m_font;
		}
	}

	public ContextMenuStripEx()
		: this(string.Empty)
	{
	}

	public ContextMenuStripEx(string title)
	{
		base.Renderer = new Office12ToolStripRenderer(new OfficeBlue());
		if (title != null)
		{
			Text = title;
		}
	}

	public override Size GetPreferredSize(Size proposedSize)
	{
		Size preferredSize = base.GetPreferredSize(proposedSize);
		preferredSize.Height += TitleHeight;
		preferredSize.Width = Math.Max(preferredSize.Width, TitleSize.Width + 12);
		return preferredSize;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			base.Renderer = null;
			if (m_font != null)
			{
				m_font.Dispose();
				m_font = null;
			}
		}
		Close();
		base.Dispose(disposing);
	}

	protected override void OnTextChanged(EventArgs e)
	{
		m_szTitle = Size.Empty;
		base.OnTextChanged(e);
		PerformLayout();
	}

	protected override void OnFontChanged(EventArgs e)
	{
		m_font = null;
		m_szTitle = Size.Empty;
		base.OnFontChanged(e);
		PerformLayout();
	}

	protected override void OnMouseDown(MouseEventArgs mea)
	{
		if (mea.Button == MouseButtons.Left)
		{
			base.OnMouseDown(mea);
		}
	}

	protected override void OnMouseUp(MouseEventArgs mea)
	{
		if (mea.Button == MouseButtons.Left)
		{
			base.OnMouseUp(mea);
		}
	}
}
