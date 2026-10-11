using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class MdiListBarItem : ListBarItem
{
	private const string DEF_TEXT = "Window List";

	private bool moreWindowsAvailable;

	private BarItem moreWindowsItem;

	private ParentBarItem latestParent;

	private int mdiChildListSize = 10;

	private string m_strText = SR.GetString("MdiListMenuItem");

	[Category("Behavior")]
	[DefaultValue(10)]
	[Description("Specifies the number of mdi child links to be shown before the \"More Items\" BarItem.")]
	public virtual int MdiListSize
	{
		get
		{
			return mdiChildListSize;
		}
		set
		{
			mdiChildListSize = value;
		}
	}

	[ReadOnly(true)]
	public override string Text
	{
		get
		{
			return m_strText;
		}
		set
		{
			base.Text = value;
		}
	}

	[ReadOnly(true)]
	public override StringCollection ChildCaptions => base.ChildCaptions;

	[ReadOnly(true)]
	public override ArrayList Tags => base.Tags;

	public override BarManager Manager
	{
		set
		{
			if (value != base.Manager)
			{
				UnsubscribeFromEvents(base.Manager);
				SubscribeForEvents(value);
			}
			base.Manager = value;
		}
	}

	public MdiListBarItem()
	{
		ID = Text;
	}

	protected internal override void OnBeforeExpand()
	{
		UnsubscribeFromEvents(Manager);
		SubscribeForEvents(Manager);
		string text = SR.GetString("MdiListMenuItem");
		m_strText = ((text == null) ? "Window List" : m_strText);
		ChildCaptions.Clear();
		Tags.Clear();
		CheckedIndices.Clear();
		moreWindowsAvailable = false;
		if (base.DesignMode || barManager == null || barManager.Form == null || !barManager.Form.IsMdiContainer || barManager.DesignMode || barManager.Form.MdiChildren.Length == 0)
		{
			return;
		}
		Form form = barManager.Form;
		Form[] mdiChildren = form.MdiChildren;
		int num = -1;
		Form[] array = mdiChildren;
		foreach (Form form2 in array)
		{
			if (form2.Visible && !(form2 is ITabHost) && !(form2 is ISplitterHost))
			{
				num++;
				if (num < MdiListSize)
				{
					ChildCaptions.Add(form2.Text);
				}
				Tags.Add(form2);
				if (form.ActiveMdiChild == form2)
				{
					CheckedIndices.Add(num);
				}
				if (num == MdiListSize - 1)
				{
					moreWindowsAvailable = true;
				}
			}
		}
		base.OnBeforeExpand();
	}

	protected internal override void PostExpand(ParentBarItem parent, int firstChild, int lastChild)
	{
		if (moreWindowsAvailable)
		{
			Form[] array = new Form[Tags.Count];
			for (int i = 0; i < Tags.Count; i++)
			{
				array[i] = Tags[i] as Form;
			}
			latestParent = parent;
			moreWindowsItem = new MdiListMoreWindowsItem(barManager.Form, array);
			moreWindowsItem.Text = SR.GetString("MoreWindowsCaptionInMenu");
			moreWindowsItem.IsRecentlyUsedItem = IsRecentlyUsedItem;
			parent.Items.Insert(lastChild + 1, moreWindowsItem);
			parent.PopupClosed += PopupClosed;
		}
		base.PostExpand(parent, firstChild, lastChild);
	}

	private void PopupClosed(object sender, EventArgs e)
	{
		if (latestParent != null && moreWindowsItem != null)
		{
			latestParent.Items.Remove(moreWindowsItem);
			latestParent.PopupClosed -= PopupClosed;
			latestParent = null;
			moreWindowsItem = null;
		}
	}

	private void SubscribeForEvents(BarManager barMan)
	{
		if (barMan != null)
		{
			MdiClient mDIClient = MainFrameBarManager.GetMDIClient(barMan);
			if (mDIClient != null)
			{
				mDIClient.ControlRemoved += mdiClient_ControlRemoved;
			}
		}
	}

	private void UnsubscribeFromEvents(BarManager barMan)
	{
		if (barMan != null)
		{
			MdiClient mDIClient = MainFrameBarManager.GetMDIClient(barMan);
			if (mDIClient != null)
			{
				mDIClient.ControlRemoved -= mdiClient_ControlRemoved;
			}
		}
	}

	private void mdiClient_ControlRemoved(object sender, ControlEventArgs e)
	{
		if (e.Control is Form value)
		{
			int num = Tags.IndexOf(value);
			if (num >= 0)
			{
				Tags.RemoveAt(num);
			}
		}
	}

	protected override void OnItemClicked(EventArgs args)
	{
		if (args is ListBarItemClickedEventArgs)
		{
			ListBarItemClickedEventArgs e = args as ListBarItemClickedEventArgs;
			if (Tags[e.IndexClicked] is Form form)
			{
				form.Activate();
			}
		}
		base.OnItemClicked(args);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			Tags.Clear();
		}
		base.Dispose(disposing);
	}
}
