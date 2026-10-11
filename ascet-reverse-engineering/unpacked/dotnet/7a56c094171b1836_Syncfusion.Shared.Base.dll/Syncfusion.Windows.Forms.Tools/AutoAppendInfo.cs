using System.Collections;

namespace Syncfusion.Windows.Forms.Tools;

public struct AutoAppendInfo
{
	private bool autoAppend;

	private string categoryName;

	private IList items;

	private int maxItems;

	public bool AutoAppend
	{
		get
		{
			return autoAppend;
		}
		set
		{
			autoAppend = value;
		}
	}

	public string CategoryName
	{
		get
		{
			return categoryName;
		}
		set
		{
			categoryName = value;
		}
	}

	public IList Items
	{
		get
		{
			return items;
		}
		set
		{
			items = value;
		}
	}

	public int MaxItems
	{
		get
		{
			return maxItems;
		}
		set
		{
			maxItems = value;
		}
	}

	public AutoAppendInfo(bool autoAppend, string categoryName, IList items, int maxItems)
	{
		this.autoAppend = autoAppend;
		this.categoryName = categoryName;
		this.items = items;
		this.maxItems = maxItems;
	}
}
