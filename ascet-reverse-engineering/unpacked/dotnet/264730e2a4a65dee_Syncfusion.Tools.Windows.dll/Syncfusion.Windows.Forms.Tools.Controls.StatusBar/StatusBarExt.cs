using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Controls.StatusBar;

[Description("Represents a StatusBarAdv control with own Themes Drawing support")]
public class StatusBarExt : StatusBarAdv
{
	private const string DEF_NAME_GRIP_IMAGE = "Grip.bmp";

	private const string DEF_PATH_TO_IMAGES_FORMAT = "Syncfusion.Windows.Forms.Tools.Controls.StatusBar.Images.{0}";

	private const int DEF_LEFT_GRADIENT_WIDTH = 50;

	private const int DEF_TOP_GRADIENT_HEIGHT = 4;

	private const int DEF_BOOTOM_GRADIENT_HEIGHT = 6;

	private static readonly Color _clrTransparent;

	private readonly Color clrSilverFill = Color.FromArgb(223, 224, 229);

	private readonly Color clrSilverLeftGradient = Color.FromArgb(234, 234, 236);

	private readonly Color clrSilverBottomGradient = Color.FromArgb(200, 201, 208);

	private readonly Color clrSilverTopGradient = Color.FromArgb(138, 139, 143);

	private readonly Color clrBlueFill = Color.FromArgb(236, 233, 216);

	private readonly Color clrBlueLeftGradient = Color.FromArgb(239, 239, 232);

	private readonly Color clrBlueBottomGradient = Color.FromArgb(217, 214, 192);

	private readonly Color clrBlueTopGradient = Color.FromArgb(149, 147, 133);

	private readonly Color clrOliverGreenFill = Color.FromArgb(239, 236, 223);

	private readonly Color clrOliverGreenLeftGradient = Color.FromArgb(242, 242, 236);

	private readonly Color clrOliverGreenBottomGradient = Color.FromArgb(227, 227, 216);

	private readonly Color clrOliverGreenTopGradient = Color.FromArgb(165, 164, 152);

	private readonly Color clrOliverGreenBottomLine = Color.FromArgb(221, 221, 220);

	private ColorScheme m_enColorScheme;

	private Color m_clrFill = Color.Empty;

	private Color m_clrLeftGradient = Color.Empty;

	private Color m_clrTopGradient = Color.Empty;

	private Color m_clrBottomGradient = Color.Empty;

	private static Image m_gripImage;

	[Description("Color scheme.")]
	[DefaultValue(typeof(ColorScheme), "Default")]
	[Category("Appearance")]
	public ColorScheme ColorScheme
	{
		get
		{
			return m_enColorScheme;
		}
		set
		{
			if (value != m_enColorScheme)
			{
				m_enColorScheme = value;
				OnColorSchemeChanged();
			}
		}
	}

	private Color FillColor => m_clrFill;

	private Color LeftGradientColor => m_clrLeftGradient;

	private Color TopGradientColor => m_clrTopGradient;

	private Color BottomGradientColor => m_clrBottomGradient;

	public static Image GripImage => m_gripImage;

	[Description("Occurs when ColorScheme is changed.")]
	[Category("Property Changed")]
	public event EventHandler ColorSchemeChanged;

	static StatusBarExt()
	{
		_clrTransparent = Color.Red;
		m_gripImage = null;
		m_gripImage = GetImage("Grip.bmp");
	}

	private void RaiseColorSchemeChanged()
	{
		if (this.ColorSchemeChanged != null)
		{
			this.ColorSchemeChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnColorSchemeChanged()
	{
		SetColorScheme(ColorScheme);
		Invalidate();
		RaiseColorSchemeChanged();
	}

	protected virtual void DrawBackground(PaintEventArgs e)
	{
		LinearGradientBrush linearGradientBrush = null;
		Rectangle rect;
		if (base.Width < 50)
		{
			rect = new Rectangle(base.ClientRectangle.X, base.ClientRectangle.Y, base.ClientSize.Width, base.ClientSize.Height);
			linearGradientBrush = new LinearGradientBrush(rect, LeftGradientColor, FillColor, LinearGradientMode.Horizontal);
		}
		else
		{
			rect = new Rectangle(base.ClientRectangle.X, base.ClientRectangle.Y, 50, base.ClientSize.Height);
			linearGradientBrush = new LinearGradientBrush(rect, LeftGradientColor, FillColor, LinearGradientMode.Horizontal);
		}
		e.Graphics.FillRectangle(linearGradientBrush, rect);
		linearGradientBrush.Dispose();
		Point location = new Point(base.ClientRectangle.X + 50, base.ClientRectangle.Y);
		Size size = new Size(base.ClientSize.Width - 50, base.ClientSize.Height);
		Rectangle rect2 = new Rectangle(location, size);
		Brush brush = new SolidBrush(FillColor);
		e.Graphics.FillRectangle(brush, rect2);
		brush.Dispose();
		using (LinearGradientBrush brush2 = GetTopGradientBrush())
		{
			Rectangle rect3 = new Rectangle(base.ClientRectangle.X, base.ClientRectangle.Y, base.ClientSize.Width, 4);
			e.Graphics.FillRectangle(brush2, rect3);
		}
		using (LinearGradientBrush brush3 = GetBottomGradientBrush())
		{
			Point location2 = new Point(base.ClientRectangle.X, base.ClientRectangle.Height - 6);
			Size size2 = new Size(base.ClientRectangle.Width, 6);
			Rectangle rect4 = new Rectangle(location2, size2);
			e.Graphics.FillRectangle(brush3, rect4);
		}
		if (ColorScheme == ColorScheme.OliverGreen)
		{
			Pen pen = new Pen(clrOliverGreenBottomLine);
			Point pt = new Point(base.ClientRectangle.X, base.ClientRectangle.Height - 1);
			Point pt2 = new Point(base.ClientRectangle.Width, base.ClientRectangle.Height - 1);
			e.Graphics.DrawLine(pen, pt, pt2);
		}
	}

	protected virtual void DrawGrip(PaintEventArgs e)
	{
		if (GripImage == null)
		{
			return;
		}
		bool isMirrored = GetIsMirrored();
		Point location = new Point((!isMirrored) ? (base.ClientRectangle.Width - GripImage.Width) : 0, base.ClientRectangle.Height - GripImage.Height);
		Rectangle rectBounds = new Rectangle(location, GripImage.Size);
		if (isMirrored)
		{
			using (CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(e.Graphics, rectBounds, isMirrored))
			{
				Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
				Rectangle virtualBounds = cMirroredDrawer.VirtualBounds;
				virtualGfx.DrawImage(GripImage, virtualBounds);
				return;
			}
		}
		e.Graphics.DrawImage(GripImage, rectBounds.X, rectBounds.Y);
	}

	private LinearGradientBrush GetTopGradientBrush()
	{
		Rectangle rect = new Rectangle(base.ClientRectangle.X, base.ClientRectangle.Y, base.ClientSize.Width, 4);
		Color topGradientColor = TopGradientColor;
		Color color = Color.FromArgb(TopGradientColor.R + (FillColor.R - TopGradientColor.R) / 2, TopGradientColor.G + (FillColor.G - TopGradientColor.G) / 2, TopGradientColor.B + (FillColor.B - TopGradientColor.B) / 2);
		Color fillColor = FillColor;
		Color[] colors = new Color[3] { topGradientColor, color, fillColor };
		float[] positions = new float[3] { 0f, 0.3f, 1f };
		return GetGradientBrush(rect, colors, positions);
	}

	private LinearGradientBrush GetBottomGradientBrush()
	{
		Point location = new Point(base.ClientRectangle.X, base.ClientRectangle.Height - 6);
		Size size = new Size(base.ClientRectangle.Width, 6);
		Rectangle rect = new Rectangle(location, size);
		Color fillColor = FillColor;
		Color bottomGradientColor = BottomGradientColor;
		Color color = Color.FromArgb(BottomGradientColor.R + (FillColor.R - BottomGradientColor.R), BottomGradientColor.G + (FillColor.G - BottomGradientColor.G), BottomGradientColor.B + (FillColor.B - BottomGradientColor.B));
		Color[] colors = new Color[3] { fillColor, bottomGradientColor, color };
		float[] positions = new float[3] { 0f, 0.7f, 1f };
		return GetGradientBrush(rect, colors, positions);
	}

	private LinearGradientBrush GetGradientBrush(Rectangle rect, Color[] colors, float[] positions)
	{
		LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Color.Empty, Color.Empty, LinearGradientMode.Vertical);
		ColorBlend colorBlend = new ColorBlend();
		colorBlend.Colors = colors;
		colorBlend.Positions = positions;
		linearGradientBrush.InterpolationColors = colorBlend;
		return linearGradientBrush;
	}

	private static Image GetImage(string bitmapName)
	{
		string name = $"Syncfusion.Windows.Forms.Tools.Controls.StatusBar.Images.{bitmapName}";
		Type typeFromHandle = typeof(StatusBarExt);
		Assembly assembly = typeFromHandle.Module.Assembly;
		Stream manifestResourceStream = assembly.GetManifestResourceStream(name);
		Bitmap bitmap = null;
		if (manifestResourceStream != null)
		{
			bitmap = new Bitmap(manifestResourceStream);
			bitmap.MakeTransparent(_clrTransparent);
		}
		return bitmap;
	}

	private void SetColorScheme(ColorScheme scheme)
	{
		switch (scheme)
		{
		case ColorScheme.Blue:
			m_clrFill = clrBlueFill;
			m_clrLeftGradient = clrBlueLeftGradient;
			m_clrTopGradient = clrBlueTopGradient;
			m_clrBottomGradient = clrBlueBottomGradient;
			break;
		case ColorScheme.OliverGreen:
			m_clrFill = clrOliverGreenFill;
			m_clrLeftGradient = clrOliverGreenLeftGradient;
			m_clrTopGradient = clrOliverGreenTopGradient;
			m_clrBottomGradient = clrOliverGreenBottomGradient;
			break;
		case ColorScheme.Silver:
			m_clrFill = clrSilverFill;
			m_clrLeftGradient = clrSilverLeftGradient;
			m_clrTopGradient = clrSilverTopGradient;
			m_clrBottomGradient = clrSilverBottomGradient;
			break;
		default:
			m_clrFill = Color.Empty;
			m_clrLeftGradient = Color.Empty;
			m_clrTopGradient = Color.Empty;
			m_clrBottomGradient = Color.Empty;
			break;
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (base.ThemesEnabled && ColorScheme != ColorScheme.Default)
		{
			DrawBackground(e);
			DrawGrip(e);
		}
	}
}
