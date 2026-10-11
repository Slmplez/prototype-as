using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

public abstract class TabsRendererBase : Disposable
{
	private const int c_drawTextFlags = 32;

	private const string c_measureString = "X";

	private const int c_imageTextPadding = 3;

	private InternalTab m_parent;

	private Rectangle m_bounds;

	private Graphics m_measure;

	private Font m_defaultFont = new Font("Microsoft Sans Serif", 8.25f);

	protected int m_imageTextIndent = 8;

	public InternalTab TabBar => m_parent;

	public virtual Rectangle Bounds
	{
		get
		{
			return m_bounds;
		}
		set
		{
			m_bounds = value;
		}
	}

	public virtual Region GetTabRegion => new Region(Bounds);

	protected InternalTab Parent => m_parent;

	public string TabText
	{
		get
		{
			if (m_parent.Cookie is TabBarPage tabBarPage)
			{
				return tabBarPage.Text;
			}
			return string.Empty;
		}
	}

	protected virtual Font InactiveTabFont
	{
		get
		{
			if (m_parent.Cookie is TabBarPage tabBarPage)
			{
				return tabBarPage.Font;
			}
			return m_defaultFont;
		}
	}

	protected virtual Font ActiveTabFont
	{
		get
		{
			if (m_parent.Cookie is TabBarPage tabBarPage)
			{
				return tabBarPage.Font;
			}
			return m_defaultFont;
		}
	}

	protected virtual Color ForeColor
	{
		get
		{
			if (m_parent.Cookie is TabBarPage tabBarPage)
			{
				return tabBarPage.ForeColor;
			}
			return Color.Black;
		}
	}

	private Graphics MeasureGraphics
	{
		get
		{
			if (m_measure == null)
			{
				m_measure = Graphics.FromImage(new Bitmap(1, 1));
			}
			return m_measure;
		}
		set
		{
			if (m_measure != null)
			{
				m_measure.Dispose();
			}
			m_measure = value;
		}
	}

	public TabsRendererBase(InternalTab parent)
	{
		m_parent = parent;
	}

	public virtual void DrawTab(Graphics g)
	{
		DrawBorders(g);
		DrawBackground(g);
		DrawTextAndImage(g, Bounds);
	}

	public virtual void DrawBorders(Graphics g)
	{
		using Pen pen = new Pen(SystemColors.ControlDarkDark);
		g.DrawLine(pen, Bounds.Left, Bounds.Top, Bounds.Left, Bounds.Bottom);
		g.DrawLine(pen, Bounds.Right, Bounds.Top, Bounds.Right, Bounds.Bottom);
	}

	public virtual void DrawBackground(Graphics g)
	{
		if (m_parent.Pushed)
		{
			using (Brush brush = new SolidBrush(SystemColors.Window))
			{
				g.FillRectangle(brush, Bounds);
				return;
			}
		}
		using Brush brush2 = new SolidBrush(SystemColors.Control);
		g.FillRectangle(brush2, Bounds);
	}

	protected virtual void DrawTextAndImage(Graphics g, Rectangle rectTextAndImage)
	{
		if (m_parent.Cookie is TabBarPage tabBarPage)
		{
			Rectangle empty = Rectangle.Empty;
			Rectangle empty2 = Rectangle.Empty;
			if (m_parent.Owner is IInternalTabParent { ImageList: not null } internalTabParent && m_parent.ImageIndex >= 0)
			{
				int width = internalTabParent.ImageList.ImageSize.Width;
				int height = internalTabParent.ImageList.ImageSize.Height;
				empty = new Rectangle(rectTextAndImage.X + m_imageTextIndent, rectTextAndImage.Y, width, height);
				int width2 = rectTextAndImage.Width - width - m_imageTextIndent * 2 - 3 - GetOverlappedWidth() / 2;
				int height2 = rectTextAndImage.Height;
				empty2 = new Rectangle(empty.Right + 3, rectTextAndImage.Y, width2, height2);
				g.DrawImage(internalTabParent.ImageList.Images[m_parent.ImageIndex], empty);
			}
			else
			{
				empty2 = rectTextAndImage;
				empty2.Width -= GetOverlappedWidth() / 2;
				empty2.X -= 2;
			}
			Font font = InactiveTabFont;
			if (m_parent.Pushed)
			{
				font = ActiveTabFont;
			}
			DrawText(g, TabText, font, ForeColor, empty2, tabBarPage.TabEnabled);
		}
	}

	protected virtual void DrawText(Graphics g, string text, Font font, Color foreColor, Rectangle rectText, bool enabled)
	{
		DrawTextInternal(g, text, font, foreColor, rectText, enabled);
	}

	public virtual Size GetItemPreferredSize()
	{
		Size empty = Size.Empty;
		string text = ((TabText == string.Empty) ? "X" : TabText);
		Size size = Size.Ceiling(MeasureText(text, ActiveTabFont));
		Size size2 = Size.Ceiling(MeasureText(text, InactiveTabFont));
		empty.Width += Math.Max(size.Width, size2.Width);
		empty.Height += Math.Max(size.Height, size2.Height);
		IInternalTabParent internalTabParent = m_parent.Owner as IInternalTabParent;
		if (internalTabParent.ImageList != null && m_parent.ImageIndex >= 0 && m_parent.ImageIndex < internalTabParent.ImageList.Images.Count)
		{
			int num = internalTabParent.ImageList.ImageSize.Width + 3;
			empty.Width += num;
			empty.Height = Math.Max(internalTabParent.ImageList.ImageSize.Height, empty.Height);
		}
		empty.Width += m_imageTextIndent * 2;
		return empty;
	}

	public virtual int GetOverlappedWidth()
	{
		return 0;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			m_parent = null;
		}
		base.Dispose(disposing);
	}

	private SizeF MeasureText(string text, Font font)
	{
		SizeF empty = SizeF.Empty;
		Graphics measureGraphics = MeasureGraphics;
		return ControlDrawing.MeasureDisplayStringSize(measureGraphics, text, font, mirrored: false);
	}

	private void DrawTextInternal(Graphics g, string text, Font font, Color foreColor, RectangleF rectText, bool enabled)
	{
		if (enabled)
		{
			DrawTextNative(g, text, font, foreColor, rectText);
			return;
		}
		rectText.Offset(1f, 1f);
		Color color = ControlPaint.LightLight(SystemColors.Control);
		DrawTextNative(g, text, font, color, rectText);
		rectText.Offset(-1f, -1f);
		color = ControlPaint.Dark(color);
		DrawTextNative(g, text, font, color, rectText);
	}

	private void DrawTextNative(Graphics g, string text, Font f, Color color, RectangleF textRect)
	{
		int num = 32;
		num |= 1;
		num |= 4;
		IntPtr hrgn = g.Clip.GetHrgn(g);
		IntPtr hdc = g.GetHdc();
		IntPtr hObject = f.ToHfont();
		IntPtr hObject2 = NativeMethods.SelectObject(hdc, hObject);
		NativeMethods.SelectClipRgn(hdc, hrgn);
		NativeMethods.SetTextColor(hdc, Color.FromArgb(0, color.B, color.G, color.R).ToArgb() & 0xFFFFFF);
		NativeMethods.SetBkMode(hdc, 1);
		Rectangle rect = Rectangle.Ceiling(textRect);
		NativeMethods.RECT lpRect = new NativeMethods.RECT(rect);
		NativeMethods.DrawText(hdc, text, text.Length, ref lpRect, num);
		hObject2 = NativeMethods.SelectObject(hdc, hObject2);
		NativeMethods.DeleteObject(hObject);
		NativeMethods.DeleteObject(hrgn);
		NativeMethods.SelectClipRgn(hdc, IntPtr.Zero);
		g.ReleaseHdc(hdc);
	}
}
