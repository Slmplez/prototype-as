using System;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class MdiListMoreWindowsItem : StandAloneBarItem
{
	public Form[] forms;

	public Form active;

	public MdiListMoreWindowsItem(Form active, Form[] all)
	{
		forms = all;
		this.active = active;
	}

	protected override void OnItemClicked(EventArgs args)
	{
		if (forms == null)
		{
			return;
		}
		try
		{
			MdiWindowDialog mdiWindowDialog = new MdiWindowDialog();
			mdiWindowDialog.MaximizeBox = false;
			try
			{
				mdiWindowDialog.SetItems(active, forms);
				if (mdiWindowDialog.ShowDialog() == DialogResult.OK)
				{
					mdiWindowDialog.ActiveChildForm.Activate();
					if (mdiWindowDialog.ActiveChildForm.ActiveControl != null && !mdiWindowDialog.ActiveChildForm.ActiveControl.Focused)
					{
						mdiWindowDialog.ActiveChildForm.ActiveControl.Focus();
					}
				}
			}
			finally
			{
				mdiWindowDialog?.Dispose();
			}
		}
		catch
		{
		}
	}
}
