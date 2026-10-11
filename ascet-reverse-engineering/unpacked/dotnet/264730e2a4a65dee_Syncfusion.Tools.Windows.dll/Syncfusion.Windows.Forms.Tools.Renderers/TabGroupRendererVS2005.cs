using System.Collections;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal class TabGroupRendererVS2005 : TabGroupRendererVS2005Beta, ITabGroupRenderer
{
	private const int DEF_WIDTH_CORRECT = 10;

	protected ArrayList m_itemsWidth = new ArrayList();

	public new static string TabStyleName => "DockingTabsVS2005";

	static TabGroupRendererVS2005()
	{
		TabGroupRendererVS2005Beta.m_tabPropertyExtender = new TabUIVS2005Properties();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabGroupRendererVS2005), TabGroupRendererVS2005Beta.TabPanelPropertyExtender);
	}

	public TabGroupRendererVS2005(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
		itemBounds = new ArrayList();
		m_tabGroupBounds = new ArrayList();
		m_hitBounds = new ArrayList();
		VS2005Colors.UpdateStyleColors();
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		SizeF empty = SizeF.Empty;
		empty.Width = 10f;
		return Size.Empty;
	}

	public override SizeF GetPreferredSize(Graphics g)
	{
		SizeF empty = SizeF.Empty;
		int num = -1;
		TabGroupData tabGroupData = (TabGroupData)TabData;
		SizeF sizeF = Size.Empty;
		m_itemsWidth.Clear();
		foreach (TabGroupItem item in tabGroupData.Items)
		{
			num++;
			tabGroupData.Text = item.Text;
			tabGroupData.ImageIndex = item.ImageIndex;
			sizeF = base.GetItemPreferredSize(g);
			sizeF -= (SizeF)new Size(2, 2);
			empty.Height = sizeF.Height;
			float num2 = sizeF.Width + 5f;
			m_itemsWidth.Add(num2);
			empty.Width += num2;
		}
		empty.Width += 10f;
		empty.Height += 2f;
		return empty;
	}

	protected override RectangleF CorrectBounds(RectangleF bounds)
	{
		bounds.Width -= 10f;
		return bounds;
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
	}

	protected override void DrawInterior(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		SetItemBounds(graphics, drawItemInfo.Bounds);
		m_hitBounds.Clear();
		for (int num = m_tabGroupBounds.Count - 1; num >= 0; num--)
		{
			DrawTabEventArgs e = new DrawTabEventArgs(drawItemInfo);
			e.Bounds = Rectangle.Round(TabUtils.ApplyTransform(graphics, base.TabAlignment, (RectangleF)m_tabGroupBounds[num], apply: false));
			PaintBackground(e);
			PaintBorders(e);
		}
		ApplyTransform(graphics);
		TabGroupData tabGroupData = (TabGroupData)TabData;
		int num2 = -1;
		foreach (RectangleF itemBound in itemBounds)
		{
			tabGroupData.Text = "";
			num2++;
			RectangleF rectTextAndImage = itemBound;
			tabGroupData.ImageIndex = tabGroupData.Items[num2].ImageIndex;
			tabGroupData.Text = tabGroupData.Items[num2].Text;
			rectTextAndImage.X = ((RectangleF)m_tabGroupBounds[num2]).Location.X;
			DrawTextAndImage(graphics, rectTextAndImage, drawItemInfo);
		}
		graphics.ResetTransform();
	}

	protected override void PaintBackground(DrawTabEventArgs drawItemInfo)
	{
	}

	protected override void PaintBorders(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		Pen pen = new Pen(VS2005Colors.BorderColor);
		RectangleF curBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		ApplyTransform(graphics);
		CalculateHitBound(curBounds);
		SaveGraphicsState(graphics, ref curBounds);
		SmoothingMode smoothingMode = graphics.SmoothingMode;
		graphics.SmoothingMode = SmoothingMode.None;
		Rectangle rectangle = Rectangle.Round(curBounds);
		Point pt = new Point(rectangle.Left, rectangle.Bottom);
		Point point = new Point(rectangle.Left, rectangle.Top + 2);
		Point point2 = new Point(rectangle.Left + 2, rectangle.Top);
		Point point3 = new Point(rectangle.Right - 2, rectangle.Top);
		Point point4 = new Point(rectangle.Right, rectangle.Top + 2);
		Point pt2 = new Point(rectangle.Right, rectangle.Bottom);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(pt, point);
		graphicsPath.AddLine(point, point2);
		graphicsPath.AddLine(point2, point3);
		graphicsPath.AddLine(point3, point4);
		graphicsPath.AddLine(point4, pt2);
		graphics.DrawPath(pen, graphicsPath);
		graphics.SmoothingMode = smoothingMode;
		RestoreGraphicsState(graphics);
		graphics.ResetTransform();
	}

	public override bool HitTest(PointF mousePosition)
	{
		RectangleF currentBounds = GetCurrentBounds();
		if (base.NeedRotateTextWhenVertical && base.TabControl != null)
		{
			Control control = base.TabControl.GetControl();
			if (control != null)
			{
				using Graphics graphics = control.CreateGraphics();
				mousePosition = TabUtils.ApplyTransform(rect: new RectangleF(mousePosition, SizeF.Empty), g: graphics, align: base.TabAlignment, apply: false).Location;
				GraphicsState gstate = graphics.Save();
				currentBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, currentBounds, apply: false);
				graphics.Restore(gstate);
				graphics.ResetTransform();
			}
		}
		bool result = false;
		foreach (RectangleF tabGroupBound in m_tabGroupBounds)
		{
			if (tabGroupBound.Contains(mousePosition))
			{
				result = true;
				break;
			}
		}
		return result;
	}

	protected override void SetItemBounds(Graphics g, RectangleF tabBounds)
	{
		TabGroupData tabGroupData = (TabGroupData)TabData;
		if (!boundsChanged && itemBounds.Count == tabGroupData.Items.Count)
		{
			return;
		}
		boundsChanged = false;
		if (tabGroupData.Items.Count == 0)
		{
			return;
		}
		tabBounds = TabUtils.ApplyTransform(g, base.TabAlignment, tabBounds, apply: true);
		itemBounds.Clear();
		m_tabGroupBounds.Clear();
		_ = base.TabControl;
		float num = tabBounds.Left + 1f;
		for (int i = 0; i < tabGroupData.Items.Count; i++)
		{
			TabGroupItem tabGroupItem = tabGroupData.Items[i];
			tabGroupData.Text = "";
			tabGroupData.Text = tabGroupItem.Text;
			SizeF sizeF = new SizeF
			{
				Height = tabBounds.Height,
				Width = (float)m_itemsWidth[i]
			};
			tabGroupData.ImageIndex = tabGroupItem.ImageIndex;
			tabGroupData.Text = tabGroupItem.Text;
			sizeF.Height -= 2f;
			itemBounds.Add(new RectangleF(new PointF(num, tabBounds.Top + 1f), new SizeF(sizeF.Width, sizeF.Height)));
			num += sizeF.Width;
		}
		float num2 = tabBounds.Right - 1f - num;
		if (num2 > 0f)
		{
			num2 /= (float)itemBounds.Count;
			for (int j = 0; j < itemBounds.Count; j++)
			{
				RectangleF rectangleF = (RectangleF)itemBounds[j];
				rectangleF.Width += num2;
				itemBounds[j] = rectangleF;
			}
		}
		foreach (RectangleF itemBound in itemBounds)
		{
			m_tabGroupBounds.Add(new RectangleF(itemBound.X, tabBounds.Y, itemBound.Width, tabBounds.Height));
		}
	}

	protected string GetAutoHideCaption(string caption)
	{
		if (parent != null && parent is AHTabControl { DockingManager: { FullCaptionsInAutoHideMode: not false } })
		{
			return caption;
		}
		return caption.Substring(0, (caption.Length < 3) ? caption.Length : 3);
	}
}
