using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Runtime.Serialization;
using Syncfusion.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
public class ListBarItem : BarItemEx, ICloneable
{
	private StringCollection childCaptions;

	private ArrayList tags;

	private IntList checkedIndices;

	private bool useNumbers = true;

	private ParentBarItem currentParent;

	private int beginningChildItemIndex = -1;

	private int lastChildItemIndex = -1;

	[Description("The items in the ChildCaptions list that should be marked as checked.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Data")]
	public virtual IntList CheckedIndices => checkedIndices;

	[Description("Specifies whether or not to use a numbers in the expanded list.")]
	[Category("Behavior")]
	[DefaultValue(true)]
	public bool UseNumberedList
	{
		get
		{
			return useNumbers;
		}
		set
		{
			useNumbers = value;
		}
	}

	internal ParentBarItem CurrentParent => currentParent;

	public ArrayList ExpandedBarItems
	{
		get
		{
			if (currentParent == null)
			{
				return null;
			}
			ArrayList arrayList = new ArrayList();
			for (int i = beginningChildItemIndex; i <= lastChildItemIndex; i++)
			{
				arrayList.Add(currentParent.Items[i]);
			}
			return arrayList;
		}
	}

	[Editor("System.Windows.Forms.Design.StringCollectionEditor, System.Design", "System.Drawing.Design.UITypeEditor, System.Drawing")]
	[Description("The captions for the expanded bar items.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Data")]
	public virtual StringCollection ChildCaptions => childCaptions;

	[Description("List of Application specific values corresponding to the ChildCaptions entries.")]
	[Category("Data")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public virtual ArrayList Tags => tags;

	[Category("Action")]
	[Description("Called before the item gets expanded by its parent.")]
	public event EventHandler BeforeExpand;

	[Description("Occurs after the expansion of the Captions into BarItems.")]
	[Category("Action")]
	public event EventHandler AfterExpand;

	public ListBarItem()
	{
		Init();
	}

	private void Init()
	{
		childCaptions = new StringCollection();
		tags = new ArrayList();
		checkedIndices = new IntList();
	}

	protected internal virtual void OnBeforeExpand()
	{
		if (this.BeforeExpand != null)
		{
			this.BeforeExpand(this, EventArgs.Empty);
		}
	}

	protected internal virtual void OnAfterExpand(EventArgs e)
	{
		if (this.AfterExpand != null)
		{
			this.AfterExpand(this, e);
		}
	}

	protected internal virtual void PostExpand(ParentBarItem parent, int firstChildIndex, int lastChildIndex)
	{
		currentParent = parent;
		beginningChildItemIndex = firstChildIndex;
		lastChildItemIndex = lastChildIndex;
		OnAfterExpand(EventArgs.Empty);
	}

	protected internal virtual void PopupClosed()
	{
		beginningChildItemIndex = -1;
		lastChildItemIndex = -1;
		currentParent = null;
	}

	public virtual void UpdateCheckedStates()
	{
		if (currentParent == null)
		{
			return;
		}
		for (int i = beginningChildItemIndex; i <= lastChildItemIndex; i++)
		{
			int num = i - beginningChildItemIndex;
			if (CheckedIndices.Contains(num))
			{
				currentParent.Items[i].Checked = true;
			}
			else
			{
				currentParent.Items[i].Checked = false;
			}
		}
	}

	[DocumentationExclude]
	protected internal virtual void ItemClicked(int index, BarItem item)
	{
		OnItemClicked(new ListBarItemClickedEventArgs(index));
	}

	protected ListBarItem(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		Init();
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			SerializationEntry current = enumerator.Current;
			switch (current.Name)
			{
			case "CheckedIndices":
			{
				ArrayList arrayList2 = (ArrayList)current.Value;
				foreach (int item in arrayList2)
				{
					CheckedIndices.Add(item);
				}
				break;
			}
			case "UseNumberedList":
				if (current.Value is string)
				{
					UseNumberedList = (bool)Convert.ChangeType(current.Value, typeof(bool));
				}
				else
				{
					UseNumberedList = (bool)current.Value;
				}
				break;
			case "ChildCaptions":
			{
				ArrayList arrayList = (ArrayList)current.Value;
				foreach (string item2 in arrayList)
				{
					ChildCaptions.Add(item2);
				}
				break;
			}
			}
		}
	}

	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
		ArrayList value = new ArrayList(CheckedIndices);
		info.AddValue("CheckedIndices", value);
		info.AddValue("UseNumberedList", UseNumberedList);
		value = new ArrayList(ChildCaptions);
		info.AddValue("ChildCaptions", value);
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public override object Clone()
	{
		ListBarItem listBarItem = new ListBarItem();
		CopyTo(listBarItem);
		return listBarItem;
	}

	public override void CopyTo(BarItem barItem)
	{
		if (!(barItem is ListBarItem))
		{
			throw new ArgumentException("barItem should be of type ListBarItem.", "barItem");
		}
		base.CopyTo(barItem);
		ListBarItem listBarItem = barItem as ListBarItem;
		listBarItem.CheckedIndices.Clear();
		foreach (int checkedIndex in CheckedIndices)
		{
			listBarItem.CheckedIndices.Add(checkedIndex);
		}
		listBarItem.UseNumberedList = UseNumberedList;
		listBarItem.ChildCaptions.Clear();
		StringEnumerator enumerator2 = ChildCaptions.GetEnumerator();
		try
		{
			while (enumerator2.MoveNext())
			{
				string current = enumerator2.Current;
				listBarItem.ChildCaptions.Add(current);
			}
		}
		finally
		{
			if (enumerator2 is IDisposable disposable)
			{
				disposable.Dispose();
			}
		}
		listBarItem.Tags.Clear();
		foreach (object tag in Tags)
		{
			if (tag is ICloneable)
			{
				listBarItem.Tags.Add(((ICloneable)tag).Clone());
			}
			else
			{
				listBarItem.Tags.Add(null);
			}
		}
	}
}
