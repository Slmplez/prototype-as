#define TRACE
using System;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics;
using System.Reflection;
using Syncfusion.ComponentModel;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid.Design;

internal class GridSynchronizer : Disposable
{
	private GridControl orig;

	private GridControl dup;

	private PropertyInfoCollection initialCollection = new PropertyInfoCollection();

	private bool bInitialized;

	private string[] SpecialProps = new string[2] { "FrozenRowCount", "FrozenColCount" };

	private IEnumerator specPropEnum;

	private static bool bSaveGroupStyles = true;

	private GridFrame mainWindow;

	internal GridFrame MainWindow
	{
		get
		{
			return mainWindow;
		}
		set
		{
			mainWindow = value;
		}
	}

	public static bool SaveGroupStyle
	{
		get
		{
			return bSaveGroupStyles;
		}
		set
		{
			bSaveGroupStyles = value;
		}
	}

	internal GridSynchronizer()
	{
		GridSyncPropertiesStore.BackgroundImageProperty.SerializeXmlBehavior = SerializeXmlBehavior.Skip;
		GridStyleInfoStore.BackgroundImageProperty.SerializeXmlBehavior = SerializeXmlBehavior.Skip;
		specPropEnum = SpecialProps.GetEnumerator();
		GridDesignerMain.syncProps = new GridSyncProperties();
	}

	public GridSynchronizer(GridControl original, GridControl duplicate)
		: this()
	{
		GridDesignerMain.syncProps.PropertyChanged += syncProps_Changed;
		orig = original;
		dup = duplicate;
		InitializeGridSync();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			GridDesignerMain.syncProps.PropertyChanged -= syncProps_Changed;
			GridDesignerMain.syncProps.Dispose();
		}
		base.Dispose(disposing);
	}

	internal void SyncOriginal()
	{
		GridDesignerMain.syncProps.Cells.InitializeFrom(dup);
		SetGridProperties(orig, setImageID: false, includeCellData: true);
	}

	private void SetGridProperties(GridControl grid, bool setImageID, bool includeCellData)
	{
		grid.BeginInit();
		ResetGrid(grid);
		bool flag = false;
		PropertyInfo[] properties = GridDesignerMain.syncProps.GetType().GetProperties();
		PropertyInfo[] array = properties;
		foreach (PropertyInfo propertyInfo in array)
		{
			try
			{
				if (propertyInfo.Name.ToLower() == "cells" || propertyInfo.Name.ToLower() == "font" || (propertyInfo.Name.ToLower() == "backgroundimageid" && !setImageID))
				{
					continue;
				}
				flag = false;
				specPropEnum.Reset();
				while (specPropEnum.MoveNext())
				{
					if (specPropEnum.Current.ToString() == propertyInfo.Name)
					{
						flag = true;
						break;
					}
				}
				if (flag)
				{
					ConfigureSpecialProperty(grid, propertyInfo);
				}
				else
				{
					SyncProperty(grid, propertyInfo.Name);
				}
			}
			catch (Exception ex)
			{
				Trace.WriteLine(ex.ToString());
			}
		}
		if (includeCellData)
		{
			ConfigureSpecialProperty(grid, GridDesignerMain.syncProps.GetType().GetProperty("Cells"));
			ConfigureSpecialProperty(grid, GridDesignerMain.syncProps.GetType().GetProperty("Font"));
		}
		grid.Initialize();
		grid.EndInit();
		grid.Refresh();
	}

	internal void InitializeGridSync(GridSyncProperties syncProperties, GridControl grid)
	{
		bInitialized = false;
		GridDesignerMain.syncProps = syncProperties;
		GridDesignerMain.syncProps.PropertyChanged += syncProps_Changed;
		SetGridProperties(grid, setImageID: true, includeCellData: true);
		bInitialized = true;
	}

	internal void InitializeGridSync(GridSyncProperties syncProperties)
	{
		InitializeGridSync(syncProperties, dup);
	}

	internal void InitializeGridSync(PropertyInfoCollection propertyCollection)
	{
		bInitialized = false;
		PropertyInfo propertyInfo = null;
		PropertyInfoCollection.PropertyInfoEnumerator enumerator = propertyCollection.GetEnumerator();
		while (enumerator.MoveNext())
		{
			object value = enumerator.Current.GetValue(null, new object[0]);
			propertyInfo = GridDesignerMain.syncProps.GetType().GetProperty(enumerator.Current.Name);
			if (propertyInfo != null)
			{
				propertyInfo.SetValue(GridDesignerMain.syncProps, value, new object[0]);
				try
				{
					SyncProperty(dup, enumerator.Current.Name, value);
				}
				catch (Exception ex)
				{
					Trace.WriteLine(ex.ToString());
				}
			}
		}
		dup.Initialize();
		bInitialized = true;
	}

	private void InitializeGridSync()
	{
		bInitialized = false;
		GridCellsMemento gridCellsMemento = new GridCellsMemento();
		gridCellsMemento.InitializeFrom(orig);
		InitializeGridSyncProperties(orig);
		SetGridProperties(dup, setImageID: true, includeCellData: false);
		gridCellsMemento.ApplyTo(dup);
		bInitialized = true;
	}

	internal void InitializeGridSyncProperties(GridControl grid)
	{
		if (GridDesignerMain.syncProps == null)
		{
			GridDesignerMain.syncProps = new GridSyncProperties();
		}
		PropertyInfo[] properties = GridDesignerMain.syncProps.GetType().GetProperties();
		try
		{
			GridDesignerMain.syncProps.shouldRaiseChanged = false;
			PropertyInfo[] array = properties;
			foreach (PropertyInfo propertyInfo in array)
			{
				if (!(propertyInfo.Name.ToLower() != "modified"))
				{
					continue;
				}
				PropertyInfo property = grid.GetType().GetProperty(propertyInfo.Name);
				if (!(property != null))
				{
					continue;
				}
				object obj = null;
				MethodInfo getMethod = property.GetGetMethod();
				if (!(getMethod != null))
				{
					continue;
				}
				obj = getMethod.Invoke(grid, new object[0]);
				if (obj != null)
				{
					Trace.WriteLine(propertyInfo.Name + " = " + obj.ToString());
					if (obj.GetType() == typeof(GridProperties))
					{
						GridDesignerMain.syncProps.Properties.CopyPropertiesFrom((GridProperties)obj);
						continue;
					}
				}
				MethodInfo setMethod = propertyInfo.GetSetMethod();
				if (setMethod != null)
				{
					setMethod.Invoke(GridDesignerMain.syncProps, new object[1] { obj });
				}
			}
			GridDesignerMain.syncProps.FrozenRowCount = grid.Model.Rows.FrozenCount;
			GridDesignerMain.syncProps.FrozenColCount = grid.Model.Cols.FrozenCount;
		}
		finally
		{
			GridDesignerMain.syncProps.shouldRaiseChanged = true;
		}
	}

	private void ConfigureSpecialProperty(GridControl grid, PropertyInfo pi)
	{
		object obj = null;
		MethodInfo getMethod = pi.GetGetMethod();
		if (getMethod != null)
		{
			obj = getMethod.Invoke(GridDesignerMain.syncProps, new object[0]);
		}
		if (pi.Name == "Cells")
		{
			if (obj != null)
			{
				GridCellsMemento gridCellsMemento = obj as GridCellsMemento;
				gridCellsMemento.ApplyTo(grid);
			}
		}
		else if (pi.Name == "Font")
		{
			if (grid.TableStyle.Font != null)
			{
				GridDesignerMain.syncProps.Store.SetValue(GridDesignerMain.syncProps.Store.FindStyleInfoProperty("Font"), grid.TableStyle.Font.GdipFont);
			}
		}
		else if (pi.Name == "FrozenRowCount")
		{
			grid.Model.Rows.FrozenCount = GridDesignerMain.syncProps.FrozenRowCount;
		}
		else if (pi.Name == "FrozenColCount")
		{
			grid.Model.Cols.FrozenCount = GridDesignerMain.syncProps.FrozenColCount;
		}
	}

	private void SyncProperty(GridControl gridDest, string propertyName, object val)
	{
		PropertyInfo property = gridDest.GetType().GetProperty(propertyName);
		if (!(property != null))
		{
			return;
		}
		MethodInfo setMethod = property.GetSetMethod();
		if (!(setMethod != null))
		{
			return;
		}
		if (val != null && gridDest == orig && val.GetType() == typeof(GridProperties))
		{
			if (gridDest.Properties != null)
			{
				gridDest.Properties.CopyPropertiesFrom((GridProperties)val);
				gridDest.Properties.modified = true;
			}
		}
		else
		{
			setMethod.Invoke(gridDest, new object[1] { val });
		}
	}

	private void SyncProperty(GridControl gridDest, string propertyName)
	{
		if (propertyName == "Store")
		{
			return;
		}
		try
		{
			PropertyInfo property = GridDesignerMain.syncProps.GetType().GetProperty(propertyName);
			if (!(property != null))
			{
				return;
			}
			MethodInfo getMethod = property.GetGetMethod();
			if (!(getMethod != null))
			{
				return;
			}
			StyleInfoProperty styleInfoProperty = GridDesignerMain.syncProps.Store.FindStyleInfoProperty(propertyName);
			if (styleInfoProperty != null)
			{
				object obj = GridDesignerMain.syncProps.GetValue(styleInfoProperty);
				if (obj == null)
				{
					obj = getMethod.Invoke(GridDesignerMain.syncProps, new object[0]);
				}
				SyncProperty(gridDest, propertyName, obj);
			}
		}
		catch (Exception ex)
		{
			Trace.WriteLine(propertyName);
			Trace.WriteLine(ex.ToString());
		}
	}

	private void ResetGrid(GridControlBase grid)
	{
		if (typeof(GridControl).IsInstanceOfType(grid))
		{
			((GridControl)grid).ResetAlphaBlendSelectionColor();
			((GridControl)grid).ResetBackgroundImageID();
			((GridControl)grid).ResetBanneredRanges();
			((GridControl)grid).ResetBaseStylesMap();
			((GridControl)grid).ResetColHiddenEntries();
			((GridControl)grid).ResetColWidthEntries();
			((GridControl)grid).ResetCoveredRanges();
			((GridControl)grid).ResetCurrentCellInfo();
			((GridControl)grid).ResetRangeStyles();
			((GridControl)grid).ResetRowHeightEntries();
			((GridControl)grid).ResetRowHiddenEntries();
			((GridControl)grid).ResetTableStyle();
			((GridControl)grid).ResetText();
			((GridControl)grid).ResetVolatileData();
		}
	}

	private void syncProps_Changed(object sender, PropertyChangedEventArgs e)
	{
		if (MainWindow != null)
		{
			MainWindow.OnGridSynchronizerPropertiesChanged(sender, e);
		}
		if (bInitialized && GridDesignerMain.syncProps.Modified)
		{
			try
			{
				SyncProperty(dup, e.PropertyName);
			}
			catch (Exception ex)
			{
				Trace.WriteLine(ex.ToString());
			}
		}
	}
}
