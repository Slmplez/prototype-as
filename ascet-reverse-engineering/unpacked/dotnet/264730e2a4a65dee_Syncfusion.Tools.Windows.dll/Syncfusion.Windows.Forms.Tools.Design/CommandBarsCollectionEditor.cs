using System;
using System.ComponentModel.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class CommandBarsCollectionEditor : CollectionEditor
{
	public CommandBarsCollectionEditor(Type type)
		: base(type)
	{
	}

	protected override void DestroyInstance(object instance)
	{
		CommandBar commandBar = instance as CommandBar;
		if (commandBar.Parent != null)
		{
			if (commandBar.Floating)
			{
				CommandBarForm commandBarForm = commandBar.Parent as CommandBarForm;
				commandBarForm.Visible = false;
				commandBarForm.Controls.Remove(commandBar);
				commandBarForm.Close();
			}
			else
			{
				ICommandBarDesignerInvoke commandBarDesignerInvoke = commandBar;
				CommandDockBar commandDockBarParent = commandBarDesignerInvoke.GetCommandDockBarParent();
				if (commandBarDesignerInvoke.CommandBarBaseVisibility)
				{
					commandBarDesignerInvoke.CommandBarBaseVisibility = false;
					commandDockBarParent.RemoveCommandBar(commandBar);
				}
				else
				{
					commandDockBarParent.Controls.Remove(commandBar);
				}
			}
		}
		base.DestroyInstance(instance);
	}
}
