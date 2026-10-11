using System.Collections;
using System.ComponentModel;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Collections;

public class VisuallyInheritableList : ArrayListExt
{
	private ArrayList newItemsInDerivedClass;

	private IDesignable parent;

	private ArrayList designTimeBaseClassCopy;

	private bool bApplyingDesignTimeChanges;

	private ArrayList BaseClassCopy => designTimeBaseClassCopy;

	public IDesignable Parent
	{
		get
		{
			return parent;
		}
		set
		{
			parent = value;
		}
	}

	public IntListDesignTime DesignTimeChanges
	{
		get
		{
			if (BaseClassCopy == null)
			{
				return null;
			}
			return GetDesignTimeChanges();
		}
		set
		{
			designTimeBaseClassCopy = null;
			if (value != null)
			{
				InitBaseClassCopy();
				SetDesignTimeChanges(value);
			}
			else
			{
				SetDesignTimeChanges(BaseClassCopy);
			}
		}
	}

	public VisuallyInheritableList()
	{
	}

	public VisuallyInheritableList(object[] items)
		: base(items)
	{
	}

	public VisuallyInheritableList(IDesignable parent)
	{
		this.parent = parent;
	}

	[DocumentationExclude]
	public void ReinitBaseClassCopy()
	{
		designTimeBaseClassCopy = null;
		newItemsInDerivedClass = null;
		InitBaseClassCopy();
	}

	private void InitBaseClassCopy()
	{
		if (parent != null && parent.DesignMode)
		{
			if (designTimeBaseClassCopy == null)
			{
				designTimeBaseClassCopy = new ArrayList(this);
			}
			if (newItemsInDerivedClass == null)
			{
				newItemsInDerivedClass = new ArrayList();
			}
		}
	}

	protected virtual bool ShouldContinueIfItemsCountChanged()
	{
		return true;
	}

	protected virtual void SetDesignTimeChanges(ArrayList newPositionList)
	{
		if (newPositionList == null || (newPositionList.Count != Count && !ShouldContinueIfItemsCountChanged()))
		{
			return;
		}
		if (newPositionList.Count == 0)
		{
			Clear();
			return;
		}
		int num = 0;
		ArrayList arrayList = new ArrayList();
		for (int i = 0; i < newPositionList.Count; i++)
		{
			arrayList.Add(-1);
		}
		foreach (int newPosition in newPositionList)
		{
			if (newPosition < Count)
			{
				arrayList[num] = this[newPosition];
				num++;
			}
		}
		if (num < arrayList.Count)
		{
			arrayList.RemoveRange(num, arrayList.Count - num);
		}
		bApplyingDesignTimeChanges = true;
		num = 0;
		foreach (object item in arrayList)
		{
			this[num] = item;
			num++;
		}
		if (num < Count)
		{
			RemoveRange(num, Count - num);
		}
		ResumeEvents(throwEvent: false);
		bApplyingDesignTimeChanges = false;
	}

	protected virtual IntListDesignTime GetDesignTimeChanges()
	{
		if (BaseClassCopy == null || BaseClassCopy.Count == 0)
		{
			return null;
		}
		IntListDesignTime intListDesignTime = new IntListDesignTime();
		for (int i = 0; i < Count; i++)
		{
			object obj = this[i];
			int j;
			for (j = 0; j < designTimeBaseClassCopy.Count; j++)
			{
				object item = designTimeBaseClassCopy[j];
				if (IsIdenticalObjects(obj, item))
				{
					intListDesignTime.Add(j);
					break;
				}
			}
			if (j == designTimeBaseClassCopy.Count)
			{
				designTimeBaseClassCopy.Add(obj);
				intListDesignTime.Add(j);
			}
		}
		return intListDesignTime;
	}

	protected virtual bool IsIdenticalObjects(object item1, object item2)
	{
		return item1 == item2;
	}

	protected override void OnCollectionChanging()
	{
		InitBaseClassCopy();
		base.OnCollectionChanging();
	}

	protected override void OnCollectionChanged(CollectionChangeEventArgs args)
	{
		if (!bApplyingDesignTimeChanges)
		{
			if (args.Action == CollectionChangeAction.Add && newItemsInDerivedClass != null && (designTimeBaseClassCopy == null || !designTimeBaseClassCopy.Contains(args.Element)))
			{
				newItemsInDerivedClass.Add(args.Element);
			}
			if (args.Action == CollectionChangeAction.Remove && designTimeBaseClassCopy != null && newItemsInDerivedClass != null && newItemsInDerivedClass.Contains(args.Element))
			{
				newItemsInDerivedClass.Remove(args.Element);
				designTimeBaseClassCopy.Remove(args.Element);
			}
		}
		base.OnCollectionChanged(args);
	}
}
