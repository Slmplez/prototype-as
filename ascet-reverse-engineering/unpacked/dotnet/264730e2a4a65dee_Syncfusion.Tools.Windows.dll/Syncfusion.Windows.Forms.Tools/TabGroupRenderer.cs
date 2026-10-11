using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class TabGroupRenderer : TabRendererBase, ITabGroupRenderer
{
	private ArrayList m_itemBounds;

	private bool boundsChanged;

	public static readonly int OVERLAPX;

	private static TabPanelPropertyTabGroup tabPanelPropertyExtender;

	protected ArrayList itemBounds
	{
		get
		{
			return m_itemBounds;
		}
		set
		{
			if (m_itemBounds != value)
			{
				m_itemBounds = value;
			}
		}
	}

	public static string TabStyleName => "DockingTabs";

	public static TabPanelPropertyTabGroup TabPanelPropertyExtender => tabPanelPropertyExtender;

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

	protected override RectangleF CorrectBounds(RectangleF bounds)
	{
		bounds.Width -= 5f;
		return base.CorrectBounds(bounds);
	}

	static TabGroupRenderer()
	{
		OVERLAPX = 2;
		tabPanelPropertyExtender = new TabPanelPropertyTabGroup();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabGroupRenderer), TabPanelPropertyExtender);
	}

	public TabGroupRenderer(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
		itemBounds = new ArrayList();
	}

	private void ItemsCollection_Changed(object sender, CollectionChangeEventArgs args)
	{
		boundsChanged = true;
	}

	private void ItemBounds_Changed(object sender, EventArgs e)
	{
		boundsChanged = true;
	}

	public RectangleF GetGroupItemBounds(int i)
	{
		if (i >= itemBounds.Count)
		{
			return RectangleF.Empty;
		}
		return TabUtils.ApplyTransform(base.TabControl.GetGraphics(), base.TabAlignment, (RectangleF)itemBounds[i], apply: false);
	}

	protected virtual void SetItemBounds(Graphics g, RectangleF tabBounds)
	{
		bool flag = false;
		if (tabBounds.Width != Bounds.Width || tabBounds.Height != Bounds.Height)
		{
			flag = true;
		}
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
		TabControlAdv tabControlAdv = base.TabControl as TabControlAdv;
		_ = tabControlAdv.IsMirrored;
		float num = tabBounds.Left + 1f;
		for (int i = 0; i < tabGroupData.Items.Count; i++)
		{
			num += (float)tabGroupData.Padding.X;
			TabGroupItem tabGroupItem = tabGroupData.Items[i];
			tabGroupData.Text = "";
			if (tabGroupData.SelectedIndex == i)
			{
				tabGroupData.Text = tabGroupItem.Text;
			}
			tabGroupData.ImageIndex = tabGroupItem.ImageIndex;
			if (i != tabGroupData.SelectedIndex)
			{
				string text = tabGroupItem.Text;
				tabGroupData.Text = GetAutoHideCaption(text);
			}
			SizeF preferredSize = base.GetPreferredSize(g);
			preferredSize -= new SizeF(2f, 2f);
			preferredSize -= new SizeF(tabGroupData.Padding.X * 2, 0f);
			itemBounds.Add(new RectangleF(new PointF(num, tabBounds.Top + 1f), new SizeF(preferredSize.Width, tabBounds.Height)));
			num += preferredSize.Width + 1f + (float)tabGroupData.Padding.X;
		}
		bool flag2 = false;
		if (num < tabBounds.Right - 1f)
		{
			for (int j = 0; j < itemBounds.Count; j++)
			{
				RectangleF rectangleF = (RectangleF)itemBounds[j];
				if (j == tabGroupData.SelectedIndex)
				{
					float num2 = 0f;
					num2 = tabBounds.Right - 1f - num;
					rectangleF.Width += num2;
				}
				else if (j > tabGroupData.SelectedIndex)
				{
					float x = tabBounds.Right - 1f - num;
					rectangleF.Offset(x, 0f);
				}
				itemBounds[j] = rectangleF;
			}
		}
		if (flag)
		{
			panelRenderer.Layout(g, fromPaint: false);
		}
	}

	protected override void DrawBackground(DrawTabEventArgs drawiteminfo)
	{
		Graphics graphics = drawiteminfo.Graphics;
		AHTabControl aHTabControl = base.TabControl.GetControl() as AHTabControl;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && aHTabControl.DockingManager.ThemesEnabled)
		{
			Rectangle rectangle = drawiteminfo.Bounds;
			graphics.SetClip(rectangle);
			aHTabControl.ThemeDraw.DrawThemeBackground(graphics, 1, 1, Rectangle.Inflate(rectangle, 2, 2));
			graphics.ResetClip();
		}
		else
		{
			graphics.FillRectangle(new SolidBrush(drawiteminfo.BackColor), drawiteminfo.Bounds);
		}
	}

	protected override void DrawBorders(DrawTabEventArgs drawiteminfo)
	{
		Graphics graphics = drawiteminfo.Graphics;
		AHTabControl aHTabControl = base.TabControl.GetControl() as AHTabControl;
		RectangleF rectangleF = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawiteminfo.Bounds, apply: true);
		ApplyTransform(graphics);
		Pen pen = null;
		pen = ((!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !aHTabControl.DockingManager.ThemesEnabled) ? new Pen(drawiteminfo.ForeColor) : new Pen(SystemColors.ControlDark));
		graphics.DrawLine(pen, new PointF(rectangleF.Left, rectangleF.Bottom - 1f), new PointF(rectangleF.Left, rectangleF.Top));
		graphics.DrawLine(pen, new PointF(rectangleF.Left, rectangleF.Top), new PointF(rectangleF.Right - 1f, rectangleF.Top));
		graphics.DrawLine(pen, new PointF(rectangleF.Right - 1f, rectangleF.Top), new PointF(rectangleF.Right - 1f, rectangleF.Bottom - 1f));
		pen.Dispose();
		graphics.ResetTransform();
	}

	public override SizeF GetPreferredSize(Graphics g)
	{
		SizeF empty = SizeF.Empty;
		int num = -1;
		TabGroupData tabGroupData = (TabGroupData)TabData;
		foreach (TabGroupItem item in tabGroupData.Items)
		{
			num++;
			tabGroupData.Text = item.Text;
			tabGroupData.ImageIndex = item.ImageIndex;
			SizeF preferredSize = base.GetPreferredSize(g);
			preferredSize -= (SizeF)new Size(2, 2);
			if (empty.Width < preferredSize.Width)
			{
				empty.Width = preferredSize.Width;
			}
			if (empty.Height < preferredSize.Height)
			{
				empty.Height = preferredSize.Height;
			}
		}
		tabGroupData.Text = "";
		num = -1;
		foreach (TabGroupItem item2 in tabGroupData.Items)
		{
			num++;
			if (tabGroupData.SelectedIndex != num)
			{
				tabGroupData.ImageIndex = item2.ImageIndex;
				string text = item2.Text;
				tabGroupData.Text = GetAutoHideCaption(text);
				SizeF preferredSize2 = base.GetPreferredSize(g);
				preferredSize2 -= (SizeF)new Size(2, 2);
				empty.Width += preferredSize2.Width;
			}
		}
		empty += (SizeF)new Size(2, 2);
		empty.Width += tabGroupData.Items.Count - 1;
		return empty;
	}

	protected virtual void CorrectTabBounds(ref RectangleF bounds)
	{
	}

	protected override void DrawInterior(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		SetItemBounds(graphics, drawItemInfo.Bounds);
		RectangleF rectangleF = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		CorrectTabBounds(ref rectangleF);
		ApplyTransform(graphics);
		TabGroupData tabGroupData = (TabGroupData)TabData;
		int num = -1;
		foreach (RectangleF itemBound in itemBounds)
		{
			tabGroupData.Text = "";
			num++;
			RectangleF rectTextAndImage = itemBound;
			if (num == tabGroupData.SelectedIndex)
			{
				tabGroupData.Text = tabGroupData.Items[num].Text;
			}
			tabGroupData.ImageIndex = tabGroupData.Items[num].ImageIndex;
			if (num != tabGroupData.SelectedIndex)
			{
				string text = tabGroupData.Items[num].Text;
				tabGroupData.Text = GetAutoHideCaption(text);
			}
			DrawTextAndImage(graphics, rectTextAndImage, drawItemInfo);
			if (num != itemBounds.Count - 1)
			{
				graphics.DrawLine(new Pen(Color.FromArgb(128, drawItemInfo.ForeColor)), new PointF(rectTextAndImage.Right + (float)panelRenderer.TabPanelData.Padding.X, rectangleF.Top), new PointF(rectTextAndImage.Right + (float)panelRenderer.TabPanelData.Padding.X, rectangleF.Bottom + 1f));
			}
		}
		graphics.ResetTransform();
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
