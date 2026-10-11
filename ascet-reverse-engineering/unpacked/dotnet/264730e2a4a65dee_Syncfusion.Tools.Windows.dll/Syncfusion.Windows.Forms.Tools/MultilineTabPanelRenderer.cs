using System;
using System.Collections;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Tools;

public class MultilineTabPanelRenderer : TabPanelRenderer
{
	private int primitiveWidth;

	public MultilineTabPanelRenderer(ITabControl parent)
	{
		base.parent = parent;
	}

	public override void GetPreferredSize(Graphics g, ref SizeF preferredSize)
	{
		if (tabRenderers.Count == 0)
		{
			preferredSize = new SizeF(0f, 0f);
			return;
		}
		float num = preferredSize.Width;
		if (num == 0f)
		{
			num = GetMinimumWidth(g);
		}
		SizeF overlapSize = TabRendererFactory.GetRegisteredExtender(base.TabPanelData.TabStyle).GetOverlapSize(base.TabPanelData.TabSize);
		overlapSize.Height += base.TabPanelData.AdjustTopGap;
		float num2 = 0f;
		float num3 = 0f;
		float num4 = 0f;
		int num5 = 1;
		float num6 = overlapSize.Width;
		foreach (ITabRenderer tabRenderer in tabRenderers)
		{
			if (!ShouldDrawVisible(tabRenderer.TabData))
			{
				continue;
			}
			SizeF empty = SizeF.Empty;
			empty = ((base.TabPanelData.SizeMode != TabSizeMode.Fixed) ? tabRenderer.GetPreferredSize(g) : base.TabPanelData.TabSize);
			if (parent is TabControlAdv tabControlAdv && tabControlAdv.TabPrimitivesHost.Visible)
			{
				primitiveWidth = tabControlAdv.TabPrimitivesHost.Size.Width;
			}
			if (empty.Width + num6 <= num - (float)primitiveWidth || num6 <= overlapSize.Width)
			{
				num6 += empty.Width;
			}
			else
			{
				num2 += num3;
				num5++;
				num6 = overlapSize.Width + empty.Width;
				if (num4 < num3)
				{
					num4 = num3;
				}
				num3 = 0f;
			}
			if (num3 < empty.Height)
			{
				num3 = empty.Height;
			}
		}
		if ((base.TabPanelData.Alignment == TabAlignment.Left || base.TabPanelData.Alignment == TabAlignment.Right) && base.TabPanelData.RotateTextWhenVertical)
		{
			if (num4 < num3)
			{
				num4 = num3;
			}
			preferredSize = new SizeF(num, num4 * (float)num5 + overlapSize.Height);
		}
		else
		{
			preferredSize = new SizeF(num, num2 + num3 + overlapSize.Height);
		}
		if (base.TabPanelData.TabSize != Size.Empty && base.TabPanelData.SizeMode == TabSizeMode.Fixed)
		{
			preferredSize.Height = base.TabPanelData.TabSize.Height * (float)num5 + overlapSize.Height;
		}
	}

	protected override void InvalidateTabs(int tab1, int tab2)
	{
		parent.OnRepaint(base.Bounds);
	}

	protected float GetMinimumWidth(Graphics g)
	{
		float num = 0f;
		if (tabRenderers.Count > 0)
		{
			foreach (ITabRenderer tabRenderer in tabRenderers)
			{
				if (ShouldDrawVisible(tabRenderer.TabData))
				{
					float width = tabRenderer.GetPreferredSize(g).Width;
					if (num < width)
					{
						num = width;
					}
				}
			}
			num += TabRendererFactory.GetRegisteredExtender(base.TabPanelData.TabStyle).GetOverlapSize(base.TabPanelData.TabSize).Width;
		}
		return num;
	}

	public override void ComputeTabPositions(Graphics g)
	{
		if (tabRenderers.Count <= 0)
		{
			return;
		}
		Hashtable hashtable = new Hashtable();
		ArrayListExt arrayListExt = new ArrayListExt();
		SizeF overlapSize = TabRendererFactory.GetRegisteredExtender(base.TabPanelData.TabStyle).GetOverlapSize(base.TabPanelData.TabSize);
		overlapSize.Height += base.TabPanelData.AdjustTopGap;
		float num = (float)Math.Ceiling(overlapSize.Width / 2f);
		float num2 = tdbounds.Width - num;
		float num3 = num;
		float num4 = ((base.TabPanelData.SizeMode != TabSizeMode.Normal && base.TabPanelData.SizeMode != TabSizeMode.FillToRight) ? base.TabPanelData.TabSize.Height : GetLargestHeight(g));
		float num5 = tdbounds.Bottom - num4;
		ITabRenderer tabRenderer = (ITabRenderer)tabRenderers[0];
		float num6 = 0f;
		bool isMirroredForVerticalAlignment = GetIsMirroredForVerticalAlignment();
		if (ShouldDrawVisible(tabRenderer.TabData))
		{
			num6 = ((base.TabPanelData.SizeMode != TabSizeMode.Normal && base.TabPanelData.SizeMode != TabSizeMode.FillToRight) ? base.TabPanelData.TabSize.Width : tabRenderer.GetPreferredSize(g).Width);
			float x = (isMirroredForVerticalAlignment ? (tdbounds.Right - num3 - num6) : (tdbounds.Left + num3));
			hashtable[tabRenderer] = new RectangleF(x, num5, num6, num4);
			num3 += num6;
		}
		else
		{
			hashtable[tabRenderer] = RectangleF.Empty;
		}
		ArrayListExt arrayListExt2 = new ArrayListExt();
		arrayListExt2.Add(new ArrayList());
		int num7 = 0;
		((ArrayList)arrayListExt2[num7]).Add(tabRenderers[0]);
		for (int i = 1; i < tabRenderers.Count; i++)
		{
			ITabRenderer tabRenderer2 = (ITabRenderer)tabRenderers[i];
			if (ShouldDrawVisible(tabRenderer2.TabData))
			{
				num6 = ((base.TabPanelData.SizeMode != TabSizeMode.Normal && base.TabPanelData.SizeMode != TabSizeMode.FillToRight) ? base.TabPanelData.TabSize.Width : tabRenderer2.GetPreferredSize(g).Width);
				if (num6 + num3 > num2)
				{
					arrayListExt2.Add(new ArrayList());
					num7++;
					arrayListExt.Add(num2 - num3);
					num5 -= num4 - 1f;
					num3 = num;
				}
				((ArrayList)arrayListExt2[num7]).Add(tabRenderers[i]);
				float x2 = (isMirroredForVerticalAlignment ? (tdbounds.Right - num3 - num6) : (tdbounds.Left + num3));
				hashtable[tabRenderer2] = new RectangleF(x2, num5, num6, num4);
				num3 += num6;
			}
			else
			{
				hashtable[tabRenderer2] = RectangleF.Empty;
			}
		}
		arrayListExt.Add(num2 - num3);
		ArrayList arrayList = tabRenderers;
		if (base.TabPanelData.KeepSelectedTabInFrontRow)
		{
			arrayList = AdjustRenderersToMoveSelectedIndexToFront(arrayListExt2, base.TabPanelData.SelectedIndex, arrayListExt);
		}
		int num8 = 0;
		num5 = tdbounds.Bottom - num4;
		num3 = num;
		for (int j = 0; j < arrayList.Count; j++)
		{
			ITabRenderer tabRenderer3 = (ITabRenderer)arrayList[j];
			if (ShouldDrawVisible(tabRenderer3.TabData))
			{
				num6 = ((RectangleF)hashtable[tabRenderer3]).Width;
				if (base.TabPanelData.SizeMode == TabSizeMode.FillToRight && num6 + num > num2)
				{
					num6 = num2 - num;
				}
				if (num3 + num6 > num2 && num3 > num)
				{
					num5 -= num4 - 1f;
					num3 = num;
					num8++;
				}
				if (arrayListExt.Count > 1 && base.TabPanelData.SizeMode == TabSizeMode.FillToRight)
				{
					if (num8 < 0)
					{
						num8 = 0;
					}
					else if (num8 >= arrayListExt.Count)
					{
						num8 = arrayListExt.Count - 1;
					}
					float num9 = (float)arrayListExt[num8];
					num6 = ((!(num9 >= 0f)) ? (num2 - num) : (num6 + (float)Math.Round(num6 / (num2 - num9 - num) * num9)));
				}
				float x3 = (isMirroredForVerticalAlignment ? (tdbounds.Right - num3 - num6) : (tdbounds.Left + num3));
				tabRenderer3.Bounds = new RectangleF(x3, num5, num6, num4);
				tabRenderer3.TabAlignment = base.TabPanelData.Alignment;
				num3 += num6;
				tabRenderer3.Visible = true;
			}
			else
			{
				tabRenderer3.Bounds = RectangleF.Empty;
				tabRenderer3.Visible = false;
			}
		}
	}

	private ArrayList AdjustRenderersToMoveSelectedIndexToFront(ArrayListExt renderers2D, int selectedIndex, ArrayListExt emptySpaceInEachLine)
	{
		int num = -1;
		bool flag = false;
		int num2 = 0;
		int num3 = -1;
		while (!flag || renderers2D.Count <= num)
		{
			num++;
			if (num >= renderers2D.Count)
			{
				flag = true;
				num3 = ((renderers2D.Count > 0) ? (--num) : 0);
				break;
			}
			num2 += ((ArrayList)renderers2D[num]).Count;
			if (selectedIndex < num2)
			{
				flag = true;
				num3 = num;
				break;
			}
		}
		switch (num3)
		{
		case 0:
			return tabRenderers;
		default:
		{
			renderers2D.Move(num3, 0, 1);
			emptySpaceInEachLine.Move(num3, 0, 1);
			ArrayList arrayList = new ArrayList();
			{
				foreach (ArrayList item in renderers2D)
				{
					foreach (ITabRenderer item2 in item)
					{
						arrayList.Add(item2);
					}
				}
				return arrayList;
			}
		}
		case -1:
			return null;
		}
	}
}
