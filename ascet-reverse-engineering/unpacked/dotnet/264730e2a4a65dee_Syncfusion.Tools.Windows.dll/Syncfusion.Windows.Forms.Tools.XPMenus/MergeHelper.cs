using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class MergeHelper
{
	public static void MergeItems(IBarItemContainer dest, IBarItemContainer src)
	{
		if (src == dest)
		{
			throw new ArgumentException("Trying to Merge 2 same instances", "src");
		}
		for (int i = 0; i < src.Items.Count; i++)
		{
			BarItem barItem = src.Items[i];
			MenuMerge mergeType = barItem.MergeType;
			bool flag = false;
			switch (mergeType)
			{
			case MenuMerge.Add:
				dest.Items.Insert(dest.Items.FindMergePosition(barItem.MergeOrder), barItem);
				flag = true;
				break;
			case MenuMerge.Replace:
			case MenuMerge.MergeItems:
			{
				int mergeOrder2 = barItem.MergeOrder;
				int num = dest.Items.FindMergePosition(mergeOrder2 - 1);
				if (num < dest.Items.Count)
				{
					BarItem barItem3 = dest.Items[num];
					if (barItem3.MergeOrder != mergeOrder2 || barItem3.Text != barItem.Text)
					{
						dest.Items.Insert(num, barItem);
						flag = true;
					}
					else if (barItem.MergeType != MenuMerge.MergeItems || barItem3.MergeType != MenuMerge.MergeItems)
					{
						dest.RemoveGroupAt(barItem3);
						dest.Items[num] = barItem;
						flag = true;
					}
					else if (barItem3 is ParentBarItem && barItem is ParentBarItem)
					{
						((ParentBarItem)barItem3).MergeItems(barItem as ParentBarItem);
					}
				}
				if (num == dest.Items.Count)
				{
					dest.Items.Insert(num, barItem);
					flag = true;
				}
				break;
			}
			case MenuMerge.Remove:
			{
				int mergeOrder = barItem.MergeOrder;
				for (int j = dest.Items.FindMergePosition(mergeOrder - 1); j < dest.Items.Count; j++)
				{
					BarItem barItem2 = dest.Items[j];
					if (barItem2.MergeOrder == mergeOrder && barItem2.Text == barItem.Text && barItem2.MergeType != MenuMerge.Replace && barItem2.MergeType != MenuMerge.Add)
					{
						dest.RemoveItem(barItem2);
						break;
					}
					if (barItem2.MergeOrder > mergeOrder)
					{
						break;
					}
				}
				break;
			}
			}
			if (flag && src.IsGroupBeginning(barItem))
			{
				dest.BeginGroupAt(barItem);
			}
		}
	}
}
