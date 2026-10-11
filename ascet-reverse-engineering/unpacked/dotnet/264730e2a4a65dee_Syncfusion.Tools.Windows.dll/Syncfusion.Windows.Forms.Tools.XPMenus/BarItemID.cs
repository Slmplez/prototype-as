using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
[DocumentationExclude]
public struct BarItemID
{
	public string barItemID;

	public string formTypeName;

	private static BarItemID emptyID;

	public static BarItemID Empty => emptyID;

	internal BarItemID(string barItemID, string formTypeName)
	{
		this.barItemID = barItemID;
		this.formTypeName = formTypeName;
	}

	static BarItemID()
	{
		emptyID = new BarItemID("", "");
	}

	public static BarItemID FromBarItem(BarItem item)
	{
		if (item.Manager == null)
		{
			throw new ApplicationException("A BarItem not part of a BarManager's Items list is encountered.");
		}
		return new BarItemID(item.ID, BarManager.GetFormTypeName(item.Manager));
	}

	public static bool operator ==(BarItemID lhs, BarItemID rhs)
	{
		if ((object)lhs == null || (object)rhs == null)
		{
			return false;
		}
		return lhs.Equals(rhs);
	}

	public static bool operator !=(BarItemID lhs, BarItemID rhs)
	{
		if ((object)lhs == null || (object)rhs == null)
		{
			return false;
		}
		return !lhs.Equals(rhs);
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	public new string ToString()
	{
		return formTypeName + "\\" + barItemID;
	}

	public static bool IsItemContainedInManager(BarItemID itemId, string formTypeName)
	{
		return IsItemContainedInManager(itemId.ToString(), formTypeName);
	}

	public static bool IsItemContainedInManager(string itemIdString, string formTypeName)
	{
		if (itemIdString.IndexOf(formTypeName + "\\") == 0)
		{
			return true;
		}
		return false;
	}

	public override bool Equals(object o)
	{
		bool result = false;
		if ((object)this == o)
		{
			return true;
		}
		if (o is BarItemID barItemID)
		{
			result = barItemID.barItemID == this.barItemID && barItemID.formTypeName == formTypeName;
		}
		return result;
	}
}
