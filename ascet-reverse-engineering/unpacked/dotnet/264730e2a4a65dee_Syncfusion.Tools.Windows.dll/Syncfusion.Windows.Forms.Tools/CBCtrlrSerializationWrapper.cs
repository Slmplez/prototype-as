using System;
using System.Collections;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[DocumentationExclude]
public class CBCtrlrSerializationWrapper
{
	private const string DEF_SPACER = "_";

	public CommandBarDockBorder cbBorder;

	protected Hashtable htCBarWrapper = new Hashtable();

	public CBCtrlrSerializationWrapper(CommandBarController cbc)
	{
		InitSerailizationData(cbc);
	}

	public void InitSerailizationData(CommandBarController cbc)
	{
		cbBorder = cbc.EnabledDockBorders;
		foreach (CommandBar commandBar in cbc.CommandBars)
		{
			AddCommandBarData(commandBar);
		}
	}

	private string GetCommandBarName(CommandBar cbar)
	{
		string result = string.Empty;
		if (cbar != null)
		{
			result = ((!(cbar is CommandBarExt commandBarExt) || commandBarExt.MdiChildrenFormName == string.Empty) ? cbar.Name : (cbar.Name + "_" + commandBarExt.MdiChildrenFormName));
		}
		return result;
	}

	public void AddCommandBarData(CommandBar cbar)
	{
		string commandBarName = GetCommandBarName(cbar);
		AddCommandBarData(cbar, commandBarName);
	}

	public void AddCommandBarData(CommandBar cbar, string commandBarName)
	{
		if (cbar.Visible)
		{
			if (commandBarName == string.Empty)
			{
				throw new ApplicationException("All CommandBars must have an unique name property for proper persistence.");
			}
			if (!(Activator.CreateInstance(cbar.Controller.CommandBarSerializer) is ICommandBarSerializer commandBarSerializer))
			{
				throw new ApplicationException("Invalid CommandBar Serializer.");
			}
			if (!(cbar is CommandBarExt commandBarExt) || !(commandBarExt.Bar.Manager is MainFrameBarManager mainFrameBarManager) || !mainFrameBarManager.customAddedBarsVsNames.Contains(commandBarExt.Bar.BarName) || mainFrameBarManager.AutoSaveCustomData || mainFrameBarManager.ForceSaveLoadCustomData)
			{
				commandBarSerializer.GetCommandBarData(cbar);
				htCBarWrapper[commandBarName] = commandBarSerializer;
			}
		}
	}

	internal void RemoveCommandBarData(CommandBar cbar)
	{
		string commandBarName = GetCommandBarName(cbar);
		RemoveCommandBarData(commandBarName);
	}

	internal void RemoveCommandBarData(string commandBarName)
	{
		if (commandBarName == string.Empty)
		{
			throw new ApplicationException("All CommandBars must have an unique name property for proper persistence.");
		}
		if (htCBarWrapper.Contains(commandBarName))
		{
			htCBarWrapper.Remove(commandBarName);
		}
	}

	public void ReadDeserializedData(CommandBarController cbc)
	{
		cbc.EnabledDockBorders = cbBorder;
		foreach (CommandBar commandBar in cbc.CommandBars)
		{
			ReadDeserializedData(commandBar);
		}
	}

	public void ReadDeserializedData(CommandBar cbar)
	{
		string commandBarName = GetCommandBarName(cbar);
		ReadDeserializedData(cbar, commandBarName);
	}

	public void ReadDeserializedData(CommandBar cbar, string commandBarName)
	{
		if (cbar.Name == string.Empty)
		{
			throw new ApplicationException("All CommandBars must have an unique name property for proper persistence.");
		}
		if ((!(cbar is CommandBarExt commandBarExt) || !(commandBarExt.Bar.Manager is MainFrameBarManager { AutoLoadCustomData: false, ForceSaveLoadCustomData: false } mainFrameBarManager) || !mainFrameBarManager.customAddedBarsVsNames.Contains(commandBarExt.Bar.BarName)) && htCBarWrapper.Contains(commandBarName))
		{
			(htCBarWrapper[commandBarName] as ICommandBarSerializer).SetCommandBarData(cbar);
		}
	}

	public bool IsInitialized(string commandBarName)
	{
		return htCBarWrapper.ContainsKey(commandBarName);
	}

	public bool IsInitialized(CommandBar cbar)
	{
		bool result = false;
		if (cbar != null)
		{
			string commandBarName = GetCommandBarName(cbar);
			result = htCBarWrapper.ContainsKey(commandBarName);
		}
		return result;
	}
}
