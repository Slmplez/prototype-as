using System;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

public class DropDownWindow : TopLevelWindow
{
	[DocumentationExclude]
	protected override CreateParams CreateParams
	{
		[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle |= 128;
			if (Environment.OSVersion.Platform != PlatformID.Win32NT || Environment.OSVersion.Version.Major > 5)
			{
				createParams.ExStyle |= 134217728;
			}
			createParams.ClassStyle |= 2048;
			return createParams;
		}
	}

	public DropDownWindow()
	{
		SuspendLayout();
		SetStyle(ControlStyles.StandardClick | ControlStyles.StandardDoubleClick, value: false);
		SetStyle(ControlStyles.Opaque, value: true);
		SetStyle(ControlStyles.Selectable, value: false);
		base.TabStop = false;
		base.HScroll = false;
		base.VScroll = false;
		base.Visible = false;
		ResumeLayout(performLayout: false);
	}
}
