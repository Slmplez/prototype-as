using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItem(false)]
[DocumentationExclude]
public class CommandDockBarExt : CommandDockBar
{
	private CommandBarControllerExt controllerExt;

	private static bool s_isDevEnv = Application.ExecutablePath.ToLower().IndexOf("devenv.exe") >= 0;

	private CommandBarDockBorder DockBorder
	{
		get
		{
			if (Dock == DockStyle.Left)
			{
				return CommandBarDockBorder.Left;
			}
			if (Dock == DockStyle.Top)
			{
				return CommandBarDockBorder.Top;
			}
			if (Dock == DockStyle.Bottom)
			{
				return CommandBarDockBorder.Bottom;
			}
			if (Dock == DockStyle.Right)
			{
				return CommandBarDockBorder.Right;
			}
			return CommandBarDockBorder.None;
		}
	}

	public CommandDockBarExt(CommandBarControllerExt controller)
		: base(controller)
	{
		controllerExt = controller;
		if (controller == null || (!controller.CBarManager.BarManager.DesignMode && !s_isDevEnv))
		{
			base.TabIndex = 10000;
		}
	}

	protected override void OnPaintBackground(PaintEventArgs e)
	{
		bool flag = false;
		if (controllerExt.Manager != null)
		{
			flag = controllerExt.Manager.OnDrawDockBarBackground(new DockBarPaintEventArgs(e, DockBorder, base.ClientRectangle));
		}
		if (!flag)
		{
			base.OnPaintBackground(e);
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 7)
		{
			base.ActiveControl = null;
		}
		base.WndProc(ref m);
	}

	protected override void ResetTabIndex()
	{
	}

	protected override bool ProcessMnemonic(char charCode)
	{
		bool flag = false;
		if (DockBorder == CommandBarDockBorder.Top && (Control.ModifierKeys & Keys.Alt) > Keys.None)
		{
			flag = controllerExt.CBarManager.ProcessShortcut(charCode);
		}
		if (!flag)
		{
			return base.ProcessMnemonic(charCode);
		}
		return true;
	}

	public CommandBarExt GetMainMenuBar()
	{
		foreach (Control control in base.Controls)
		{
			if (control is CommandBarExt && (((CommandBarExt)control).Bar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None)
			{
				return control as CommandBarExt;
			}
		}
		return null;
	}

	protected override void Dispose(bool disposing)
	{
		controllerExt = null;
		base.Dispose(disposing);
	}
}
