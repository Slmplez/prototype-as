using System;
using System.Collections;
using Syncfusion.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

public class TabbedGroupsCollection : ArrayListExt
{
	private TabbedGroupedMDIManager manager;

	private Hashtable htGroupsByName = new Hashtable();

	public TabbedGroup this[string groupName]
	{
		get
		{
			if (htGroupsByName.Contains(groupName))
			{
				return (TabbedGroup)htGroupsByName[groupName];
			}
			return null;
		}
	}

	public new TabbedGroup this[int index]
	{
		get
		{
			return (TabbedGroup)base[index];
		}
		set
		{
			base[index] = value;
		}
	}

	internal TabbedGroupsCollection(TabbedGroupedMDIManager manager)
	{
		this.manager = manager;
	}

	[DocumentationExclude]
	protected override void AddHandlers(object item)
	{
		if (!(item is TabbedGroup))
		{
			throw new ArrayTypeMismatchException("An object of type TabbedGroup is expected. Instead an object of type " + item.GetType().ToString() + "  is being added to the TabbedGroupsCollection.");
		}
		TabbedGroup tabbedGroup = item as TabbedGroup;
		if (htGroupsByName.Contains(tabbedGroup.GroupName))
		{
			throw new Exception("A group with the above name is already found. Please specify a unique name.");
		}
		htGroupsByName[tabbedGroup.GroupName] = tabbedGroup;
		base.AddHandlers(item);
	}

	[DocumentationExclude]
	protected override void ReleaseHandler(object item)
	{
		TabbedGroup tabbedGroup = item as TabbedGroup;
		htGroupsByName.Remove(tabbedGroup.GroupName);
	}

	public bool IsUniqueName(string groupName)
	{
		return !htGroupsByName.Contains(groupName);
	}
}
