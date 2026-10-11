using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TabRendererDockingWhidbey : TabRenderer2D
{
	private const int DEF_CORNER_RADIUS = 2;

	private const int DEF_OVERLAP_HEIGHT = 2;

	private const string DEF_RENDERER_NAME = "VS2005DockingStyle";

	private static readonly Color DEF_BORDER_COLOR;

	private static StyleRendererPropertyDockingWhidbey m_tabPropertyExtender;

	private RectangleF m_panelBounds = RectangleF.Empty;

	public new static string TabStyleName => "VS2005DockingStyle";

	public new static StyleRendererPropertyDockingWhidbey TabPanelPropertyExtender => m_tabPropertyExtender;

	public override Color TabBorderColor => DEF_BORDER_COLOR;

	public override RectangleF Bounds
	{
		get
		{
			return base.Bounds;
		}
		set
		{
			base.Bounds = value;
		}
	}

	static TabRendererDockingWhidbey()
	{
		DEF_BORDER_COLOR = Color.FromKnownColor(KnownColor.ControlDark);
		m_tabPropertyExtender = new StyleRendererPropertyDockingWhidbey();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererDockingWhidbey), TabPanelPropertyExtender);
	}

	public new static void RegisterTabType()
	{
		m_tabPropertyExtender = new StyleRendererPropertyDockingWhidbey();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererDockingWhidbey), TabPanelPropertyExtender);
	}

	public TabRendererDockingWhidbey(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}

	public override SizeF GetPreferredSize(Graphics g)
	{
		SizeF preferredSize = base.GetPreferredSize(g);
		preferredSize.Height += 2f;
		return preferredSize;
	}

	protected override void DrawFocusRect(Graphics g, RectangleF focusRect, Color fore, Color back)
	{
	}

	protected override void DrawInterior(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rectTextAndImage = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.BoundsInterior, apply: true);
		rectTextAndImage.Offset(0f, -1f);
		RectangleF closeButtonBounds = GetCloseButtonBounds(drawItemInfo);
		ApplyTransform(graphics);
		if (drawItemInfo.TextBrush == null)
		{
			if ((drawItemInfo.State & DrawItemState.Selected) <= DrawItemState.None)
			{
				drawItemInfo.TextBrush = new SolidBrush(Color.FromArgb(192, drawItemInfo.ForeColor));
			}
			else
			{
				drawItemInfo.TextBrush = new SolidBrush(drawItemInfo.ForeColor);
			}
		}
		DrawTextAndImage(graphics, rectTextAndImage, drawItemInfo);
		if (base.ShowCloseButton)
		{
			DrawCloseButton(graphics, closeButtonBounds);
		}
		if ((drawItemInfo.State & DrawItemState.Focus) > DrawItemState.None)
		{
			DrawFocusRect(graphics, RectangleF.Inflate(Bounds, -1f, -1f), drawItemInfo.ForeColor, drawItemInfo.BackColor);
		}
		graphics.ResetTransform();
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rectangleF = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		m_panelBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, panelRenderer.Bounds, apply: true);
		ApplyTransform(graphics);
		float num = 0f;
		bool isMirrored = panelRenderer.IsMirrored;
		using (Pen pen = new Pen(DEF_BORDER_COLOR))
		{
			if ((drawItemInfo.State & DrawItemState.Selected) > DrawItemState.None)
			{
				if (m_panelBounds.Y + m_panelBounds.Height - rectangleF.Y - rectangleF.Height > 0f)
				{
					using (GraphicsPath path = GetTabBorderPath(rectangleF))
					{
						graphics.DrawPath(pen, path);
					}
					using GraphicsPath path2 = GetLowerTabBorderPath();
					graphics.DrawPath(pen, path2);
				}
				else
				{
					using GraphicsPath path3 = GetBorderPathFromBounds(rectangleF);
					graphics.DrawPath(pen, path3);
				}
			}
			else
			{
				num = (isMirrored ? rectangleF.Left : (rectangleF.Right - 1f));
				graphics.DrawLine(pen, num, rectangleF.Top + 2f + 2f, num, rectangleF.Bottom - 5f);
			}
		}
		graphics.ResetTransform();
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rectangleF = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		m_panelBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, panelRenderer.Bounds, apply: true);
		ApplyTransform(graphics);
		RectangleF rectangleF2 = rectangleF;
		using (Brush brush = GetBackgroundBrush(drawItemInfo.State))
		{
			using (GraphicsPath path = GetTabBorderPath(rectangleF2))
			{
				drawItemInfo.Graphics.FillPath(brush, path);
			}
			using GraphicsPath path2 = GetLowerTabBorderPath();
			drawItemInfo.Graphics.FillPath(brush, path2);
		}
		graphics.ResetTransform();
	}

	protected virtual GraphicsPath GetBorderPathFromBounds(RectangleF bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		PointF[] array = null;
		array = new PointF[2]
		{
			new PointF(m_panelBounds.Left - 3f, m_panelBounds.Bottom),
			new PointF(m_panelBounds.Left - 3f, m_panelBounds.Bottom - 3f)
		};
		graphicsPath.AddLines(array);
		array = new PointF[3]
		{
			new PointF(bounds.Left, bounds.Bottom - 3f),
			new PointF(bounds.Left, bounds.Top + 2f),
			new PointF(bounds.Left + 2f, bounds.Top)
		};
		graphicsPath.AddLines(array);
		array = new PointF[3]
		{
			new PointF(bounds.Right - 2f, bounds.Top),
			new PointF(bounds.Right, bounds.Top + 2f),
			new PointF(bounds.Right, bounds.Bottom - 3f)
		};
		graphicsPath.AddLines(array);
		array = new PointF[2]
		{
			new PointF(m_panelBounds.Right, m_panelBounds.Bottom - 3f),
			new PointF(m_panelBounds.Right, m_panelBounds.Bottom)
		};
		graphicsPath.AddLines(array);
		graphicsPath.CloseFigure();
		return graphicsPath;
	}

	protected virtual GraphicsPath GetTabBorderPath(RectangleF bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		PointF[] array = null;
		array = new PointF[3]
		{
			new PointF(bounds.Left, bounds.Bottom),
			new PointF(bounds.Left, bounds.Top + 2f),
			new PointF(bounds.Left + 2f, bounds.Top)
		};
		graphicsPath.AddLines(array);
		array = new PointF[3]
		{
			new PointF(bounds.Right - 2f, bounds.Top),
			new PointF(bounds.Right, bounds.Top + 2f),
			new PointF(bounds.Right, bounds.Bottom)
		};
		graphicsPath.AddLines(array);
		return graphicsPath;
	}

	protected virtual GraphicsPath GetLowerTabBorderPath()
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		PointF[] array = null;
		array = new PointF[2]
		{
			new PointF(m_panelBounds.Left - 3f, m_panelBounds.Bottom),
			new PointF(m_panelBounds.Left - 3f, m_panelBounds.Bottom - 3f)
		};
		graphicsPath.AddLines(array);
		array = new PointF[2]
		{
			new PointF(m_panelBounds.Right, m_panelBounds.Bottom - 3f),
			new PointF(m_panelBounds.Right, m_panelBounds.Bottom)
		};
		graphicsPath.AddLines(array);
		graphicsPath.CloseFigure();
		return graphicsPath;
	}

	protected virtual Brush GetBackgroundBrush(DrawItemState state)
	{
		SolidBrush solidBrush = null;
		if ((state & DrawItemState.Selected) == DrawItemState.Selected)
		{
			return new SolidBrush(Color.White);
		}
		if (XPThemes.IsSilverThemeOn)
		{
			return new SolidBrush(VS2005Colors.PanelColor);
		}
		return new SolidBrush(SystemColors.ControlLight);
	}
}
