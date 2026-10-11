using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms.Design;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
internal class RecordNavigationControlDesigner : ParentControlDesigner
{
	protected override void Dispose(bool disposing)
	{
		if (disposing && base.Component is RecordNavigationControl recordNavigationControl)
		{
			recordNavigationControl.Click -= ControlClick;
		}
		base.Dispose(disposing);
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		if (component is RecordNavigationControl recordNavigationControl)
		{
			recordNavigationControl.Click += ControlClick;
		}
	}

	private void ControlClick(object sender, EventArgs e)
	{
		((ISelectionService)GetService(typeof(ISelectionService)))?.SetSelectedComponents(new object[1] { sender });
	}
}
