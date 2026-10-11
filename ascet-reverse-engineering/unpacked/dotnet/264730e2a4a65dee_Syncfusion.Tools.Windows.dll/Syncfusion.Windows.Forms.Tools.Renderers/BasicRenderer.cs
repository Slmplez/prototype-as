using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Tools.Enums;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class BasicRenderer : Renderer
{
	protected BasicRendererInfo m_rendererInfo = new BasicRendererInfo();

	protected BrushInfo m_defaultExpandFill;

	protected Color m_defaultExpandLine;

	protected BrushInfo m_defaultGripDark;

	protected BrushInfo m_defaultGripLight;

	protected BrushInfo m_defaultBackgroundColor;

	protected BrushInfo m_defaultHotExpandFill;

	protected Color m_defaultHotExpandLine;

	protected BrushInfo m_defaultHotGripDark;

	protected BrushInfo m_defaultHotGripLight;

	protected BrushInfo m_defaultHotBackgroundColor;

	private bool m_bUpdate = true;

	protected bool m_bUseOrientation;

	protected int m_nGripPadding = 4;

	public BrushInfo DefaultExpandFill => m_defaultExpandFill;

	public Color DefaultExpandLine => m_defaultExpandLine;

	public BrushInfo DefaultGripDark => m_defaultGripDark;

	public BrushInfo DefaultGripLight => m_defaultGripLight;

	public BrushInfo DefaultBackgroundColor => m_defaultBackgroundColor;

	public BrushInfo DefaultHotExpandFill => m_defaultHotExpandFill;

	public Color DefaultHotExpandLine => m_defaultHotExpandLine;

	public BrushInfo DefaultHotGripDark => m_defaultHotGripDark;

	public BrushInfo DefaultHotGripLight => m_defaultHotGripLight;

	public BrushInfo DefaultHotBackgroundColor => m_defaultHotBackgroundColor;

	public BasicRendererInfo RendererInfo => m_rendererInfo;

	public override IRendererInfo GetAppropriateThemeSettings(SplitContainerAdv container, bool bInit)
	{
		m_bUpdate = false;
		m_rendererInfo.SetSplitContainerByInfo(container, this, m_bUseOrientation, bInit);
		m_bUpdate = true;
		return base.GetAppropriateThemeSettings(container, bInit);
	}

	public override void Draw(PaintEventArgs e, IRendererInfo ri, Rectangle bounds)
	{
		base.Draw(e, ri, bounds);
	}

	public override void DrawBackground(PaintEventArgs e, IRendererInfo ri, Rectangle bounds)
	{
		if (bounds.IsEmpty)
		{
			return;
		}
		IncreaseBounds(ref bounds);
		if (!(ri is BasicRendererInfo basicRendererInfo))
		{
			return;
		}
		if (!basicRendererInfo.ThemesEnabled || !XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !XPThemes.IsAppThemed || basicRendererInfo.IgnoreThemeBackground)
		{
			if (basicRendererInfo.BackgroundColor != BrushInfo.Empty)
			{
				BrushPaint.FillRectangle(e.Graphics, bounds, basicRendererInfo.BackgroundColor);
			}
			return;
		}
		if (basicRendererInfo.Enabled)
		{
			if (basicRendererInfo.ThemedControl != null)
			{
				basicRendererInfo.ThemedControl.DrawThemeBackground(e.Graphics, 1, 1, new Rectangle(-2, -2, bounds.Width + 4, bounds.Height + 4));
			}
			return;
		}
		using Brush brush = new SolidBrush(SystemColors.Control);
		e.Graphics.FillRectangle(brush, bounds);
	}

	public override void DrawHotBackground(PaintEventArgs e, IRendererInfo ri, Rectangle bounds)
	{
		if (bounds.IsEmpty || !(ri is BasicRendererInfo basicRendererInfo))
		{
			return;
		}
		if (!basicRendererInfo.ThemesEnabled || !XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !XPThemes.IsAppThemed || basicRendererInfo.IgnoreThemeBackground)
		{
			if (basicRendererInfo.HotBackgroundColor != BrushInfo.Empty)
			{
				BrushPaint.FillRectangle(e.Graphics, bounds, basicRendererInfo.HotBackgroundColor);
			}
		}
		else if (basicRendererInfo.Enabled)
		{
			if (basicRendererInfo.ThemedControl != null)
			{
				basicRendererInfo.ThemedControl.DrawThemeBackground(e.Graphics, 1, 1, new Rectangle(-2, -2, bounds.Width + 4, bounds.Height + 4));
			}
		}
		else
		{
			Brush brush = new SolidBrush(SystemColors.Control);
			e.Graphics.FillRectangle(brush, bounds);
			brush.Dispose();
		}
	}

	public override void DrawThumbnail(PaintEventArgs e, IRendererInfo ri, Rectangle bounds)
	{
	}

	public override void DrawHotThumbnail(PaintEventArgs e, IRendererInfo ri, Rectangle bounds)
	{
	}

	public override void DrawForeground(PaintEventArgs e, IRendererInfo ri, Rectangle bounds)
	{
	}

	public override void DrawHotForeground(PaintEventArgs e, IRendererInfo ri, Rectangle bounds)
	{
	}

	public override object GetDefaultValue(RendererProperty property)
	{
		object result = null;
		switch (property)
		{
		case RendererProperty.BackgroundColor:
			result = m_defaultBackgroundColor;
			break;
		case RendererProperty.ExpandLine:
			result = m_defaultExpandLine;
			break;
		case RendererProperty.ExpandFill:
			result = m_defaultExpandFill;
			break;
		case RendererProperty.GripDark:
			result = m_defaultGripDark;
			break;
		case RendererProperty.GripLight:
			result = m_defaultGripLight;
			break;
		case RendererProperty.HotBackgroundColor:
			result = m_defaultHotBackgroundColor;
			break;
		case RendererProperty.HotExpandLine:
			result = m_defaultHotExpandLine;
			break;
		case RendererProperty.HotExpandFill:
			result = m_defaultHotExpandFill;
			break;
		case RendererProperty.HotGripDark:
			result = m_defaultHotGripDark;
			break;
		case RendererProperty.HotGripLight:
			result = m_defaultHotGripLight;
			break;
		}
		return result;
	}

	public override IRendererInfo UpdateRendererInfo(SplitContainerAdv instance, IRendererInfo iri)
	{
		BasicRendererInfo basicRendererInfo = iri as BasicRendererInfo;
		if (basicRendererInfo == null)
		{
			basicRendererInfo = new BasicRendererInfo();
		}
		if (m_rendererInfo != null && m_bUpdate)
		{
			basicRendererInfo.ConvertSpliContainerToRendererInfo(instance, m_bUseOrientation);
			m_rendererInfo.ConvertSpliContainerToRendererInfo(instance, m_bUseOrientation);
		}
		return basicRendererInfo;
	}

	protected BasicRenderer()
	{
		m_defaultBackgroundColor = BrushInfo.Empty;
		m_defaultExpandFill = BrushInfo.Empty;
		m_defaultExpandLine = Color.Empty;
		m_defaultGripDark = BrushInfo.Empty;
		m_defaultHotBackgroundColor = BrushInfo.Empty;
		m_defaultHotExpandFill = BrushInfo.Empty;
		m_defaultGripLight = BrushInfo.Empty;
		m_defaultHotGripDark = BrushInfo.Empty;
		m_defaultHotGripLight = BrushInfo.Empty;
		m_defaultHotExpandLine = Color.Empty;
		m_rendererInfo.OrientationChanged += M_RendererInfo_OrientationChanged;
		SetDefaultSettings();
	}

	protected void IncreaseBounds(ref Rectangle bounds)
	{
		bounds.X--;
		bounds.Y--;
		bounds.Width++;
		bounds.Height++;
	}

	protected void DrawArrows(PaintEventArgs e, BrushInfo brBackColorBrush, Pen penExpandLine, Rectangle rectThumbnail, RendererInfo bri)
	{
		if (!(bri is BasicRendererInfo { PanelToCollapse: var panelToCollapse, CollapsedPanel: var collapsedPanel } basicRendererInfo))
		{
			return;
		}
		Point[] array = new Point[3];
		Point[] array2 = new Point[3];
		if (basicRendererInfo.Orientation == Orientation.Horizontal)
		{
			if (panelToCollapse == CollapsedPanel.None)
			{
				ref Point reference = ref array[0];
				reference = new Point(rectThumbnail.Left, rectThumbnail.Top);
				ref Point reference2 = ref array[1];
				reference2 = new Point(rectThumbnail.Right, rectThumbnail.Top);
				ref Point reference3 = ref array[2];
				reference3 = new Point(rectThumbnail.Left + rectThumbnail.Width / 2, rectThumbnail.Top + 6);
				ref Point reference4 = ref array2[0];
				reference4 = new Point(rectThumbnail.Left + rectThumbnail.Width / 2, rectThumbnail.Bottom - 6);
				ref Point reference5 = ref array2[1];
				reference5 = new Point(rectThumbnail.Right, rectThumbnail.Bottom);
				ref Point reference6 = ref array2[2];
				reference6 = new Point(rectThumbnail.Left, rectThumbnail.Bottom);
			}
			else if (panelToCollapse != collapsedPanel)
			{
				switch (panelToCollapse)
				{
				case CollapsedPanel.Panel1:
					array = MakeLeftArrow(rectThumbnail, array, isTop: true);
					array2 = MakeLeftArrow(rectThumbnail, array2, isTop: false);
					break;
				case CollapsedPanel.Panel2:
					array = MakeRightArrow(rectThumbnail, array, isTop: true);
					array2 = MakeRightArrow(rectThumbnail, array2, isTop: false);
					break;
				}
			}
			else
			{
				switch (panelToCollapse)
				{
				case CollapsedPanel.Panel1:
					array = MakeRightArrow(rectThumbnail, array, isTop: true);
					array2 = MakeRightArrow(rectThumbnail, array2, isTop: false);
					break;
				case CollapsedPanel.Panel2:
					array = MakeLeftArrow(rectThumbnail, array, isTop: true);
					array2 = MakeLeftArrow(rectThumbnail, array2, isTop: false);
					break;
				}
			}
		}
		else if (panelToCollapse == CollapsedPanel.None)
		{
			ref Point reference7 = ref array[0];
			reference7 = new Point(rectThumbnail.Left, rectThumbnail.Top);
			ref Point reference8 = ref array[1];
			reference8 = new Point(rectThumbnail.Left, rectThumbnail.Bottom);
			ref Point reference9 = ref array[2];
			reference9 = new Point(rectThumbnail.Left + 6, rectThumbnail.Top + rectThumbnail.Height / 2);
			ref Point reference10 = ref array2[0];
			reference10 = new Point(rectThumbnail.Right - 6, rectThumbnail.Top + rectThumbnail.Height / 2);
			ref Point reference11 = ref array2[1];
			reference11 = new Point(rectThumbnail.Right, rectThumbnail.Bottom);
			ref Point reference12 = ref array2[2];
			reference12 = new Point(rectThumbnail.Right, rectThumbnail.Top);
		}
		else if (panelToCollapse != collapsedPanel)
		{
			switch (panelToCollapse)
			{
			case CollapsedPanel.Panel1:
				array = MakeTopArrow(rectThumbnail, array, isTop: true);
				array2 = MakeTopArrow(rectThumbnail, array2, isTop: false);
				break;
			case CollapsedPanel.Panel2:
				array = MakeBottomArrow(rectThumbnail, array, isTop: true);
				array2 = MakeBottomArrow(rectThumbnail, array2, isTop: false);
				break;
			}
		}
		else
		{
			switch (panelToCollapse)
			{
			case CollapsedPanel.Panel1:
				array = MakeBottomArrow(rectThumbnail, array, isTop: true);
				array2 = MakeBottomArrow(rectThumbnail, array2, isTop: false);
				break;
			case CollapsedPanel.Panel2:
				array = MakeTopArrow(rectThumbnail, array, isTop: true);
				array2 = MakeTopArrow(rectThumbnail, array2, isTop: false);
				break;
			}
		}
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddPolygon(array);
		BrushPaint.FillPath(e.Graphics, graphicsPath, brBackColorBrush);
		e.Graphics.DrawPolygon(penExpandLine, array);
		graphicsPath.ClearMarkers();
		graphicsPath.AddPolygon(array2);
		BrushPaint.FillPath(e.Graphics, graphicsPath, brBackColorBrush);
		e.Graphics.DrawPolygon(penExpandLine, array2);
		graphicsPath.Dispose();
	}

	protected Point[] MakeRightArrow(Rectangle rectThumbnail, Point[] arrTriangle, bool isTop)
	{
		if (isTop)
		{
			ref Point reference = ref arrTriangle[0];
			reference = new Point(rectThumbnail.Left, rectThumbnail.Top);
			ref Point reference2 = ref arrTriangle[1];
			reference2 = new Point(rectThumbnail.Right, rectThumbnail.Top + 3);
			ref Point reference3 = ref arrTriangle[2];
			reference3 = new Point(rectThumbnail.Left, rectThumbnail.Top + 6);
		}
		else
		{
			ref Point reference4 = ref arrTriangle[0];
			reference4 = new Point(rectThumbnail.Left, rectThumbnail.Bottom - 6);
			ref Point reference5 = ref arrTriangle[1];
			reference5 = new Point(rectThumbnail.Right, rectThumbnail.Bottom - 3);
			ref Point reference6 = ref arrTriangle[2];
			reference6 = new Point(rectThumbnail.Left, rectThumbnail.Bottom);
		}
		return arrTriangle;
	}

	protected Point[] MakeLeftArrow(Rectangle rectThumbnail, Point[] arrTriangle, bool isTop)
	{
		if (isTop)
		{
			ref Point reference = ref arrTriangle[0];
			reference = new Point(rectThumbnail.Right, rectThumbnail.Top);
			ref Point reference2 = ref arrTriangle[1];
			reference2 = new Point(rectThumbnail.Left, rectThumbnail.Top + 3);
			ref Point reference3 = ref arrTriangle[2];
			reference3 = new Point(rectThumbnail.Right, rectThumbnail.Top + 6);
		}
		else
		{
			ref Point reference4 = ref arrTriangle[0];
			reference4 = new Point(rectThumbnail.Right, rectThumbnail.Bottom - 6);
			ref Point reference5 = ref arrTriangle[1];
			reference5 = new Point(rectThumbnail.Left, rectThumbnail.Bottom - 3);
			ref Point reference6 = ref arrTriangle[2];
			reference6 = new Point(rectThumbnail.Right, rectThumbnail.Bottom);
		}
		return arrTriangle;
	}

	protected Point[] MakeTopArrow(Rectangle rectThumbnail, Point[] arrTriangle, bool isTop)
	{
		if (isTop)
		{
			ref Point reference = ref arrTriangle[0];
			reference = new Point(rectThumbnail.X, rectThumbnail.Bottom);
			ref Point reference2 = ref arrTriangle[1];
			reference2 = new Point(rectThumbnail.X + 3, rectThumbnail.Y);
			ref Point reference3 = ref arrTriangle[2];
			reference3 = new Point(rectThumbnail.X + 7, rectThumbnail.Bottom);
		}
		else
		{
			ref Point reference4 = ref arrTriangle[0];
			reference4 = new Point(rectThumbnail.Right - 7, rectThumbnail.Bottom);
			ref Point reference5 = ref arrTriangle[1];
			reference5 = new Point(rectThumbnail.Right - 3, rectThumbnail.Y);
			ref Point reference6 = ref arrTriangle[2];
			reference6 = new Point(rectThumbnail.Right, rectThumbnail.Bottom);
		}
		return arrTriangle;
	}

	protected Point[] MakeBottomArrow(Rectangle rectThumbnail, Point[] arrTriangle, bool isTop)
	{
		if (isTop)
		{
			ref Point reference = ref arrTriangle[0];
			reference = new Point(rectThumbnail.X, rectThumbnail.Top);
			ref Point reference2 = ref arrTriangle[1];
			reference2 = new Point(rectThumbnail.X + 3, rectThumbnail.Bottom);
			ref Point reference3 = ref arrTriangle[2];
			reference3 = new Point(rectThumbnail.X + 7, rectThumbnail.Top);
		}
		else
		{
			ref Point reference4 = ref arrTriangle[0];
			reference4 = new Point(rectThumbnail.Right - 7, rectThumbnail.Top);
			ref Point reference5 = ref arrTriangle[1];
			reference5 = new Point(rectThumbnail.Right - 3, rectThumbnail.Bottom);
			ref Point reference6 = ref arrTriangle[2];
			reference6 = new Point(rectThumbnail.Right, rectThumbnail.Top);
		}
		return arrTriangle;
	}

	public void SetDefaultSettings()
	{
		m_rendererInfo.ExpandFill = m_defaultExpandFill;
		m_rendererInfo.HotExpandFill = m_defaultHotExpandFill;
		m_rendererInfo.ExpandLine = m_defaultExpandLine;
		m_rendererInfo.HotExpandLine = m_defaultHotExpandLine;
		m_rendererInfo.GripDark = m_defaultGripDark;
		m_rendererInfo.HotGripDark = m_defaultHotGripDark;
		m_rendererInfo.GripLight = m_defaultGripLight;
		m_rendererInfo.HotGripLight = m_defaultHotGripLight;
		m_rendererInfo.BackgroundColor = m_defaultBackgroundColor;
		m_rendererInfo.HotBackgroundColor = m_defaultHotBackgroundColor;
	}

	public static BasicRenderer GetInstance()
	{
		return new BasicRenderer();
	}

	private void M_RendererInfo_OrientationChanged(object sender, EventArgs e)
	{
		if (m_bUseOrientation)
		{
			m_defaultBackgroundColor = new BrushInfo((GradientStyle)Enum.Parse(typeof(GradientStyle), m_rendererInfo.Orientation.ToString()), m_defaultBackgroundColor.ForeColor, m_defaultBackgroundColor.BackColor);
			m_defaultHotBackgroundColor = new BrushInfo((GradientStyle)Enum.Parse(typeof(GradientStyle), m_rendererInfo.Orientation.ToString()), m_defaultHotBackgroundColor.ForeColor, m_defaultHotBackgroundColor.BackColor);
		}
	}
}
