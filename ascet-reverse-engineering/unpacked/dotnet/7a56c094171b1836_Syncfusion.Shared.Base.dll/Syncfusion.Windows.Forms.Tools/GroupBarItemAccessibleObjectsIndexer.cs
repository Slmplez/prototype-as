using System.Collections;

namespace Syncfusion.Windows.Forms.Tools;

public class GroupBarItemAccessibleObjectsIndexer
{
	private ArrayList data;

	private GroupBar ctrlGroupBar;

	public GroupBarItemAccessibleObject this[int index]
	{
		get
		{
			GroupBarItemAccessibleObject groupBarItemAccessibleObject = GetItem(index);
			if (groupBarItemAccessibleObject == null)
			{
				groupBarItemAccessibleObject = ctrlGroupBar.CreateGroupBarItemAccessibilityInstance(index);
				SetItem(index, groupBarItemAccessibleObject);
			}
			return groupBarItemAccessibleObject;
		}
	}

	public GroupBarItemAccessibleObjectsIndexer(GroupBar gbctrl)
	{
		ctrlGroupBar = gbctrl;
		data = new ArrayList();
	}

	public GroupBarItemAccessibleObject GetItem(int index)
	{
		if (index >= data.Count)
		{
			return null;
		}
		return data[index] as GroupBarItemAccessibleObject;
	}

	public void SetItem(int index, GroupBarItemAccessibleObject accobj)
	{
		if (index >= data.Count)
		{
			object[] c = new object[index - data.Count + 1];
			data.AddRange(c);
		}
		data[index] = accobj;
	}

	public void ResetItem(int index)
	{
		if (index < data.Count)
		{
			data[index] = null;
		}
	}
}
