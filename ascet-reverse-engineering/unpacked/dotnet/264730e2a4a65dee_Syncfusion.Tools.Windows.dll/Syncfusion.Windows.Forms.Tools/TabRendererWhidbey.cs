using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TabRendererWhidbey : OneNoteStyleRenderer
{
	private const string DEF_RENDERER_NAME = "VS2005Style";

	protected internal const int DEF_SELECTION_LINE_WIDTH = 2;

	private const int DEF_CLOSE_BUTTON_PADDING = 3;

	protected internal static readonly Color DEF_SELECTED_BORDER_COLOR;

	private Color m_borderColor = m_tabPropertyExtender.DefaultBorderColor;

	private static StyleRendererPropertyWhidbey m_tabPropertyExtender;

	public new static string TabStyleName => "VS2005Style";

	public new static StyleRendererPropertyWhidbey TabPanelPropertyExtender => m_tabPropertyExtender;

	public override Color TabBorderColor => DEF_SELECTED_BORDER_COLOR;

	public override int CloseButtonPadding => 3;

	protected override Color BorderColor => m_borderColor;

	protected override bool ShouldDrawHighLightUpper => false;

	static TabRendererWhidbey()
	{
		DEF_SELECTED_BORDER_COLOR = Color.FromArgb(127, 157, 185);
		m_tabPropertyExtender = new StyleRendererPropertyWhidbey();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererWhidbey), TabPanelPropertyExtender);
	}

	public new static void RegisterTabType()
	{
		m_tabPropertyExtender = new StyleRendererPropertyWhidbey();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererWhidbey), TabPanelPropertyExtender);
	}

	public TabRendererWhidbey(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}

	protected override RectangleF CorrectBounds(RectangleF bounds)
	{
		bounds.Height -= 2f;
		return bounds;
	}

	public override SizeF GetPreferredSize(Graphics g)
	{
		SizeF preferredSize = base.GetPreferredSize(g);
		preferredSize.Height += 2f;
		return preferredSize;
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
		m_borderColor = (IsSelectedState(drawItemInfo.State) ? DEF_SELECTED_BORDER_COLOR : m_tabPropertyExtender.DefaultBorderColor);
		if (base.TabAlignment == TabAlignment.Right && IsSelectedState(drawItemInfo.State))
		{
			RectangleF rectangleF = drawItemInfo.Bounds;
			rectangleF.Height -= 1f;
		}
		base.DrawBorders(drawItemInfo);
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
		if (drawItemInfo.Bounds.Width <= 0 || drawItemInfo.Bounds.Height <= 0)
		{
			return;
		}
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF curBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		ApplyTransform(graphics);
		base.SaveGraphicsState(graphics, ref curBounds);
		using (GraphicsPath path = GetBorderPathFromBounds(curBounds))
		{
			Color empty = Color.Empty;
			Color empty2 = Color.Empty;
			if (IsSelectedState(drawItemInfo.State))
			{
				empty = m_tabPropertyExtender.DefaultActiveTabColor(panelRenderer.TabPanelData, base.TabControl);
				empty2 = empty;
			}
			else
			{
				empty = m_tabPropertyExtender.DefaultInactiveTabColor(panelRenderer.TabPanelData, base.TabControl);
				empty2 = ControlPaint.LightLight(empty);
			}
			using Brush brush = new LinearGradientBrush(curBounds, empty2, empty, LinearGradientMode.Vertical);
			graphics.FillPath(brush, path);
		}
		base.RestoreGraphicsState(graphics);
		graphics.ResetTransform();
	}
}
