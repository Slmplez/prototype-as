using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(GradientPanelExtDesigner), typeof(IDesigner))]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.GradientPanelExt.bmp")]
[ToolboxItem(true)]
[Description("Represents collapsible panel that has curved border and primitives collection.")]
public class GradientPanelExt : GradientPanel, ISupportInitialize
{
	private const int DEF_PRIMITIVE_CONTROL_GAP = 2;

	private const int DEF_MIN_LENGHT_BORDER = 20;

	private const int DEF_CORNER_RADIUS = 20;

	private const int DEF_BORDER_GAP = 12;

	private const int DEF_WIDTH_PEN = 2;

	private const int DEF_PRIMITIMVE_BORDER_GAP = 3;

	private const int DEF_BORDER_OFFSET = 1;

	private const int DEF_COLLAPSE_OFFSET = 3;

	private const int DEF_ANIMATION_DELAY = 10;

	private const int DEF_ANIMATION_SPEED = 1;

	private const int DEF_ANGLE_0 = 0;

	private const int DEF_ANGLE_45 = 45;

	private const int DEF_ANGLE_90 = 90;

	private const int DEF_ANGLE_180 = 180;

	private const int DEF_ANGLE_270 = 270;

	private bool m_bCollapsed;

	private int m_cornerRadius = 20;

	private int m_borderGap = 12;

	private Color m_backColor = SystemColors.Control;

	private GraphicsPath m_clienPath;

	private GraphicsPath m_controlPath;

	private PrimitiveCollection m_arrPrimitive;

	private Size m_expandSize = Size.Empty;

	private Point m_expandLocation = Point.Empty;

	private Alignment m_enCollapseAlignment = Alignment.Top;

	private Alignment m_lastAlignment = Alignment.Top;

	private bool m_bPerformingCorrectionsLocation;

	private bool m_bAnimated;

	private int CollapseSize;

	private Size m_minSize = Size.Empty;

	private Rectangle m_rectangleForBorder = Rectangle.Empty;

	private AnimationHelper m_animator;

	private bool m_bCollapsedPerforming;

	private int m_animationDelay = 10;

	private int m_animationSpeed = 1;

	private bool m_bIsRedrawCollapsedControl;

	private bool m_bInitializePerforming;

	[DefaultValue(10)]
	[Category("Animation")]
	[Description("Delay for animation.")]
	public int AnimationDelay
	{
		get
		{
			return m_animationDelay;
		}
		set
		{
			if (value != m_animationDelay)
			{
				m_animationDelay = value;
			}
		}
	}

	[Description("Speed of animation.")]
	[Category("Animation")]
	[DefaultValue(1)]
	public int AnimationSpeed
	{
		get
		{
			return m_animationSpeed;
		}
		set
		{
			if (value != m_animationSpeed)
			{
				m_animationSpeed = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[DefaultValue(typeof(Point), "0, 0")]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public Point ExpandLocation
	{
		get
		{
			return m_expandLocation;
		}
		set
		{
			if (value != m_expandLocation)
			{
				m_expandLocation = value;
			}
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[DefaultValue(typeof(Size), "0, 0")]
	public Size ExpandSize
	{
		get
		{
			return m_expandSize;
		}
		set
		{
			if (value != m_expandSize)
			{
				m_expandSize = value;
			}
		}
	}

	[Description("Indicating whether the control uses animation.")]
	[Category("Animation")]
	[DefaultValue(false)]
	public bool Animated
	{
		get
		{
			return m_bAnimated;
		}
		set
		{
			if (value != m_bAnimated)
			{
				m_bAnimated = value;
			}
		}
	}

	[Description("Indicating whether the control is collapsed.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool Collapsed
	{
		get
		{
			return m_bCollapsed;
		}
		set
		{
			if (value != m_bCollapsed)
			{
				m_bCollapsed = value;
				OnCollapsedChanged();
			}
		}
	}

	[DefaultValue(Alignment.Top)]
	[Description("Alignment for collapsed control.")]
	[RefreshProperties(RefreshProperties.All)]
	[Category("Appearance")]
	public Alignment CollapseAlignment
	{
		get
		{
			return m_enCollapseAlignment;
		}
		set
		{
			if (value != m_enCollapseAlignment)
			{
				m_lastAlignment = m_enCollapseAlignment;
				m_enCollapseAlignment = value;
				OnCollapseAlignmentChanged();
			}
		}
	}

	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.All)]
	[DefaultValue(20)]
	[Description("Radius truncation corner of the control.")]
	public int CornerRadius
	{
		get
		{
			return m_cornerRadius;
		}
		set
		{
			if (value == m_cornerRadius)
			{
				return;
			}
			if (base.DesignMode && base.IsHandleCreated)
			{
				int maxRadius = GetMaxRadius();
				if (value > maxRadius || value < 0)
				{
					int num = ((value > maxRadius) ? maxRadius : 0);
					throw new ArgumentOutOfRangeException("CornerRadius", num, "Value must be more than -1 and less than " + maxRadius);
				}
			}
			m_cornerRadius = value;
			OnCornerRadiusChanged();
		}
	}

	[Category("Appearance")]
	[DefaultValue(12)]
	[Description("Border gap.")]
	public int BorderGap
	{
		get
		{
			return m_borderGap;
		}
		set
		{
			if (value == m_borderGap)
			{
				return;
			}
			if (base.DesignMode && !m_bInitializePerforming && base.IsHandleCreated)
			{
				int minBorderGap = GetMinBorderGap();
				int maxBorderGap = GetMaxBorderGap();
				if (value > maxBorderGap || value < minBorderGap)
				{
					int num = ((value > maxBorderGap) ? maxBorderGap : minBorderGap);
					throw new ArgumentOutOfRangeException("BorderGap", num, "Value must be more than " + minBorderGap + " and less than " + maxBorderGap);
				}
			}
			m_borderGap = value;
			OnBorderGapChanged();
		}
	}

	private GraphicsPath ClientPath
	{
		get
		{
			if (m_clienPath == null)
			{
				m_clienPath = GetClientPath(CollapseAlignment, Collapsed);
			}
			return m_clienPath;
		}
		set
		{
			if (value != m_clienPath)
			{
				m_clienPath = value;
			}
		}
	}

	private GraphicsPath ControlPath
	{
		get
		{
			return m_controlPath;
		}
		set
		{
			if (value != m_controlPath)
			{
				m_controlPath = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Appearance")]
	[Description("Collection of the primitives.")]
	public PrimitiveCollection Primitives
	{
		get
		{
			return m_arrPrimitive;
		}
		set
		{
			if (value != m_arrPrimitive)
			{
				m_arrPrimitive = value;
				OnPrimitivesChanged();
			}
		}
	}

	private Rectangle RealRectangle => new Rectangle(RealLocation, RealSize);

	private Size RealSize
	{
		get
		{
			Size empty = Size.Empty;
			if (ExpandSize != Size.Empty)
			{
				return ExpandSize;
			}
			return base.Size;
		}
	}

	private Point RealLocation
	{
		get
		{
			Point empty = Point.Empty;
			if (ExpandLocation != Point.Empty)
			{
				return ExpandLocation;
			}
			return base.Location;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new Border3DStyle Border3DStyle
	{
		get
		{
			return base.Border3DStyle;
		}
		set
		{
			base.Border3DStyle = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new Border3DSide BorderSides
	{
		get
		{
			return base.BorderSides;
		}
		set
		{
			base.BorderSides = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new ButtonBorderStyle BorderSingle
	{
		get
		{
			return base.BorderSingle;
		}
		set
		{
			base.BorderSingle = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new bool ThemesEnabled
	{
		get
		{
			return base.ThemesEnabled;
		}
		set
		{
			base.ThemesEnabled = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new bool IgnoreThemeBackground
	{
		get
		{
			return base.IgnoreThemeBackground;
		}
		set
		{
			base.IgnoreThemeBackground = value;
		}
	}

	[Description("Event fired when the value of CornerRadius property is changed.")]
	[Category("Property Changed")]
	public event EventHandler CornerRadiusChanged;

	[Description("Event fired when the value of BorderGap property is changed.")]
	[Category("Property Changed")]
	public event EventHandler BorderGapChanged;

	[Category("Property Changed")]
	[Description("Event fired when the value of CollapseAlignment property is changed.")]
	public event EventHandler CollapseAlignmentChanged;

	[Description("Event fired when the value of Collapsed property is changed.")]
	[Category("Property Changed")]
	public event EventHandler CollapsedChanged;

	[Description("Event fired when the value of Primitives property is changed.")]
	[Category("Property Changed")]
	public event EventHandler PrimitivesChanged;

	public GradientPanelExt()
	{
		InitializeControlStyle();
		InitializeControlColor();
		InitializePrimitives();
		InitializemAnimator();
		SetCorrectRadius(CollapseAlignment, Collapsed);
		SetCorrectBorderGap(CollapseAlignment, Collapsed);
		RefreshSizes();
		RefreshPath();
		RefreshPrimitives();
	}

	private void InitializemAnimator()
	{
		m_animator = new AnimationHelper();
		m_animator.AnimationPositionChanged += Animator_AnimationPositionChanged;
		m_animator.AnimationDone += Animator_AnimationDone;
	}

	private void InitializeControlStyle()
	{
		SetStyle(ControlStyles.UserPaint | ControlStyles.ResizeRedraw | ControlStyles.SupportsTransparentBackColor | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
	}

	private void InitializeControlColor()
	{
		base.BackColor = Color.Transparent;
		base.BorderStyle = BorderStyle.None;
	}

	private void InitializePrimitives()
	{
		m_arrPrimitive = new PrimitiveCollection();
		Primitives.CollectionChanged += Primitives_CollectionChanged;
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		Rectangle rectangle = new Rectangle(x, y, width, height);
		Rectangle empty = Rectangle.Empty;
		empty = ((m_animator == null || m_animator.AnimationOn) ? rectangle : GetCorrectSize(rectangle, CollapseAlignment, Collapsed, specified));
		base.SetBoundsCore(empty.X, empty.Y, empty.Width, empty.Height, specified);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		Region clip = e.Graphics.Clip;
		e.Graphics.Clip = new Region(ControlPath);
		base.OnPaint(e);
		e.Graphics.Clip = clip;
		DrawControl(e.Graphics);
		DrawBorder(e.Graphics);
	}

	protected override void OnPaintBackground(PaintEventArgs pevent)
	{
		PaintTransparentBackground(pevent, base.ClientRectangle);
		Region clip = pevent.Graphics.Clip;
		pevent.Graphics.Clip = new Region(ControlPath);
		if (BackgroundImage != null && !SystemInformation.HighContrast)
		{
			TextureBrush textureBrush = null;
			ImageLayout backgroundImageLayout = BackgroundImageLayout;
			textureBrush = ((backgroundImageLayout != ImageLayout.Tile) ? new TextureBrush(BackgroundImage, WrapMode.Clamp) : new TextureBrush(BackgroundImage, WrapMode.Tile));
			try
			{
				Matrix transform = textureBrush.Transform;
				if (BackgroundImageLayout == ImageLayout.Center)
				{
					transform.Translate(DisplayRectangle.X + (DisplayRectangle.Width - BackgroundImage.Width) / 2, DisplayRectangle.Y + (DisplayRectangle.Height - BackgroundImage.Height) / 2);
				}
				else
				{
					if (BackgroundImageLayout == ImageLayout.Stretch)
					{
						pevent.Graphics.DrawImage(BackgroundImage, DisplayRectangle);
						return;
					}
					if (BackgroundImageLayout == ImageLayout.Zoom)
					{
						int num = ((DisplayRectangle.Width < DisplayRectangle.Height) ? DisplayRectangle.Width : DisplayRectangle.Height);
						int num2 = ((num == DisplayRectangle.Width) ? DisplayRectangle.X : (DisplayRectangle.X + (DisplayRectangle.Width - num) / 2));
						int num3 = ((num == DisplayRectangle.Height) ? DisplayRectangle.Y : (DisplayRectangle.Y + (DisplayRectangle.Height - num) / 2));
						pevent.Graphics.DrawImage(BackgroundImage, new Rectangle(num2, num3, num, num));
						return;
					}
					transform.Translate(DisplayRectangle.X, DisplayRectangle.Y);
				}
				textureBrush.Transform = transform;
				pevent.Graphics.FillRectangle(textureBrush, base.ClientRectangle);
				return;
			}
			finally
			{
				textureBrush.Dispose();
			}
		}
		pevent.Graphics.Clip = clip;
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		e.Control.LocationChanged += Control_LocationChanged;
		e.Control.SizeChanged += Control_SizeChanged;
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		base.OnControlRemoved(e);
		e.Control.LocationChanged -= Control_LocationChanged;
		e.Control.SizeChanged -= Control_SizeChanged;
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		if (m_animator != null && !m_animator.AnimationOn)
		{
			RefreshSizes();
			RefreshPath();
			RefreshPrimitives();
			Invalidate();
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (Primitives != null && Primitives.Count > 0)
		{
			foreach (Primitive primitive in Primitives)
			{
				primitive.Dispose();
			}
		}
		base.Dispose(disposing);
	}

	private void PaintTransparentBackground(PaintEventArgs e, Rectangle rectangle)
	{
		Graphics graphics = e.Graphics;
		Control control = base.Parent;
		if (control != null)
		{
			Form form = control as Form;
			NativeMethods.POINT lpPoints = new NativeMethods.POINT(0, 0);
			if (form != null && form.RightToLeft == RightToLeft.Yes && form.RightToLeftLayout)
			{
				lpPoints = new NativeMethods.POINT(base.Right, 0);
			}
			NativeMethods.MapWindowPoints(base.Handle, control.Handle, ref lpPoints, 1u);
			rectangle.Offset(lpPoints.X, lpPoints.Y);
			PaintEventArgs e2 = new PaintEventArgs(graphics, rectangle);
			GraphicsState gstate = graphics.Save();
			try
			{
				InvokePaintBackground(control, e2);
				graphics.Restore(gstate);
				gstate = graphics.Save();
				graphics.TranslateTransform(-lpPoints.X, -lpPoints.Y);
				InvokePaint(control, e2);
				return;
			}
			finally
			{
				graphics.Restore(gstate);
			}
		}
		graphics.FillRectangle(SystemBrushes.Control, rectangle);
	}

	internal void MakeDirty()
	{
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.OnComponentChanging(this, null);
			componentChangeService.OnComponentChanged(this, null, null, null);
		}
	}

	private int GetCountAnimationPosition(Alignment alignment)
	{
		int result = 0;
		switch (alignment)
		{
		case Alignment.Top:
			result = ((!m_animator.AnimationOn) ? (RealSize.Height - CollapseSize) : (Collapsed ? ((RealSize.Height - CollapseSize) / AnimationSpeed - m_animator.AnimationPosition) : ((ExpandSize.Height - base.Size.Height) / AnimationSpeed)));
			break;
		case Alignment.Bottom:
			result = ((!m_animator.AnimationOn) ? (RealSize.Height - CollapseSize) : (Collapsed ? ((RealSize.Height - CollapseSize) / AnimationSpeed - m_animator.AnimationPosition) : ((ExpandSize.Height - base.Size.Height) / AnimationSpeed)));
			break;
		case Alignment.Left:
			result = ((!m_animator.AnimationOn) ? (RealSize.Width - CollapseSize) : (Collapsed ? ((RealSize.Width - CollapseSize) / AnimationSpeed - m_animator.AnimationPosition) : ((ExpandSize.Width - base.Size.Width) / AnimationSpeed)));
			break;
		case Alignment.Right:
			result = ((!m_animator.AnimationOn) ? (RealSize.Width - CollapseSize) : (Collapsed ? ((RealSize.Width - CollapseSize) / AnimationSpeed - m_animator.AnimationPosition) : ((ExpandSize.Width - base.Size.Width) / AnimationSpeed)));
			break;
		}
		return result;
	}

	private void StartAnimation()
	{
		if (m_animator == null)
		{
			return;
		}
		HidePrimitive(CollapseAlignment);
		HideControls();
		m_bIsRedrawCollapsedControl = true;
		int num = 0;
		if (!m_animator.AnimationOn)
		{
			if (Collapsed)
			{
				ExpandSize = new Size(base.Size.Width, base.Size.Height);
				ExpandLocation = new Point(base.Location.X, base.Location.Y);
			}
			RefreshSizes();
			RefreshPath();
			Invalidate();
		}
		num = GetCountAnimationPosition(CollapseAlignment);
		if (num != 0 && !m_animator.AnimationOn)
		{
			num /= AnimationSpeed;
		}
		m_animator.StartAnimation(num, Collapsed, AnimationDelay);
	}

	internal void Collapse()
	{
		Collapsed = true;
		m_bCollapsedPerforming = true;
		HideControls();
		HidePrimitive(CollapseAlignment);
	}

	internal void Expand()
	{
		Collapsed = false;
		m_bCollapsedPerforming = false;
		if (!m_animator.AnimationOn)
		{
			ShowControls();
			ShowPrimitive(CollapseAlignment);
		}
	}

	private bool CheckPositionControl(Control control)
	{
		bool result = false;
		if (control != null)
		{
			Point point = new Point(control.Location.X, control.Location.Y);
			Point point2 = new Point(control.Location.X, control.Location.Y + control.Size.Height);
			Point point3 = new Point(control.Location.X + control.Size.Width, control.Location.Y);
			Point point4 = new Point(control.Location.X + control.Size.Width, control.Location.Y + control.Size.Height);
			if (ClientPath.IsVisible(point) && ClientPath.IsVisible(point2) && ClientPath.IsVisible(point3) && ClientPath.IsVisible(point4))
			{
				result = true;
			}
		}
		return result;
	}

	private void RefreshPath()
	{
		ControlPath = GetControlPath(CollapseAlignment, Collapsed);
		ClientPath = GetClientPath(CollapseAlignment, Collapsed);
	}

	private void RefreshPrimitives()
	{
		if (m_bInitializePerforming)
		{
			return;
		}
		foreach (Primitive primitive in Primitives)
		{
			if (CollapseAlignment == primitive.Alignment)
			{
				primitive.Visible = true;
			}
			SetCorrectPrimitivePosition(primitive);
			primitive.Bounds = GetPrimitiveRectangle(primitive);
		}
	}

	private void RefreshCorrectPosition()
	{
		if (Collapsed)
		{
			return;
		}
		foreach (Control control in base.Controls)
		{
			SetCorrectPosition(control);
		}
	}

	private void RefreshSizes()
	{
		CollapseSize = GetCollapseSize();
		m_minSize = GetMinSize();
		m_rectangleForBorder = GetRect(BorderGap, CollapseAlignment, Collapsed);
	}

	private Rectangle GetClientRectangle()
	{
		int borderGap = BorderGap;
		Rectangle empty = Rectangle.Empty;
		Point empty2 = Point.Empty;
		Size empty3 = Size.Empty;
		int cornerRadius = CornerRadius;
		int num = 225;
		double num2 = (double)num * (Math.PI / 180.0);
		double num3 = (double)cornerRadius * Math.Cos(num2);
		double num4 = (double)cornerRadius * Math.Sin(num2);
		int num5 = CornerRadius + borderGap;
		int num6 = CornerRadius + borderGap;
		empty2 = new Point(num5 + (int)num3, num6 + (int)num4);
		num = 45;
		num2 = (double)num * (Math.PI / 180.0);
		num3 = (double)cornerRadius * Math.Cos(num2);
		num4 = (double)cornerRadius * Math.Sin(num2);
		num5 = base.ClientRectangle.Right - CornerRadius + (int)num3 - borderGap - 1;
		num6 = base.ClientRectangle.Bottom - CornerRadius + (int)num4 - borderGap - 1;
		return new Rectangle(size: new Size(num5 - empty2.X, num6 - empty2.Y), location: empty2);
	}

	private Rectangle GetRect(int offset, Alignment alignment, bool collapsed)
	{
		Rectangle empty = Rectangle.Empty;
		int num = offset;
		int num2 = offset;
		int num3 = RealSize.Width - 2 * offset;
		int num4 = (num4 = RealSize.Height - 2 * offset);
		if (alignment == Alignment.Bottom)
		{
			num2 -= RealSize.Height - base.Size.Height;
		}
		if (alignment == Alignment.Right)
		{
			num -= RealSize.Width - base.Size.Width;
		}
		return new Rectangle(num, num2, num3 - 1, num4 - 1);
	}

	private GraphicsPath GetPath(int offset, int positionOffset, Alignment alignment, bool collapsed)
	{
		GraphicsPath graphicsPath = new GraphicsPath(FillMode.Winding);
		Rectangle rect = GetRect(offset, alignment, collapsed);
		if (alignment == Alignment.Bottom)
		{
			rect.Offset(positionOffset, 0);
		}
		if (alignment == Alignment.Right)
		{
			rect.Offset(0, positionOffset);
		}
		if (CornerRadius > 0)
		{
			int num = 0;
			int num2 = 0;
			int num3 = 2 * CornerRadius;
			num = rect.X;
			num2 = rect.Y;
			graphicsPath.AddArc(num, num2, num3, num3, 180f, 90f);
			num = rect.Right - num3;
			num2 = rect.Y;
			graphicsPath.AddArc(num, num2, num3, num3, 270f, 90f);
			num = rect.Right - num3;
			num2 = rect.Bottom - num3;
			graphicsPath.AddArc(num, num2, num3, num3, 0f, 90f);
			num = rect.X;
			num2 = rect.Bottom - num3;
			graphicsPath.AddArc(num, num2, num3, num3, 90f, 90f);
			num = rect.X;
			num2 = rect.Y;
			graphicsPath.AddArc(num, num2, num3, num3, 180f, 90f);
		}
		else
		{
			graphicsPath.AddRectangle(rect);
		}
		return graphicsPath;
	}

	private GraphicsPath GetControlPath(Alignment alignment, bool collapsed)
	{
		return GetPath(0, 0, alignment, collapsed);
	}

	private GraphicsPath GetClientPath(Alignment alignment, bool collapsed)
	{
		return GetPath(BorderGap + 1, 0, alignment, collapsed);
	}

	internal Rectangle GetPrimitiveRectangle(Primitive primitive)
	{
		Rectangle result = Rectangle.Empty;
		if (primitive != null)
		{
			_ = base.ClientRectangle.Right;
			_ = CornerRadius;
			_ = primitive.Size.Width;
			_ = base.ClientRectangle.Height;
			_ = CornerRadius;
			_ = primitive.Size.Height;
			Point empty = Point.Empty;
			Point empty2 = Point.Empty;
			int num = 1;
			int num2 = primitive.Size.Height / 2 - num;
			_ = primitive.Size.Width / 2;
			switch (primitive.Alignment)
			{
			case Alignment.Top:
				empty = GetStartPosition(Alignment.Top);
				empty2 = new Point(empty.X + primitive.Position, empty.Y - num2);
				result = new Rectangle(empty2, primitive.Size);
				break;
			case Alignment.Bottom:
				empty = GetStartPosition(Alignment.Bottom);
				empty2 = new Point(empty.X + primitive.Position, empty.Y - num2);
				result = new Rectangle(empty2, primitive.Size);
				break;
			case Alignment.Left:
				empty = GetStartPosition(Alignment.Left);
				empty2 = new Point(empty.X - num2, empty.Y + primitive.Position);
				result = new Rectangle(empty2, new Size(primitive.Size.Height, primitive.Size.Width));
				break;
			case Alignment.Right:
				empty = GetStartPosition(Alignment.Right);
				empty2 = new Point(empty.X - num2, empty.Y + primitive.Position);
				result = new Rectangle(empty2, new Size(primitive.Size.Height, primitive.Size.Width));
				break;
			}
		}
		return result;
	}

	internal Point GetStartPosition(Alignment side)
	{
		Point result = Point.Empty;
		int num = 2;
		switch (side)
		{
		case Alignment.Top:
			result = new Point(base.ClientRectangle.Left + CornerRadius + BorderGap, base.ClientRectangle.Top + BorderGap);
			break;
		case Alignment.Bottom:
			result = new Point(base.ClientRectangle.X + CornerRadius + BorderGap, base.ClientRectangle.Bottom - BorderGap - num);
			break;
		case Alignment.Left:
			result = new Point(base.ClientRectangle.X + BorderGap, base.ClientRectangle.Top + CornerRadius + BorderGap);
			break;
		case Alignment.Right:
			result = new Point(base.ClientRectangle.Right - BorderGap - num, base.ClientRectangle.Top + CornerRadius + BorderGap);
			break;
		}
		return result;
	}

	internal Point GetEndPosition(Alignment side)
	{
		Point result = Point.Empty;
		int num = 2;
		switch (side)
		{
		case Alignment.Top:
			result = new Point(base.ClientRectangle.Right - CornerRadius - BorderGap, base.ClientRectangle.Top + BorderGap);
			break;
		case Alignment.Bottom:
			result = new Point(base.ClientRectangle.Right - CornerRadius - BorderGap, base.ClientRectangle.Bottom - BorderGap - num);
			break;
		case Alignment.Left:
			result = new Point(base.ClientRectangle.X + BorderGap, base.ClientRectangle.Bottom - CornerRadius - BorderGap);
			break;
		case Alignment.Right:
			result = new Point(base.ClientRectangle.Right - BorderGap - num, base.ClientRectangle.Bottom - CornerRadius - BorderGap);
			break;
		}
		return result;
	}

	private int GetCollapseSize()
	{
		int num = 0;
		num = CornerRadius + BorderGap;
		int num2 = 2 * BorderGap;
		if (num2 > num)
		{
			num = num2;
		}
		return num + 3;
	}

	private Size GetMaxPrimitivesSize()
	{
		Size result = Size.Empty;
		foreach (Primitive primitive in Primitives)
		{
			if (primitive.Size.Height > result.Height || primitive.Size.Width > result.Width)
			{
				result = primitive.Size;
			}
		}
		return result;
	}

	private int GetMinBorderGap()
	{
		int num = GetMaxPrimitivesSize().Height;
		return num / 2 + 2;
	}

	private int GetMaxBorderGap()
	{
		int num = ((RealSize.Width > RealSize.Height) ? RealSize.Height : RealSize.Width);
		Size maxPrimitivesSize = GetMaxPrimitivesSize();
		int num2 = ((maxPrimitivesSize.Height > maxPrimitivesSize.Width) ? maxPrimitivesSize.Height : maxPrimitivesSize.Width);
		num -= 2 * CornerRadius;
		num -= num2;
		num /= 2;
		int minBorderGap = GetMinBorderGap();
		return (num < minBorderGap) ? minBorderGap : num;
	}

	private int GetMaxRadius()
	{
		_ = Size.Empty;
		int num = ((RealSize.Width > RealSize.Height) ? RealSize.Height : RealSize.Width);
		Size maxPrimitivesSize = GetMaxPrimitivesSize();
		num = ((maxPrimitivesSize.Width + 20 <= num) ? (num - (maxPrimitivesSize.Width + 20)) : (maxPrimitivesSize.Width + 20));
		return num / 2;
	}

	private Size GetMinSize()
	{
		Size minSizeFromPrimitive = GetMinSizeFromPrimitive();
		Size minSizeFromControl = GetMinSizeFromControl();
		int num = ((minSizeFromPrimitive.Width < minSizeFromControl.Width) ? minSizeFromPrimitive.Width : minSizeFromControl.Width);
		int num2 = ((minSizeFromPrimitive.Height < minSizeFromControl.Height) ? minSizeFromPrimitive.Height : minSizeFromControl.Height);
		return new Size(num, num2);
	}

	private Size GetMinSizeFromPrimitive()
	{
		Size empty = Size.Empty;
		int num = 0;
		int num2 = 0;
		foreach (Primitive primitive in Primitives)
		{
			switch (primitive.Alignment)
			{
			case Alignment.Top:
				if (num < primitive.Bounds.Right)
				{
					num = primitive.Bounds.Right;
				}
				break;
			case Alignment.Bottom:
				if (num < primitive.Bounds.Right)
				{
					num = primitive.Bounds.Right;
				}
				break;
			case Alignment.Left:
				if (num2 < primitive.Bounds.Bottom)
				{
					num2 = primitive.Bounds.Bottom;
				}
				break;
			case Alignment.Right:
				if (num2 < primitive.Bounds.Bottom)
				{
					num2 = primitive.Bounds.Bottom;
				}
				break;
			}
		}
		int num3 = ((num == 0) ? (2 * CornerRadius + 2 * BorderGap + 20) : (CornerRadius + BorderGap + num + 6));
		int num4 = ((num2 == 0) ? (2 * CornerRadius + 2 * BorderGap + 20) : (CornerRadius + BorderGap + num2 + 6));
		return new Size(num3, num4);
	}

	private Size GetMinSizeFromControl()
	{
		Size empty = Size.Empty;
		int num = 0;
		int num2 = 0;
		foreach (Control control in base.Controls)
		{
			if (!IsControlHostControl(control))
			{
				if (num < control.Bounds.Right)
				{
					num = control.Bounds.Right;
				}
				if (num2 < control.Bounds.Bottom)
				{
					num2 = control.Bounds.Bottom;
				}
			}
		}
		int num3 = ((num == 0) ? (2 * CornerRadius + 2 * BorderGap + 20) : (CornerRadius / 2 + BorderGap + num));
		int num4 = ((num2 == 0) ? (2 * CornerRadius + 2 * BorderGap + 20) : (CornerRadius / 2 + BorderGap + num2));
		return new Size(num3, num4);
	}

	private ArrayList GetNonBorderLine()
	{
		ArrayList arrayList = new ArrayList();
		Line line = Line.Empty;
		Line line2 = Line.Empty;
		Point empty = Point.Empty;
		Point empty2 = Point.Empty;
		int num = 3;
		int num2 = 1;
		foreach (Primitive primitive in Primitives)
		{
			if (primitive.Visible && (!Collapsed || (Collapsed && CollapseAlignment == primitive.Alignment)))
			{
				switch (primitive.Alignment)
				{
				case Alignment.Top:
					empty = new Point(primitive.Bounds.X - num, primitive.Bounds.Y + primitive.Bounds.Size.Height / 2 - num2);
					empty2 = new Point(primitive.Bounds.Right + num + num2, primitive.Bounds.Y + primitive.Bounds.Size.Height / 2 - num2);
					line = new Line(empty, empty2);
					empty = new Point(primitive.Bounds.X - num, primitive.Bounds.Y + primitive.Bounds.Size.Height / 2);
					empty2 = new Point(primitive.Bounds.Right + num + num2, primitive.Bounds.Y + primitive.Bounds.Size.Height / 2);
					line2 = new Line(empty, empty2);
					break;
				case Alignment.Bottom:
					empty = new Point(primitive.Bounds.X - num, primitive.Bounds.Y + primitive.Bounds.Size.Height / 2 - num2);
					empty2 = new Point(primitive.Bounds.Right + num + num2, primitive.Bounds.Y + primitive.Bounds.Size.Height / 2 - num2);
					line = new Line(empty, empty2);
					empty = new Point(primitive.Bounds.X - num, primitive.Bounds.Y + primitive.Bounds.Size.Height / 2);
					empty2 = new Point(primitive.Bounds.Right + num + num2, primitive.Bounds.Y + primitive.Bounds.Size.Height / 2);
					line2 = new Line(empty, empty2);
					break;
				case Alignment.Left:
					empty = new Point(primitive.Bounds.X + primitive.Bounds.Size.Width / 2 - num2, primitive.Bounds.Y - num);
					empty2 = new Point(primitive.Bounds.X + primitive.Bounds.Size.Width / 2 - num2, primitive.Bounds.Bottom + num + num2);
					line = new Line(empty, empty2);
					empty = new Point(primitive.Bounds.X + primitive.Bounds.Size.Width / 2, primitive.Bounds.Y - num);
					empty2 = new Point(primitive.Bounds.X + primitive.Bounds.Size.Width / 2, primitive.Bounds.Bottom + num + num2);
					line2 = new Line(empty, empty2);
					break;
				case Alignment.Right:
					empty = new Point(primitive.Bounds.X + primitive.Bounds.Size.Width / 2 - num2, primitive.Bounds.Y - num);
					empty2 = new Point(primitive.Bounds.X + primitive.Bounds.Size.Width / 2 - num2, primitive.Bounds.Bottom + num + num2);
					line = new Line(empty, empty2);
					empty = new Point(primitive.Bounds.X + primitive.Bounds.Size.Width / 2, primitive.Bounds.Y - num);
					empty2 = new Point(primitive.Bounds.X + primitive.Bounds.Size.Width / 2, primitive.Bounds.Bottom + num + num2);
					line2 = new Line(empty, empty2);
					break;
				}
				arrayList.Add(line);
				arrayList.Add(line2);
			}
		}
		return arrayList;
	}

	internal IDesignerHost GetIDesignerHost()
	{
		return (IDesignerHost)GetService(typeof(IDesignerHost));
	}

	private Region GetNonDrawClip()
	{
		Region region = new Region(base.ClientRectangle);
		ArrayList nonBorderLine = GetNonBorderLine();
		foreach (Line item in nonBorderLine)
		{
			Rectangle rect = new Rectangle(item.Point1, item.GetSize());
			region.Exclude(rect);
		}
		return region;
	}

	private void DrawControl(Graphics g)
	{
		g.SmoothingMode = SmoothingMode.AntiAlias;
		if (BackgroundImage == null)
		{
			if (base.BackgroundColor != BrushInfo.Empty)
			{
				BrushPaint.FillPath(g, ControlPath, base.BackgroundColor);
				return;
			}
			Brush brush = new SolidBrush(BackColor);
			g.FillPath(brush, ControlPath);
		}
	}

	private void DrawBorder(Graphics g)
	{
		Rectangle rectangleForBorder = m_rectangleForBorder;
		g.SmoothingMode = SmoothingMode.AntiAlias;
		if (CornerRadius > 0)
		{
			DrawNonRectBorder(g, rectangleForBorder);
		}
		else
		{
			DrawRectBorder(g, rectangleForBorder);
		}
		foreach (Primitive primitive in Primitives)
		{
			if (Collapsed)
			{
				if (primitive.Alignment == CollapseAlignment)
				{
					primitive.Draw(g);
				}
			}
			else
			{
				primitive.Draw(g);
			}
		}
	}

	private void DrawNonRectBorder(Graphics g, Rectangle rect)
	{
		g.Clip = GetNonDrawClip();
		if (CornerRadius > 0)
		{
			DrawLightLines(g, rect);
			DrawDarkLines(g, rect);
			DrawLightArcs(g, rect);
			DrawDarkArcs(g, rect);
			if (m_animator != null && !m_animator.AnimationOn)
			{
				DrawCollapseLine(g, rect);
			}
		}
		g.Clip = new Region(base.ClientRectangle);
	}

	private void DrawLightLines(Graphics g, Rectangle rect)
	{
		Pen lightPen = GetLightPen();
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		int num4 = 0;
		int num5 = 1;
		num = rect.Left + CornerRadius;
		num2 = rect.Top + num5;
		num3 = rect.Right - CornerRadius - num5;
		num4 = num2;
		g.DrawLine(lightPen, num, num2, num3, num4);
		num = rect.Left + num5;
		num2 = rect.Top + CornerRadius;
		num3 = num;
		num4 = rect.Bottom - CornerRadius;
		g.DrawLine(lightPen, num, num2, num3, num4);
		num = rect.Right;
		num2 = rect.Top + CornerRadius;
		num3 = num;
		num4 = rect.Bottom - CornerRadius;
		g.DrawLine(lightPen, num, num2, num3, num4);
		num = rect.Left + CornerRadius;
		num2 = rect.Bottom;
		num3 = rect.Right - CornerRadius;
		num4 = num2;
		g.DrawLine(lightPen, num, num2, num3, num4);
	}

	private void DrawDarkLines(Graphics g, Rectangle rect)
	{
		Pen darkPen = GetDarkPen();
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		int num4 = 0;
		int num5 = 1;
		num = rect.Left + CornerRadius;
		num2 = rect.Top;
		num3 = rect.Right - CornerRadius - num5;
		num4 = num2;
		g.DrawLine(darkPen, num, num2, num3, num4);
		num = rect.Right - num5;
		num2 = rect.Top + CornerRadius;
		num3 = num;
		num4 = rect.Bottom - CornerRadius;
		g.DrawLine(darkPen, num, num2, num3, num4);
		num = rect.Left + CornerRadius;
		num2 = rect.Bottom - num5;
		num3 = rect.Right - CornerRadius - num5;
		num4 = num2;
		g.DrawLine(darkPen, num, num2, num3, num4);
		num = rect.Left;
		num2 = rect.Top + CornerRadius;
		num3 = num;
		num4 = rect.Bottom - CornerRadius - num5;
		g.DrawLine(darkPen, num, num2, num3, num4);
	}

	private void DrawLightArcs(Graphics g, Rectangle rect)
	{
		Pen lightPen = GetLightPen();
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		int num4 = 0;
		Rectangle empty = Rectangle.Empty;
		int num5 = 1;
		num = rect.Left + num5;
		num2 = rect.Top + num5;
		num3 = 2 * CornerRadius;
		num4 = 2 * CornerRadius;
		empty = new Rectangle(num, num2, num4, num3);
		g.DrawArc(lightPen, empty, 180f, 90f);
		num = rect.Right - 2 * CornerRadius - num5;
		num2 = rect.Top + num5;
		num3 = 2 * CornerRadius;
		num4 = 2 * CornerRadius;
		empty = new Rectangle(num, num2, num4, num3);
		g.DrawArc(lightPen, empty, 270f, 45f);
		num = rect.Left + num5;
		num2 = rect.Bottom - 2 * CornerRadius - num5;
		num3 = 2 * CornerRadius;
		num4 = 2 * CornerRadius;
		empty = new Rectangle(num, num2, num4, num3);
		g.DrawArc(lightPen, empty, 135f, 45f);
		num = rect.Right - 2 * CornerRadius;
		num2 = rect.Top;
		num3 = 2 * CornerRadius;
		num4 = 2 * CornerRadius;
		empty = new Rectangle(num, num2, num4, num3);
		g.DrawArc(lightPen, empty, 315f, 45f);
		num = rect.Right - 2 * CornerRadius;
		num2 = rect.Bottom - 2 * CornerRadius;
		num3 = 2 * CornerRadius;
		num4 = 2 * CornerRadius;
		empty = new Rectangle(num, num2, num4, num3);
		g.DrawArc(lightPen, empty, 0f, 90f);
		num = rect.Left;
		num2 = rect.Bottom - 2 * CornerRadius;
		num3 = 2 * CornerRadius;
		num4 = 2 * CornerRadius;
		empty = new Rectangle(num, num2, num4, num3);
		g.DrawArc(lightPen, empty, 90f, 45f);
	}

	private void DrawDarkArcs(Graphics g, Rectangle rect)
	{
		Pen darkPen = GetDarkPen();
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		int num4 = 0;
		Rectangle empty = Rectangle.Empty;
		int num5 = 1;
		num = rect.Left;
		num2 = rect.Top;
		num3 = 2 * CornerRadius;
		num4 = 2 * CornerRadius;
		empty = new Rectangle(num, num2, num4, num3);
		g.DrawArc(darkPen, empty, 180f, 90f);
		num = rect.Right - 2 * CornerRadius - num5;
		num2 = rect.Top;
		num3 = 2 * CornerRadius;
		num4 = 2 * CornerRadius;
		empty = new Rectangle(num, num2, num4, num3);
		g.DrawArc(darkPen, empty, 270f, 90f);
		num = rect.Right - 2 * CornerRadius - num5;
		num2 = rect.Bottom - 2 * CornerRadius - num5;
		num3 = 2 * CornerRadius;
		num4 = 2 * CornerRadius;
		empty = new Rectangle(num, num2, num4, num3);
		g.DrawArc(darkPen, empty, 0f, 90f);
		num = rect.Left;
		num2 = rect.Bottom - 2 * CornerRadius - num5;
		num3 = 2 * CornerRadius;
		num4 = 2 * CornerRadius;
		empty = new Rectangle(num, num2, num4, num3);
		g.DrawArc(darkPen, empty, 90f, 90f);
	}

	private void DrawRectBorder(Graphics g, Rectangle rect)
	{
		int num = 1;
		Pen lightPen = GetLightPen();
		Pen darkPen = GetDarkPen();
		Rectangle rect2 = new Rectangle(rect.X + num, rect.Y + num, rect.Width - num, rect.Height - num);
		g.DrawRectangle(lightPen, rect2);
		Rectangle rect3 = new Rectangle(rect.X, rect.Y, rect.Width - num, rect.Height - num);
		g.DrawRectangle(darkPen, rect3);
		if (m_animator != null && !m_animator.AnimationOn)
		{
			DrawCollapseLine(g, rect);
		}
	}

	private void DrawCollapseLine(Graphics g, Rectangle rect)
	{
		if (Collapsed)
		{
			DrawCollapseLineLight(g, rect);
			DrawCollapseLineDark(g, rect);
		}
	}

	private void DrawCollapseLineLight(Graphics g, Rectangle rect)
	{
		int num = 1;
		Pen lightPen = GetLightPen();
		switch (CollapseAlignment)
		{
		case Alignment.Top:
			g.DrawLine(lightPen, rect.Left, CollapseSize - num, rect.Right, CollapseSize - num);
			break;
		case Alignment.Bottom:
			g.DrawLine(lightPen, rect.Left + num, base.ClientRectangle.Bottom - CollapseSize + num, rect.Right - num, base.ClientRectangle.Bottom - CollapseSize + num);
			break;
		case Alignment.Left:
			g.DrawLine(lightPen, CollapseSize - num, rect.Top, CollapseSize - num, rect.Bottom);
			break;
		case Alignment.Right:
			g.DrawLine(lightPen, base.ClientRectangle.Right - CollapseSize + num, rect.Top + num, base.ClientRectangle.Right - CollapseSize + num, rect.Bottom - num);
			break;
		}
	}

	private void DrawCollapseLineDark(Graphics g, Rectangle rect)
	{
		int num = 1;
		Pen darkPen = GetDarkPen();
		switch (CollapseAlignment)
		{
		case Alignment.Top:
			g.DrawLine(darkPen, rect.Left, CollapseSize - 2 * num, rect.Right - num, CollapseSize - 2 * num);
			break;
		case Alignment.Bottom:
			g.DrawLine(darkPen, rect.Left, base.ClientRectangle.Bottom - CollapseSize, rect.Right - num, base.ClientRectangle.Bottom - CollapseSize);
			break;
		case Alignment.Left:
			g.DrawLine(darkPen, CollapseSize - 2 * num, rect.Top, CollapseSize - 2 * num, rect.Bottom - num);
			break;
		case Alignment.Right:
			g.DrawLine(darkPen, base.ClientRectangle.Right - CollapseSize, rect.Top, base.ClientRectangle.Right - CollapseSize, rect.Bottom - num);
			break;
		}
	}

	private Rectangle ChangeSizeControl(Rectangle controlBound)
	{
		if (controlBound != Rectangle.Empty)
		{
			Rectangle clientRectangle = GetClientRectangle();
			if (clientRectangle.Size.Width < controlBound.Size.Width)
			{
				controlBound.Size = new Size(clientRectangle.Size.Width, controlBound.Size.Height);
			}
			if (clientRectangle.Size.Height < controlBound.Size.Height)
			{
				controlBound.Size = new Size(controlBound.Size.Width, clientRectangle.Size.Height);
			}
		}
		return controlBound;
	}

	private Rectangle ChangeLocationControl(Rectangle controlBounds)
	{
		Rectangle clientRectangle = GetClientRectangle();
		int num = 1;
		Point point = new Point(controlBounds.X, controlBounds.Y);
		Point point2 = new Point(controlBounds.X, controlBounds.Bottom);
		Point point3 = new Point(controlBounds.Right, controlBounds.Y);
		Point point4 = new Point(controlBounds.Right, controlBounds.Bottom);
		if (controlBounds.X < clientRectangle.X)
		{
			controlBounds.X = clientRectangle.X;
			if (CornerRadius == 0)
			{
				controlBounds.X++;
			}
		}
		else if (controlBounds.Right > clientRectangle.Right)
		{
			controlBounds.X = clientRectangle.Right - controlBounds.Width;
			if (CornerRadius == 0)
			{
				controlBounds.X -= 3;
			}
		}
		if (point.Y < clientRectangle.Top)
		{
			bool flag = false;
			while (!flag)
			{
				controlBounds.Y += num;
				point3 = new Point(controlBounds.Right, controlBounds.Y);
				if ((ClientPath.IsVisible(controlBounds.Location) && ClientPath.IsVisible(point3)) || point.Y > clientRectangle.Top)
				{
					flag = true;
				}
			}
		}
		if (point4.Y > clientRectangle.Bottom)
		{
			bool flag2 = false;
			while (!flag2 && controlBounds.Y > 0)
			{
				controlBounds.Y -= num;
				point2 = new Point(controlBounds.X, controlBounds.Bottom);
				if ((ClientPath.IsVisible(new Point(controlBounds.Right, controlBounds.Bottom)) && ClientPath.IsVisible(point2)) || point4.Y < clientRectangle.Bottom)
				{
					flag2 = true;
				}
			}
		}
		if (point.X < clientRectangle.Left)
		{
			bool flag3 = false;
			while (!flag3)
			{
				controlBounds.X += num;
				if (ClientPath.IsVisible(controlBounds.Location) || point.X > clientRectangle.Left)
				{
					flag3 = true;
				}
			}
		}
		if (point4.X > clientRectangle.Right)
		{
			bool flag4 = false;
			while (!flag4 && controlBounds.X > 0)
			{
				controlBounds.X -= num;
				if (ClientPath.IsVisible(new Point(controlBounds.Right, controlBounds.Bottom)) || point4.X < clientRectangle.Right)
				{
					flag4 = true;
				}
			}
		}
		return controlBounds;
	}

	private void SetCorrectPosition(Control control)
	{
		IDesignerHost iDesignerHost = GetIDesignerHost();
		if (!m_bInitializePerforming && iDesignerHost != null && !iDesignerHost.Loading && control != null && !IsControlHostControl(control))
		{
			m_bPerformingCorrectionsLocation = true;
			Rectangle bounds = control.Bounds;
			Rectangle clientRectangle = GetClientRectangle();
			bounds = ((clientRectangle.Size.Width >= bounds.Size.Width && clientRectangle.Size.Height >= bounds.Size.Height) ? ChangeLocationControl(bounds) : ChangeSizeControl(bounds));
			control.Location = bounds.Location;
			control.Size = bounds.Size;
			m_bPerformingCorrectionsLocation = false;
		}
	}

	internal bool IsControlHostControl(Control control)
	{
		bool result = false;
		if (control != null && Primitives != null)
		{
			foreach (Primitive primitive in Primitives)
			{
				if (primitive is HostPrimitive hostPrimitive && hostPrimitive.HostControl == control)
				{
					result = true;
					break;
				}
			}
		}
		return result;
	}

	private void SetCorrectRadius(Alignment alignment, bool collapsed)
	{
		if (!m_bInitializePerforming && base.IsHandleCreated)
		{
			int maxRadius = GetMaxRadius();
			if (CornerRadius > maxRadius)
			{
				CornerRadius = maxRadius;
			}
			RefreshSizes();
			RefreshPrimitives();
			SetSizeControl(CollapseAlignment, Collapsed);
		}
	}

	internal void SetCorrectBorderGap(Alignment alignment, bool collapsed)
	{
		int minBorderGap = GetMinBorderGap();
		int maxBorderGap = GetMaxBorderGap();
		if (BorderGap > maxBorderGap)
		{
			m_borderGap = maxBorderGap;
		}
		else if (BorderGap < minBorderGap)
		{
			m_borderGap = minBorderGap;
		}
		SetSizeControl(CollapseAlignment, Collapsed);
	}

	private void SetCorrectPrimitivePosition(Primitive primitive)
	{
		IDesignerHost iDesignerHost = GetIDesignerHost();
		if (!m_animator.AnimationOn && primitive != null && (iDesignerHost == null || !iDesignerHost.Loading))
		{
			Point startPosition = GetStartPosition(primitive.Alignment);
			Point endPosition = GetEndPosition(primitive.Alignment);
			int num = 0;
			num = ((primitive.Alignment != Alignment.Top && primitive.Alignment != Alignment.Bottom) ? (endPosition.Y - startPosition.Y - primitive.Size.Height) : (endPosition.X - startPosition.X - primitive.Size.Width));
			if (num > 0 && num < primitive.Position)
			{
				primitive.Position = num;
			}
		}
	}

	private Rectangle GetCorrectSize(Rectangle rect, Alignment alignment, bool collapsed, BoundsSpecified specified)
	{
		Rectangle empty = Rectangle.Empty;
		RefreshSizes();
		Size minSize = m_minSize;
		Size size = Size.Empty;
		if (!collapsed)
		{
			if (rect.Width < minSize.Width)
			{
				size.Width = minSize.Width;
			}
			else
			{
				size.Width = rect.Width;
			}
			if (rect.Height < minSize.Height)
			{
				size.Height = minSize.Height;
			}
			else
			{
				size.Height = rect.Height;
			}
		}
		else if (m_animator != null && !m_animator.AnimationOn && m_bCollapsedPerforming && collapsed && (specified == BoundsSpecified.All || specified == BoundsSpecified.Size))
		{
			if (alignment == Alignment.Top || alignment == Alignment.Bottom)
			{
				rect.Height = base.Size.Height;
				if (base.Size.Width > m_minSize.Width)
				{
					rect.Y = base.Location.Y;
				}
				if (rect.Width < minSize.Width)
				{
					size = new Size(minSize.Width, rect.Height);
				}
				m_expandSize.Width = rect.Width;
			}
			else
			{
				rect.Width = base.Size.Width;
				rect.X = base.Location.X;
				if (rect.Height < minSize.Height)
				{
					size = new Size(rect.Width, minSize.Height);
				}
				m_expandSize.Height = rect.Height;
			}
		}
		return (!(size == Size.Empty)) ? new Rectangle(rect.Location, size) : rect;
	}

	private void SetPositionControl(Alignment alignment, bool collapsed)
	{
		if (collapsed)
		{
			Point location = Point.Empty;
			int collapseSize = CollapseSize;
			if (ExpandLocation == Point.Empty)
			{
				ExpandLocation = base.Location;
			}
			location = alignment switch
			{
				Alignment.Bottom => new Point(ExpandLocation.X, ExpandLocation.Y + ExpandSize.Height - collapseSize), 
				Alignment.Right => new Point(ExpandLocation.X + ExpandSize.Width - collapseSize, ExpandLocation.Y), 
				_ => ExpandLocation, 
			};
			base.Location = location;
		}
		else if (ExpandLocation != Point.Empty)
		{
			base.Location = ExpandLocation;
			ExpandLocation = Point.Empty;
		}
	}

	private void HidePrimitive(Alignment alignment)
	{
		foreach (Primitive primitive in Primitives)
		{
			if (primitive.Alignment != alignment)
			{
				primitive.Visible = false;
			}
		}
	}

	private void ShowPrimitive(Alignment alignment)
	{
		foreach (Primitive primitive in Primitives)
		{
			primitive.Visible = true;
		}
	}

	private void SetSizeControl(Alignment alignment, bool collapsed)
	{
		int collapseSize = CollapseSize;
		if (collapsed)
		{
			m_bCollapsedPerforming = false;
			if (ExpandSize == Size.Empty)
			{
				ExpandSize = base.Size;
			}
			if (alignment == Alignment.Top || alignment == Alignment.Bottom)
			{
				if (m_lastAlignment == Alignment.Left || m_lastAlignment == Alignment.Right)
				{
					Size size = new Size(ExpandSize.Width, collapseSize);
					base.Size = size;
				}
				else
				{
					Size size2 = new Size(base.Size.Width, collapseSize);
					base.Size = size2;
				}
			}
			if (alignment == Alignment.Left || alignment == Alignment.Right)
			{
				if (m_lastAlignment == Alignment.Bottom || m_lastAlignment == Alignment.Top)
				{
					Size size3 = new Size(collapseSize, ExpandSize.Height);
					base.Size = size3;
				}
				else
				{
					Size size4 = new Size(collapseSize, base.Size.Height);
					base.Size = size4;
				}
			}
			m_bCollapsedPerforming = true;
		}
		else if (ExpandSize != Size.Empty)
		{
			base.Size = ExpandSize;
			ExpandSize = Size.Empty;
		}
	}

	private void HideControls()
	{
		foreach (Control control in base.Controls)
		{
			if (!IsControlHostControl(control))
			{
				control.Hide();
			}
		}
	}

	private void ShowControls()
	{
		foreach (Control control in base.Controls)
		{
			control.Show();
		}
	}

	private Rectangle GetAnimationRect(Alignment alignment, bool collapse)
	{
		Rectangle empty = Rectangle.Empty;
		Size size = base.Size;
		Point location = base.Location;
		int animationSpeed = AnimationSpeed;
		switch (alignment)
		{
		case Alignment.Top:
			size = (collapse ? new Size(base.Size.Width, base.Size.Height - animationSpeed) : new Size(base.Size.Width, base.Size.Height + animationSpeed));
			break;
		case Alignment.Bottom:
			location = (collapse ? new Point(base.Location.X, base.Location.Y + animationSpeed) : new Point(base.Location.X, base.Location.Y - animationSpeed));
			size = (collapse ? new Size(base.Size.Width, base.Size.Height - animationSpeed) : new Size(base.Size.Width, base.Size.Height + animationSpeed));
			break;
		case Alignment.Left:
			size = (collapse ? new Size(base.Size.Width - animationSpeed, base.Size.Height) : new Size(base.Size.Width + animationSpeed, base.Size.Height));
			break;
		case Alignment.Right:
			location = (collapse ? new Point(base.Location.X + animationSpeed, base.Location.Y) : new Point(base.Location.X - animationSpeed, base.Location.Y));
			size = (collapse ? new Size(base.Size.Width - animationSpeed, base.Size.Height) : new Size(base.Size.Width + animationSpeed, base.Size.Height));
			break;
		}
		return new Rectangle(location, size);
	}

	private Rectangle GetAnimationRedrawRect(Alignment alignment, bool collapse)
	{
		Rectangle result = Rectangle.Empty;
		int animationSpeed = AnimationSpeed;
		switch (alignment)
		{
		case Alignment.Top:
			result = (collapse ? new Rectangle(base.Location.X, base.Location.Y + base.Size.Height, base.Size.Width, animationSpeed) : new Rectangle(base.ClientRectangle.X, base.ClientRectangle.Bottom - animationSpeed, base.Size.Width, animationSpeed));
			break;
		case Alignment.Bottom:
			result = (collapse ? new Rectangle(base.Location.X, base.Location.Y - animationSpeed, base.Size.Width, animationSpeed) : new Rectangle(base.ClientRectangle.X, base.ClientRectangle.Y, base.Size.Width, animationSpeed));
			break;
		case Alignment.Left:
			result = (collapse ? new Rectangle(base.Location.X + base.Size.Width, base.Location.Y, animationSpeed, base.Size.Height) : new Rectangle(base.ClientRectangle.Right - animationSpeed, base.ClientRectangle.Y, animationSpeed, base.Size.Height));
			break;
		case Alignment.Right:
			result = (collapse ? new Rectangle(base.Location.X - animationSpeed, base.Location.Y, animationSpeed, base.Size.Height) : new Rectangle(base.ClientRectangle.X, base.ClientRectangle.Y, animationSpeed, base.Size.Height));
			break;
		}
		return result;
	}

	private Pen GetDarkPen()
	{
		return (base.BackgroundColor != BrushInfo.Empty) ? new Pen(ControlPaint.Dark(base.BackgroundColor.BackColor, 0f)) : new Pen(ControlPaint.Dark(BackColor, 0f));
	}

	private Pen GetLightPen()
	{
		return (base.BackgroundColor != BrushInfo.Empty) ? new Pen(ControlPaint.Light(base.BackgroundColor.BackColor, 1f)) : new Pen(ControlPaint.Light(BackColor, 1f));
	}

	private void ChangePrimitiveState(bool collapseState)
	{
		if (Primitives == null || Primitives.Count <= 0)
		{
			return;
		}
		foreach (Primitive primitive in Primitives)
		{
			if (primitive is CollapsePrimitive)
			{
				CollapsePrimitive collapsePrimitive = primitive as CollapsePrimitive;
				collapsePrimitive.SetCollapseState(collapseState);
			}
		}
	}

	private void RaiseCollapsedChanged()
	{
		if (this.CollapsedChanged != null)
		{
			this.CollapsedChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseCollapseAlignmentChanged()
	{
		if (this.CollapseAlignmentChanged != null)
		{
			this.CollapseAlignmentChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseCornerRadiusChanged()
	{
		if (this.CornerRadiusChanged != null)
		{
			this.CornerRadiusChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseBorederGapChanged()
	{
		if (this.BorderGapChanged != null)
		{
			this.BorderGapChanged(this, EventArgs.Empty);
		}
	}

	private void RaisePrimitivesChanged()
	{
		if (this.PrimitivesChanged != null)
		{
			this.PrimitivesChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnPrimitivesChanged()
	{
		SetCorrectRadius(CollapseAlignment, Collapsed);
		SetCorrectBorderGap(CollapseAlignment, Collapsed);
		RefreshSizes();
		RefreshPath();
		RefreshPrimitives();
		RaisePrimitivesChanged();
	}

	protected override void OnBackColorChanged(EventArgs e)
	{
		Invalidate();
	}

	protected virtual void OnCornerRadiusChanged()
	{
		if (!m_bInitializePerforming)
		{
			SetCorrectRadius(CollapseAlignment, Collapsed);
			SetCorrectBorderGap(CollapseAlignment, Collapsed);
			RefreshSizes();
			RefreshPath();
			RefreshPrimitives();
			RefreshCorrectPosition();
			Invalidate();
		}
		RaiseCornerRadiusChanged();
	}

	protected virtual void OnBorderGapChanged()
	{
		if (!m_bInitializePerforming)
		{
			SetCorrectBorderGap(CollapseAlignment, Collapsed);
			RefreshSizes();
			RefreshPath();
			RefreshPrimitives();
			RefreshCorrectPosition();
			Invalidate();
		}
		RaiseBorederGapChanged();
	}

	protected virtual void OnCollapseAlignmentChanged()
	{
		if (!m_bInitializePerforming)
		{
			if (Collapsed)
			{
				m_bCollapsedPerforming = false;
			}
			SetSizeControl(CollapseAlignment, Collapsed);
			SetPositionControl(CollapseAlignment, Collapsed);
			RefreshPath();
			RefreshPrimitives();
			RefreshCorrectPosition();
			RefreshSizes();
			Invalidate();
			if (Collapsed)
			{
				m_bCollapsedPerforming = true;
			}
		}
		RaiseCollapseAlignmentChanged();
	}

	protected virtual void OnCollapsedChanged()
	{
		if (!m_bInitializePerforming)
		{
			ChangePrimitiveState(Collapsed);
			if (Animated)
			{
				StartAnimation();
			}
			else
			{
				if (Collapsed)
				{
					HidePrimitive(CollapseAlignment);
					HideControls();
				}
				else
				{
					ShowPrimitive(CollapseAlignment);
					ShowControls();
				}
				SetSizeControl(CollapseAlignment, Collapsed);
				SetPositionControl(CollapseAlignment, Collapsed);
				RefreshSizes();
				RefreshPath();
				RefreshPrimitives();
				RefreshCorrectPosition();
				Invalidate();
			}
		}
		RaiseCollapsedChanged();
	}

	private void Control_LocationChanged(object sender, EventArgs e)
	{
		if (!m_bPerformingCorrectionsLocation && sender is Control control && !CheckPositionControl(control))
		{
			SetCorrectPosition(control);
		}
	}

	private void Control_SizeChanged(object sender, EventArgs e)
	{
		if (sender is Control correctPosition)
		{
			SetCorrectPosition(correctPosition);
		}
	}

	private void Animator_AnimationPositionChanged(object sender, EventArgs e)
	{
		if (m_animator.AnimationPosition > 0)
		{
			Rectangle empty = Rectangle.Empty;
			NativeMethodsHelper.SuspendRedrawWindow(base.Handle);
			Rectangle animationRect = GetAnimationRect(CollapseAlignment, Collapsed);
			base.Location = animationRect.Location;
			base.Size = animationRect.Size;
			empty = GetAnimationRedrawRect(CollapseAlignment, Collapsed);
			RefreshSizes();
			RefreshPath();
			RefreshPrimitives();
			NativeMethodsHelper.ResumeRedrawWindow(base.Handle);
			if (m_bIsRedrawCollapsedControl)
			{
				Invalidate();
				m_bIsRedrawCollapsedControl = false;
			}
			if (Collapsed && base.Parent != null)
			{
				base.Parent.Invalidate(empty);
			}
			else if (!Collapsed)
			{
				Invalidate(empty, invalidateChildren: true);
			}
		}
		else
		{
			m_animator.StopAnimation();
		}
	}

	private void Animator_AnimationDone(object sender, EventArgs e)
	{
		NativeMethodsHelper.SuspendRedrawWindow(base.Handle);
		SetSizeControl(CollapseAlignment, Collapsed);
		SetPositionControl(CollapseAlignment, Collapsed);
		RefreshPath();
		RefreshPrimitives();
		RefreshSizes();
		if (!Collapsed)
		{
			ShowControls();
			ShowPrimitive(CollapseAlignment);
		}
		NativeMethodsHelper.ResumeRedrawWindow(base.Handle);
		Invalidate(invalidateChildren: true);
	}

	private void Primitives_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		Primitive primitive = e.Element as Primitive;
		switch (e.Action)
		{
		case CollectionChangeAction.Add:
		{
			Primitive[] array = e.Element as Primitive[];
			if (primitive != null)
			{
				primitive.OwnerControl = this;
				primitive.SizeChanged += Primitive_Property_Changed;
				primitive.AlignmentChanged += Primitive_Property_Changed;
			}
			else if (array != null)
			{
				Primitive[] array2 = array;
				foreach (Primitive primitive2 in array2)
				{
					primitive2.OwnerControl = this;
					primitive2.SizeChanged += Primitive_Property_Changed;
					primitive2.AlignmentChanged += Primitive_Property_Changed;
				}
			}
			SetCorrectRadius(CollapseAlignment, Collapsed);
			SetCorrectBorderGap(CollapseAlignment, Collapsed);
			RefreshSizes();
			RefreshPath();
			RefreshPrimitives();
			Invalidate();
			break;
		}
		case CollectionChangeAction.Remove:
			if (primitive != null)
			{
				primitive.OwnerControl = null;
			}
			break;
		}
	}

	private void Primitive_Property_Changed(object sender, EventArgs e)
	{
		SetCorrectRadius(CollapseAlignment, Collapsed);
		SetCorrectBorderGap(CollapseAlignment, Collapsed);
		RefreshSizes();
		RefreshPath();
		RefreshPrimitives();
		Invalidate();
	}

	void ISupportInitialize.BeginInit()
	{
		m_bInitializePerforming = true;
	}

	void ISupportInitialize.EndInit()
	{
		m_bInitializePerforming = false;
		SetCorrectRadius(CollapseAlignment, Collapsed);
		SetCorrectBorderGap(CollapseAlignment, Collapsed);
		RefreshSizes();
		RefreshPath();
		RefreshPrimitives();
		RefreshCorrectPosition();
		Invalidate();
	}
}
