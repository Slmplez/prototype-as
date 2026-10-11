using System;

namespace Syncfusion.Windows.Forms.Tools;

public class WizardPageSelectEventArgs : EventArgs
{
	private WizardPage page;

	public WizardPage Page
	{
		get
		{
			return page;
		}
		set
		{
			page = value;
		}
	}

	public WizardPageSelectEventArgs(WizardPage page)
	{
		this.page = page;
	}
}
