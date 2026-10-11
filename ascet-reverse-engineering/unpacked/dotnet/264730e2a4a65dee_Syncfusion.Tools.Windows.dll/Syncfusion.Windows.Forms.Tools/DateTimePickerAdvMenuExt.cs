using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
internal class DateTimePickerAdvMenuExt : PopupMenu, IDateTimePickerAdvMenu
{
	private ParentBarItem parentBarItem;

	private BarItem cutBarItem;

	private BarItem copyBarItem;

	private BarItem pasteBarItem;

	private BarItem noDateTimeBarItem;

	public bool NoDateTimeChecked
	{
		get
		{
			return noDateTimeBarItem.Checked;
		}
		set
		{
			noDateTimeBarItem.Checked = value;
		}
	}

	public bool ShowNoDateTime
	{
		get
		{
			return noDateTimeBarItem.Visible;
		}
		set
		{
			noDateTimeBarItem.Visible = value;
		}
	}

	public bool CopyEnabled
	{
		get
		{
			return copyBarItem.Enabled;
		}
		set
		{
			copyBarItem.Enabled = value;
		}
	}

	public bool CutEnabled
	{
		get
		{
			return cutBarItem.Enabled;
		}
		set
		{
			cutBarItem.Enabled = value;
		}
	}

	public bool PasteEnabled
	{
		get
		{
			return pasteBarItem.Enabled;
		}
		set
		{
			pasteBarItem.Enabled = value;
		}
	}

	public bool NoDateTimeEnabled
	{
		get
		{
			return noDateTimeBarItem.Enabled;
		}
		set
		{
			noDateTimeBarItem.Enabled = value;
		}
	}

	public event EventHandler Cut;

	public event EventHandler Copy;

	public event EventHandler Paste;

	public event EventHandler NoDateTime;

	public new event EventHandler Popup;

	public DateTimePickerAdvMenuExt()
	{
		parentBarItem = new ParentBarItem();
		base.ParentBarItem = parentBarItem;
		cutBarItem = new BarItem("Cut", CutBarItem_Click);
		copyBarItem = new BarItem("Copy", CopyBarItem_Click);
		pasteBarItem = new BarItem("Paste", PasteBarItem_Click);
		noDateTimeBarItem = new BarItem("No Date/Time", NoDateTimeBarItem_Click);
		parentBarItem.Items.Add(cutBarItem);
		parentBarItem.Items.Add(copyBarItem);
		parentBarItem.Items.Add(pasteBarItem);
		parentBarItem.Items.Add(noDateTimeBarItem);
		parentBarItem.Popup += ParetnBarItem_Popup;
	}

	private void ParetnBarItem_Popup(object sender, EventArgs e)
	{
		if (this.Popup != null)
		{
			this.Popup(this, e);
		}
	}

	private void CutBarItem_Click(object sender, EventArgs e)
	{
		if (this.Cut != null)
		{
			this.Cut(this, e);
		}
	}

	private void CopyBarItem_Click(object sender, EventArgs e)
	{
		if (this.Copy != null)
		{
			this.Copy(this, e);
		}
	}

	private void PasteBarItem_Click(object sender, EventArgs e)
	{
		if (this.Paste != null)
		{
			this.Paste(this, e);
		}
	}

	private void NoDateTimeBarItem_Click(object sender, EventArgs e)
	{
		if (this.NoDateTime != null)
		{
			this.NoDateTime(this, e);
		}
	}

	public void ShowPopup(Control control, Point pt)
	{
		Show(control, pt);
	}
}
