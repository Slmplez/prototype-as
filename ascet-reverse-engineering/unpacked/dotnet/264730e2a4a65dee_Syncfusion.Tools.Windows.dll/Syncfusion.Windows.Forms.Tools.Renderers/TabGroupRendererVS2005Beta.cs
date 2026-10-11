using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class TabGroupRendererVS2005Beta : OneNoteStyleRenderer, ITabGroupRenderer
{
	private const int DEF_ITEM_OFFSET = -2;

	private const int DEF_WIDTH_CORRECT = 10;

	protected static TabUIVS2005Properties m_tabPropertyExtender;

	protected ArrayList itemBounds;

	protected bool boundsChanged;

	protected ArrayList m_tabGroupBounds;

	protected ArrayList m_hitBounds;

	private float m_hitOffset;

	protected GraphicsPath m_innerPath;

	private int DEF_CURVE_OFFSET = 13;

	public new static string TabStyleName => "DockingTabsVS2005Beta";

	public new static TabUIVS2005Properties TabPanelPropertyExtender => m_tabPropertyExtender;

	protected override Color BorderColor => VS2005Colors.BorderColor;

	public override RectangleF Bounds
	{
		get
		{
			return base.Bounds;
		}
		set
		{
			if (base.Bounds != value)
			{
				base.Bounds = value;
				boundsChanged = true;
			}
		}
	}

	public override ITabData TabData
	{
		get
		{
			return base.TabData;
		}
		set
		{
			base.TabData = value;
			((TabGroupData)TabData).Items.CollectionChanged += ItemsCollection_Changed;
			((TabGroupData)TabData).SelectedIndexChanged += ItemBounds_Changed;
		}
	}

	static TabGroupRendererVS2005Beta()
	{
		m_tabPropertyExtender = new TabUIVS2005Properties();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabGroupRendererVS2005Beta), TabPanelPropertyExtender);
	}

	public TabGroupRendererVS2005Beta(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
		itemBounds = new ArrayList();
		m_tabGroupBounds = new ArrayList();
		m_hitBounds = new ArrayList();
		VS2005Colors.UpdateStyleColors();
	}

	public RectangleF GetGroupItemBounds(int i)
	{
		if (i >= itemBounds.Count)
		{
			return RectangleF.Empty;
		}
		int index = m_hitBounds.Count - 1 - i;
		return TabUtils.ApplyTransform(base.TabControl.GetGraphics(), base.TabAlignment, (RectangleF)m_hitBounds[index], apply: false);
	}

	protected override GraphicsPath GetBorderPathFromBounds(RectangleF bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		float height = bounds.Height;
		float num = height * 0.7f;
		float num2 = height / 4f;
		float num3 = height / 7f;
		num -= 4f + num2;
		PointF[] array = new PointF[3]
		{
			new PointF(bounds.Left, bounds.Bottom - 1f),
			new PointF(bounds.Left + (4f + num), bounds.Top + num3),
			new PointF(bounds.Left + (7f + num + num2), bounds.Top - 1f)
		};
		graphicsPath.AddCurve(array, 0.5f);
		PointF[] array2 = new PointF[3]
		{
			new PointF(bounds.Right - (7f + num + num2), bounds.Top - 1f),
			new PointF(bounds.Right - (4f + num), bounds.Top + num3),
			new PointF(bounds.Right, bounds.Bottom - 1f)
		};
		graphicsPath.AddLine(array[2], array2[0]);
		graphicsPath.AddCurve(array2, 0.5f);
		graphicsPath.AddLine(array2[2], array[0]);
		m_innerPath = new GraphicsPath();
		m_innerPath.AddLine(array[2].X - 1f, array[2].Y + 1f, array2[0].X, array2[0].Y + 1f);
		array2[0].Y += 1f;
		array2[1].Y += 1f;
		array2[2].X -= 1f;
		array2[2].Y += 1f;
		m_innerPath.AddCurve(array2, 0.5f);
		return graphicsPath;
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
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
			GraphicsPath borderPathFromBounds = GetBorderPathFromBounds(tabGroupBound);
			borderPathFromBounds.CloseFigure();
			Region region = new Region(borderPathFromBounds);
			if (region.IsVisible(mousePosition))
			{
				result = true;
			}
		}
		return result;
	}

	public override SizeF GetPreferredSize(Graphics g)
	{
		SizeF empty = SizeF.Empty;
		int num = -1;
		TabGroupData tabGroupData = (TabGroupData)TabData;
		SizeF sizeF = Size.Empty;
		foreach (TabGroupItem item in tabGroupData.Items)
		{
			num++;
			tabGroupData.Text = item.Text;
			tabGroupData.ImageIndex = item.ImageIndex;
			sizeF = base.GetPreferredSize(g);
			sizeF -= (SizeF)new Size(2, 2);
			empty.Height = sizeF.Height;
			empty.Width += sizeF.Width + 10f;
		}
		return empty + new Size(2, 2);
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return Size.Empty;
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

	protected override RectangleF CorrectBounds(RectangleF bounds)
	{
		bounds.Width -= 10f;
		return bounds;
	}

	public override RectangleF GetCurrentBounds()
	{
		if (panelRenderer.TabPanelData.SelectedIndex != -1)
		{
			_ = panelRenderer.TabPanelData.TabsData[panelRenderer.TabPanelData.SelectedIndex];
			_ = TabData;
		}
		SizeF overlapSize = GetOverlapSize(panelRenderer.TabPanelData.TabSize);
		RectangleF result = Bounds;
		result.Inflate((float)Math.Ceiling(overlapSize.Width / 2f), 0f);
		result.Offset(0f, 0f - overlapSize.Height);
		result.Height += overlapSize.Height;
		return result;
	}

	protected override RectangleF GetInteriorBounds(RectangleF currentBounds, bool selectedTab)
	{
		return base.GetInteriorBounds(currentBounds, selectedTab);
	}

	protected virtual void CalculateHitBound(RectangleF bounds)
	{
		PointF location = new PointF(bounds.Location.X + m_hitOffset, bounds.Location.Y);
		float width = bounds.Width - m_hitOffset * 2f;
		m_hitBounds.Add(new RectangleF(location, new SizeF(width, bounds.Height)));
	}

	protected virtual void PaintBackground(DrawTabEventArgs drawItemInfo)
	{
		if (drawItemInfo.Bounds.Width != 0 && drawItemInfo.Bounds.Height != 0)
		{
			Graphics graphics = drawItemInfo.Graphics;
			RectangleF curBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
			ApplyTransform(graphics);
			CalculateHitBound(curBounds);
			SaveGraphicsState(graphics, ref curBounds);
			Color backColor = drawItemInfo.BackColor;
			Color color = ControlPaint.LightLight(backColor);
			GraphicsPath graphicsPath = null;
			graphicsPath = GetBorderPathFromBounds(curBounds);
			graphicsPath.CloseFigure();
			Brush brush = new LinearGradientBrush(curBounds, color, backColor, LinearGradientMode.Vertical);
			graphics.FillPath(brush, graphicsPath);
			RestoreGraphicsState(graphics);
			graphics.ResetTransform();
		}
	}

	protected virtual void PaintBorders(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF curBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		ApplyTransform(graphics);
		SaveGraphicsState(graphics, ref curBounds);
		SmoothingMode smoothingMode = graphics.SmoothingMode;
		graphics.SmoothingMode = SmoothingMode.None;
		_ = panelRenderer.IsMirrored;
		drawItemInfo.Graphics.DrawPath(new Pen(BorderColor, 1f), GetBorderPathFromBounds(curBounds));
		graphics.DrawPath(new Pen(VS2005Colors.InnerBorderColor), m_innerPath);
		graphics.SmoothingMode = smoothingMode;
		RestoreGraphicsState(graphics);
		graphics.ResetTransform();
	}

	private void ItemsCollection_Changed(object sender, CollectionChangeEventArgs args)
	{
		boundsChanged = true;
	}

	private void ItemBounds_Changed(object sender, EventArgs e)
	{
		boundsChanged = true;
	}

	protected virtual void SetItemBounds(Graphics g, RectangleF tabBounds)
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
			num += (float)tabGroupData.Padding.X;
			TabGroupItem tabGroupItem = tabGroupData.Items[i];
			tabGroupData.Text = "";
			tabGroupData.Text = tabGroupItem.Text;
			tabGroupData.ImageIndex = tabGroupItem.ImageIndex;
			tabGroupData.Text = tabGroupItem.Text;
			SizeF preferredSize = base.GetPreferredSize(g);
			preferredSize -= new SizeF(2f, 2f);
			preferredSize -= new SizeF(tabGroupData.Padding.X * 2, 0f);
			if (i != 0)
			{
				num -= -2f;
			}
			itemBounds.Add(new RectangleF(new PointF(num, tabBounds.Top + 1f), new SizeF(preferredSize.Width + (float)DEF_CURVE_OFFSET, preferredSize.Height)));
			num += preferredSize.Width + 1f + (float)tabGroupData.Padding.X;
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
		if (m_tabGroupBounds.Count == 1)
		{
			RectangleF rectangleF3 = (RectangleF)m_tabGroupBounds[0];
			rectangleF3.X -= 5f;
			m_tabGroupBounds[0] = rectangleF3;
		}
	}
}
