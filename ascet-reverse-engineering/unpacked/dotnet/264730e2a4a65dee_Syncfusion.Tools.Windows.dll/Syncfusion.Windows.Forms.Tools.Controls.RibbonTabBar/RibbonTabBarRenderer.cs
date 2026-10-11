using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Controls.RibbonTabBar;

public class RibbonTabBarRenderer : Office12ToolStripRenderer
{
	private static Blend m_backgroundBlend;

	static RibbonTabBarRenderer()
	{
		m_backgroundBlend = new Blend();
		m_backgroundBlend.Positions = new float[3] { 0f, 0.5f, 1f };
		m_backgroundBlend.Factors = new float[3] { 0f, 1f, 0f };
	}

	protected override bool HasCaption(ToolStrip toolStrip)
	{
		return false;
	}

	protected override void OnRenderToolStripBackground(ToolStripRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintToolStripBackground(e))
		{
			base.OnRenderToolStripBackground(e);
		}
	}

	private bool PaintToolStripBackground(ToolStripRenderEventArgs e)
	{
		Color menuStripGradientBegin = base.ColorTable.MenuStripGradientBegin;
		Color menuStripGradientEnd = base.ColorTable.MenuStripGradientEnd;
		Size clientSize = e.ToolStrip.Parent.ClientSize;
		if (clientSize.Width > 0 && clientSize.Height > 0)
		{
			Rectangle rect = new Rectangle(Point.Empty, clientSize);
			using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, menuStripGradientBegin, menuStripGradientEnd, LinearGradientMode.Horizontal);
			linearGradientBrush.TranslateTransform(clientSize.Width - e.ToolStrip.Location.X, clientSize.Height - e.ToolStrip.Location.Y, MatrixOrder.Append);
			linearGradientBrush.Blend = m_backgroundBlend;
			e.Graphics.FillRectangle(linearGradientBrush, e.ToolStrip.ClientRectangle);
		}
		return true;
	}
}
