using System;
using System.ComponentModel.Design;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class ParentBarItemDesigner : ComponentDesigner
{
	private DesignerVerbCollection verbs;

	private static string VerbCaption = "Fallback to Inherited State";

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (verbs == null)
			{
				verbs = new DesignerVerbCollection();
				verbs.Add(new DesignerVerb(VerbCaption, OnFallback));
			}
			return verbs;
		}
	}

	private void OnFallback(object sender, EventArgs eevent)
	{
		if (base.Component is ParentBarItem parentBarItem)
		{
			parentBarItem.UpdatedBarItemPositions = null;
			parentBarItem.UpdatedSeparatorPositions = null;
		}
	}
}
