using System.Collections;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class BarItemsImporter
{
	protected string miscCategoryRootName = SR.GetString("ShortMiscelaneousText");

	public virtual void ImportItems(IBarItemsRepository source, IBarItemsRepository destination)
	{
		Hashtable hashtable = new Hashtable();
		foreach (BarItem item in source.Items)
		{
			string key = (string)source.Categories[item.CategoryIndex];
			ArrayList arrayList = hashtable[key] as ArrayList;
			if (arrayList == null)
			{
				arrayList = (ArrayList)(hashtable[key] = new ArrayList());
			}
			arrayList.Add(item);
		}
		int num = 0;
		if (destination.ImageList != null)
		{
			num = destination.ImageList.Images.Count;
		}
		bool flag = false;
		if (source.ImageList != null && destination.ImageList != null)
		{
			foreach (Image image in source.ImageList.Images)
			{
				destination.ImageList.Images.Add(image, source.ImageList.TransparentColor);
			}
			flag = true;
		}
		if (source.LargeImageList != null && destination.LargeImageList != null)
		{
			foreach (Image image2 in source.LargeImageList.Images)
			{
				destination.LargeImageList.Images.Add(image2, source.LargeImageList.TransparentColor);
			}
			flag = true;
		}
		foreach (string key2 in hashtable.Keys)
		{
			int destinationCategoryIndex = GetDestinationCategoryIndex(destination, key2);
			ArrayList arrayList3 = hashtable[key2] as ArrayList;
			foreach (BarItem item2 in arrayList3)
			{
				string text2 = item2.ID;
				while (!destination.Items.IsValidItemID(null, text2))
				{
					text2 = IDGenerator.GetNextID(text2);
				}
				item2.Manager = null;
				item2.CategoryIndex = destinationCategoryIndex;
				item2.ID = text2;
				if (item2.ImageIndex != -1 && flag)
				{
					item2.ImageIndex += num;
				}
				destination.Items.Add(item2);
			}
		}
		bool flag2 = false;
		foreach (Bar bar in source.Bars)
		{
			if (!flag2 && (bar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None)
			{
				flag2 = true;
				Bar mainMenu = GetMainMenu(destination);
				if (mainMenu != null)
				{
					mainMenu.MergeItems(bar);
					continue;
				}
			}
			Bar barFromName = GetBarFromName(bar.BarName, destination);
			if (barFromName != null)
			{
				barFromName.MergeItems(bar);
			}
			else
			{
				destination.Bars.Add(bar);
			}
		}
		source.Bars.Clear();
	}

	protected virtual Bar GetBarFromName(string barName, IBarItemsRepository repository)
	{
		foreach (Bar bar in repository.Bars)
		{
			if (bar.BarName == barName)
			{
				return bar;
			}
		}
		return null;
	}

	protected virtual Bar GetMainMenu(IBarItemsRepository repository)
	{
		foreach (Bar bar in repository.Bars)
		{
			if ((bar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None)
			{
				return bar;
			}
		}
		return null;
	}

	protected virtual int GetDestinationCategoryIndex(IBarItemsRepository destination, string category)
	{
		int num = -1;
		string text = category.ToLower();
		foreach (string category2 in destination.Categories)
		{
			num++;
			string text3 = category2.ToLower();
			if (text == text3)
			{
				return num;
			}
		}
		destination.Categories.Add(category);
		return destination.Categories.Count - 1;
	}
}
