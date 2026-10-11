using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Microsoft.Win32;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid.Design;

[DocumentationExclude]
internal class GridControlDesigner : ControlDesigner
{
	private enum LoadMode
	{
		Initial,
		Clearing,
		Done
	}

	private DesignerVerbCollection verbs;

	private int formatRowCount = 10;

	private int formatColCount = 10;

	private bool persistRowStyles;

	private static string suiteRegistryKey;

	private static string refreshModeRegistryValue;

	private static LoadMode loadMode;

	private DesignerVerb editDesigner;

	private DesignerVerb touchAndSave;

	private DesignerVerb displayBaseStyles;

	private IDesignerHost host;

	private UndoEngine undoEngine;

	private ISelectionService selSvc;

	private IDesignerHost Host
	{
		get
		{
			if (host == null)
			{
				host = (IDesignerHost)GetService(typeof(IDesignerHost));
				host.Activated += OnDesignerActivate;
				host.Deactivated += OnDesignerDeactivate;
			}
			return host;
		}
	}

	[DefaultValue(10)]
	[DesignOnly(true)]
	[Browsable(false)]
	[Description("This property is obsolete and is provided for compatibility only.")]
	public int FormatRowCount
	{
		get
		{
			return formatRowCount;
		}
		set
		{
			formatRowCount = value;
		}
	}

	[Description("This property is obsolete and is provided for compatibility only.")]
	[DesignOnly(true)]
	[Browsable(false)]
	[DefaultValue(10)]
	public int FormatColCount
	{
		get
		{
			return formatColCount;
		}
		set
		{
			formatColCount = value;
		}
	}

	[Browsable(false)]
	[DesignOnly(true)]
	[DefaultValue(false)]
	[Description("This property is obsolete and is provided for compatibility only.")]
	public bool PersistRowStyles
	{
		get
		{
			return persistRowStyles;
		}
		set
		{
			persistRowStyles = value;
		}
	}

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			DesignerActionListCollection designerActionListCollection = new DesignerActionListCollection();
			DesignerVerb[] array = new DesignerVerb[Verbs.Count];
			Verbs.CopyTo(array, 0);
			designerActionListCollection.Add(new DesignerActionSupportList(base.Component, array));
			return designerActionListCollection;
		}
	}

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (verbs == null)
			{
				editDesigner = new DesignerVerb("Edit", OnEditDesigner);
				touchAndSave = new DesignerVerb("Touch It", OnTouchAndSave);
				displayBaseStyles = new DesignerVerb("Edit base styles", OnDisplayBaseStyles);
				verbs = new DesignerVerbCollection();
				verbs.Add(editDesigner);
				verbs.Add(touchAndSave);
				verbs.Add(displayBaseStyles);
			}
			return verbs;
		}
	}

	static GridControlDesigner()
	{
		suiteRegistryKey = "Software\\Syncfusion\\Essential Suite\\Grid";
		refreshModeRegistryValue = "RefreshMode";
		loadMode = LoadMode.Initial;
		loadMode = ((!ShouldSetRefreshMode()) ? LoadMode.Done : LoadMode.Initial);
	}

	private void OnDesignerActivate(object source, EventArgs evevent)
	{
		selSvc = (ISelectionService)GetService(typeof(ISelectionService));
		if (selSvc != null)
		{
			selSvc.SelectionChanging += OnSelectionChanging;
			selSvc.SelectionChanged += OnSelectionChanged;
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		_ = Host;
		if (undoEngine == null)
		{
			undoEngine = GetService(typeof(UndoEngine)) as UndoEngine;
		}
		if (undoEngine != null)
		{
			undoEngine.Enabled = false;
		}
	}

	private void OnDesignerDeactivate(object sender, EventArgs e)
	{
	}

	private void OnSelectionChanged(object sender, EventArgs e)
	{
		if (base.Component == null)
		{
			return;
		}
		ISelectionService selectionService = (ISelectionService)sender;
		if (selectionService.GetComponentSelected(base.Component))
		{
			if (undoEngine == null)
			{
				undoEngine = GetService(typeof(UndoEngine)) as UndoEngine;
			}
			if (undoEngine != null)
			{
				undoEngine.Enabled = false;
			}
		}
	}

	private void OnSelectionChanging(object sender, EventArgs e)
	{
		if (undoEngine == null)
		{
			undoEngine = GetService(typeof(UndoEngine)) as UndoEngine;
		}
		if (undoEngine != null)
		{
			undoEngine.Enabled = true;
		}
	}

	private static bool ShouldSetRefreshMode()
	{
		RegistryKey registryKey = null;
		bool result = true;
		try
		{
			registryKey = GetSuiteRootKey();
			if (registryKey != null)
			{
				object value = registryKey.GetValue(refreshModeRegistryValue);
				if (value == null)
				{
					return true;
				}
				result = (((int)value != 0) ? true : false);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (ExceptionManager.RaiseExceptionCatched(null, ex))
			{
				throw;
			}
		}
		finally
		{
			registryKey?.Close();
		}
		return result;
	}

	private static RegistryKey GetSuiteRootKey()
	{
		RegistryKey currentUser = Registry.CurrentUser;
		string name = suiteRegistryKey;
		RegistryKey registryKey = currentUser.OpenSubKey(name);
		if (registryKey == null)
		{
			currentUser = Registry.LocalMachine;
			registryKey = currentUser.OpenSubKey(name);
		}
		return registryKey;
	}

	public override void InitializeNewComponent(IDictionary defaultValues)
	{
		if (Control is GridControl gridControl)
		{
			gridControl.SerializeCellsBehavior = GridSerializeCellsBehavior.SerializeAsRangeStylesIntoCode;
			gridControl.UseRightToLeftCompatibleTextBox = true;
		}
		base.InitializeNewComponent(defaultValues);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			_ = Control;
			if (host != null)
			{
				host.Activated -= OnDesignerActivate;
				host.Deactivated -= OnDesignerDeactivate;
			}
			if (selSvc != null)
			{
				selSvc.SelectionChanging -= OnSelectionChanging;
				selSvc.SelectionChanged -= OnSelectionChanged;
			}
		}
		base.Dispose(disposing);
	}

	private void OnLoadComplete(object sender, EventArgs args)
	{
		if (loadMode == LoadMode.Initial)
		{
			loadMode = LoadMode.Clearing;
			AppDomain.CurrentDomain.AssemblyResolve += GridWindowsAssembly.AssemblyResolver;
			((IDesignerLoaderService)GetService(typeof(IDesignerLoaderService)))?.Reload();
		}
		else if (loadMode == LoadMode.Clearing)
		{
			loadMode = LoadMode.Done;
			AppDomain.CurrentDomain.AssemblyResolve -= GridWindowsAssembly.AssemblyResolver;
		}
	}

	private void BroadcastComponentChanged()
	{
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			GridControlBase gridControlBase = Control as GridControlBase;
			componentChangeService.OnComponentChanging(gridControlBase, null);
			componentChangeService.OnComponentChanged(gridControlBase, null, null, null);
		}
	}

	private void OnDisplayBaseStyles(object sender, EventArgs args)
	{
		if (Control is GridControlBase gridControlBase)
		{
			IDesignerHost provider = GetService(typeof(IDesignerHost)) as IDesignerHost;
			GridBaseStylesMap.ShowGridBaseStylesMapDialog(gridControlBase.Model, "BaseStylesMap", provider);
			gridControlBase.Invalidate();
		}
	}

	private void OnEditDesigner(object sender, EventArgs args)
	{
		if (Control is GridControl gridControl)
		{
			GridDesignerMain.Design(gridControl);
			gridControl.Invalidate();
			BroadcastComponentChanged();
		}
	}

	private void OnTouchAndSave(object sender, EventArgs args)
	{
		if (Control is GridControlBase gridControlBase)
		{
			GetService(typeof(IDesignerHost));
			BroadcastComponentChanged();
			gridControlBase.Invalidate();
		}
	}

	internal static void DisplayErrorMessage(string resName)
	{
		DisplayMessage(resName, MessageBoxIcon.Hand);
	}

	internal static void DisplayWarningMessage(string resName)
	{
		DisplayMessage(resName, MessageBoxIcon.Exclamation);
	}

	internal static void DisplayMessage(string resName, MessageBoxIcon icon)
	{
		string caption = "GridControl";
		MessageBox.Show(null, resName, caption, MessageBoxButtons.OK, icon);
	}
}
