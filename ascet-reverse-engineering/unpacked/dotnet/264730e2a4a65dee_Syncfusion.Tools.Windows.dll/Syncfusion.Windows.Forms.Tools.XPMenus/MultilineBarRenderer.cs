using System.Collections;
using System.Drawing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class MultilineBarRenderer : BarRenderer
{
	protected float lineSeparatorAreaY = 6f;

	private Hashtable cachedLineBreaks;

	private int itemsOnFirstLine = -1;

	public MultilineBarRenderer(IBarControl parent)
		: base(parent)
	{
	}

	protected Hashtable GetLineBreaks(float availableWidth, SizeF[] preferredSizes)
	{
		if (barItemRenderers.Count == 0)
		{
			return null;
		}
		Hashtable hashtable = new Hashtable();
		itemsOnFirstLine = -1;
		float num = padX;
		float num2 = 0f;
		IBarItemRenderer barItemRenderer = null;
		IBarItemRenderer barItemRenderer2 = null;
		IBarItemRenderer barItemRenderer3 = barItemRenderers[0] as IBarItemRenderer;
		int num3 = -1;
		bool flag = false;
		int num4 = 0;
		while (num4 < barItemRenderers.Count)
		{
			IBarItemRenderer barItemRenderer4 = barItemRenderers[num4] as IBarItemRenderer;
			if (barItemRenderer2 == null)
			{
				barItemRenderer2 = barItemRenderer4;
			}
			bool flag2 = ShouldDrawVisible(barItemRenderer4.BarItem, excludeControlBasedItems: true);
			if (base.Bar.IsGroupBeginning(barItemRenderer4.BarItem) && !flag && (flag2 || barItemRenderer4.BarItem.Manager == null || barItemRenderer4.BarItem.Manager is MainFrameBarManager))
			{
				flag = true;
				barItemRenderer = barItemRenderer4;
				num3 = num4;
				if (barItemRenderer != barItemRenderer2)
				{
					num += separatorAreaX;
				}
			}
			if (flag2)
			{
				flag = false;
				num += preferredSizes[num4].Width;
			}
			if (num > availableWidth && barItemRenderer2 != barItemRenderer4 && flag2)
			{
				if (barItemRenderer3 != null)
				{
					hashtable[barItemRenderer3] = num2;
				}
				if (barItemRenderer2 != barItemRenderer && barItemRenderer != null)
				{
					num4 = num3;
					barItemRenderer3 = barItemRenderer;
					hashtable[barItemRenderer] = 1;
				}
				else
				{
					hashtable[barItemRenderer4] = 1;
					barItemRenderer3 = barItemRenderer4;
				}
				if (itemsOnFirstLine == -1)
				{
					itemsOnFirstLine = num4;
				}
				barItemRenderer2 = (barItemRenderer = null);
				num3 = -1;
				num = padX;
				num2 = 0f;
			}
			else
			{
				if ((flag2 || barItemRenderer4.BarItem.PaintStyle != PaintStyle.TextOnly) && num2 < preferredSizes[num4].Height)
				{
					num2 = preferredSizes[num4].Height;
				}
				num4++;
			}
		}
		if (barItemRenderer3 != null)
		{
			hashtable[barItemRenderer3] = num2;
		}
		if (itemsOnFirstLine == -1)
		{
			itemsOnFirstLine = barItemRenderers.Count;
		}
		return hashtable;
	}

	public override void GetPreferredSize(IGraphicsProvider gp, ref SizeF preferredSize)
	{
		float availableWidth = (base.IsVerticallyAligned ? preferredSize.Height : preferredSize.Width);
		preferredSize = ComputePreferredSizeAndSetBounds(gp, availableWidth, setBounds: false);
		bool flag = false;
		Size size = Size.Empty;
		if (barItemRenderers.Count > 0)
		{
			foreach (IBarItemRenderer barItemRenderer in barItemRenderers)
			{
				BarItem barItem = barItemRenderer.BarItem;
				if (!ShouldDrawVisible(barItem, excludeControlBasedItems: true))
				{
					flag = barItem.PaintStyle != PaintStyle.TextOnly;
					size = barItem.GetImageSizeInternal(parent.LargeIcons);
				}
			}
		}
		if (preferredSize.Width < 10f)
		{
			preferredSize.Width = 10f;
		}
		if (flag && parent != null && preferredSize.Height < (float)size.Height + padY + (float)(BarItemRenderer.PadY * 2))
		{
			preferredSize.Height = (float)size.Height + padY + (float)(BarItemRenderer.PadY * 2);
		}
		if (preferredSize.Height < 22f)
		{
			preferredSize.Height = 22f;
		}
	}

	public virtual SizeF ComputePreferredSizeAndSetBounds(IGraphicsProvider gp, float availableWidth, bool setBounds)
	{
		if (barItemRenderers.Count == 0)
		{
			return SizeF.Empty;
		}
		if (availableWidth == 0f)
		{
			availableWidth = GetMinimumWidth(gp);
			availableWidth += padX;
		}
		if (setBounds)
		{
			base.InvisibleBarItems.Clear();
		}
		SizeF[] array = new SizeF[barItemRenderers.Count];
		int num = 0;
		foreach (IBarItemRenderer barItemRenderer3 in barItemRenderers)
		{
			ref SizeF reference = ref array[num++];
			reference = barItemRenderer3.GetPreferredSize(gp);
		}
		Hashtable hashtable = (cachedLineBreaks = GetLineBreaks(availableWidth, array));
		float num2 = tdbounds.Y + padY / 2f;
		float num3 = (float)hashtable[barItemRenderers[0]];
		float num4 = 0f;
		if (barItemRenderers.Count > 0)
		{
			float num5 = padX;
			int num6 = -1;
			bool flag = false;
			foreach (IBarItemRenderer barItemRenderer4 in barItemRenderers)
			{
				bool isRightToLeft = parent.IsRightToLeft;
				num6++;
				SizeF sizeF = array[num6];
				bool flag2 = ShouldDrawVisible(barItemRenderer4.BarItem, excludeControlBasedItems: true);
				if (base.Bar.IsGroupBeginning(barItemRenderer4.BarItem) && !flag && (flag2 || barItemRenderer4.BarItem.Manager == null || barItemRenderer4.BarItem.Manager is MainFrameBarManager))
				{
					flag = true;
					num5 += separatorAreaX;
				}
				if (num6 != 0 && hashtable[barItemRenderer4] != null)
				{
					if (flag)
					{
						num5 -= separatorAreaX;
					}
					if (flag2)
					{
						flag = false;
					}
					num2 += num3 + lineSeparatorAreaY;
					if (num4 < num5)
					{
						num4 = num5;
					}
					num5 = padX;
					num3 = (float)hashtable[barItemRenderer4];
				}
				if (setBounds)
				{
					float num7 = 0f;
					float num8 = 0f;
					num7 = sizeF.Width;
					num8 = tdbounds.X + num5;
					bool flag3 = false;
					if (num8 < tdbounds.Left || num2 < tdbounds.Top || num8 + num7 > tdbounds.Right || num2 + num3 > tdbounds.Height)
					{
						if (flag2)
						{
							flag3 = true;
						}
						flag2 = false;
					}
					if (flag3 || (!flag2 && ShouldDrawVisible(barItemRenderer4.BarItem, excludeControlBasedItems: false)))
					{
						base.InvisibleBarItems.Add(barItemRenderer4.BarItem);
					}
					float height = num3;
					float num9 = num2;
					if (sizeF.Height < num3 && barItemRenderer4.NeedCenterVAlign)
					{
						num9 += (num3 - sizeF.Height) / 2f;
						height = sizeF.Height;
					}
					if (isRightToLeft)
					{
						barItemRenderer4.Bounds = new RectangleF(tdbounds.Width - tdbounds.X - num5 - num7, num9, num7, height);
					}
					else
					{
						barItemRenderer4.Bounds = new RectangleF(tdbounds.X + num5, num9, num7, height);
					}
					barItemRenderer4.Visible = flag2;
				}
				if (flag2)
				{
					flag = false;
					num5 += sizeF.Width;
				}
			}
			if (num4 < num5)
			{
				num4 = num5;
			}
		}
		return new SizeF(num4, num2 - tdbounds.Top + num3 + padY / 2f);
	}

	protected float GetMinimumWidth(IGraphicsProvider gp)
	{
		float num = 0f;
		if (barItemRenderers.Count > 0)
		{
			foreach (IBarItemRenderer barItemRenderer in barItemRenderers)
			{
				float width = barItemRenderer.GetPreferredSize(gp).Width;
				if (num < width)
				{
					num = width;
				}
			}
		}
		return num;
	}

	public override void ComputeBarItemPositions(IGraphicsProvider gp)
	{
		if (barItemRenderers.Count > 0)
		{
			ComputePreferredSizeAndSetBounds(gp, tdbounds.Width, setBounds: true);
		}
	}

	public override void OnPaint(Graphics g, Rectangle clipRect)
	{
		base.OnPaint(g, clipRect);
		if (cachedLineBreaks == null)
		{
			return;
		}
		if (base.Alignment == CommandBarDockState.Left || base.Alignment == CommandBarDockState.Right)
		{
			g.RotateTransform(-270f);
		}
		int num = -1;
		foreach (IBarItemRenderer barItemRenderer in barItemRenderers)
		{
			num++;
			if (num >= itemsOnFirstLine)
			{
				float num2 = -1f;
				if (cachedLineBreaks[barItemRenderer] != null && base.Bar.IsGroupBeginning(barItemRenderer.BarItem))
				{
					num2 = tdbounds.Left;
				}
				else if (base.Bar.IsGroupBeginning(barItemRenderer.BarItem))
				{
					num2 = barItemRenderer.Bounds.Left;
				}
				if (num2 != -1f && ((barItemRenderer.Visible && ShouldDrawVisible(barItemRenderer.BarItem, excludeControlBasedItems: false)) || barItemRenderer.BarItem.Manager == null || barItemRenderer.BarItem.Manager is MainFrameBarManager))
				{
					g.DrawLine(new Pen(SystemColors.ControlDark), num2, barItemRenderer.Bounds.Top - 3f, tdbounds.Right - 1f, barItemRenderer.Bounds.Top - 3f);
				}
			}
		}
		g.ResetTransform();
	}
}
