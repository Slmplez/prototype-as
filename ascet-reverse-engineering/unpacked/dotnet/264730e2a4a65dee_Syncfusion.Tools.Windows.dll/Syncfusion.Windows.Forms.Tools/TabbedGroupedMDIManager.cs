using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Collections;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(TabbedGroupedMDIManager), "ToolboxIcons.TabbedGroup.bmp")]
[Description("Represents the class that manages the tabbed grouped mdi.")]
public class TabbedGroupedMDIManager : TabbedMDIManager
{
	private const string DEF_GROUP_NAME = "TabbedGroup";

	private const string DEF_UNIQUE_NAME_FORMAT = "{0}{1}";

	private TabbedGroupsCollection m_collTabbedGroups;

	private bool m_bIsManualAction;

	private bool m_bIgnoreValidation;

	private static int m_iUniqueID;

	[Description("Gets the Tabbed groups collection.")]
	public TabbedGroupsCollection TabbedGroups => m_collTabbedGroups;

	public TabbedGroupedMDIManager()
	{
		m_collTabbedGroups = CreateGroupsCollection();
		InitTabbedGroupsCollection(m_collTabbedGroups);
	}

	private void TabbedGroups_CollectionChanged(object sender, CollectionChangeEventArgs args)
	{
		if (args.Action == CollectionChangeAction.Add)
		{
			TabbedGroup tabbedGroup = args.Element as TabbedGroup;
			Form[] mdiChildren = tabbedGroup.MdiChildren;
			Form[] array = mdiChildren;
			foreach (Form pFrmNewChild in array)
			{
				ActualizeFormAddition(pFrmNewChild, tabbedGroup);
			}
		}
		else if (args.Action == CollectionChangeAction.Remove)
		{
			TabbedGroup tabbedGroup2 = args.Element as TabbedGroup;
			Form[] mdiChildren2 = tabbedGroup2.MdiChildren;
			Form[] array2 = mdiChildren2;
			foreach (Form removedChildForm in array2)
			{
				ActualizeFormRemoval(removedChildForm, tabbedGroup2);
			}
		}
	}

	private void TabbedGroups_ItemPropertyChanged(object sender, SyncfusionPropertyChangedEventArgs args)
	{
		TabbedGroup tabbedGroup = sender as TabbedGroup;
		if (args.PropertyName == "FormAdded")
		{
			Form pFrmNewChild = args.NewValue as Form;
			ActualizeFormAddition(pFrmNewChild, tabbedGroup);
		}
		else if (args.PropertyName == "FormRemoved")
		{
			Form removedChildForm = args.NewValue as Form;
			ActualizeFormRemoval(removedChildForm, tabbedGroup);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (!disposing)
		{
			return;
		}
		base.Dispose(disposing);
		if (m_collTabbedGroups != null)
		{
			m_collTabbedGroups.CollectionChanged -= TabbedGroups_CollectionChanged;
			m_collTabbedGroups.ItemPropertyChanged -= TabbedGroups_ItemPropertyChanged;
			if (m_collTabbedGroups.Count > 0)
			{
				foreach (TabbedGroup collTabbedGroup in m_collTabbedGroups)
				{
					collTabbedGroup.Dispose();
				}
				m_collTabbedGroups.Clear();
				m_collTabbedGroups = null;
			}
		}
		GC.SuppressFinalize(this);
	}

	protected override void OnActiveTabToNewGroupMoved(Form mdiChild, TabHost prevHost, TabHost newHost)
	{
		if (mdiChild == null)
		{
			throw new ArgumentNullException("mdiChild");
		}
		if (newHost == null)
		{
			throw new ArgumentNullException("newHost");
		}
		if (m_bIsManualAction)
		{
			return;
		}
		m_bIgnoreValidation = true;
		if (prevHost != null)
		{
			TabbedGroup groupOfHost = GetGroupOfHost(prevHost);
			if (groupOfHost != null)
			{
				groupOfHost.RemoveForm(mdiChild);
				if (groupOfHost.MdiChildren.Length == 0)
				{
					m_collTabbedGroups.Remove(groupOfHost);
				}
			}
		}
		TabbedGroup tabbedGroup = GetGroupOfHost(newHost);
		if (tabbedGroup == null)
		{
			string groupName = ((m_strNewGroupName == null) ? GenerateUniqueGroupName() : m_strNewGroupName);
			tabbedGroup = new TabbedGroup(groupName);
			tabbedGroup.tabHost = newHost;
			m_collTabbedGroups.Add(tabbedGroup);
		}
		tabbedGroup.AddForm(mdiChild);
		m_bIgnoreValidation = false;
	}

	internal override void SetTabHostForGroup(string groupName, TabHost tabHost)
	{
		TabbedGroup tabbedGroup = m_collTabbedGroups[groupName];
		if (tabbedGroup == null)
		{
			tabbedGroup = new TabbedGroup(groupName);
			m_collTabbedGroups.Add(tabbedGroup);
		}
		tabbedGroup.tabHost = tabHost;
	}

	protected override void OnMdiChildRemoved(Form form)
	{
		GetGroupOfForm(form)?.RemoveForm(form, fireEvent: false);
		base.OnMdiChildRemoved(form);
	}

	private static string GenerateUniqueGroupName()
	{
		return string.Format("{0}{1}", "TabbedGroup", ++m_iUniqueID);
	}

	[DocumentationExclude]
	protected virtual TabbedGroupsCollection CreateGroupsCollection()
	{
		return new TabbedGroupsCollection(this);
	}

	[DocumentationExclude]
	protected virtual void InitTabbedGroupsCollection(TabbedGroupsCollection coll)
	{
		m_collTabbedGroups.CollectionChanged += TabbedGroups_CollectionChanged;
		m_collTabbedGroups.ItemPropertyChanged += TabbedGroups_ItemPropertyChanged;
	}

	public TabbedGroup GetGroupOfHost(TabHost host)
	{
		if (host == null)
		{
			throw new ArgumentNullException("host");
		}
		TabbedGroup result = null;
		foreach (TabbedGroup collTabbedGroup in m_collTabbedGroups)
		{
			if (collTabbedGroup.tabHost == host || collTabbedGroup.tabHost == null)
			{
				result = collTabbedGroup;
				break;
			}
		}
		return result;
	}

	public TabbedGroup GetGroupOfForm(Form form)
	{
		if (form == null)
		{
			throw new ArgumentNullException("form");
		}
		TabHost tabHostFromForm = GetTabHostFromForm(form);
		if (tabHostFromForm != null)
		{
			return GetGroupOfHost(tabHostFromForm);
		}
		return null;
	}

	public string GetUniqueGroupName()
	{
		return string.Empty;
	}

	public string GetGroupNameOfHost(TabHost tabHost)
	{
		if (tabHost == null)
		{
			throw new ArgumentNullException("tabHost");
		}
		string result = null;
		if (m_collTabbedGroups != null && m_collTabbedGroups.Count > 0)
		{
			foreach (TabbedGroup collTabbedGroup in m_collTabbedGroups)
			{
				if (collTabbedGroup.tabHost == tabHost)
				{
					result = collTabbedGroup.GroupName;
					break;
				}
			}
		}
		return result;
	}

	[DocumentationExclude]
	protected virtual void ActualizeFormAddition(Form pFrmNewChild, TabbedGroup pAddedGroup)
	{
		if (!m_bIgnoreValidation)
		{
			m_bIsManualAction = true;
			GetGroupOfForm(pFrmNewChild)?.RemoveForm(pFrmNewChild);
			pFrmNewChild.MdiParent = base.MdiParent;
			if (!IsValidTabHost(pAddedGroup.tabHost))
			{
				pAddedGroup.tabHost = null;
			}
			if (pAddedGroup.tabHost == null)
			{
				UpdateActiveTabHost(pFrmNewChild);
				EnsureUniqueGroup(pFrmNewChild);
				pAddedGroup.tabHost = GetTabHostFromForm(pFrmNewChild);
				ValidateGroupOrder();
			}
			else
			{
				pFrmNewChild.Activate();
				MoveActiveDocTo(pAddedGroup.tabHost, pFrmNewChild);
			}
			pAddedGroup.AddForm(pFrmNewChild, fireEvent: false);
			pFrmNewChild.Show();
			m_bIsManualAction = false;
		}
	}

	[DocumentationExclude]
	protected virtual void ActualizeFormRemoval(Form removedChildForm, TabbedGroup group)
	{
		if (!m_bIgnoreValidation)
		{
			removedChildForm.MdiParent = null;
			removedChildForm.Visible = false;
		}
	}

	private void EnsureUniqueGroup(Form form)
	{
		TabHost tabHostFromForm = GetTabHostFromForm(form);
		if (tabHostFromForm != null && tabHostFromForm.MDITabPanel.TabCount != 1)
		{
			form.Activate();
			if (base.Horizontal)
			{
				CreateNewHorizontalGroup();
			}
			else
			{
				CreateNewVerticalGroup();
			}
		}
	}

	public void ValidateGroupOrder()
	{
		ArrayListExt tabGroupHostsInternal = base.TabGroupHostsInternal;
		ArrayListExt splitterHostsInternal = base.SplitterHostsInternal;
		if (tabGroupHostsInternal.Count == 0)
		{
			return;
		}
		bool flag = true;
		bool flag2 = false;
		while (flag)
		{
			int num = -1;
			bool flag3 = false;
			foreach (TabbedGroup collTabbedGroup in m_collTabbedGroups)
			{
				if (!IsValidTabHost(collTabbedGroup.tabHost))
				{
					collTabbedGroup.tabHost = null;
				}
				if (collTabbedGroup.tabHost != null)
				{
					num++;
					if (tabGroupHostsInternal[num] != collTabbedGroup.tabHost)
					{
						flag2 = true;
						flag3 = true;
						int num2 = tabGroupHostsInternal.IndexOf(collTabbedGroup.tabHost);
						tabGroupHostsInternal.Move(num2, num, 1);
						splitterHostsInternal.Move(num2, num, 1);
						break;
					}
				}
			}
			if (!flag3)
			{
				break;
			}
		}
		if (flag2)
		{
			MdiClient.PerformLayout();
		}
	}
}
