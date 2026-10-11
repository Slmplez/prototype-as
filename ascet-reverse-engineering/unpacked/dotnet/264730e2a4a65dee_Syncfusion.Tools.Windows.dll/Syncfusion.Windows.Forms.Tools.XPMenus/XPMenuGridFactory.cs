using System;
using System.Collections;
using System.Reflection;
using Microsoft.Win32;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class XPMenuGridFactory
{
	[ThreadStatic]
	private static ArrayList _standByGrids;

	[ThreadStatic]
	private static ArrayList _deployedGrids;

	private static Type menuGridType;

	private static ConstructorInfo menuGridConstructorInfo;

	private static bool menusJited;

	internal static ArrayList StandByGrids
	{
		get
		{
			if (_standByGrids == null)
			{
				_standByGrids = new ArrayList(2);
				_standByGrids.Add(CreateMenuGridInstance());
			}
			return _standByGrids;
		}
	}

	private static ArrayList DeployedGrids
	{
		get
		{
			if (_deployedGrids == null)
			{
				_deployedGrids = new ArrayList(2);
			}
			return _deployedGrids;
		}
	}

	public static Type MenuGridType
	{
		get
		{
			return menuGridType;
		}
		set
		{
			if (!(menuGridType != value))
			{
				return;
			}
			menuGridType = value;
			if (menuGridType != null)
			{
				Type typeFromHandle = typeof(MenuGrid);
				if (!typeFromHandle.IsAssignableFrom(value))
				{
					throw new ArgumentException("Type: " + value.FullName + " should derive from " + typeFromHandle.FullName);
				}
				ConstructorInfo constructor = value.GetConstructor(new Type[0]);
				if (constructor == null)
				{
					throw new ArgumentException("Type: " + value.FullName + " should have a default constructor.");
				}
				menuGridConstructorInfo = constructor;
				menuGridType = value;
			}
			else
			{
				menuGridConstructorInfo = null;
			}
			ReleaseAllGrids();
		}
	}

	[DocumentationExclude]
	public static void InitMenus()
	{
		InitMenusInternal();
	}

	private static void InitMenusInternal()
	{
		if (!menusJited)
		{
			menusJited = true;
			MenuGrid menuGridToDeploy = GetMenuGridToDeploy();
			menuGridToDeploy.JitCode();
			ReleaseMenuGrid(menuGridToDeploy);
		}
	}

	static XPMenuGridFactory()
	{
		menuGridConstructorInfo = null;
		menusJited = false;
		SystemEvents.UserPreferenceChanged += System_UserPreferenceChanged;
	}

	private static void System_UserPreferenceChanged(object sender, UserPreferenceChangedEventArgs e)
	{
		ReleaseAllGrids();
	}

	private static MenuGrid CreateMenuGridInstance()
	{
		if (menuGridConstructorInfo != null)
		{
			return menuGridConstructorInfo.Invoke(new object[0]) as MenuGrid;
		}
		return new MenuGrid();
	}

	[DocumentationExclude]
	public static MenuGrid GetMenuGridToDeploy()
	{
		VerifyMenuStates();
		if (StandByGrids.Count == 0)
		{
			StandByGrids.Add(CreateMenuGridInstance());
		}
		MenuGrid menuGrid = (MenuGrid)StandByGrids[StandByGrids.Count - 1];
		StandByGrids.RemoveAt(StandByGrids.Count - 1);
		DeployedGrids.Add(menuGrid);
		return menuGrid;
	}

	internal static void VerifyMenuStates()
	{
		if (_standByGrids != null && _standByGrids.Count > 0)
		{
			MenuGrid menuGrid = (MenuGrid)_standByGrids[_standByGrids.Count - 1];
			if (!menuGrid.IsHandleCreated)
			{
				ReleaseAllGrids();
			}
		}
	}

	internal static void ReleaseMenuGrid(MenuGrid menuGrid)
	{
		if (menuGrid != null)
		{
			menuGrid.CurrentCell.Deactivate(discardChanges: true);
			menuGrid.Model.Clear(clearStyle: true);
			menuGrid.Model.RowCount = 0;
			DeployedGrids.Remove(menuGrid);
			StandByGrids.Add(menuGrid);
		}
	}

	public static void ReleaseAllGrids()
	{
		StandByGrids.Clear();
	}
}
