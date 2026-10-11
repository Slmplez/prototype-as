using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Text;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(true)]
[Designer(typeof(GradientLabelDesigner), typeof(IDesigner))]
[Description("Provides a way to create fancy and appealing labels in designer.")]
[ToolboxBitmap(typeof(GradientLabel), "ToolboxIcons.GradientLabel.bmp")]
public class GradientLabel : Label
{
	private Color m_borderColor = Color.Black;

	private BorderStyle m_borderAppearance = System.Windows.Forms.BorderStyle.Fixed3D;

	private Border3DStyle border3dStyleValue;

	private Border3DSide border3dSideValue;

	private BrushInfo backgroundColorValue;

	private bool m_bDrawActiveWhenDisabled;

	[Category("Appearance")]
	[DefaultValue(typeof(Color), "Black")]
	[Description("Indicates the border color. Can be set only in case if BorderAppearance is FixedSingle.")]
	public Color BorderColor
	{
		get
		{
			return m_borderColor;
		}
		set
		{
			if (m_borderColor != value)
			{
				m_borderColor = value;
				Invalidate();
			}
		}
	}

	[Description("Indicates the border apperance")]
	[DefaultValue(typeof(BorderStyle), "Fixed3D")]
	[Category("Appearance")]
	public BorderStyle BorderAppearance
	{
		get
		{
			return m_borderAppearance;
		}
		set
		{
			if (m_borderAppearance != value)
			{
				m_borderAppearance = value;
				Invalidate();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override Color BackColor
	{
		get
		{
			return Color.Transparent;
		}
		set
		{
			base.BackColor = Color.Transparent;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	[Description("The background color and other styles can be set through this property.")]
	public BrushInfo BackgroundColor
	{
		get
		{
			return backgroundColorValue;
		}
		set
		{
			backgroundColorValue = value;
			Invalidate();
		}
	}

	[DefaultValue(typeof(Border3DStyle), "Flat")]
	[Description("The 3D border style for the GradientLabel.")]
	[Category("Appearance")]
	public new Border3DStyle BorderStyle
	{
		get
		{
			return border3dStyleValue;
		}
		set
		{
			border3dStyleValue = value;
			Invalidate();
		}
	}

	[Description("Indicates whether the text should be drawn active when the control is disabled.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool DrawActiveWhenDisabled
	{
		get
		{
			return m_bDrawActiveWhenDisabled;
		}
		set
		{
			if (value != m_bDrawActiveWhenDisabled)
			{
				m_bDrawActiveWhenDisabled = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("The sides of the gradient label that will have a border.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public Border3DSide BorderSides
	{
		get
		{
			return border3dSideValue;
		}
		set
		{
			border3dSideValue = value;
			Invalidate();
		}
	}

	public GradientLabel()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(GradientLabel));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		border3dStyleValue = Border3DStyle.Flat;
		base.BorderStyle = System.Windows.Forms.BorderStyle.None;
		TextAlign = ContentAlignment.MiddleCenter;
		backgroundColorValue = new BrushInfo(GradientStyle.Vertical, Color.FromArgb(237, 240, 247), Color.LightCyan);
		border3dSideValue = Border3DSide.Left | Border3DSide.Top | Border3DSide.Right | Border3DSide.Bottom;
		SetStyle(ControlStyles.SupportsTransparentBackColor, value: true);
	}

	protected override void OnPaintBackground(PaintEventArgs pe)
	{
		base.OnPaintBackground(pe);
		if (BackgroundColor != null)
		{
			DrawBackground(pe.Graphics);
			DrawBorder(pe.Graphics);
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (!base.Enabled && DrawActiveWhenDisabled)
		{
			DrawImage(e);
			DrawText(e);
		}
		else
		{
			base.OnPaint(e);
		}
	}

	private void DrawImage(PaintEventArgs e)
	{
		if (base.Image != null)
		{
			Rectangle rect = CalcImageRenderBounds(base.Image, base.ClientRectangle, RtlTranslateAlignment(base.ImageAlign));
			e.Graphics.DrawImage(base.Image, rect);
		}
	}

	private void DrawText(PaintEventArgs e)
	{
		Brush brush = new SolidBrush(ForeColor);
		StringFormat stringFormat = GetStringFormat();
		e.Graphics.DrawString(Text, Font, brush, base.ClientRectangle, stringFormat);
		stringFormat.Dispose();
	}

	private StringFormat GetStringFormat()
	{
		StringFormat stringFormat = new StringFormat();
		stringFormat.LineAlignment = GetVerticalAlignment();
		stringFormat.Alignment = GetHorizontalAlignment();
		if (RightToLeft == RightToLeft.Yes)
		{
			stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
		}
		if (AutoSize)
		{
			stringFormat.FormatFlags |= StringFormatFlags.MeasureTrailingSpaces;
		}
		if (!base.UseMnemonic)
		{
			stringFormat.HotkeyPrefix = HotkeyPrefix.None;
		}
		else if (base.ShowKeyboardCues)
		{
			stringFormat.HotkeyPrefix = HotkeyPrefix.Show;
		}
		else
		{
			stringFormat.HotkeyPrefix = HotkeyPrefix.Hide;
		}
		return stringFormat;
	}

	private StringAlignment GetHorizontalAlignment()
	{
		StringAlignment result = StringAlignment.Near;
		if (TextAlign == ContentAlignment.BottomCenter || TextAlign == ContentAlignment.MiddleCenter || TextAlign == ContentAlignment.TopCenter)
		{
			result = StringAlignment.Center;
		}
		else if (TextAlign == ContentAlignment.BottomLeft || TextAlign == ContentAlignment.MiddleLeft || TextAlign == ContentAlignment.TopLeft)
		{
			result = StringAlignment.Near;
		}
		else if (TextAlign == ContentAlignment.BottomRight || TextAlign == ContentAlignment.MiddleRight || TextAlign == ContentAlignment.TopRight)
		{
			result = StringAlignment.Far;
		}
		return result;
	}

	private StringAlignment GetVerticalAlignment()
	{
		StringAlignment result = StringAlignment.Near;
		if (TextAlign == ContentAlignment.TopCenter || TextAlign == ContentAlignment.TopLeft || TextAlign == ContentAlignment.TopRight)
		{
			result = StringAlignment.Near;
		}
		else if (TextAlign == ContentAlignment.BottomCenter || TextAlign == ContentAlignment.BottomLeft || TextAlign == ContentAlignment.BottomRight)
		{
			result = StringAlignment.Far;
		}
		else if (TextAlign == ContentAlignment.MiddleCenter || TextAlign == ContentAlignment.MiddleLeft || TextAlign == ContentAlignment.MiddleRight)
		{
			result = StringAlignment.Center;
		}
		return result;
	}

	protected virtual void DrawBackground(Graphics g)
	{
		try
		{
			Rectangle r = new Rectangle(0, 0, base.Width, base.Height);
			BrushPaint.FillRectangle(g, r, BackgroundColor);
		}
		catch
		{
		}
	}

	protected virtual void DrawBorder(Graphics g)
	{
		Border3DSide sides = ((BorderSides != Border3DSide.All && BorderSides != Border3DSide.Middle) ? BorderSides : (Border3DSide.Left | Border3DSide.Top | Border3DSide.Right | Border3DSide.Bottom));
		Rectangle rectangle = new Rectangle(0, 0, base.Width, base.Height);
		if (BorderAppearance == System.Windows.Forms.BorderStyle.FixedSingle)
		{
			int leftWidth = 0;
			int rightWidth = 0;
			int topWidth = 0;
			int bottomWidth = 0;
			if (BorderSides == Border3DSide.All)
			{
				leftWidth = (rightWidth = (topWidth = (bottomWidth = 1)));
			}
			else
			{
				if ((BorderSides & Border3DSide.Left) > (Border3DSide)0)
				{
					leftWidth = 1;
				}
				if ((BorderSides & Border3DSide.Right) > (Border3DSide)0)
				{
					rightWidth = 1;
				}
				if ((BorderSides & Border3DSide.Top) > (Border3DSide)0)
				{
					topWidth = 1;
				}
				if ((BorderSides & Border3DSide.Bottom) > (Border3DSide)0)
				{
					bottomWidth = 1;
				}
			}
			ControlPaint.DrawBorder(g, rectangle, BorderColor, leftWidth, ButtonBorderStyle.Solid, BorderColor, topWidth, ButtonBorderStyle.Solid, BorderColor, rightWidth, ButtonBorderStyle.Solid, BorderColor, bottomWidth, ButtonBorderStyle.Solid);
		}
		else if (BorderAppearance == System.Windows.Forms.BorderStyle.Fixed3D)
		{
			ControlPaint.DrawBorder3D(g, rectangle, BorderStyle, sides);
		}
	}
}
