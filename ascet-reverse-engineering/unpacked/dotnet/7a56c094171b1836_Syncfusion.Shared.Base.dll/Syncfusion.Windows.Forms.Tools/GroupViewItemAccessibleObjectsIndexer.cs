using System.Collections;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class GroupViewItemAccessibleObjectsIndexer
{
	private ArrayList data;

	private GroupView ctrlGroupView;

	[Browsable(false)]
	public GroupViewItemAccessibleObject this[int index]
	{
		get
		{
			GroupViewItemAccessibleObject groupViewItemAccessibleObject = GetItem(index);
			if (groupViewItemAccessibleObject == null)
			{
				groupViewItemAccessibleObject = ctrlGroupView.CreateGroupViewItemAccessibilityInstance(index);
				SetItem(index, groupViewItemAccessibleObject);
			}
			return groupViewItemAccessibleObject;
		}
	}

	public GroupViewItemAccessibleObjectsIndexer(GroupView gvctrl)
	{
		ctrlGroupView = gvctrl;
		data = new ArrayList();
	}

	public GroupViewItemAccessibleObject GetItem(int index)
	{
		if (index >= data.Count)
		{
			return null;
		}
		return data[index] as GroupViewItemAccessibleObject;
	}

	public void SetItem(int index, GroupViewItemAccessibleObject accobj)
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
