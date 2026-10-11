using System;
using System.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
public class MaskedEditDataGroupInfoCollection : CollectionBase
{
	[DocumentationExclude]
	private MaskedEditBox owner;

	public MaskedEditBox Owner
	{
		get
		{
			return owner;
		}
		set
		{
			owner = value;
		}
	}

	public MaskedEditDataGroupInfo this[int index]
	{
		get
		{
			return (MaskedEditDataGroupInfo)base.List[index];
		}
		set
		{
			Insert(index, value);
		}
	}

	public MaskedEditDataGroupInfo this[string dataGroupName]
	{
		get
		{
			int num = 0;
			num = GetIndexByName(dataGroupName);
			if (num != -1)
			{
				return (MaskedEditDataGroupInfo)base.List[num];
			}
			return new MaskedEditDataGroupInfo();
		}
		set
		{
			int num = 0;
			num = GetIndexByName(dataGroupName);
			if (num != -1)
			{
				Insert(num, value);
			}
		}
	}

	private int GetIndexByName(string groupName)
	{
		foreach (MaskedEditDataGroupInfo item in base.List)
		{
			if (item.DataGroupName == groupName)
			{
				return base.List.IndexOf(item);
			}
		}
		return -1;
	}

	public void Insert(int index, MaskedEditDataGroupInfo item)
	{
		base.List.Insert(index, item);
	}

	[DocumentationExclude]
	protected override void OnInsert(int index, object value)
	{
		base.OnInsert(index, value);
	}

	[DocumentationExclude]
	protected override void OnInsertComplete(int index, object value)
	{
		base.OnInsertComplete(index, value);
		MaskedEditDataGroupInfo maskedEditDataGroupInfo = value as MaskedEditDataGroupInfo;
		maskedEditDataGroupInfo.dataGroups = this;
		if (owner != null && owner.Parent != null && owner.Parent.Container != null)
		{
			owner.Parent.Container.Add(maskedEditDataGroupInfo);
		}
	}

	public MaskedEditDataGroupInfoCollection(MaskedEditBox maskedEdit)
	{
		owner = maskedEdit;
	}

	public MaskedEditDataGroupInfoCollection()
	{
	}

	public int Add(MaskedEditDataGroupInfo dataGroup)
	{
		if (dataGroup != null)
		{
			dataGroup.dataGroups = this;
			return base.List.Add(dataGroup);
		}
		return -1;
	}

	public void Remove(MaskedEditDataGroupInfo dataGroup)
	{
		if (base.List.Contains(dataGroup))
		{
			base.List.Remove(dataGroup);
			if (owner != null && owner.Parent != null)
			{
				owner.Parent.Container.Remove(dataGroup);
			}
			dataGroup.dataGroups = null;
		}
	}

	public bool Contains(MaskedEditDataGroupInfo dataGroup)
	{
		return base.List.Contains(dataGroup);
	}

	public void CopyTo(MaskedEditDataGroupInfo[] array, int index)
	{
		base.List.CopyTo(array, index);
	}

	public string GetDataGroupValue(MaskedEditDataGroupInfo val)
	{
		if (owner == null)
		{
			return "";
		}
		return owner.GetDataGroupValue(this, base.List.IndexOf(val));
	}
}
