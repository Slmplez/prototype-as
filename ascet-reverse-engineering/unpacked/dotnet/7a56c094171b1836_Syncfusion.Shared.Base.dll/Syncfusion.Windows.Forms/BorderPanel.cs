using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
[Designer(typeof(ControlDesigner))]
public class BorderPanel : Panel
{
	private Panel innerPanel;

	private Container components;

	private BorderPanelState outerState = BorderPanelState.Raised;

	private BorderPanelState innerState = BorderPanelState.Sunken;

	private BorderPanelCornerSettings cornerRadius;

	private int outerBorderWidth = 10;

	private int innerBorderWidth = 8;

	private BorderPanelCornerSettings innerCornerRadius;

	private BorderPanelDimensions dimensions;

	private BrushInfo interior;

	[Browsable(false)]
	public new Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			base.BackColor = value;
		}
	}

	[Category("Appearance")]
	[Description("Indicates the background information of the border.")]
	public BrushInfo Background
	{
		get
		{
			return interior;
		}
		set
		{
			if (interior != value)
			{
				interior = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the color of the background of the inner surface.")]
	public Color InnerColor
	{
		get
		{
			return innerPanel.BackColor;
		}
		set
		{
			innerPanel.BackColor = value;
			Invalidate(invalidateChildren: true);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(true)]
	public new string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			base.Text = value;
			Invalidate();
		}
	}

	[Category("Appearance")]
	[Description("Indicates the sizes of the sides of the border.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public BorderPanelDimensions Dimensions
	{
		get
		{
			return dimensions;
		}
		set
		{
			if (dimensions != value)
			{
				dimensions = value;
				dimensions.SettingsChanged += Dimensions_Changed;
			}
		}
	}

	[Description("The control to be displayed inside the panel.")]
	[DefaultValue(null)]
	[Category("Behavior")]
	public Control Control
	{
		get
		{
			if (innerPanel.Controls.Count == 0)
			{
				return null;
			}
			return innerPanel.Controls[0];
		}
		set
		{
			if (value != null)
			{
				innerPanel.Controls.Clear();
				innerPanel.Controls.Add(value);
				value.Dock = DockStyle.Fill;
			}
		}
	}

	[Description("Holds information about the round corner radiuses of the inner surface.")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public BorderPanelCornerSettings InnerCornerRadius
	{
		get
		{
			return innerCornerRadius;
		}
		set
		{
			if (innerCornerRadius != value)
			{
				innerCornerRadius = value;
				innerCornerRadius.SettingsChanged += CornerRadius_Changed;
				StateChanged();
			}
		}
	}

	[Description("Indicates the width of the border of the inner surface.")]
	[Category("Appearance")]
	[DefaultValue(8)]
	public int InnerBorderWidth
	{
		get
		{
			return innerBorderWidth;
		}
		set
		{
			if (innerBorderWidth != value)
			{
				innerBorderWidth = value;
				StateChanged();
			}
		}
	}

	[DefaultValue(10)]
	[Category("Appearance")]
	[Description("Indicates the width of the border.")]
	public int OuterBorderWidth
	{
		get
		{
			return outerBorderWidth;
		}
		set
		{
			if (outerBorderWidth != value)
			{
				outerBorderWidth = value;
				StateChanged();
			}
		}
	}

	[Description("Holds information about the round corner radiuses of the outer shape.")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public BorderPanelCornerSettings CornerRadius
	{
		get
		{
			return cornerRadius;
		}
		set
		{
			if (cornerRadius != value)
			{
				cornerRadius = value;
				cornerRadius.SettingsChanged += CornerRadius_Changed;
			}
		}
	}

	[DefaultValue(BorderPanelState.Sunken)]
	[Category("Appearance")]
	[Description("Indicates the height state of the inner surface.")]
	public BorderPanelState InnerState
	{
		get
		{
			return innerState;
		}
		set
		{
			if (innerState != value)
			{
				innerState = value;
				StateChanged();
			}
		}
	}

	[DefaultValue(BorderPanelState.Raised)]
	[Description("Indicates the height state of the outer surface.")]
	[Category("Appearance")]
	public BorderPanelState OuterState
	{
		get
		{
			return outerState;
		}
		set
		{
			if (outerState != value)
			{
				outerState = value;
				StateChanged();
			}
		}
	}

	protected bool ShouldSerializeInnerColor()
	{
		return InnerColor != SystemColors.Window;
	}

	protected void ResetInnerColor()
	{
		InnerColor = SystemColors.Window;
	}

	protected bool ShouldSerializeText()
	{
		return Text != "";
	}

	protected new void ResetText()
	{
		Text = "";
	}

	protected bool ShouldSerializeDimensions()
	{
		return dimensions != BorderPanelDimensions.Default;
	}

	protected void ResetDimensions()
	{
		Dimensions = BorderPanelDimensions.Default;
	}

	protected bool ShouldSerializeInnerCornerRadius()
	{
		return innerCornerRadius != BorderPanelCornerSettings.Default;
	}

	protected void ResetInnerCornerRadius()
	{
		InnerCornerRadius = BorderPanelCornerSettings.Default;
	}

	protected bool ShouldSerializeCornerRadius()
	{
		return cornerRadius != BorderPanelCornerSettings.Default;
	}

	protected void ResetCornerRadius()
	{
		CornerRadius = BorderPanelCornerSettings.Default;
	}

	public BorderPanel()
	{
		cornerRadius = new BorderPanelCornerSettings(20);
		cornerRadius.SettingsChanged += CornerRadius_Changed;
		innerCornerRadius = new BorderPanelCornerSettings(10);
		innerCornerRadius.SettingsChanged += CornerRadius_Changed;
		dimensions = new BorderPanelDimensions();
		dimensions.SettingsChanged += Dimensions_Changed;
		interior = new BrushInfo(BackColor);
		SetStyle(ControlStyles.ResizeRedraw | ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer, value: true);
		InitializeComponent();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.innerPanel = new System.Windows.Forms.Panel();
		base.SuspendLayout();
		this.innerPanel.BackColor = System.Drawing.SystemColors.Window;
		this.innerPanel.Location = new System.Drawing.Point(24, 24);
		this.innerPanel.Name = "innerPanel";
		this.innerPanel.Size = new System.Drawing.Size(272, 208);
		this.innerPanel.TabIndex = 0;
		base.Controls.AddRange(new System.Windows.Forms.Control[1] { this.innerPanel });
		base.Size = new System.Drawing.Size(320, 256);
		base.ResumeLayout(false);
	}

	private void StateChanged()
	{
		Invalidate(invalidateChildren: true);
	}

	private void CornerRadius_Changed(object sender, EventArgs e)
	{
		CalculateRegion();
	}

	private void Dimensions_Changed(object sender, EventArgs e)
	{
		UpdateSize();
	}

	private void UpdateSize()
	{
		innerPanel.Location = new Point(dimensions.Left, dimensions.Top);
		innerPanel.Size = new Size(base.Width - dimensions.Left - dimensions.Right, base.Height - dimensions.Top - dimensions.Bottom);
		Invalidate(invalidateChildren: true);
	}

	private Region GetRegion(Rectangle rect, BorderPanelCornerSettings cornerRadius)
	{
		int num = rect.Width;
		int num2 = rect.Height;
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(cornerRadius.TopLeft, 0, num - cornerRadius.TopRight, 0);
		if (cornerRadius.TopRight != 0)
		{
			graphicsPath.AddArc(num - cornerRadius.TopRight * 2, 0, cornerRadius.TopRight * 2, cornerRadius.TopRight * 2, -90f, 90f);
		}
		graphicsPath.AddLine(num, cornerRadius.TopRight, num, num2 - cornerRadius.BottomRight);
		if (cornerRadius.BottomRight != 0)
		{
			graphicsPath.AddArc(num - cornerRadius.BottomRight * 2, num2 - cornerRadius.BottomRight * 2, cornerRadius.BottomRight * 2, cornerRadius.BottomRight * 2, 0f, 90f);
		}
		graphicsPath.AddLine(num - cornerRadius.BottomRight, num2, cornerRadius.BottomLeft, num2);
		if (cornerRadius.BottomLeft != 0)
		{
			graphicsPath.AddArc(0, num2 - cornerRadius.BottomLeft * 2, cornerRadius.BottomLeft * 2, cornerRadius.BottomLeft * 2, 90f, 90f);
		}
		graphicsPath.AddLine(0, num2 - cornerRadius.BottomLeft, 0, cornerRadius.TopLeft);
		if (cornerRadius.TopLeft != 0)
		{
			graphicsPath.AddArc(0, 0, cornerRadius.TopLeft * 2, cornerRadius.TopLeft * 2, 180f, 90f);
		}
		graphicsPath.CloseAllFigures();
		return new Region(graphicsPath);
	}

	private void CalculateRegion()
	{
		base.Region = GetRegion(base.ClientRectangle, cornerRadius);
		Invalidate(invalidateChildren: true);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		BrushPaint.FillRectangle(e.Graphics, base.ClientRectangle, interior);
		_ = interior.BackColor;
		if (outerState != BorderPanelState.Level && outerBorderWidth > 0)
		{
			int num = outerBorderWidth;
			Color color = Color.FromArgb(175, 255, 255, 255);
			Color color2 = Color.FromArgb(125, 0, 0, 0);
			if (outerState == BorderPanelState.Sunken)
			{
				color = Color.FromArgb(125, 0, 0, 0);
				color2 = Color.FromArgb(175, 255, 255, 255);
			}
			LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Point(base.Width - num, 0), new Point(base.Width, 0), Color.Transparent, color2);
			e.Graphics.FillRectangle(linearGradientBrush, base.Width - num, 0, num, base.Height);
			LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(new Point(0, base.Height - num), new Point(0, base.Height), Color.Transparent, color2);
			e.Graphics.FillRectangle(linearGradientBrush2, 0, base.Height - num, base.Width, num);
			LinearGradientBrush linearGradientBrush3 = new LinearGradientBrush(new Point(0, 0), new Point(num, 0), color, Color.Transparent);
			e.Graphics.FillRectangle(linearGradientBrush3, 0, 0, num, base.Height);
			LinearGradientBrush linearGradientBrush4 = new LinearGradientBrush(new Point(0, 0), new Point(0, num), color, Color.Transparent);
			e.Graphics.FillRectangle(linearGradientBrush4, 0, 0, base.Width, num);
			linearGradientBrush3.Dispose();
			linearGradientBrush.Dispose();
			linearGradientBrush4.Dispose();
			linearGradientBrush2.Dispose();
		}
		if (innerState != BorderPanelState.Level && innerBorderWidth > 0)
		{
			int num2 = innerBorderWidth;
			Rectangle bounds = innerPanel.Bounds;
			bounds.Inflate(num2 * 2, num2 * 2);
			Region region = GetRegion(bounds, innerCornerRadius);
			region.Translate(bounds.X, bounds.Y);
			e.Graphics.FillRegion(new SolidBrush(innerPanel.BackColor), region);
			e.Graphics.SetClip(region, CombineMode.Replace);
			e.Graphics.TranslateTransform(bounds.X, bounds.Y);
			int num3 = bounds.Width;
			int num4 = bounds.Height;
			Color color3 = Color.FromArgb(175, 255, 255, 255);
			Color color4 = Color.FromArgb(100, 0, 0, 0);
			if (InnerState == BorderPanelState.Sunken)
			{
				color3 = Color.FromArgb(100, 0, 0, 0);
				color4 = Color.FromArgb(175, 255, 255, 255);
			}
			LinearGradientBrush linearGradientBrush5 = new LinearGradientBrush(new Point(0, 0), new Point(num2, 0), color3, Color.Transparent);
			e.Graphics.FillRectangle(linearGradientBrush5, 0, 0, num2, num4);
			LinearGradientBrush linearGradientBrush6 = new LinearGradientBrush(new Point(0, 0), new Point(0, num2), color3, Color.Transparent);
			e.Graphics.FillRectangle(linearGradientBrush6, 0, 0, num3, num2);
			LinearGradientBrush linearGradientBrush7 = new LinearGradientBrush(new Point(num3 - num2, 0), new Point(num3, 0), Color.Transparent, color4);
			e.Graphics.FillRectangle(linearGradientBrush7, num3 - num2, 0, num2, num4);
			LinearGradientBrush linearGradientBrush8 = new LinearGradientBrush(new Point(0, num4 - num2), new Point(0, num4), Color.Transparent, color4);
			e.Graphics.FillRectangle(linearGradientBrush8, 0, num4 - num2, num3, num2);
			linearGradientBrush5.Dispose();
			linearGradientBrush6.Dispose();
			linearGradientBrush7.Dispose();
			linearGradientBrush8.Dispose();
			e.Graphics.ResetTransform();
			e.Graphics.ResetClip();
		}
		Size size = e.Graphics.MeasureString(Text, Font).ToSize();
		Brush brush = new SolidBrush(ForeColor);
		e.Graphics.DrawString(Text, Font, brush, (base.Width - size.Width) / 2, (dimensions.Top - innerBorderWidth - size.Height) / 2);
		brush.Dispose();
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		CalculateRegion();
		UpdateSize();
	}
}
