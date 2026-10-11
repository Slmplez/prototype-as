using System;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class DateTimePickerAdvMenu : ContextMenu, IDateTimePickerAdvMenu
{
	private MenuItem cutItem;

	private MenuItem copyItem;

	private MenuItem pasteItem;

	private MenuItem noDateTimeItem;

	private bool m_bInitialized;

	public bool NoDateTimeChecked
	{
		get
		{
			return noDateTimeItem.Checked;
		}
		set
		{
			noDateTimeItem.Checked = value;
		}
	}

	public bool ShowNoDateTime
	{
		get
		{
			return noDateTimeItem.Visible;
		}
		set
		{
			noDateTimeItem.Visible = value;
		}
	}

	public bool CopyEnabled
	{
		get
		{
			return copyItem.Enabled;
		}
		set
		{
			copyItem.Enabled = value;
		}
	}

	public bool CutEnabled
	{
		get
		{
			return cutItem.Enabled;
		}
		set
		{
			cutItem.Enabled = value;
		}
	}

	public bool PasteEnabled
	{
		get
		{
			return pasteItem.Enabled;
		}
		set
		{
			pasteItem.Enabled = value;
		}
	}

	public bool NoDateTimeEnabled
	{
		get
		{
			return noDateTimeItem.Enabled;
		}
		set
		{
			noDateTimeItem.Enabled = value;
		}
	}

	public event EventHandler Cut;

	public event EventHandler Copy;

	public event EventHandler Paste;

	public event EventHandler NoDateTime;

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (cutItem != null)
			{
				cutItem.Dispose();
				cutItem = null;
			}
			if (copyItem != null)
			{
				copyItem.Dispose();
				copyItem = null;
			}
			if (pasteItem != null)
			{
				pasteItem.Dispose();
				pasteItem = null;
			}
			if (noDateTimeItem != null)
			{
				noDateTimeItem.Dispose();
				noDateTimeItem = null;
			}
		}
		base.Dispose(disposing);
	}

	protected override void OnPopup(EventArgs e)
	{
		if (!m_bInitialized)
		{
			InitMenuItems();
		}
		base.OnPopup(e);
	}

	private void InitMenuItems()
	{
		cutItem = new MenuItem("Cut", CutItem_Click, Shortcut.CtrlX);
		copyItem = new MenuItem("Copy", CopyItem_Click, Shortcut.CtrlC);
		pasteItem = new MenuItem("Paste", PasteItem_Click, Shortcut.CtrlV);
		noDateTimeItem = new MenuItem("No Date/Time", NoDateTimeItem_Click, Shortcut.Del);
		cutItem.ShowShortcut = false;
		copyItem.ShowShortcut = false;
		pasteItem.ShowShortcut = false;
		noDateTimeItem.ShowShortcut = false;
		base.MenuItems.Add(cutItem);
		base.MenuItems.Add(copyItem);
		base.MenuItems.Add(pasteItem);
		base.MenuItems.Add(new MenuItem("-"));
		base.MenuItems.Add(noDateTimeItem);
		m_bInitialized = true;
	}

	private void CutItem_Click(object sender, EventArgs e)
	{
		if (this.Cut != null)
		{
			this.Cut(this, e);
		}
	}

	private void CopyItem_Click(object sender, EventArgs e)
	{
		if (this.Copy != null)
		{
			this.Copy(this, e);
		}
	}

	private void PasteItem_Click(object sender, EventArgs e)
	{
		if (this.Paste != null)
		{
			this.Paste(this, e);
		}
	}

	private void NoDateTimeItem_Click(object sender, EventArgs e)
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

	[SpecialName]
	void IDateTimePickerAdvMenu.add_Popup(EventHandler P_0)
	{
		base.Popup += P_0;
	}

	[SpecialName]
	void IDateTimePickerAdvMenu.remove_Popup(EventHandler P_0)
	{
		base.Popup -= P_0;
	}
}
