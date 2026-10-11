using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
[ToolboxItem(false)]
public class CommandBarControllerExt : CommandBarController
{
	internal const string DEF_SPACER = "_";

	private MainFrameBarManager manager;

	private CommandBarManager cbarManager;

	public CommandBarManager CBarManager => cbarManager;

	public MainFrameBarManager Manager
	{
		get
		{
			return manager;
		}
		set
		{
			manager = value;
		}
	}

	[DocumentationExclude]
	protected internal override string PersistenceID
	{
		get
		{
			if (manager != null)
			{
				return manager.PersistenceID;
			}
			return string.Empty;
		}
	}

	protected override CommandDockBar CreateCommandDockBar()
	{
		return new CommandDockBarExt(this);
	}

	public CommandBarControllerExt(CommandBarManager cbarManager)
	{
		this.cbarManager = cbarManager;
	}

	public void AppendCommandBarInfoForPersistance(CommandBar cbar)
	{
		if (cbar != null)
		{
			if (wpprCBController == null)
			{
				CreateCachedPersistanceData();
			}
			if (!(cbar is CommandBarExt) && manager != null && manager.ActiveChildBarManager != null)
			{
				string commandBarName = cbar.Name + "_" + manager.MdiChildrenFormName;
				wpprCBController.AddCommandBarData(cbar, commandBarName);
			}
			else
			{
				wpprCBController.AddCommandBarData(cbar);
			}
		}
	}

	protected override void ReadDeserializedData(CommandBar commandBar)
	{
		if (!(commandBar is CommandBarExt) && manager != null && manager.ActiveChildBarManager != null)
		{
			if (string.Empty != manager.MdiChildrenFormName)
			{
				string commandBarName = commandBar.Name + "_" + manager.MdiChildrenFormName;
				wpprCBController.ReadDeserializedData(commandBar, commandBarName);
			}
			else
			{
				wpprCBController.ReadDeserializedData(commandBar);
			}
		}
		else
		{
			base.ReadDeserializedData(commandBar);
		}
	}

	protected override CBCtrlrSerializationWrapper GetPersistanceData()
	{
		if (wpprCBController == null)
		{
			CreateCachedPersistanceData();
		}
		wpprCBController.InitSerailizationData(this);
		return wpprCBController;
	}

	private void CreateCachedPersistanceData()
	{
		wpprCBController = base.GetPersistanceData();
	}

	protected override void Dispose(bool disposing)
	{
		manager = null;
		cbarManager = null;
		base.Dispose(disposing);
	}

	public bool IsLoaded(Form form)
	{
		bool result = false;
		if (form != null)
		{
			ArrayList commandBarsForForm = manager.GetCommandBarsForForm(form);
			if (commandBarsForForm != null && commandBarsForForm.Count > 0)
			{
				bool flag = false;
				string empty = string.Empty;
				foreach (CommandBar item in commandBarsForForm)
				{
					if (!(item is CommandBarExt) && manager != null && manager.ActiveChildBarManager != null)
					{
						empty = item.Name + "_" + manager.MdiChildrenFormName;
						flag = wpprCBController.IsInitialized(empty);
					}
					else
					{
						flag = wpprCBController.IsInitialized(item);
					}
					if (!flag)
					{
						break;
					}
				}
				result = flag;
			}
		}
		return result;
	}
}
