using System;
using System.Collections;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class MdiSysMenuManager
{
	private static Hashtable htFormsVsProvider = new Hashtable();

	public static MdiSysMenuProvider GetProviderForForm(Form form)
	{
		if (form.IsMdiContainer)
		{
			if (htFormsVsProvider[form] == null)
			{
				MdiSysMenuProvider mdiSysMenuProvider = new MdiSysMenuProvider();
				mdiSysMenuProvider.MainForm = form;
				form.Closed += MdiContainer_Closed;
				htFormsVsProvider[form] = mdiSysMenuProvider;
			}
			return htFormsVsProvider[form] as MdiSysMenuProvider;
		}
		return null;
	}

	private static void MdiContainer_Closed(object sender, EventArgs e)
	{
		Form form = sender as Form;
		form.Closed -= MdiContainer_Closed;
		if (htFormsVsProvider[form] != null)
		{
			MdiSysMenuProvider mdiSysMenuProvider = htFormsVsProvider[form] as MdiSysMenuProvider;
			mdiSysMenuProvider.MainForm = null;
			htFormsVsProvider.Remove(form);
			mdiSysMenuProvider.Dispose();
		}
	}
}
