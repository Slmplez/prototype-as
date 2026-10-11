using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.IO;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization.Formatters.Binary;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Runtime.Serialization;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(CBControllerDesigner), typeof(IDesigner))]
[ToolboxItemFilter("System.Windows.Forms")]
[ToolboxBitmap(typeof(CommandBarController), "ToolboxIcons.commandbarcontroller.bmp")]
[Description("Component which hosts command Bars in a form.")]
public class CommandBarController : Component, ISupportInitialize, ICBControllerDesignerInvoke
{
	[DocumentationExclude]
	protected internal class AppMainFormWnd : NativeWindowSubclass
	{
		private CommandBarController cbController;

		internal AppMainFormWnd(CommandBarController cbc)
		{
			cbController = cbc;
		}

		public void Deactivate()
		{
			cbController = null;
		}

		private void ToggleCommandBarsFloatState(bool bActivate)
		{
			if (cbController != null)
			{
				cbController.ToggleCommandBarFloatState(bActivate);
			}
		}

		protected override void WndProc(ref Message m)
		{
			base.WndProc(ref m);
			int num = m.WParam.ToInt32();
			switch (m.Msg)
			{
			case 5:
				ToggleCommandBarsFloatState(1 != num);
				break;
			case 28:
				ToggleCommandBarsFloatState(1 == num);
				break;
			case 33:
				if (cbController != null && cbController.FocusedCommandBar != null)
				{
					Point position = Cursor.Position;
					IntPtr intPtr = Syncfusion.Runtime.InteropServices.NativeMethods.WindowFromPoint(position.X, position.Y);
					if (intPtr != IntPtr.Zero && !Syncfusion.Runtime.InteropServices.NativeMethods.IsChild(cbController.FocusedCommandBar.Handle, intPtr))
					{
						ResetFocus();
					}
				}
				break;
			case 513:
				if (cbController != null && cbController.FocusedCommandBar != null)
				{
					ResetFocus();
				}
				break;
			case 161:
				if (cbController != null && cbController.FocusedCommandBar != null)
				{
					ResetFocus();
				}
				break;
			}
		}

		protected void ResetFocus()
		{
			Control control = null;
			foreach (Control control2 in cbController.HostForm.Controls)
			{
				if (control2 != cbController.CommandDockBarL && control2 != cbController.CommandDockBarT && control2 != cbController.CommandDockBarR && control2 != cbController.CommandDockBarB)
				{
					if (control == null)
					{
						control = control2;
					}
					if (control2.TabIndex < control.TabIndex)
					{
						control = control2;
					}
				}
			}
			control?.Focus();
		}
	}

	[DocumentationExclude]
	protected internal class DockBarStateEventArgs : EventArgs
	{
		private CommandDockBar dockBar;

		private bool created;

		public CommandDockBar CommandDockBar => dockBar;

		public bool Created => created;

		public DockBarStateEventArgs(CommandDockBar dockBar, bool created)
		{
			this.dockBar = dockBar;
			this.created = created;
		}
	}

	[Category("Syncfusion CommandBars")]
	[Description("The collection of CommandBars in the CommandBarController.")]
	[DefaultProperty("Item")]
	[Editor(typeof(CommandBarsCollectionEditor), typeof(UITypeEditor))]
	public sealed class CommandBarsCollection : CollectionBase
	{
		private CommandBarController cbcOwner;

		public CommandBar this[int nindex] => (CommandBar)base.List[nindex];

		internal event EventHandler NewBarAdded;

		public CommandBarsCollection(CommandBarController cbctrlr)
		{
			cbcOwner = cbctrlr;
		}

		public int Add(CommandBar cbar)
		{
			if (cbar.Controller == null)
			{
				cbar.Controller = cbcOwner;
			}
			if (cbcOwner.FreezeLayout)
			{
				if (cbcOwner.alFreezeRemoveBars.Contains(cbar))
				{
					cbcOwner.alFreezeRemoveBars.Remove(cbar);
				}
				return cbcOwner.alFreezeAddBars.Add(cbar);
			}
			OnNewBarAdded(EventArgs.Empty);
			return base.List.Add(cbar);
		}

		public void Remove(CommandBar cbar)
		{
			if (cbcOwner.FreezeLayout)
			{
				if (cbcOwner.alFreezeAddBars.Contains(cbar))
				{
					cbcOwner.alFreezeAddBars.Remove(cbar);
					cbar.Dispose();
				}
				else
				{
					cbcOwner.alFreezeRemoveBars.Add(cbar);
				}
			}
			else if (base.List.Contains(cbar))
			{
				base.List.Remove(cbar);
			}
		}

		public bool Contains(CommandBar cbar)
		{
			return base.List.Contains(cbar);
		}

		private void OnNewBarAdded(EventArgs e)
		{
			if (this.NewBarAdded != null)
			{
				this.NewBarAdded(this, e);
			}
		}

		[DocumentationExclude]
		protected override void OnInsertComplete(int index, object value)
		{
			base.OnInsertComplete(index, value);
			CommandBar commandBar = value as CommandBar;
			if (commandBar.Controller == null)
			{
				commandBar.Controller = cbcOwner;
			}
			if (cbcOwner.bInitializationComplete && commandBar.Parent == null)
			{
				cbcOwner.SetCommandBarInitialPosition(commandBar);
				cbcOwner.RecalcLayout(CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Left | CommandBarDockBorder.Right);
				NewBarAdded += commandBar.OnNewBarAddedEH;
			}
		}

		[DocumentationExclude]
		protected override void OnRemoveComplete(int index, object value)
		{
			base.OnRemoveComplete(index, value);
			CommandBar commandBar = value as CommandBar;
			if (commandBar.Parent != null)
			{
				if (commandBar.Floating)
				{
					CommandBarForm commandBarForm = commandBar.Parent as CommandBarForm;
					commandBarForm.Visible = false;
					commandBarForm.Controls.Remove(commandBar);
					commandBarForm.Close();
				}
				else if (commandBar.CommandBarBaseVisible)
				{
					commandBar.CommandBarBaseVisible = false;
					NewBarAdded -= commandBar.OnNewBarAddedEH;
					commandBar.cdbParent.RemoveCommandBar(commandBar);
				}
				else
				{
					NewBarAdded -= commandBar.OnNewBarAddedEH;
					commandBar.cdbParent.Controls.Remove(commandBar);
				}
			}
			else
			{
				NewBarAdded -= commandBar.OnNewBarAddedEH;
				commandBar.Dispose();
			}
		}

		[DocumentationExclude]
		protected override void OnClear()
		{
			foreach (CommandBar item in base.List)
			{
				item.Controller = null;
			}
			base.OnClear();
		}
	}

	[DocumentationExclude]
	protected internal delegate void DockBarStateChangedHandler(object sender, DockBarStateEventArgs args);

	[DocumentationExclude]
	protected const string strPersistKey = "CommandBarInfo";

	protected CommandBar focusedCBar;

	[DocumentationExclude]
	protected AppMainFormWnd wndMainFrm;

	[DocumentationExclude]
	protected Form frmMain;

	protected CommandBarsCollection alCommandBars;

	protected CommandBarDockBorder cbDockBorder = CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Left | CommandBarDockBorder.Right;

	[DocumentationExclude]
	protected internal CommandDockBar CommandDockBarL;

	[DocumentationExclude]
	protected internal CommandDockBar CommandDockBarT;

	[DocumentationExclude]
	protected internal CommandDockBar CommandDockBarR;

	[DocumentationExclude]
	protected internal CommandDockBar CommandDockBarB;

	protected internal ArrayList alDelayLoadBars = new ArrayList();

	protected ArrayList alFreezeAddBars = new ArrayList();

	protected ArrayList alFreezeRemoveBars = new ArrayList();

	protected ArrayList alFreezeRelayoutBars = new ArrayList();

	[DocumentationExclude]
	protected int nFreezeLayoutInternal;

	[DocumentationExclude]
	protected int nFreezeLayout;

	[DocumentationExclude]
	protected internal CBCtrlrSerializationWrapper wpprCBController;

	[DocumentationExclude]
	protected Type typeCBSerializer = typeof(CBarSerializationWrapper);

	[DocumentationExclude]
	protected bool bPersistState;

	[DocumentationExclude]
	protected MemoryStream strmDefault = new MemoryStream();

	[DocumentationExclude]
	protected internal bool bDisableButtons;

	private Office2007Colors m_office2007ColorTable;

	[DocumentationExclude]
	protected internal bool bLoadVisibility = true;

	[DocumentationExclude]
	protected bool bInitializationComplete;

	[DocumentationExclude]
	protected bool bThemesEnabled;

	[DocumentationExclude]
	protected VisualStyle tbStyle = VisualStyle.OfficeXP;

	protected Color clrBackColor = Control.DefaultBackColor;

	[DocumentationExclude]
	protected internal bool bBackColorSet;

	private bool m_bInternalDocking;

	protected Office2007Theme m_office2007Theme;

	private static bool s_isDevEnv;

	protected int nFreezeActivation;

	[DocumentationExclude]
	protected internal CommandBar FocusedCommandBar
	{
		get
		{
			return focusedCBar;
		}
		set
		{
			focusedCBar = value;
		}
	}

	[Description("Indicates whether bring the CommandBar to the front of the z-order.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool InternalDocking
	{
		get
		{
			return m_bInternalDocking;
		}
		set
		{
			if (value != m_bInternalDocking)
			{
				m_bInternalDocking = value;
				ResetDockBarZOrder();
			}
		}
	}

	[Description("The form window hosting the CommandBars.")]
	[Category("Syncfusion CommandBars")]
	public Form HostForm
	{
		get
		{
			return frmMain;
		}
		set
		{
			if (frmMain == null)
			{
				frmMain = value;
				if (!base.DesignMode)
				{
					frmMain.Load += HostForm_Load;
					frmMain.Closing += HostForm_Closing;
					frmMain.SystemColorsChanged += HostForm_SystemColorsChanged;
				}
				if (!bBackColorSet)
				{
					clrBackColor = frmMain.BackColor;
				}
				frmMain.BackColorChanged += HostForm_BackColorChanged;
			}
		}
	}

	[DefaultValue(CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Left | CommandBarDockBorder.Right)]
	[Description("The host form borders capable of accomdating the CommandBars.")]
	[Category("Syncfusion CommandBars")]
	[Localizable(true)]
	public CommandBarDockBorder EnabledDockBorders
	{
		get
		{
			return cbDockBorder;
		}
		set
		{
			if (cbDockBorder != value)
			{
				cbDockBorder = value;
				if (frmMain != null)
				{
					InitializeDockBars();
				}
			}
		}
	}

	[DefaultValue(false)]
	[Category("Syncfusion CommandBars")]
	[Description("Saves the CommandBar state between application instances.")]
	public bool PersistState
	{
		get
		{
			return bPersistState;
		}
		set
		{
			bPersistState = value;
		}
	}

	[DocumentationExclude]
	protected internal bool FreezeLayoutInternal
	{
		get
		{
			return nFreezeLayoutInternal > 0;
		}
		set
		{
			if (value)
			{
				nFreezeLayoutInternal++;
			}
			else if (nFreezeLayoutInternal > 0)
			{
				nFreezeLayoutInternal--;
			}
		}
	}

	[DocumentationExclude]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool FreezeLayout
	{
		get
		{
			return nFreezeLayout > 0;
		}
		set
		{
			if (value)
			{
				nFreezeLayout++;
			}
			else
			{
				if (nFreezeLayout <= 0)
				{
					return;
				}
				nFreezeLayout--;
				if (nFreezeLayout != 0)
				{
					return;
				}
				foreach (CommandBar alFreezeRemoveBar in alFreezeRemoveBars)
				{
					if (alFreezeAddBars.Contains(alFreezeRemoveBar))
					{
						alFreezeAddBars.Remove(alFreezeRemoveBar);
					}
					if (alFreezeRelayoutBars.Contains(alFreezeRemoveBar))
					{
						alFreezeRelayoutBars.Remove(alFreezeRemoveBar);
					}
				}
				if (alFreezeRemoveBars.Count > 0)
				{
					CommandBar[] array = (CommandBar[])alFreezeRemoveBars.ToArray(typeof(CommandBar));
					alFreezeRemoveBars.Clear();
					CommandBar[] array2 = array;
					foreach (CommandBar cbar in array2)
					{
						CommandBars.Remove(cbar);
					}
				}
				if (alFreezeAddBars.Count > 0)
				{
					CommandBar[] array3 = (CommandBar[])alFreezeAddBars.ToArray(typeof(CommandBar));
					alFreezeAddBars.Clear();
					CommandBar[] array4 = array3;
					foreach (CommandBar cbar2 in array4)
					{
						CommandBars.Add(cbar2);
					}
				}
				if (alFreezeRelayoutBars.Count > 0)
				{
					ApplyDeserializedState(alFreezeRelayoutBars);
					alFreezeRelayoutBars.Clear();
				}
				RecalcLayout(CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Left | CommandBarDockBorder.Right);
			}
		}
	}

	[Category("Syncfusion CommandBars")]
	[Description("The CommandBar collection.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public CommandBarsCollection CommandBars => alCommandBars;

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Type CommandBarSerializer
	{
		get
		{
			return typeCBSerializer;
		}
		set
		{
			if (value.IsSerializable && typeof(ICommandBarSerializer).IsAssignableFrom(value))
			{
				typeCBSerializer = value;
			}
		}
	}

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Specifies whether XP Themes (visual styles) should be used for CommandBars.")]
	public bool ThemesEnabled
	{
		get
		{
			return bThemesEnabled;
		}
		set
		{
			if (bThemesEnabled != value)
			{
				bThemesEnabled = value;
				SetBarsTransparency();
				OnThemesEnabledChanged();
			}
		}
	}

	[Browsable(false)]
	public virtual RightToLeft RightToLeft
	{
		get
		{
			if (frmMain == null)
			{
				return RightToLeft.No;
			}
			return frmMain.RightToLeft;
		}
	}

	[DefaultValue(VisualStyle.OfficeXP)]
	[Description("Specifies the visual style of the CommandBars.")]
	[Category("Appearance")]
	public VisualStyle Style
	{
		get
		{
			return tbStyle;
		}
		set
		{
			if (tbStyle != value)
			{
				tbStyle = value;
				SetBarsTransparency();
				OnStyleChanged();
			}
		}
	}

	[Description("Colorschemes for Office2007 visual style.")]
	[Category("Appearance")]
	[DefaultValue(Office2007Theme.Blue)]
	public Office2007Theme Office2007Theme
	{
		get
		{
			return m_office2007Theme;
		}
		set
		{
			if (m_office2007Theme != value)
			{
				m_office2007Theme = value;
				Office2007ThemeChanged();
			}
		}
	}

	protected internal Office2007Colors Office2007ColorTable => m_office2007ColorTable;

	[Localizable(true)]
	[Category("Appearance")]
	[Description("The background color used to draw the host form's dockable regions.")]
	public Color BackColor
	{
		get
		{
			return clrBackColor;
		}
		set
		{
			if (clrBackColor != value)
			{
				clrBackColor = value;
				if (CommandDockBarL != null)
				{
					CommandDockBarL.BackColor = clrBackColor;
				}
				if (CommandDockBarT != null)
				{
					CommandDockBarT.BackColor = clrBackColor;
				}
				if (CommandDockBarR != null)
				{
					CommandDockBarR.BackColor = clrBackColor;
				}
				if (CommandDockBarB != null)
				{
					CommandDockBarB.BackColor = clrBackColor;
				}
				bBackColorSet = true;
			}
		}
	}

	internal bool DesignTime => base.DesignMode;

	protected internal bool FreezeActivation
	{
		get
		{
			return nFreezeActivation > 0;
		}
		set
		{
			if (value)
			{
				nFreezeActivation++;
			}
			else if (nFreezeActivation > 0)
			{
				nFreezeActivation--;
			}
		}
	}

	[DocumentationExclude]
	protected internal virtual string PersistenceID
	{
		get
		{
			ProvidePersistenceIDEventArgs e = new ProvidePersistenceIDEventArgs(string.Empty);
			OnProvidePresistenceID(e);
			if (e.PersistenceID != string.Empty)
			{
				return e.PersistenceID + ":";
			}
			return string.Empty;
		}
	}

	[DocumentationExclude]
	protected internal event DockBarStateChangedHandler DockBarStateChanged;

	[Description("Lets you specify a unique ID used to distinguish the persistence information of different instances of your Form type.")]
	public event ProvidePersistenceIDEventHandler ProvidePersisteceID;

	[Description("Occurs when Style property is changed.")]
	public event EventHandler StyleChanged;

	[Description("Occurs when ThemesEnabled property is changed.")]
	public event EventHandler ThemesEnabledChanged;

	[Description("Occurs when CommandBars' layout is internally suspended.")]
	public event EventHandler LayoutSuspended;

	[Description("Occurs when CommandBars' layout is internally resumed.")]
	public event EventHandler LayoutResumed;

	static CommandBarController()
	{
		s_isDevEnv = Application.ExecutablePath.IndexOf("devenv.exe") < 0;
		AppStateSerializer.SetBindingInfo("Syncfusion.Tools.Windows", typeof(CommandBarController).Assembly);
		AppStateSerializer.SetBindingInfo("Syncfusion.Tools", typeof(CommandBarController).Assembly);
	}

	protected virtual void OnThemesEnabledChanged()
	{
		if (this.ThemesEnabledChanged != null)
		{
			this.ThemesEnabledChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnStyleChanged()
	{
		if (Style == VisualStyle.Office2007 || Style == VisualStyle.Office2007Outlook)
		{
			m_office2007ColorTable = Office2007Colors.GetColorTable(Office2007Theme);
			Office2007BarItemPainter.ColorTable = m_office2007ColorTable;
		}
		if (this.StyleChanged != null)
		{
			this.StyleChanged(this, EventArgs.Empty);
		}
	}

	private void Office2007ThemeChanged()
	{
		if (Style == VisualStyle.Office2007 || Style == VisualStyle.Office2007Outlook)
		{
			m_office2007ColorTable = Office2007Colors.GetColorTable(Office2007Theme);
			Office2007BarItemPainter.ColorTable = m_office2007ColorTable;
		}
		SetBarsTransparency();
	}

	[DocumentationExclude]
	protected void SetBarsTransparency()
	{
		if (CommandDockBarL != null)
		{
			CommandDockBarL.Invalidate(invalidateChildren: false);
		}
		if (CommandDockBarT != null)
		{
			CommandDockBarT.Invalidate(invalidateChildren: false);
		}
		if (CommandDockBarR != null)
		{
			CommandDockBarR.Invalidate(invalidateChildren: false);
		}
		if (CommandDockBarB != null)
		{
			CommandDockBarB.Invalidate(invalidateChildren: false);
		}
		foreach (CommandBar alCommandBar in alCommandBars)
		{
			if (!alCommandBar.bBackColorSet)
			{
				if (bThemesEnabled || tbStyle == VisualStyle.Office2003 || tbStyle == VisualStyle.VS2005 || tbStyle == VisualStyle.Office2007 || tbStyle == VisualStyle.Office2007Outlook)
				{
					if (alCommandBar.Floating)
					{
						alCommandBar.BackColor = alCommandBar.Parent.BackColor;
					}
					else
					{
						alCommandBar.BackColor = Color.Transparent;
					}
					alCommandBar.bBackColorSet = false;
				}
				else if (alCommandBar.BackColor == Color.Transparent)
				{
					alCommandBar.BackColor = frmMain.BackColor;
					alCommandBar.bBackColorSet = false;
				}
			}
			if (alCommandBar.Floating)
			{
				alCommandBar.Parent.Invalidate(invalidateChildren: true);
			}
			else
			{
				alCommandBar.Invalidate(invalidateChildren: false);
			}
			if (alCommandBar.PopupMenu != null)
			{
				alCommandBar.PopupMenu.ParentBarItem.Style = Style;
			}
		}
	}

	[DocumentationExclude]
	protected bool ShouldSerializeBackColor()
	{
		return bBackColorSet;
	}

	[DocumentationExclude]
	public void ResetBackColor()
	{
		clrBackColor = frmMain.BackColor;
		if (CommandDockBarL != null)
		{
			CommandDockBarL.ResetBackColor();
		}
		if (CommandDockBarT != null)
		{
			CommandDockBarT.ResetBackColor();
		}
		if (CommandDockBarR != null)
		{
			CommandDockBarR.ResetBackColor();
		}
		if (CommandDockBarB != null)
		{
			CommandDockBarB.ResetBackColor();
		}
		bBackColorSet = false;
	}

	internal object GetDesignerService(Type service)
	{
		return GetService(service);
	}

	public CommandBarController()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(CommandBarController));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		alCommandBars = new CommandBarsCollection(this);
	}

	public CommandBarController(IContainer container)
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(CommandBarController));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		container.Add(this);
		alCommandBars = new CommandBarsCollection(this);
	}

	public void SaveCommandBarState()
	{
		SaveCommandBarState(AppStateSerializer.GetSingleton());
	}

	[Obsolete("This method will be removed in a future version. Please use the more flexible SaveCommandBarState(AppStateSerializer) variant, instead.", false)]
	public void SaveCommandBarState(SerializeMode mode, object persistpath)
	{
		try
		{
			CBCtrlrSerializationWrapper persistanceData = GetPersistanceData();
			if (mode == SerializeMode.IsolatedStorage && persistpath == null)
			{
				AppStateSerializer instance = AppStateSerializer.GetInstance();
				instance.SerializeObject(PersistenceID + "CommandBarInfo", persistanceData);
			}
			else
			{
				AppStateSerializer.SerializeIsolatedObject(mode, persistpath, PersistenceID + "CommandBarInfo", persistanceData);
			}
		}
		catch (Exception)
		{
		}
	}

	public void SaveCommandBarState(AppStateSerializer serializer)
	{
		if (serializer != null)
		{
			try
			{
				CBCtrlrSerializationWrapper persistanceData = GetPersistanceData();
				serializer.SerializeObject(PersistenceID + "CommandBarInfo", persistanceData);
			}
			catch (Exception)
			{
			}
		}
	}

	[DocumentationExclude]
	protected virtual CBCtrlrSerializationWrapper GetPersistanceData()
	{
		return new CBCtrlrSerializationWrapper(this);
	}

	internal void SaveToStream(Stream file)
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			CBCtrlrSerializationWrapper graph = new CBCtrlrSerializationWrapper(this);
			BinaryFormatter binaryFormatter = new BinaryFormatter();
			binaryFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
			binaryFormatter.Binder = AppStateSerializer.CustomBinder;
			binaryFormatter.Serialize(file, graph);
		}
		catch (Exception)
		{
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
	}

	public bool LoadCommandBarState()
	{
		return LoadCommandBarState(AppStateSerializer.GetSingleton());
	}

	internal void LoseCachedCommandBarState()
	{
		wpprCBController = null;
	}

	[Obsolete("This method will be removed in a future version. Please use the more flexible LoadCommandBarState(AppStateSerializer) variant, instead.", false)]
	public bool LoadCommandBarState(SerializeMode mode, object persistpath)
	{
		try
		{
			if (mode == SerializeMode.IsolatedStorage && persistpath == null)
			{
				AppStateSerializer instance = AppStateSerializer.GetInstance();
				object obj = instance.DeserializeObject(PersistenceID + "CommandBarInfo");
				wpprCBController = obj as CBCtrlrSerializationWrapper;
			}
			else
			{
				wpprCBController = AppStateSerializer.DeserializeIsolatedObject(mode, persistpath, PersistenceID + "CommandBarInfo") as CBCtrlrSerializationWrapper;
			}
			if (wpprCBController == null)
			{
				return false;
			}
			EnabledDockBorders = wpprCBController.cbBorder;
			ApplyDeserializedState(alCommandBars);
		}
		catch (Exception)
		{
			return false;
		}
		return true;
	}

	public bool LoadCommandBarState(AppStateSerializer serializer)
	{
		if (serializer != null)
		{
			try
			{
				object obj = serializer.DeserializeObject(PersistenceID + "CommandBarInfo");
				wpprCBController = obj as CBCtrlrSerializationWrapper;
				if (wpprCBController == null)
				{
					return false;
				}
				EnabledDockBorders = wpprCBController.cbBorder;
				FreezeLayout = true;
				ApplyDeserializedState(alCommandBars);
				FreezeLayout = false;
			}
			catch (Exception)
			{
				return false;
			}
			return true;
		}
		return false;
	}

	internal void UpdateCachedCommandBarState()
	{
		wpprCBController = new CBCtrlrSerializationWrapper(this);
	}

	public bool LoadDesignerCommandBarState()
	{
		return LoadFromStream(strmDefault);
	}

	internal bool LoadFromStream(Stream file)
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			BinaryFormatter binaryFormatter = new BinaryFormatter();
			binaryFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
			binaryFormatter.Binder = AppStateSerializer.CustomBinder;
			wpprCBController = binaryFormatter.Deserialize(file) as CBCtrlrSerializationWrapper;
			if (wpprCBController != null)
			{
				EnabledDockBorders = wpprCBController.cbBorder;
				ApplyDeserializedState(alCommandBars);
				return true;
			}
			return false;
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
	}

	internal void SetChildStartLocation()
	{
		foreach (CommandBar commandBar in CommandBars)
		{
			wpprCBController.AddCommandBarData(commandBar);
		}
	}

	[DocumentationExclude]
	[Obsolete("This method will be removed in a future version. Please use the more flexible ApplyDeserializedState(IList) variant, instead.")]
	protected void ApplyDeserializedState(IEnumerator ebarlist)
	{
		FreezeActivation = true;
		CommandBarDockBorder commandBarDockBorder = CommandBarDockBorder.Top;
		int num = 0;
		while (num < 4)
		{
			CommandDockBar dockBar = GetDockBar(commandBarDockBorder);
			dockBar.ResetBarState();
			num++;
			commandBarDockBorder = (CommandBarDockBorder)((int)commandBarDockBorder * 2);
		}
		ebarlist.Reset();
		while (ebarlist.MoveNext())
		{
			CommandBar commandBar = ebarlist.Current as CommandBar;
			if (alCommandBars.Contains(commandBar))
			{
				commandBar.CommandBarBaseVisible = false;
				if (commandBar.DockState != CommandBarDockState.Float)
				{
					commandBar.cdbParent.RemoveCommandBar(commandBar);
				}
				else
				{
					commandBar.Parent.Visible = false;
				}
				commandBar.bRedockNeeded = false;
				commandBar.bRecalcNeeded = false;
			}
		}
		ebarlist.Reset();
		while (ebarlist.MoveNext())
		{
			ReadDeserializedData(ebarlist.Current as CommandBar);
		}
		ArrayList[][] array = new ArrayList[4][];
		ArrayList arrayList = new ArrayList();
		int num2 = 0;
		int num3 = 0;
		int num4 = 0;
		int num5 = 0;
		ebarlist.Reset();
		while (ebarlist.MoveNext())
		{
			CommandBar commandBar2 = ebarlist.Current as CommandBar;
			int num6 = commandBar2.nRCIndex + 1;
			switch (commandBar2.DockState)
			{
			case CommandBarDockState.Top:
				num2 = ((num6 > num2) ? num6 : num2);
				break;
			case CommandBarDockState.Bottom:
				num3 = ((num6 > num3) ? num6 : num3);
				break;
			case CommandBarDockState.Left:
				num4 = ((num6 > num4) ? num6 : num4);
				break;
			case CommandBarDockState.Right:
				num5 = ((num6 > num5) ? num6 : num5);
				break;
			}
		}
		array[0] = new ArrayList[num2];
		array[1] = new ArrayList[num3];
		array[2] = new ArrayList[num4];
		array[3] = new ArrayList[num5];
		for (int i = 0; i < 4; i++)
		{
			for (int j = 0; j < array[i].Length; j++)
			{
				array[i][j] = new ArrayList();
			}
		}
		ebarlist.Reset();
		while (ebarlist.MoveNext())
		{
			CommandBar commandBar3 = ebarlist.Current as CommandBar;
			if (commandBar3.nRCIndex < 0)
			{
				arrayList.Add(commandBar3);
				continue;
			}
			switch (commandBar3.DockState)
			{
			case CommandBarDockState.Top:
				array[0][commandBar3.nRCIndex].Add(commandBar3);
				break;
			case CommandBarDockState.Bottom:
				array[1][commandBar3.nRCIndex].Add(commandBar3);
				break;
			case CommandBarDockState.Left:
				array[2][commandBar3.nRCIndex].Add(commandBar3);
				break;
			case CommandBarDockState.Right:
				array[3][commandBar3.nRCIndex].Add(commandBar3);
				break;
			default:
				arrayList.Add(commandBar3);
				break;
			}
		}
		commandBarDockBorder = CommandBarDockBorder.Top;
		for (int k = 0; k < 4; k++)
		{
			CommandDockBar dockBar2 = GetDockBar(commandBarDockBorder);
			ArrayList[] array2 = array[k];
			foreach (ArrayList arrayList2 in array2)
			{
				foreach (CommandBar item in arrayList2)
				{
					CommandBarDockState dockBorder = dockBar2.GetDockBorder();
					item.cbarDockState = CommandBarDockState.None;
					item.FireCommandBarStateChanging(new CommandBarStateChangingEventArgs(dockBorder));
					item.cbarDockState = dockBorder;
					CommandBarForm commandBarForm = null;
					if (item.Parent != null)
					{
						commandBarForm = item.Parent as CommandBarForm;
					}
					item.cdbParent = dockBar2;
					item.DockState = dockBorder;
					if (item.Visible)
					{
						dockBar2.AddCommandBar(item, bcreatenewrow: false);
						item.CommandBarBaseVisible = true;
					}
					if (commandBarForm != null)
					{
						if (commandBarForm.Controls.Contains(item))
						{
							commandBarForm.Controls.Remove(item);
						}
						commandBarForm.Close();
					}
					item.FireCommandBarStateChanged(EventArgs.Empty);
				}
			}
			commandBarDockBorder = (CommandBarDockBorder)((int)commandBarDockBorder * 2);
		}
		foreach (CommandBar item2 in arrayList)
		{
			item2.cbarDockState = CommandBarDockState.None;
			item2.FireCommandBarStateChanging(new CommandBarStateChangingEventArgs(CommandBarDockState.Float));
			item2.cbarDockState = CommandBarDockState.Float;
			if (item2.Parent == null || item2.Parent.Location != item2.FloatBounds.Location)
			{
				item2.EnterFloatMode(item2.FloatBounds.Location);
			}
			if (item2.Visible)
			{
				if (!item2.Parent.Visible)
				{
					item2.Parent.Visible = true;
				}
				item2.CommandBarBaseVisible = true;
			}
			else
			{
				item2.Parent.Visible = false;
			}
			item2.FireCommandBarStateChanged(EventArgs.Empty);
			if (!wpprCBController.IsInitialized(item2))
			{
				item2.nRCIndex = -1;
				item2.nRowOffsetDir = 0;
				item2.nRowOffsetInDir = 0;
			}
		}
		RecalcLayout(CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Left | CommandBarDockBorder.Right);
		FreezeActivation = false;
	}

	[DocumentationExclude]
	protected void ApplyDeserializedState(IList ebarlist)
	{
		FreezeActivation = true;
		CommandBarDockBorder commandBarDockBorder = CommandBarDockBorder.Top;
		int num = 0;
		while (num < 4)
		{
			CommandDockBar dockBar = GetDockBar(commandBarDockBorder);
			dockBar.ResetBarState();
			num++;
			commandBarDockBorder = (CommandBarDockBorder)((int)commandBarDockBorder * 2);
		}
		for (int i = 0; i < ebarlist.Count; i++)
		{
			if (ebarlist.Count <= 0)
			{
				break;
			}
			CommandBar commandBar = ebarlist[i] as CommandBar;
			if (alCommandBars.Contains(commandBar))
			{
				commandBar.CommandBarBaseVisible = false;
				if (commandBar.DockState != CommandBarDockState.Float)
				{
					commandBar.cdbParent.RemoveCommandBar(commandBar);
				}
				else
				{
					commandBar.Parent.Visible = false;
				}
				commandBar.bRedockNeeded = false;
				commandBar.bRecalcNeeded = false;
			}
		}
		for (int j = 0; j < ebarlist.Count; j++)
		{
			if (ebarlist.Count <= 0)
			{
				break;
			}
			ReadDeserializedData(ebarlist[j] as CommandBar);
		}
		ArrayList[][] array = new ArrayList[4][];
		ArrayList arrayList = new ArrayList();
		int num2 = 0;
		int num3 = 0;
		int num4 = 0;
		int num5 = 0;
		for (int k = 0; k < ebarlist.Count; k++)
		{
			if (ebarlist.Count <= 0)
			{
				break;
			}
			CommandBar commandBar2 = ebarlist[k] as CommandBar;
			int num6 = commandBar2.nRCIndex + 1;
			switch (commandBar2.DockState)
			{
			case CommandBarDockState.Top:
				num2 = ((num6 > num2) ? num6 : num2);
				break;
			case CommandBarDockState.Bottom:
				num3 = ((num6 > num3) ? num6 : num3);
				break;
			case CommandBarDockState.Left:
				num4 = ((num6 > num4) ? num6 : num4);
				break;
			case CommandBarDockState.Right:
				num5 = ((num6 > num5) ? num6 : num5);
				break;
			}
		}
		array[0] = new ArrayList[num2];
		array[1] = new ArrayList[num3];
		array[2] = new ArrayList[num4];
		array[3] = new ArrayList[num5];
		for (int l = 0; l < 4; l++)
		{
			for (int m = 0; m < array[l].Length; m++)
			{
				array[l][m] = new ArrayList();
			}
		}
		for (int n = 0; n < ebarlist.Count; n++)
		{
			if (ebarlist.Count <= 0)
			{
				break;
			}
			CommandBar commandBar3 = ebarlist[n] as CommandBar;
			if (commandBar3.nRCIndex < 0)
			{
				arrayList.Add(commandBar3);
				continue;
			}
			switch (commandBar3.DockState)
			{
			case CommandBarDockState.Top:
				array[0][commandBar3.nRCIndex].Add(commandBar3);
				break;
			case CommandBarDockState.Bottom:
				array[1][commandBar3.nRCIndex].Add(commandBar3);
				break;
			case CommandBarDockState.Left:
				array[2][commandBar3.nRCIndex].Add(commandBar3);
				break;
			case CommandBarDockState.Right:
				array[3][commandBar3.nRCIndex].Add(commandBar3);
				break;
			default:
				arrayList.Add(commandBar3);
				break;
			}
		}
		commandBarDockBorder = CommandBarDockBorder.Top;
		for (int num7 = 0; num7 < 4; num7++)
		{
			CommandDockBar dockBar2 = GetDockBar(commandBarDockBorder);
			ArrayList[] array2 = array[num7];
			foreach (ArrayList arrayList2 in array2)
			{
				foreach (CommandBar item in arrayList2)
				{
					CommandBarDockState dockBorder = dockBar2.GetDockBorder();
					item.cbarDockState = CommandBarDockState.None;
					item.FireCommandBarStateChanging(new CommandBarStateChangingEventArgs(dockBorder));
					item.cbarDockState = dockBorder;
					CommandBarForm commandBarForm = null;
					if (item.Parent != null)
					{
						commandBarForm = item.Parent as CommandBarForm;
					}
					item.cdbParent = dockBar2;
					item.DockState = dockBorder;
					if (item.Visible)
					{
						dockBar2.AddCommandBar(item, bcreatenewrow: false);
						item.CommandBarBaseVisible = true;
					}
					if (commandBarForm != null)
					{
						if (commandBarForm.Controls.Contains(item))
						{
							commandBarForm.Controls.Remove(item);
						}
						commandBarForm.Close();
					}
					item.FireCommandBarStateChanged(EventArgs.Empty);
				}
			}
			commandBarDockBorder = (CommandBarDockBorder)((int)commandBarDockBorder * 2);
		}
		foreach (CommandBar item2 in arrayList)
		{
			item2.cbarDockState = CommandBarDockState.None;
			item2.FireCommandBarStateChanging(new CommandBarStateChangingEventArgs(CommandBarDockState.Float));
			item2.cbarDockState = CommandBarDockState.Float;
			if (item2.Parent == null || item2.Parent.Location != item2.FloatBounds.Location)
			{
				item2.EnterFloatMode(item2.FloatBounds.Location);
			}
			if (item2.Visible)
			{
				if (!item2.Parent.Visible)
				{
					item2.Parent.Visible = true;
				}
				item2.CommandBarBaseVisible = true;
			}
			else
			{
				item2.Parent.Visible = false;
			}
			item2.FireCommandBarStateChanged(EventArgs.Empty);
			if (!wpprCBController.IsInitialized(item2))
			{
				item2.nRCIndex = -1;
				item2.nRowOffsetDir = 0;
				item2.nRowOffsetInDir = 0;
			}
		}
		RecalcLayout(CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Left | CommandBarDockBorder.Right);
		FreezeActivation = false;
	}

	internal bool ShouldHostFormGetFocus()
	{
		bool result = true;
		if (Syncfusion.Runtime.InteropServices.NativeMethods.GetActiveWindow() != HostForm.Handle)
		{
			MdiClient mdiClient = null;
			foreach (Control control in HostForm.Controls)
			{
				if (control is MdiClient)
				{
					mdiClient = control as MdiClient;
					break;
				}
			}
			if (mdiClient != null)
			{
				bool bValue = false;
				IntPtr handle = Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(mdiClient.Handle, 553, IntPtr.Zero, out bValue);
				Form form = Control.FromHandle(handle) as Form;
				if ((bValue && form != null && form.WindowState == FormWindowState.Minimized) || FreezeActivation)
				{
					result = false;
				}
			}
		}
		return result;
	}

	protected virtual void ReadDeserializedData(CommandBar commandBar)
	{
		if (commandBar != null)
		{
			wpprCBController.ReadDeserializedData(commandBar);
		}
	}

	protected virtual void RemoveCommandBarData(CommandBar commandBar)
	{
		if (commandBar != null)
		{
			wpprCBController.RemoveCommandBarData(commandBar);
		}
	}

	[DocumentationExclude]
	public void LoadCommandBarStateFromCache(CommandBar cbar)
	{
		if (wpprCBController == null)
		{
			return;
		}
		if (alCommandBars.Contains(cbar))
		{
			if (!FreezeLayout)
			{
				cbar.CommandBarBaseVisible = false;
				if (cbar.DockState != CommandBarDockState.Float)
				{
					cbar.cdbParent.RemoveCommandBar(cbar);
				}
				else
				{
					cbar.Parent.Visible = false;
				}
				cbar.bRedockNeeded = false;
				cbar.bRecalcNeeded = false;
				ReadDeserializedData(cbar);
				if (cbar.DockState != CommandBarDockState.Float)
				{
					CommandDockBar dockBar = GetDockBar(cbar.DockState);
					CommandBarDockState dockBorder = dockBar.GetDockBorder();
					cbar.cbarDockState = CommandBarDockState.None;
					cbar.FireCommandBarStateChanging(new CommandBarStateChangingEventArgs(dockBorder));
					cbar.cbarDockState = dockBorder;
					CommandBarForm commandBarForm = null;
					if (cbar.Parent != null)
					{
						commandBarForm = cbar.Parent as CommandBarForm;
					}
					cbar.DockState = dockBorder;
					cbar.cdbParent = dockBar;
					if (cbar.Visible)
					{
						dockBar.AddCommandBar(cbar, bcreatenewrow: false);
						cbar.CommandBarBaseVisible = true;
					}
					if (commandBarForm != null)
					{
						if (commandBarForm.Controls.Contains(cbar))
						{
							commandBarForm.Controls.Remove(cbar);
						}
						commandBarForm.Close();
					}
					cbar.FireCommandBarStateChanged(EventArgs.Empty);
				}
				else
				{
					cbar.cbarDockState = CommandBarDockState.None;
					cbar.FireCommandBarStateChanging(new CommandBarStateChangingEventArgs(CommandBarDockState.Float));
					cbar.cbarDockState = CommandBarDockState.Float;
					if (cbar.Parent == null)
					{
						cbar.EnterFloatMode(cbar.FloatBounds.Location);
					}
					if (cbar.Visible)
					{
						if (!cbar.Parent.Visible)
						{
							cbar.Parent.Visible = true;
						}
						cbar.CommandBarBaseVisible = true;
					}
					else
					{
						cbar.Parent.Visible = false;
					}
					cbar.FireCommandBarStateChanged(EventArgs.Empty);
					if (!wpprCBController.IsInitialized(cbar))
					{
						cbar.nRCIndex = -1;
						cbar.nRowOffsetDir = 0;
						cbar.nRowOffsetInDir = 0;
					}
				}
				RecalcLayout(cbar);
			}
			else if (!alFreezeRelayoutBars.Contains(cbar))
			{
				alFreezeRelayoutBars.Add(cbar);
			}
		}
		else
		{
			ReadDeserializedData(cbar);
		}
	}

	public void RecalcLayout(CommandBarDockBorder style)
	{
		if (style == (CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Left | CommandBarDockBorder.Right))
		{
			style = CommandBarDockBorder.Top;
			for (int i = 0; i < 4; i++)
			{
				CommandDockBar dockBar = GetDockBar(style);
				if (dockBar != null)
				{
					dockBar.CalcDockbarSize();
					dockBar.LayoutDockBar();
				}
				style = (CommandBarDockBorder)((int)style * 2);
			}
			{
				foreach (CommandBar alCommandBar in alCommandBars)
				{
					if (alCommandBar.DockState == CommandBarDockState.Float)
					{
						RecalcLayout(alCommandBar);
					}
				}
				return;
			}
		}
		CommandDockBar dockBar2 = GetDockBar(style);
		if (dockBar2 != null)
		{
			dockBar2.CalcDockbarSize();
			dockBar2.LayoutDockBar();
		}
	}

	[DocumentationExclude]
	protected internal void RecalcBorderLayout(CommandBarDockState border)
	{
		RecalcLayout((CommandBarDockBorder)border);
	}

	private void LayoutDockBar(CommandDockBar dockBarToLayout, CommandDockBar dockBarToIgnore)
	{
		if (dockBarToLayout != null && dockBarToLayout != dockBarToIgnore)
		{
			dockBarToLayout.LayoutDockBar();
		}
	}

	public void LayoutDockBarsExceptBar(CommandDockBar dockBarToIgnore)
	{
		LayoutDockBar(CommandDockBarT, dockBarToIgnore);
		LayoutDockBar(CommandDockBarR, dockBarToIgnore);
		LayoutDockBar(CommandDockBarB, dockBarToIgnore);
		LayoutDockBar(CommandDockBarL, dockBarToIgnore);
	}

	public void RecalcLayout(CommandBar cbar)
	{
		CommandBarDockState dockState = cbar.DockState;
		if (dockState != CommandBarDockState.Float)
		{
			RecalcBorderLayout(dockState);
			return;
		}
		if (cbar.Parent is CommandBarForm commandBarForm)
		{
			commandBarForm.Size = cbar.CalculateFloatingSize();
			cbar.rcFloat = commandBarForm.Bounds;
		}
		cbar.Invalidate(cbar.CaptionRect, invalidateChildren: false);
	}

	public void BringToFront()
	{
		if (CommandDockBarB != null)
		{
			CommandDockBarB.BringToFront();
		}
		if (CommandDockBarL != null)
		{
			CommandDockBarL.BringToFront();
		}
		if (CommandDockBarR != null)
		{
			CommandDockBarR.BringToFront();
		}
		if (CommandDockBarT != null)
		{
			CommandDockBarT.BringToFront();
		}
	}

	public void SendToBack()
	{
		if (CommandDockBarB != null)
		{
			CommandDockBarB.SendToBack();
		}
		if (CommandDockBarL != null)
		{
			CommandDockBarL.SendToBack();
		}
		if (CommandDockBarR != null)
		{
			CommandDockBarR.SendToBack();
		}
		if (CommandDockBarT != null)
		{
			CommandDockBarT.SendToBack();
		}
	}

	internal void SuspendLayout()
	{
		if (this.LayoutSuspended != null)
		{
			this.LayoutSuspended(this, EventArgs.Empty);
		}
	}

	internal void ResumeLayout()
	{
		if (this.LayoutResumed != null)
		{
			this.LayoutResumed(this, EventArgs.Empty);
		}
	}

	[DocumentationExclude]
	protected internal CommandDockBar GetDockBar(CommandBarDockState border)
	{
		CommandDockBar result = null;
		switch (border)
		{
		case CommandBarDockState.Left:
			result = CommandDockBarL;
			break;
		case CommandBarDockState.Top:
			result = CommandDockBarT;
			break;
		case CommandBarDockState.Right:
			result = CommandDockBarR;
			break;
		case CommandBarDockState.Bottom:
			result = CommandDockBarB;
			break;
		}
		return result;
	}

	[DocumentationExclude]
	public CommandDockBar GetDockBar(CommandBarDockBorder dockstyle)
	{
		CommandDockBar result = null;
		switch (dockstyle)
		{
		case CommandBarDockBorder.Left:
			result = CommandDockBarL;
			break;
		case CommandBarDockBorder.Top:
			result = CommandDockBarT;
			break;
		case CommandBarDockBorder.Right:
			result = CommandDockBarR;
			break;
		case CommandBarDockBorder.Bottom:
			result = CommandDockBarB;
			break;
		}
		return result;
	}

	[DocumentationExclude]
	protected internal CommandDockBar GetDockBar(Point ptscreen)
	{
		Point pt = frmMain.PointToClient(ptscreen);
		if (CommandDockBarL != null && Rectangle.Inflate(CommandDockBarL.Bounds, CommandBar.nDefaultUnitHt, 0).Contains(pt))
		{
			return CommandDockBarL;
		}
		if (CommandDockBarT != null && Rectangle.Inflate(CommandDockBarT.Bounds, 0, CommandBar.nDefaultUnitHt).Contains(pt))
		{
			return CommandDockBarT;
		}
		if (CommandDockBarR != null && Rectangle.Inflate(CommandDockBarR.Bounds, CommandBar.nDefaultUnitHt, 0).Contains(pt))
		{
			return CommandDockBarR;
		}
		if (CommandDockBarB != null && Rectangle.Inflate(CommandDockBarB.Bounds, 0, CommandBar.nDefaultUnitHt).Contains(pt))
		{
			return CommandDockBarB;
		}
		return null;
	}

	[DocumentationExclude]
	protected internal void ToggleCommandBarFloatState(bool bactivate)
	{
		if (bactivate)
		{
			foreach (CommandBar alCommandBar in alCommandBars)
			{
				Control parent = alCommandBar.Parent;
				if (parent is CommandBarForm && !parent.Visible && alCommandBar.Visible)
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.ShowWindow(parent.Handle, 4);
					parent.Visible = true;
				}
			}
			return;
		}
		foreach (CommandBar alCommandBar2 in alCommandBars)
		{
			Control parent2 = alCommandBar2.Parent;
			if (parent2 is CommandBarForm && parent2.Visible)
			{
				parent2.Visible = false;
			}
		}
	}

	[DocumentationExclude]
	protected internal void InitializeCBController()
	{
		InitializeDockBars();
		if (!base.DesignMode && wndMainFrm == null)
		{
			wndMainFrm = new AppMainFormWnd(this);
			wndMainFrm.AssignHandleCustom(frmMain);
		}
		if (alCommandBars.Count > 0)
		{
			ArrayList arrayList = new ArrayList();
			foreach (CommandBar alCommandBar in alCommandBars)
			{
				if (alCommandBar.cdbParent != null)
				{
					arrayList.Add(alCommandBar);
				}
			}
			Hashtable hashtable = new Hashtable();
			foreach (CommandBar item in arrayList)
			{
				CBarSerializationWrapper cBarSerializationWrapper = new CBarSerializationWrapper();
				cBarSerializationWrapper.cbarDockState = ((item.cbDockStateT == CommandBarDockState.None) ? item.cbarDockState : item.cbDockStateT);
				cBarSerializationWrapper.nRowOffsetDir = ((item.nRowOffsetDirT == -1) ? item.nRowOffsetDir : item.nRowOffsetDirT);
				cBarSerializationWrapper.nRCIndex = ((item.nRCIndexT == -1) ? item.nRCIndex : item.nRCIndexT);
				hashtable.Add(item, cBarSerializationWrapper);
				item.bRedockNeeded = false;
				item.bRecalcNeeded = false;
				item.ResetTempDefaults();
			}
			foreach (CommandBar item2 in arrayList)
			{
				if (item2.cbarDockState != CommandBarDockState.Float)
				{
					item2.cdbParent.RemoveCommandBar(item2);
					continue;
				}
				CommandBarForm commandBarForm = item2.Parent as CommandBarForm;
				commandBarForm.Controls.Remove(item2);
				commandBarForm.Close();
			}
			foreach (CommandBar item3 in arrayList)
			{
				CBarSerializationWrapper cBarSerializationWrapper2 = hashtable[item3] as CBarSerializationWrapper;
				item3.cbarDockState = cBarSerializationWrapper2.cbarDockState;
				item3.nRowOffsetDir = cBarSerializationWrapper2.nRowOffsetDir;
				item3.nRowOffsetInDir = item3.nRowOffsetDir;
				item3.nRCIndex = cBarSerializationWrapper2.nRCIndex;
				item3.cdbParent = null;
			}
			foreach (CommandBar alCommandBar2 in alCommandBars)
			{
				if (alCommandBar2.nRCIndex != -1)
				{
					continue;
				}
				if (alCommandBar2.cdbParent == null)
				{
					if (CommandDockBarT != null)
					{
						alCommandBar2.cdbParent = CommandDockBarT;
					}
					else if (CommandDockBarB != null)
					{
						alCommandBar2.cdbParent = CommandDockBarB;
					}
					else if (CommandDockBarL != null)
					{
						alCommandBar2.cdbParent = CommandDockBarL;
					}
					else if (CommandDockBarR != null)
					{
						alCommandBar2.cdbParent = CommandDockBarR;
					}
					else
					{
						if (alCommandBar2.DisableFloating)
						{
							throw new ApplicationException("The CommandBar DockState value is invalid.");
						}
						alCommandBar2.DockState = CommandBarDockState.Float;
					}
				}
				if (alCommandBar2.cdbParent != null)
				{
					alCommandBar2.nRCIndex = alCommandBar2.cdbParent.nRCCount;
				}
			}
			ArrayList[][] array = new ArrayList[4][];
			ArrayList arrayList2 = new ArrayList();
			int num = 0;
			int num2 = 0;
			int num3 = 0;
			int num4 = 0;
			IEnumerator enumerator6 = alCommandBars.GetEnumerator();
			enumerator6.Reset();
			while (enumerator6.MoveNext())
			{
				CommandBar commandBar6 = enumerator6.Current as CommandBar;
				int num5 = commandBar6.nRCIndex + 1;
				switch (commandBar6.DockState)
				{
				case CommandBarDockState.Top:
					num = ((num5 > num) ? num5 : num);
					break;
				case CommandBarDockState.Bottom:
					num2 = ((num5 > num2) ? num5 : num2);
					break;
				case CommandBarDockState.Left:
					num3 = ((num5 > num3) ? num5 : num3);
					break;
				case CommandBarDockState.Right:
					num4 = ((num5 > num4) ? num5 : num4);
					break;
				}
			}
			array[0] = new ArrayList[num];
			array[1] = new ArrayList[num2];
			array[2] = new ArrayList[num3];
			array[3] = new ArrayList[num4];
			for (int i = 0; i < 4; i++)
			{
				for (int j = 0; j < array[i].Length; j++)
				{
					array[i][j] = new ArrayList();
				}
			}
			enumerator6.Reset();
			while (enumerator6.MoveNext())
			{
				CommandBar commandBar7 = enumerator6.Current as CommandBar;
				switch (commandBar7.DockState)
				{
				case CommandBarDockState.Top:
					array[0][commandBar7.nRCIndex].Add(commandBar7);
					break;
				case CommandBarDockState.Bottom:
					array[1][commandBar7.nRCIndex].Add(commandBar7);
					break;
				case CommandBarDockState.Left:
					array[2][commandBar7.nRCIndex].Add(commandBar7);
					break;
				case CommandBarDockState.Right:
					array[3][commandBar7.nRCIndex].Add(commandBar7);
					break;
				default:
					arrayList2.Add(commandBar7);
					break;
				}
			}
			CommandBarDockState commandBarDockState = CommandBarDockState.Top;
			for (int k = 0; k < 4; k++)
			{
				GetDockBar(commandBarDockState);
				ArrayList[] array2 = array[k];
				foreach (ArrayList arrayList3 in array2)
				{
					foreach (CommandBar item4 in arrayList3)
					{
						SetCommandBarInitialPosition(item4);
					}
				}
				commandBarDockState = (CommandBarDockState)((int)commandBarDockState * 2);
			}
			foreach (CommandBar item5 in arrayList2)
			{
				SetCommandBarInitialPosition(item5);
			}
			RecalcLayout(CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Left | CommandBarDockBorder.Right);
		}
		frmMain.ControlAdded += HostForm_ControlAdded;
		frmMain.ControlRemoved += HostForm_ControlRemoved;
		frmMain.RightToLeftChanged += HostForm_RightToLeftChanged;
		foreach (Control control in frmMain.Controls)
		{
			if (!(control is CommandDockBar))
			{
				control.DockChanged += ChildControl_DockChanged;
			}
		}
		bDisableButtons = base.DesignMode;
		bInitializationComplete = true;
	}

	[DocumentationExclude]
	protected virtual void InitializeDockBars()
	{
		if (CommandDockBarL != null && (cbDockBorder & ~(CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Right)) != CommandBarDockBorder.Left)
		{
			frmMain.Controls.Remove(CommandDockBarL);
			CommandDockBarL.Visible = false;
			OnDockBarStateChanged(new DockBarStateEventArgs(CommandDockBarL, created: false));
			CommandDockBarL.Dispose();
			CommandDockBarL = null;
		}
		if (CommandDockBarR != null && (cbDockBorder & ~(CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Left)) != CommandBarDockBorder.Right)
		{
			frmMain.Controls.Remove(CommandDockBarR);
			CommandDockBarR.Visible = false;
			OnDockBarStateChanged(new DockBarStateEventArgs(CommandDockBarR, created: false));
			CommandDockBarR.Dispose();
			CommandDockBarR = null;
		}
		if (CommandDockBarT != null && (cbDockBorder & ~(CommandBarDockBorder.Bottom | CommandBarDockBorder.Left | CommandBarDockBorder.Right)) != CommandBarDockBorder.Top)
		{
			frmMain.Controls.Remove(CommandDockBarT);
			CommandDockBarT.Visible = false;
			OnDockBarStateChanged(new DockBarStateEventArgs(CommandDockBarT, created: false));
			CommandDockBarT.Dispose();
			CommandDockBarT = null;
		}
		if (CommandDockBarB != null && (cbDockBorder & ~(CommandBarDockBorder.Top | CommandBarDockBorder.Left | CommandBarDockBorder.Right)) != CommandBarDockBorder.Bottom)
		{
			frmMain.Controls.Remove(CommandDockBarB);
			CommandDockBarB.Visible = false;
			OnDockBarStateChanged(new DockBarStateEventArgs(CommandDockBarB, created: false));
			CommandDockBarB.Dispose();
			CommandDockBarB = null;
		}
		string persistenceID = PersistenceID;
		if (CommandDockBarL == null && (cbDockBorder & ~(CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Right)) == CommandBarDockBorder.Left)
		{
			CommandDockBarL = CreateCommandDockBar();
			CommandDockBarL.Name = "CommandDockBarLeft" + persistenceID;
			frmMain.Controls.Add(CommandDockBarL);
			CommandDockBarL.Dock = DockStyle.Left;
			OnDockBarStateChanged(new DockBarStateEventArgs(CommandDockBarL, created: true));
		}
		if (CommandDockBarR == null && (cbDockBorder & ~(CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Left)) == CommandBarDockBorder.Right)
		{
			CommandDockBarR = CreateCommandDockBar();
			CommandDockBarR.Name = "CommandDockBarRight" + persistenceID;
			frmMain.Controls.Add(CommandDockBarR);
			CommandDockBarR.Dock = DockStyle.Right;
			OnDockBarStateChanged(new DockBarStateEventArgs(CommandDockBarR, created: true));
		}
		if (CommandDockBarT == null && (cbDockBorder & ~(CommandBarDockBorder.Bottom | CommandBarDockBorder.Left | CommandBarDockBorder.Right)) == CommandBarDockBorder.Top)
		{
			CommandDockBarT = CreateCommandDockBar();
			CommandDockBarT.Name = "CommandDockBarTop" + persistenceID;
			frmMain.Controls.Add(CommandDockBarT);
			CommandDockBarT.Dock = DockStyle.Top;
			OnDockBarStateChanged(new DockBarStateEventArgs(CommandDockBarT, created: true));
		}
		if (CommandDockBarB == null && (cbDockBorder & ~(CommandBarDockBorder.Top | CommandBarDockBorder.Left | CommandBarDockBorder.Right)) == CommandBarDockBorder.Bottom)
		{
			CommandDockBarB = CreateCommandDockBar();
			CommandDockBarB.Name = "CommandDockBarBottom" + persistenceID;
			frmMain.Controls.Add(CommandDockBarB);
			CommandDockBarB.Dock = DockStyle.Bottom;
			OnDockBarStateChanged(new DockBarStateEventArgs(CommandDockBarB, created: true));
		}
		ResetDockBarZOrder();
	}

	[DocumentationExclude]
	protected virtual CommandDockBar CreateCommandDockBar()
	{
		return new CommandDockBar(this);
	}

	[DocumentationExclude]
	protected virtual void OnDockBarStateChanged(DockBarStateEventArgs args)
	{
		if (this.DockBarStateChanged != null)
		{
			this.DockBarStateChanged(this, args);
		}
	}

	protected virtual void OnProvidePresistenceID(ProvidePersistenceIDEventArgs e)
	{
		if (this.ProvidePersisteceID != null)
		{
			this.ProvidePersisteceID(this, e);
		}
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public void ResetDockBarZOrder()
	{
		if (m_bInternalDocking)
		{
			BringToFront();
		}
		else
		{
			SendToBack();
		}
		if (frmMain == null || frmMain.Controls == null)
		{
			return;
		}
		foreach (Control control in frmMain.Controls)
		{
			if (control is StatusBar || control is StatusStrip || control is IStatusBarAdv)
			{
				control.SendToBack();
				break;
			}
		}
	}

	[DocumentationExclude]
	protected void SetCommandBarInitialPosition(CommandBar cbar)
	{
		if (cbar.DockState != CommandBarDockState.Float)
		{
			if (cbar.cdbParent == null)
			{
				cbar.cdbParent = GetDockBar(cbar.DockState);
			}
			if (cbar.cdbParent != null)
			{
				SetInitialDockedPosition(cbar);
			}
			else
			{
				SetInitialFloatingPosition(cbar);
			}
		}
		else
		{
			SetInitialFloatingPosition(cbar);
		}
	}

	[DocumentationExclude]
	protected void SetInitialDockedPosition(CommandBar cbar)
	{
		if (cbar.nRCIndex == -1)
		{
			cbar.cdbParent.InitializeIndexRowOffsets(cbar);
		}
		if (cbar.nRCIndex > 0)
		{
			CommandBar[] rowArray = cbar.cdbParent.GetRowArray(cbar.nRCIndex - 1);
			if (rowArray.Length == 0)
			{
				if (!alDelayLoadBars.Contains(cbar))
				{
					alDelayLoadBars.Add(cbar);
				}
				return;
			}
		}
		if (cbar.nRowOffsetDir == -1)
		{
			cbar.nRowOffsetDir = 0;
			cbar.cdbParent.InitializeRowOffsets(cbar);
		}
		if (cbar.Visible)
		{
			CommandBarDockState dockBorder = cbar.cdbParent.GetDockBorder();
			cbar.cbarDockState = CommandBarDockState.None;
			cbar.FireCommandBarStateChanging(new CommandBarStateChangingEventArgs(dockBorder));
			cbar.cbarDockState = dockBorder;
			cbar.cdbParent.IsInitializing = true;
			cbar.cdbParent.AddCommandBar(cbar, bcreatenewrow: false);
			cbar.cdbParent.IsInitializing = false;
			ArrayList arrayList = new ArrayList();
			foreach (CommandBar alDelayLoadBar in alDelayLoadBars)
			{
				if (alDelayLoadBar.cdbParent == cbar.cdbParent)
				{
					arrayList.Add(alDelayLoadBar);
				}
			}
			if (arrayList.Count > 0)
			{
				foreach (CommandBar item in arrayList)
				{
					if (item.nRCIndex > cbar.nRCIndex)
					{
						alDelayLoadBars.Remove(item);
						SetCommandBarInitialPosition(item);
					}
				}
				arrayList.Clear();
			}
			cbar.FireCommandBarStateChanged(EventArgs.Empty);
		}
		else
		{
			if (wpprCBController != null && !wpprCBController.IsInitialized(cbar))
			{
				cbar.nRCIndex = -1;
				cbar.nRowOffsetDir = -1;
				cbar.nRowOffsetInDir = -1;
			}
			cbar.CommandBarBaseVisible = false;
			cbar.cdbParent.Controls.Add(cbar);
		}
	}

	[DocumentationExclude]
	protected void SetInitialFloatingPosition(CommandBar cbar)
	{
		cbar.cbarDockState = CommandBarDockState.None;
		cbar.FireCommandBarStateChanging(new CommandBarStateChangingEventArgs(CommandBarDockState.Float));
		cbar.cbarDockState = CommandBarDockState.Float;
		if (frmMain != null && cbar.FloatBounds.IsEmpty)
		{
			cbar.EnterFloatMode(frmMain.Location);
		}
		else
		{
			cbar.EnterFloatMode(cbar.FloatBounds.Location);
		}
		if (!cbar.Visible && cbar.Parent != null)
		{
			cbar.Parent.Visible = false;
		}
		cbar.FireCommandBarStateChanged(EventArgs.Empty);
		if (wpprCBController != null && !wpprCBController.IsInitialized(cbar))
		{
			cbar.nRCIndex = -1;
			cbar.nRowOffsetDir = 0;
			cbar.nRowOffsetInDir = 0;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void BeginInit()
	{
		if (frmMain != null)
		{
			frmMain.Layout -= HostForm_Layout;
		}
		bInitializationComplete = false;
		if (!base.DesignMode)
		{
			bLoadVisibility = false;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void EndInit()
	{
		if (frmMain != null)
		{
			if (!base.DesignMode)
			{
				frmMain.Layout += HostForm_Layout;
				frmMain.ResumeLayout(performLayout: true);
				frmMain.PerformLayout();
			}
			else
			{
				InitializeCBController();
				ResetDockBarZOrder();
			}
		}
		else
		{
			bInitializationComplete = true;
			bLoadVisibility = true;
		}
	}

	[DocumentationExclude]
	protected void HostForm_Load(object sender, EventArgs e)
	{
		bLoadVisibility = true;
		foreach (CommandBar alCommandBar in alCommandBars)
		{
			if (alCommandBar.Floating && alCommandBar.Visible)
			{
				alCommandBar.Parent.Visible = true;
			}
		}
	}

	[DocumentationExclude]
	protected void HostForm_Closing(object sender, CancelEventArgs e)
	{
		if (!base.DesignMode && bPersistState)
		{
			SaveCommandBarState();
		}
	}

	[DocumentationExclude]
	protected void HostForm_Layout(object sender, LayoutEventArgs levent)
	{
		frmMain.Layout -= HostForm_Layout;
		NativeMethodsHelper.SuspendRedrawWindow(frmMain.Handle);
		InitializeCBController();
		if (s_isDevEnv)
		{
			SaveToStream(strmDefault);
			strmDefault.Seek(0L, SeekOrigin.Begin);
			if (bPersistState)
			{
				LoadCommandBarState();
			}
		}
		ResetDockBarZOrder();
		MethodInvoker method = ResumeRedrawMainFormAsync;
		frmMain.BeginInvoke(method);
	}

	private void ResumeRedrawMainFormAsync()
	{
		NativeMethodsHelper.ResumeRedrawWindow(frmMain.Handle, bRedraw: false);
	}

	[DocumentationExclude]
	protected void HostForm_SystemColorsChanged(object sender, EventArgs e)
	{
		CommandBar.InitializeFloatCaptionFont();
	}

	[DocumentationExclude]
	protected void HostForm_BackColorChanged(object sender, EventArgs e)
	{
		if (!bBackColorSet)
		{
			clrBackColor = frmMain.BackColor;
		}
	}

	[DocumentationExclude]
	protected void HostForm_ControlAdded(object sender, ControlEventArgs e)
	{
		if (e.Control != null && !(e.Control is CommandDockBar))
		{
			if (e.Control.Dock != DockStyle.None)
			{
				ResetDockBarZOrder();
			}
			e.Control.DockChanged += ChildControl_DockChanged;
		}
	}

	[DocumentationExclude]
	protected void HostForm_ControlRemoved(object sender, ControlEventArgs e)
	{
		if (e.Control != null && !(e.Control is CommandDockBar))
		{
			e.Control.DockChanged -= ChildControl_DockChanged;
		}
	}

	[DocumentationExclude]
	protected void ChildControl_DockChanged(object sender, EventArgs e)
	{
		if (sender is Control { Dock: not DockStyle.None })
		{
			ResetDockBarZOrder();
		}
	}

	[DocumentationExclude]
	protected void HostForm_RightToLeftChanged(object sender, EventArgs e)
	{
		RightToLeft rightToLeft = RightToLeft;
		CommandDockBarL.RightToLeft = rightToLeft;
		CommandDockBarT.RightToLeft = rightToLeft;
		CommandDockBarR.RightToLeft = rightToLeft;
		CommandDockBarB.RightToLeft = rightToLeft;
		foreach (CommandBar alCommandBar in alCommandBars)
		{
			alCommandBar.RightToLeft = rightToLeft;
			alCommandBar.Invalidate(invalidateChildren: true);
			RecalcLayout(alCommandBar);
		}
	}

	public virtual CommandBarsCollection GetCommandBarsList()
	{
		return alCommandBars;
	}

	CommandDockBar ICBControllerDesignerInvoke.GetCommandDockBarL()
	{
		return CommandDockBarL;
	}

	CommandDockBar ICBControllerDesignerInvoke.GetCommandDockBarT()
	{
		return CommandDockBarT;
	}

	CommandDockBar ICBControllerDesignerInvoke.GetCommandDockBarR()
	{
		return CommandDockBarR;
	}

	CommandDockBar ICBControllerDesignerInvoke.GetCommandDockBarB()
	{
		return CommandDockBarB;
	}

	void ICBControllerDesignerInvoke.InitializeCBController()
	{
		InitializeCBController();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			alFreezeAddBars.Clear();
			alFreezeRemoveBars.Clear();
			alFreezeRelayoutBars.Clear();
			alDelayLoadBars.Clear();
			foreach (CommandBar alCommandBar in alCommandBars)
			{
				if (alCommandBar.Parent != null)
				{
					if (alCommandBar.Floating)
					{
						CommandBarForm commandBarForm = alCommandBar.Parent as CommandBarForm;
						commandBarForm.Visible = false;
						commandBarForm.Controls.Remove(alCommandBar);
						commandBarForm.Close();
					}
					else if (alCommandBar.CommandBarBaseVisible)
					{
						alCommandBar.CommandBarBaseVisible = false;
						alCommandBar.cdbParent.RemoveCommandBar(alCommandBar);
					}
					else
					{
						alCommandBar.cdbParent.Controls.Remove(alCommandBar);
					}
				}
				alCommandBar.Dispose();
			}
			alCommandBars.Clear();
			if (CommandDockBarL != null)
			{
				frmMain.Controls.Remove(CommandDockBarL);
				CommandDockBarL.Visible = false;
				OnDockBarStateChanged(new DockBarStateEventArgs(CommandDockBarL, created: false));
				CommandDockBarL.Dispose();
				CommandDockBarL = null;
			}
			if (CommandDockBarB != null)
			{
				frmMain.Controls.Remove(CommandDockBarB);
				CommandDockBarB.Visible = false;
				OnDockBarStateChanged(new DockBarStateEventArgs(CommandDockBarB, created: false));
				CommandDockBarB.Dispose();
				CommandDockBarB = null;
			}
			if (CommandDockBarR != null)
			{
				frmMain.Controls.Remove(CommandDockBarR);
				CommandDockBarR.Visible = false;
				OnDockBarStateChanged(new DockBarStateEventArgs(CommandDockBarR, created: false));
				CommandDockBarR.Dispose();
				CommandDockBarR = null;
			}
			if (CommandDockBarT != null)
			{
				frmMain.Controls.Remove(CommandDockBarT);
				CommandDockBarT.Visible = false;
				OnDockBarStateChanged(new DockBarStateEventArgs(CommandDockBarT, created: false));
				CommandDockBarT.Dispose();
				CommandDockBarT = null;
			}
			if (frmMain != null)
			{
				foreach (Control control in frmMain.Controls)
				{
					if (!(control is CommandDockBar))
					{
						control.DockChanged -= ChildControl_DockChanged;
					}
				}
				frmMain.ControlAdded -= HostForm_ControlAdded;
				frmMain.ControlRemoved -= HostForm_ControlRemoved;
				frmMain.RightToLeftChanged -= HostForm_RightToLeftChanged;
				if (!base.DesignMode)
				{
					frmMain.Load -= HostForm_Load;
					frmMain.Closing -= HostForm_Closing;
					frmMain.SystemColorsChanged -= HostForm_SystemColorsChanged;
				}
				frmMain.BackColorChanged -= HostForm_BackColorChanged;
				frmMain = null;
			}
			strmDefault.Close();
		}
		if (wndMainFrm != null)
		{
			wndMainFrm.Deactivate();
			wndMainFrm = null;
		}
		base.Dispose(disposing);
	}
}
