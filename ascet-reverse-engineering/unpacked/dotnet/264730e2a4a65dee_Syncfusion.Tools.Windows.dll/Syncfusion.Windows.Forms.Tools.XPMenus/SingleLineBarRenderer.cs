using System;
using System.Drawing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class SingleLineBarRenderer : BarRenderer
{
	protected SizeF lastKnownPreferredSize = SizeF.Empty;

	public SingleLineBarRenderer(IBarControl parent)
		: base(parent)
	{
	}

	protected override void OnBoundsAffected()
	{
		lastKnownPreferredSize = SizeF.Empty;
		base.OnBoundsAffected();
	}

	protected virtual RectangleF CorrectDisplayBounds(RectangleF bounds)
	{
		return bounds;
	}

	public virtual void AfterComputeBarItemPositions(IGraphicsProvider gp)
	{
	}

	public override void ComputeBarItemPositions(IGraphicsProvider gp)
	{
		if (barItemRenderers.Count <= 0)
		{
			return;
		}
		base.InvisibleBarItems.Clear();
		if (lastKnownPreferredSize == Size.Empty)
		{
			GetPreferredSize(gp);
		}
		float num = Math.Max(lastKnownPreferredSize.Height, tdbounds.Height) - padY;
		float num2 = tdbounds.X + padX;
		num2 = (float)Math.Round(num2);
		float num3 = tdbounds.Y + padY / 2f;
		bool flag = false;
		bool flag2 = false;
		bool flag3 = false;
		foreach (IBarItemRenderer barItemRenderer in barItemRenderers)
		{
			bool flag4 = ShouldDrawVisible(barItemRenderer.BarItem, excludeControlBasedItems: true);
			bool isRightToLeft = parent.IsRightToLeft;
			if (base.Bar.IsGroupBeginning(barItemRenderer.BarItem) && !flag && flag2 && (flag4 || barItemRenderer.BarItem.Manager == null || barItemRenderer.BarItem.Manager is MainFrameBarManager))
			{
				flag = true;
				num2 += separatorAreaX;
			}
			SizeF preferredSize = barItemRenderer.GetPreferredSize(gp);
			float height = preferredSize.Height;
			float num4 = num3;
			if (height < num && barItemRenderer.NeedCenterVAlign)
			{
				num4 += (num - height) / 2f;
				if (num4 + height > tdbounds.Height)
				{
					num4 = num3;
				}
			}
			float width = preferredSize.Width;
			float num5 = (isRightToLeft ? (tdbounds.Width - num2 - width + padX) : num2);
			barItemRenderer.Bounds = new RectangleF(num5, num4, width, height);
			bool flag5 = false;
			RectangleF bounds = tdbounds;
			bounds = CorrectDisplayBounds(bounds);
			if ((isRightToLeft && num5 < bounds.Left) || num5 + width > bounds.Right)
			{
				if (flag4)
				{
					flag5 = true;
				}
				flag4 = false;
			}
			if (flag3 && !base.Bar.AllowItemsReorderOnShrunk)
			{
				if (flag4)
				{
					flag5 = true;
				}
				flag4 = false;
			}
			if (flag5 || (!flag4 && ShouldDrawVisible(barItemRenderer.BarItem, excludeControlBasedItems: false)))
			{
				base.InvisibleBarItems.Add(barItemRenderer.BarItem);
				flag3 = true;
			}
			if (flag4)
			{
				flag2 = true;
				flag = false;
				barItemRenderer.Visible = true;
				num2 += width;
			}
			else
			{
				barItemRenderer.Visible = false;
			}
		}
		AfterComputeBarItemPositions(gp);
	}

	protected SizeF GetPreferredSize(IGraphicsProvider gp)
	{
		SizeF preferredSize = SizeF.Empty;
		GetPreferredSize(gp, ref preferredSize);
		return preferredSize;
	}

	public override void GetPreferredSize(IGraphicsProvider gp, ref SizeF preferredSize)
	{
		bool flag = false;
		Size empty = Size.Empty;
		if (preferredSize == SizeF.Empty)
		{
			preferredSize = new SizeF(padX, padY);
			if (barItemRenderers.Count > 0)
			{
				preferredSize += ((IBarItemRenderer)barItemRenderers[0]).GetPreferredSize(gp);
			}
		}
		else
		{
			int num = 0;
			bool flag2 = false;
			preferredSize = new SizeF(padX, padY);
			if ((base.Bar.BarStyle & BarStyle.MultiLine) == 0 && barItemRenderers.Count > 0)
			{
				foreach (IBarItemRenderer barItemRenderer in barItemRenderers)
				{
					BarItem barItem = barItemRenderer.BarItem;
					bool flag3 = false;
					if (flag2 && base.Bar.IsGroupBeginning(barItem))
					{
						num++;
						flag3 = true;
					}
					if (!flag)
					{
						flag = (barItemRenderer as BarItemRenderer).ShouldDrawImage();
					}
					if (ShouldDrawVisible(barItem, excludeControlBasedItems: true))
					{
						flag2 = true;
						SizeF preferredSize2 = barItemRenderer.GetPreferredSize(gp);
						preferredSize.Width += preferredSize2.Width;
						if (preferredSize.Height < preferredSize2.Height + padY)
						{
							preferredSize.Height = preferredSize2.Height + padY;
						}
					}
					else
					{
						Size imageSizeInternal = barItem.GetImageSizeInternal(parent.LargeIcons);
						if (empty.Width < imageSizeInternal.Width)
						{
							empty.Width = imageSizeInternal.Width;
						}
						if (empty.Height < imageSizeInternal.Height)
						{
							empty.Height = imageSizeInternal.Height;
						}
					}
					if (!ShouldDrawVisible(barItemRenderer.BarItem, excludeControlBasedItems: true) && flag3 && barItemRenderer.BarItem.Manager != null && !(barItemRenderer.BarItem.Manager is MainFrameBarManager))
					{
						num--;
					}
				}
				preferredSize.Width += (float)num * separatorAreaX;
			}
			if (preferredSize.Width < 10f)
			{
				preferredSize.Width = 10f;
			}
		}
		if (preferredSize.Width < 10f)
		{
			preferredSize.Width = 10f;
		}
		if (flag && parent != null && preferredSize.Height < (float)empty.Height + padY + (float)(BarItemRenderer.PadY * 2))
		{
			preferredSize.Height = (float)empty.Height + padY + (float)(BarItemRenderer.PadY * 2);
		}
		if (preferredSize.Height < 22f)
		{
			preferredSize.Height = 22f;
		}
		lastKnownPreferredSize = preferredSize;
	}
}
