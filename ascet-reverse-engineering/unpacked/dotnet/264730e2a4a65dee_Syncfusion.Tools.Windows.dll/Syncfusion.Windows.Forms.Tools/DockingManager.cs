using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Runtime.InteropServices;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization.Formatters.Binary;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Runtime.Serialization;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.Renderers;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Provides the functionality for creating and working with docking windows.")]
[ProvideProperty("EnableDocking", typeof(Control))]
[ToolboxItemFilter("System.Windows.Forms", ToolboxItemFilterType.Allow)]
[Designer(typeof(DockingManagerDesigner), typeof(IDesigner))]
[DesignerSerializer(typeof(DockingManagerCDS), typeof(CodeDomSerializer))]
[ToolboxBitmap(typeof(DockingManager), "ToolboxIcons.docking.bmp")]
public class DockingManager : Component, IExtenderProvider, ISupportInitialize, IDockingManagerDesignerInvoke, IGetMsgProcListener, ICallWndProcListener
{
	internal delegate void EnabledDockingEventHandler(Control ctrl, bool enabledDocking);

	[DocumentationExclude]
	protected const string strPersistKey = "DockStateInfo";

	private static ArrayList DockingManagersList;

	private bool m_PreviousParentVisibility;

	private Form m_PreviousParentForm;

	private string autoHideButtonToolTip = "";

	private string closeButtonToolTip = "";

	private string menuButtonToolTip = "";

	private string maximizeButtonToolTip = "";

	private string restoreButtonToolTip = "";

	private bool showToolTips = true;

	private bool showIconInAutoHideContextMenu = true;

	private bool m_FullCaptionsInAutoHideMode;

	private bool m_ShowCaption = true;

	private bool m_ShowImages = true;

	private bool showDockTabScrollButton;

	protected CaptionButtonsCollection m_CaptionButtons = new CaptionButtonsCollection();

	private bool m_showAutohidetabContextMenu = true;

	private bool m_EnableDoubleClickOnCaption = true;

	private bool m_DragFeedbackEventsOnSplitters = true;

	private bool bEnableDragAutoHiddenTabs;

	private bool m_enableSuperToolTip;

	private ArrayList alautohide;

	private BrushInfo bIActiveCaptionBackround = new BrushInfo(SystemColors.ActiveCaption);

	private Color cActiveCaptionForeGround = SystemColors.ActiveCaptionText;

	private Font fntActiveCaptionFont = SystemInformation.MenuFont;

	private BrushInfo bIInActiveCaptionBackround = new BrushInfo(SystemColors.Control);

	private Color cInActiveCaptionForeGround = SystemColors.ControlText;

	private Font fntInActiveCaptionFont = SystemInformation.MenuFont;

	private Control m_activeControl;

	[DocumentationExclude]
	protected AutoHideSelectionStyle autoHideSelection;

	internal DockHost dhLastActive;

	private NotifyNativeWindow m_nativeWindow;

	[DocumentationExclude]
	protected DockHostController controllerInFocus;

	[DocumentationExclude]
	protected Control ctrlLastActive;

	[DocumentationExclude]
	protected AHTabControl autoHideTabInView;

	protected internal AHTabControl ahTabAnimate;

	protected internal Control ctrlLastPainted;

	[DocumentationExclude]
	protected internal ArrayList alDockAreaControllers = new ArrayList();

	[DocumentationExclude]
	protected ArrayList alFFControllers = new ArrayList();

	private ArrayList alHiddenFFControllers = new ArrayList();

	[DocumentationExclude]
	protected internal MainFormController dcHostForm;

	[DocumentationExclude]
	protected internal ArrayList m_freezeResizeCtrls = new ArrayList();

	[DocumentationExclude]
	protected IDragProvider m_dragProvider;

	protected Office2007Theme m_Office2007Theme;

	private DockMenuStyle m_MenuStyle = DockMenuStyle.VS2005;

	[DocumentationExclude]
	protected VisualStyle m_RendererStyle = VisualStyle.VS2005;

	[DocumentationExclude]
	protected DragProviderStyle providerStyle = DragProviderStyle.VS2005;

	[DocumentationExclude]
	protected DockingManagerRenderer m_Renderer;

	[DocumentationExclude]
	protected bool bAutoHideEnabled = true;

	[DocumentationExclude]
	protected bool bCloseEnabled = true;

	[DocumentationExclude]
	protected bool bMaximizeEnabled;

	[DocumentationExclude]
	protected bool bFormClientBorder = true;

	[DocumentationExclude]
	protected bool bMenuButtonEnabled = true;

	protected bool bAllowTabsMoving = true;

	internal bool bHostFormClosing;

	protected ArrayList m_mdiZOrder = new ArrayList();

	[DocumentationExclude]
	protected ImageList ilDockTabs;

	[DocumentationExclude]
	protected bool bControlScopeImages;

	[DocumentationExclude]
	protected bool bPersistState;

	[DocumentationExclude]
	protected bool bEnableContextMenu = true;

	[DocumentationExclude]
	protected Hashtable htIcon = new Hashtable();

	[DocumentationExclude]
	protected Hashtable htmIcon = new Hashtable();

	[DocumentationExclude]
	protected Hashtable htText = new Hashtable();

	[DocumentationExclude]
	protected Hashtable htFloatOnly = new Hashtable();

	[DocumentationExclude]
	protected Hashtable htAllowFloating = new Hashtable();

	[DocumentationExclude]
	protected ArrayList listAHOnLoad = new ArrayList();

	[DocumentationExclude]
	protected Hashtable htHiddenOnLoad = new Hashtable();

	[DocumentationExclude]
	protected ArrayList alInheritedControls = new ArrayList();

	protected Hashtable htDockAbility = new Hashtable();

	protected Hashtable htOuterDockAbility = new Hashtable();

	protected Hashtable htCustomCaptionButtons = new Hashtable();

	[DocumentationExclude]
	protected MemoryStream stmLayout = new MemoryStream();

	[DocumentationExclude]
	protected internal bool bLoadVisibility = true;

	[DocumentationExclude]
	protected internal ArrayList alEnableDocking = new ArrayList();

	[DocumentationExclude]
	protected bool bInBeginEndInit;

	[DocumentationExclude]
	protected bool bHoldEvents;

	protected int dactivatedFlag;

	[DocumentationExclude]
	protected internal bool bWaitOnLayoutEvent;

	protected internal bool bCancelVisibilityChangingEvent;

	protected internal bool bFiredVisibilityChangingEvent;

	protected internal bool bFiredVisibilityChangedEvent;

	protected internal bool bFreezeDockStateChangeEvents;

	protected internal bool bAllowActivationEvents = true;

	protected internal bool bMdiFormClosing;

	[DocumentationExclude]
	protected bool bDockToFill;

	[DocumentationExclude]
	protected internal DockingStyle dsDockFillAHBorder = DockingStyle.Fill;

	[DocumentationExclude]
	protected bool bDisallowFloating;

	[DocumentationExclude]
	protected bool bAutoHideActiveControl;

	[DocumentationExclude]
	protected bool bFloatingVisibility;

	[DocumentationExclude]
	protected internal Form frmOwner;

	[DocumentationExclude]
	protected bool bMDIActivatedVisibility = true;

	[DocumentationExclude]
	protected bool bHostActivatedVisibility = true;

	[DocumentationExclude]
	protected Color m_borderColor = SystemColors.ControlDark;

	[DocumentationExclude]
	protected bool m_paintBorders = true;

	private bool layoutSuspended;

	private bool unHookedCallWnd;

	private bool unHookedGetMsg;

	private int m_nSuspendLayoutCount;

	private int m_curentThreadId;

	private bool m_singleTabOperate;

	private bool m_bEscKeyPressed;

	private int m_lockCounter;

	private bool m_bDesignDockStateLoad;

	private bool m_bOffice2007MdiChildForm;

	private Color m_mdiOffice2007CustomColor = Color.SkyBlue;

	private Office2007Theme m_mdiOffice2007ColorScheme = Office2007Theme.Managed;

	private bool m_bCustomMdiColor;

	private bool m_bCustomMdiStyle = true;

	private bool m_isInitializing = true;

	private ArrayList m_NeedFocusControls = new ArrayList();

	private Control m_ValidatingCancelledControl;

	internal bool m_bLoadingDockState;

	private bool m_bNeedDTFPriorityController = true;

	private bool importDockingControl = true;

	private bool needFloatFormRepaint = true;

	private bool reduceFlicker;

	private Font m_CaptionTextFont;

	[DocumentationExclude]
	protected DockTabAlignmentStyle dtAlignment = DockTabAlignmentStyle.Bottom;

	[DocumentationExclude]
	protected DockLabelAlignmentStyle dlAlignment;

	[DocumentationExclude]
	public FramePainter FramePainter;

	internal Point m_FloatingLocation;

	internal ArrayList m_CustomizeControlCollection = new ArrayList();

	[Browsable(false)]
	[DocumentationExclude]
	public static int AnimationSpeed;

	[Browsable(false)]
	public static int AnimationStep;

	[DocumentationExclude]
	protected internal int MaxRedockFactor = 2;

	[DocumentationExclude]
	protected bool bDesignProcess;

	[DocumentationExclude]
	protected bool bThemesEnabled;

	[DocumentationExclude]
	protected bool m_bIsMirrored;

	[DocumentationExclude]
	protected internal static int nShowInterval;

	[DocumentationExclude]
	protected internal static int nHideInterval;

	[DocumentationExclude]
	protected bool bFreezeResizing;

	[DocumentationExclude]
	protected internal bool bApplyMinMaxExtents = true;

	[DocumentationExclude]
	protected internal static Font ftSysInfoMenuFont;

	[DocumentationExclude]
	protected int nDockTabHeight = ftSysInfoMenuFont.Height + 8;

	[DocumentationExclude]
	protected Font ftDockTab = ftSysInfoMenuFont;

	[DocumentationExclude]
	protected int nAutoHideTabHeight = ftSysInfoMenuFont.Height + 8;

	[DocumentationExclude]
	protected Font ftAutoHideTab = ftSysInfoMenuFont;

	[DocumentationExclude]
	protected ArrayList alTargetManagers = new ArrayList();

	internal ArrayList controllers = new ArrayList();

	private int lockUpdates;

	private int splitterWidth = 4;

	internal bool lockedHostForm;

	private Keys browsingKey;

	protected internal bool m_IsCaptionButtonsCleared;

	private IContainer m_container;

	private bool m_bForbidWrapperLogic;

	private bool m_bForceHideActiveControl;

	private int m_lockActivationEvents;

	private bool m_stopControlActivation;

	private int m_interval = 5000;

	private bool useBalloonStyleToolTip;

	private SuperToolTip m_toolTip;

	private bool forwardMenuShortcuts = true;

	private MainWindowSubclass subclass;

	private bool m_bForbidFreeze;

	private ArrayList subscribed = new ArrayList();

	private bool isHostFormTopMost;

	internal Control lastActivated;

	internal Control mouseActivatedControl;

	private CaptionButtonsCollection m_prevCaptionButtons = new CaptionButtonsCollection();

	[Description("Gets or sets color scheme for Office2007 MDI children")]
	[DefaultValue(typeof(Office2007Theme), "Managed")]
	[Category("Appearance")]
	public Office2007Theme Office2007MdiColorScheme
	{
		get
		{
			return m_mdiOffice2007ColorScheme;
		}
		set
		{
			if (m_mdiOffice2007ColorScheme == value)
			{
				return;
			}
			m_mdiOffice2007ColorScheme = value;
			foreach (Control item in alEnableDocking)
			{
				if (item.Parent is DockingWrapperForm dockingWrapperForm)
				{
					dockingWrapperForm.ColorScheme = m_mdiOffice2007ColorScheme;
				}
			}
			m_bCustomMdiColor = true;
		}
	}

	[Description("Indicates whether floating form needs to be repainted.")]
	[DefaultValue(true)]
	[Category("Behavior")]
	public bool NeedFloatFormRepaint
	{
		get
		{
			return needFloatFormRepaint;
		}
		set
		{
			if (needFloatFormRepaint != value)
			{
				needFloatFormRepaint = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets if docking MDI children should be in Office2007 style.")]
	[DefaultValue(false)]
	public bool Office2007MdiChildForm
	{
		get
		{
			return m_bOffice2007MdiChildForm;
		}
		set
		{
			if (m_bOffice2007MdiChildForm == value)
			{
				return;
			}
			m_bOffice2007MdiChildForm = value;
			if (!DesignMode)
			{
				foreach (Control item in alEnableDocking)
				{
					if (item.Parent is DockingWrapperForm dockingWrapperForm)
					{
						dockingWrapperForm.DisableOffice2007Style = !value;
					}
				}
			}
			if (VisualStyle == VisualStyle.Office2007 || VisualStyle == VisualStyle.Office2007Outlook)
			{
				if (!value)
				{
					m_bCustomMdiStyle = true;
				}
			}
			else if (value)
			{
				m_bCustomMdiStyle = true;
			}
		}
	}

	internal bool DesignDockStateLoad
	{
		get
		{
			return m_bDesignDockStateLoad;
		}
		set
		{
			if (m_bDesignDockStateLoad != value)
			{
				m_bDesignDockStateLoad = value;
			}
		}
	}

	internal bool EscapeKeyPressed => m_bEscKeyPressed;

	internal DockingManagerRenderer Renderer => m_Renderer;

	protected internal bool HoldEvents => bHoldEvents;

	internal bool InBeginEndInit => bInBeginEndInit;

	internal Font CaptionTextFont => m_CaptionTextFont;

	internal bool LockUpdates => lockUpdates > 0;

	protected internal ArrayList TargetManagers => alTargetManagers;

	internal bool ReloadingDesigner
	{
		get
		{
			bool result = false;
			if (GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
			{
				IDesigner designer = designerHost.GetDesigner(this);
				if (designer != null && designer is DockingManagerDesigner)
				{
					DockingManagerDesigner dockingManagerDesigner = designer as DockingManagerDesigner;
					result = dockingManagerDesigner.bReloading;
				}
			}
			return result;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DocumentationExclude]
	protected internal Control LastActiveControl
	{
		get
		{
			return ctrlLastActive;
		}
		set
		{
			if (ctrlLastActive != value && value != null)
			{
				ctrlLastActive = value;
			}
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	protected internal Control ValidatingCancelledControl
	{
		get
		{
			return m_ValidatingCancelledControl;
		}
		set
		{
			if (m_ValidatingCancelledControl != value)
			{
				m_ValidatingCancelledControl = value;
			}
		}
	}

	internal Point FloatingLocation
	{
		get
		{
			return m_FloatingLocation;
		}
		set
		{
			if (m_FloatingLocation != value)
			{
				m_FloatingLocation = value;
			}
		}
	}

	internal ArrayList CustomizeControlCollection
	{
		get
		{
			return m_CustomizeControlCollection;
		}
		set
		{
			if (m_CustomizeControlCollection != value)
			{
				m_CustomizeControlCollection = value;
			}
		}
	}

	internal bool IsMirrored => m_bIsMirrored;

	internal new bool DesignMode => base.DesignMode;

	internal bool DesignProcess => bDesignProcess;

	internal ComponentCollection HostFormComponents
	{
		get
		{
			if (m_container != null)
			{
				return m_container.Components;
			}
			return null;
		}
	}

	internal ArrayList FloatingFormControllers => alFFControllers;

	internal ArrayList MdiZOrder => m_mdiZOrder;

	internal bool ForbidWrapperLogic => m_bForbidWrapperLogic;

	internal bool ApplyMinMaxExtents => bApplyMinMaxExtents;

	internal bool ForceHideActiveControl
	{
		get
		{
			return m_bForceHideActiveControl;
		}
		set
		{
			if (m_bForceHideActiveControl != value)
			{
				m_bForceHideActiveControl = value;
			}
		}
	}

	internal ArrayList NeedFocusControls => m_NeedFocusControls;

	internal int LockActivationEvents
	{
		get
		{
			return m_lockActivationEvents;
		}
		set
		{
			m_lockActivationEvents = ((value >= 0) ? value : 0);
		}
	}

	internal bool StopActivationEvents
	{
		get
		{
			return m_stopControlActivation;
		}
		set
		{
			m_stopControlActivation = value;
		}
	}

	internal bool PreviousParentVisibility
	{
		get
		{
			return m_PreviousParentVisibility;
		}
		set
		{
			if (m_PreviousParentVisibility != value)
			{
				m_PreviousParentVisibility = value;
			}
		}
	}

	internal Form PreviousParentForm
	{
		get
		{
			return m_PreviousParentForm;
		}
		set
		{
			if (m_PreviousParentForm != value)
			{
				m_PreviousParentForm = value;
			}
		}
	}

	[Description("Gets or sets the form that will host the DockingManager.")]
	[Browsable(false)]
	public ContainerControl HostControl
	{
		get
		{
			if (dcHostForm == null)
			{
				return null;
			}
			return dcHostForm.HostControl as ContainerControl;
		}
		set
		{
			if (value == null || (dcHostForm != null && (dcHostForm == null || dcHostForm.HostControl == value)) || (bDockToFill && value is Form && (value as Form).IsMdiContainer))
			{
				return;
			}
			dcHostForm = CreateMainFormController(value);
			AddController(dcHostForm);
			if (HostControl.Created)
			{
				Graphics graphics = Graphics.FromHwnd(HostControl.Handle);
				UpdateFonts(graphics.DpiY);
			}
			value.SystemColorsChanged += HostControl_SystemColorsChanged;
			if (value != null)
			{
				UpdateRightToLeftProperty(value.RightToLeft);
				value.RightToLeftChanged += HostControl_RightToLeftChanged;
			}
			if (DesignProcess)
			{
				return;
			}
			dcHostForm.UpdateFormClientSetting();
			dcHostForm.AdjustLayoutDockArea();
			value.Paint += HostControl_Paint;
			if (HostControl.IsHandleCreated)
			{
				AssignNotifyWindow();
			}
			if (value is Form)
			{
				(value as Form).Closed += HostForm_Closed;
				value.ParentChanged += HostControl_ParentChanged;
				return;
			}
			Form parentForm = value.ParentForm;
			if (parentForm != null)
			{
				frmOwner = parentForm;
				frmOwner.HandleCreated += OwnerForm_HandleCreated;
			}
			RecSubscribeHostControlEvents(value, subscribe: true);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Gets or sets the form that will host the DockingManager.")]
	[Browsable(false)]
	public Form HostForm
	{
		get
		{
			if (HostControl == null || !(HostControl is Form))
			{
				return null;
			}
			return HostControl as Form;
		}
		set
		{
			HostControl = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	public ArrayList DockAreaControllers => alDockAreaControllers;

	[DefaultValue(null)]
	[DocumentationExclude]
	[Browsable(false)]
	[Description("The stream containing the dockstate data set by the visual designer.")]
	public MemoryStream DockLayoutStream
	{
		get
		{
			return stmLayout;
		}
		set
		{
			stmLayout = value;
		}
	}

	[DefaultValue(false)]
	[Description("Gets or sets a value indicating whether the application's docking windows state should be persisted.")]
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

	[Category("Behavior")]
	[DefaultValue(DragProviderStyle.VS2005)]
	[Description("Docking provider style.")]
	public DragProviderStyle DragProviderStyle
	{
		get
		{
			return providerStyle;
		}
		set
		{
			if (providerStyle != value)
			{
				InitializeDragProvider(value);
			}
		}
	}

	[Description("Specifies behavior of context menus of docking windows.")]
	[DefaultValue(DockMenuStyle.VS2005)]
	[Category("Behavior")]
	public DockMenuStyle MenuStyle
	{
		get
		{
			return m_MenuStyle;
		}
		set
		{
			if (m_MenuStyle != value)
			{
				m_MenuStyle = value;
			}
		}
	}

	[DefaultValue(VisualStyle.VS2005)]
	[Description("Specifies the docking manager's visual style.")]
	[Category("Behavior")]
	public VisualStyle VisualStyle
	{
		get
		{
			return m_RendererStyle;
		}
		set
		{
			if (m_RendererStyle == value)
			{
				return;
			}
			m_RendererStyle = value;
			m_Renderer.VisualStyle = value;
			if (value == VisualStyle.Office2007 || value == VisualStyle.Office2007Outlook)
			{
				if (!InBeginEndInit && !m_bCustomMdiStyle)
				{
					Office2007MdiChildForm = true;
				}
				m_Renderer.RefreshOffice2007Theme(Office2007Theme);
			}
			else if (!InBeginEndInit && !m_bCustomMdiStyle)
			{
				Office2007MdiChildForm = false;
			}
			UpdateControllers();
			if (value != VisualStyle.Default)
			{
				Renderer.IsMirrored = IsMirrored;
			}
		}
	}

	[DefaultValue(Office2007Theme.Blue)]
	[Category("Appearance")]
	[Description("Color theme for Office2007-like visual styles.")]
	public Office2007Theme Office2007Theme
	{
		get
		{
			return m_Office2007Theme;
		}
		set
		{
			if (m_Office2007Theme == value && value != Office2007Theme.Managed)
			{
				return;
			}
			m_Office2007Theme = value;
			if (m_Renderer.VisualStyle == VisualStyle.Office2007 || m_Renderer.VisualStyle == VisualStyle.Office2007Outlook)
			{
				Renderer.RefreshOffice2007Theme(value);
				UpdateControllers();
				if (!m_bCustomMdiColor)
				{
					Office2007MdiColorScheme = value;
				}
			}
		}
	}

	[DefaultValue(null)]
	[Description("The imagelist associated with the DockingManager.")]
	[Category("Behavior")]
	public ImageList ImageList
	{
		get
		{
			return ilDockTabs;
		}
		set
		{
			ilDockTabs = value;
			UpdateControllers();
			OnImageListChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(5000)]
	[Description("Gets or sets the tooltipintervel for DockingManger using tooltip.")]
	[Category("Behavior")]
	public int ToolTipInterval
	{
		get
		{
			return m_interval;
		}
		set
		{
			if (m_interval != value && value >= 0)
			{
				m_interval = value;
			}
		}
	}

	[Description("Gets or sets the Ballon style for DockingManger using tooltip.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool UseBalloonStyleToolTip
	{
		get
		{
			return useBalloonStyleToolTip;
		}
		set
		{
			if (useBalloonStyleToolTip != value)
			{
				useBalloonStyleToolTip = value;
			}
		}
	}

	[Description("The supertooltip associated with the DockingManager.")]
	[Category("Behavior")]
	[DefaultValue(null)]
	[TypeConverter(typeof(ReferenceConverter))]
	public SuperToolTip SuperToolTip
	{
		get
		{
			return m_toolTip;
		}
		set
		{
			if (m_toolTip != value)
			{
				m_toolTip = value;
			}
		}
	}

	[Description("Gets or sets a value indicating whether controls will provide their own images.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool ControlScopeImages
	{
		get
		{
			return bControlScopeImages;
		}
		set
		{
			if (bControlScopeImages != value)
			{
				bControlScopeImages = value;
			}
		}
	}

	[Category("Appearance-Caption")]
	[DefaultValue(true)]
	[Description("Determines whether to show images in captions of docked controls and floating forms.")]
	public bool ShowCaptionImages
	{
		get
		{
			return m_ShowImages;
		}
		set
		{
			if (m_ShowImages == value)
			{
				return;
			}
			m_ShowImages = value;
			for (int i = 0; i < alDockAreaControllers.Count; i++)
			{
				if (alDockAreaControllers[i] is DockHostController dockHostController)
				{
					dockHostController.HostControl.Invalidate();
				}
				else if (alDockAreaControllers[i] is FloatingFormController floatingFormController)
				{
					NativeMethodsHelper.RedrawWindow(floatingFormController.HostControl.Handle, 1025);
				}
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Determines whether to show scroll buttons in the DockTabbed window or not when the tab size will be exceeded than the docked window width.")]
	public bool ShowDockTabScrollButton
	{
		get
		{
			return showDockTabScrollButton;
		}
		set
		{
			if (showDockTabScrollButton != value)
			{
				showDockTabScrollButton = value;
				UpdateControllers();
			}
		}
	}

	[DefaultValue(true)]
	[Category("Behavior")]
	[Description("Determines whether to show icons in AutoHide context menu.")]
	public bool ShowIconInAutoHideContextMenu
	{
		get
		{
			return showIconInAutoHideContextMenu;
		}
		set
		{
			if (showIconInAutoHideContextMenu != value)
			{
				showIconInAutoHideContextMenu = value;
			}
		}
	}

	[DefaultValue(true)]
	[Description("Indicates the visibility state for docking panel button's tooltip.")]
	[Category("Behavior")]
	public bool ShowToolTips
	{
		get
		{
			return showToolTips;
		}
		set
		{
			showToolTips = value;
		}
	}

	[Description("Gets or sets a value indicating whether the autohidden tabs can be dragged to make it float.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool EnableDragAutoHiddenTabs
	{
		get
		{
			return bEnableDragAutoHiddenTabs;
		}
		set
		{
			if (bEnableDragAutoHiddenTabs != value)
			{
				bEnableDragAutoHiddenTabs = value;
			}
		}
	}

	[Description("Gets or sets a value indicating whether the autohide feature is enabled.")]
	[DefaultValue(true)]
	[Category("Behavior")]
	public bool AutoHideEnabled
	{
		get
		{
			return bAutoHideEnabled;
		}
		set
		{
			if (bAutoHideEnabled == value)
			{
				return;
			}
			bAutoHideEnabled = value;
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (alDockAreaController is DockHostController)
				{
					DockHostController dockHostController = alDockAreaController as DockHostController;
					Control control = dockHostController.ctrlReference;
					if (dockHostController.HostControl is DockHost dockHost && 0 < dockHost.Controls.Count)
					{
						control = dockHost.Controls[0];
					}
					if (control != null)
					{
						SetAutoHideButtonVisibility(control, value);
					}
				}
			}
		}
	}

	[Browsable(false)]
	public bool IsLayoutSuspended => layoutSuspended;

	[DefaultValue(true)]
	[Description("Indicates whether the key combinations for menu shortcuts should be passed to the Host form")]
	[Browsable(true)]
	public bool ForwardMenuShortcuts
	{
		get
		{
			return forwardMenuShortcuts;
		}
		set
		{
			forwardMenuShortcuts = value;
		}
	}

	[DefaultValue(true)]
	[Category("Behavior")]
	[Description("Gets or sets a value indicating whether the window position feature is enabled.")]
	public bool MenuButtonEnabled
	{
		get
		{
			return bMenuButtonEnabled;
		}
		set
		{
			if (bMenuButtonEnabled == value)
			{
				return;
			}
			bMenuButtonEnabled = value;
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (alDockAreaController is DockHostController)
				{
					DockHost dockHost = alDockAreaController.HostControl as DockHost;
					SetMenuButtonVisibility(dockHost.Controls[0], value);
				}
			}
		}
	}

	[DefaultValue(true)]
	[Description("Gets or sets a value indicating whether the close button is present in docking windows.")]
	[Category("Behavior")]
	public bool CloseEnabled
	{
		get
		{
			return bCloseEnabled;
		}
		set
		{
			if (bCloseEnabled == value)
			{
				return;
			}
			bCloseEnabled = value;
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (alDockAreaController is DockHostController)
				{
					DockHost dockHost = alDockAreaController.HostControl as DockHost;
					SetCloseButtonVisibility(dockHost.Controls[0], value);
				}
			}
			foreach (FloatingFormController alFFController in alFFControllers)
			{
				(alFFController.HostControl as FloatingForm).CloseButtonVisibility = value;
				(alFFController.HostControl as FloatingForm).UpdateControlBoxVisibility();
			}
		}
	}

	[Description("Gets or sets a value indicating whether the maximize button is present in docking windows.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool MaximizeButtonEnabled
	{
		get
		{
			return bMaximizeEnabled;
		}
		set
		{
			if (bMaximizeEnabled == value)
			{
				return;
			}
			bMaximizeEnabled = value;
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (alDockAreaController is DockHostController dockHostController)
				{
					dockHostController.MaximizeButtonVisibility = value;
				}
			}
		}
	}

	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Gets or sets the caption buttons collection.")]
	public CaptionButtonsCollection CaptionButtons
	{
		get
		{
			return m_CaptionButtons;
		}
		set
		{
			if (m_CaptionButtons != value)
			{
				if (value == null)
				{
					throw new ArgumentNullException("CaptionButtons.");
				}
				if (m_CaptionButtons != null)
				{
					m_CaptionButtons.CollectionChanged -= CaptionButtons_CollectionChanged;
					m_CaptionButtons.CollectionItemChanged -= CaptionButtons_CollectionItemChanged;
				}
				m_CaptionButtons = value;
				m_CaptionButtons.CollectionChanged += CaptionButtons_CollectionChanged;
				m_CaptionButtons.CollectionItemChanged += CaptionButtons_CollectionItemChanged;
			}
		}
	}

	[Description("Determines the alignment of DockLabels.")]
	[DefaultValue(DockLabelAlignmentStyle.Default)]
	[Category("Appearance")]
	public DockLabelAlignmentStyle DockLabelAlignment
	{
		get
		{
			return dlAlignment;
		}
		set
		{
			if (dlAlignment == value)
			{
				return;
			}
			dlAlignment = value;
			foreach (Control item in alEnableDocking)
			{
				if (item.Parent is DockHost dockHost)
				{
					dockHost.RefreshCaptionPainter();
					if (dockHost.ParentForm is FloatingForm floatingForm)
					{
						NativeMethodsHelper.RedrawWindow(floatingForm.Handle, 1025);
					}
				}
			}
		}
	}

	[Description("Determines the selection style of the AutoHide window.")]
	[Category("Behavior")]
	[DefaultValue(AutoHideSelectionStyle.MouseHover)]
	public AutoHideSelectionStyle AutoHideSelectionStyle
	{
		get
		{
			return autoHideSelection;
		}
		set
		{
			autoHideSelection = value;
		}
	}

	[Category("Appearance")]
	[Description("Determines the alignment of tabs in tab groups.")]
	[DefaultValue(DockTabAlignmentStyle.Bottom)]
	public DockTabAlignmentStyle DockTabAlignment
	{
		get
		{
			return dtAlignment;
		}
		set
		{
			if (dtAlignment != value)
			{
				dtAlignment = value;
			}
			foreach (Control item in alEnableDocking)
			{
				DockHostController dockHostController = GetDockHostController(item);
				if (dockHostController != null)
				{
					if (dockHostController.ParentController is DockTabController dockTabController)
					{
						dockTabController.AdjustLayout();
					}
					dockHostController.HostControl.Invalidate();
				}
			}
		}
	}

	[DefaultValue(true)]
	[Description("Gets or sets a value indicating whether a context menu is displayed.")]
	[Category("Behavior")]
	public bool EnableContextMenu
	{
		get
		{
			return bEnableContextMenu;
		}
		set
		{
			bEnableContextMenu = value;
		}
	}

	[Category("Behavior")]
	[Description("Gets or sets a value indicating whether a AutoHideTab context menu is displayed.")]
	[DefaultValue(true)]
	public bool EnableAutoHideTabContextMenu
	{
		get
		{
			return m_showAutohidetabContextMenu;
		}
		set
		{
			if (value != m_showAutohidetabContextMenu)
			{
				m_showAutohidetabContextMenu = value;
			}
		}
	}

	[DefaultValue(true)]
	[Category("Appearance")]
	[Description("Gets or sets a value indicating whether a border is drawn around the host form's client rectangle.")]
	public bool HostFormClientBorder
	{
		get
		{
			return bFormClientBorder;
		}
		set
		{
			if (bFormClientBorder != value)
			{
				bFormClientBorder = value;
				if (HostControl != null)
				{
					HostControl.Invalidate(invalidateChildren: false);
				}
			}
		}
	}

	[Description("Determines whether to paint docked control's borders")]
	[DefaultValue(true)]
	[Category("Appearance")]
	public bool PaintBorders
	{
		get
		{
			return m_paintBorders;
		}
		set
		{
			if (m_paintBorders != value)
			{
				m_paintBorders = value;
				InvalidateDockControllers();
			}
		}
	}

	[Description("Determines the border color of docked controls")]
	[DefaultValue(typeof(Color), "ControlDark")]
	[Category("Appearance")]
	public Color BorderColor
	{
		get
		{
			return m_borderColor;
		}
		set
		{
			if (m_borderColor != value)
			{
				m_borderColor = value;
				DockHost.UpdatePenColor(value);
				InvalidateDockControllers();
			}
		}
	}

	[Category("Appearance-Caption")]
	[DefaultValue(typeof(BrushInfo), "Solid; ActiveCaption")]
	[Description("Information about the brush using which the caption background is going to painted")]
	public BrushInfo ActiveCaptionBackground
	{
		get
		{
			return bIActiveCaptionBackround;
		}
		set
		{
			if (!(bIActiveCaptionBackround != value))
			{
				return;
			}
			bIActiveCaptionBackround = value;
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (alDockAreaController is DockHostController)
				{
					(alDockAreaController.HostControl as DockHost).Invalidate();
				}
			}
		}
	}

	[DefaultValue(typeof(bool), "false")]
	[Description("Gets or sets if to enable SuperToolTip for dock caption buttons")]
	[Category("Appearance-Caption")]
	public bool EnableSuperToolTip
	{
		get
		{
			return m_enableSuperToolTip;
		}
		set
		{
			if (m_enableSuperToolTip != value)
			{
				m_enableSuperToolTip = value;
			}
		}
	}

	[Category("Appearance-Caption")]
	[DefaultValue(typeof(BrushInfo), "Solid; Control")]
	[Description("Information about the brush using which the caption background is going to painted when the docked control is in inactive state.")]
	public BrushInfo InActiveCaptionBackground
	{
		get
		{
			return bIInActiveCaptionBackround;
		}
		set
		{
			if (!(bIInActiveCaptionBackround != value))
			{
				return;
			}
			bIInActiveCaptionBackround = value;
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (alDockAreaController is DockHostController)
				{
					(alDockAreaController.HostControl as DockHost).Invalidate();
				}
			}
		}
	}

	[Category("Appearance-Caption")]
	[DefaultValue(typeof(Color), "ActiveCaptionText")]
	[Description("Color of the caption text in active state.")]
	public Color ActiveCaptionForeGround
	{
		get
		{
			return cActiveCaptionForeGround;
		}
		set
		{
			if (!(cActiveCaptionForeGround != value))
			{
				return;
			}
			cActiveCaptionForeGround = value;
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (alDockAreaController is DockHostController)
				{
					(alDockAreaController.HostControl as DockHost).Invalidate();
				}
			}
		}
	}

	[Description("Color of the caption text in inactive state.")]
	[Category("Appearance-Caption")]
	[DefaultValue(typeof(Color), "ControlText")]
	public Color InActiveCaptionForeGround
	{
		get
		{
			return cInActiveCaptionForeGround;
		}
		set
		{
			if (!(cInActiveCaptionForeGround != value))
			{
				return;
			}
			cInActiveCaptionForeGround = value;
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (alDockAreaController is DockHostController)
				{
					(alDockAreaController.HostControl as DockHost).Invalidate();
				}
			}
		}
	}

	[Category("Appearance-Caption")]
	[DefaultValue(typeof(Font), "Tahoma, 11world")]
	[Description("Gets or sets the Font of the active caption.")]
	public Font ActiveCaptionFont
	{
		get
		{
			return fntActiveCaptionFont;
		}
		set
		{
			if (fntActiveCaptionFont == value)
			{
				return;
			}
			fntActiveCaptionFont = value;
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (alDockAreaController is DockHostController)
				{
					(alDockAreaController.HostControl as DockHost).Invalidate();
				}
			}
		}
	}

	[DefaultValue(typeof(Font), "Tahoma, 11world")]
	[Description("Gets or sets the font of the inactive caption.")]
	[Category("Appearance-Caption")]
	public Font InActiveCaptionFont
	{
		get
		{
			return fntInActiveCaptionFont;
		}
		set
		{
			if (fntInActiveCaptionFont == value)
			{
				return;
			}
			fntInActiveCaptionFont = value;
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (alDockAreaController is DockHostController)
				{
					(alDockAreaController.HostControl as DockHost).Invalidate();
				}
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(Keys.None)]
	[Description("Determines the value of the key, which can be used to tab through the docked controls")]
	public Keys BrowsingKey
	{
		get
		{
			return browsingKey;
		}
		set
		{
			if (browsingKey != value)
			{
				browsingKey = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Description("Returns an enumerator that can iterate through the list of dockable controls.")]
	public IEnumerator Controls
	{
		get
		{
			ArrayList controlsList = GetControlsList();
			return controlsList.GetEnumerator();
		}
	}

	[Description("Returns an array of dockable controls.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Control[] ControlsArray
	{
		get
		{
			ArrayList controlsList = GetControlsList();
			return controlsList.ToArray(typeof(Control)) as Control[];
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Returns the last active docking window.")]
	[Browsable(false)]
	public Control ActiveControl => ctrlLastActive;

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Gets or sets a value indicating whether docked controls will occupy the form's full client region.")]
	public bool DockToFill
	{
		get
		{
			return bDockToFill;
		}
		set
		{
			if (bDockToFill == value)
			{
				return;
			}
			if (value)
			{
				if (HostControl != null)
				{
					if (HostControl is Form && (HostControl as Form).IsMdiContainer)
					{
						if (DesignMode)
						{
							MessageBox.Show("The DockToFill option is not valid when the host form is an MDIContainer.", "Essential Tools DockingManager", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
						}
						return;
					}
					if (DesignMode && !bDockToFill && dcHostForm != null && dcHostForm.ChildCount > 0)
					{
						DockControllerBase childAt = dcHostForm.GetChildAt(0);
						if (childAt.LayoutRect != dcHostForm.LayoutRect)
						{
							MessageBox.Show("Please undock and redock all docked windows so that the DockToFill layout may be correctly setup.", "Essential Tools DockingManager", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
						}
					}
				}
				MaxRedockFactor = 4;
			}
			else
			{
				if (dsDockFillAHBorder != DockingStyle.Fill)
				{
					dsDockFillAHBorder = DockingStyle.Fill;
				}
				MaxRedockFactor = 2;
			}
			bDockToFill = value;
		}
	}

	[Description("Gets or sets a value indicating whether controls are allowed to be floated.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool DisallowFloating
	{
		get
		{
			return bDisallowFloating;
		}
		set
		{
			if (bDisallowFloating != value)
			{
				if (value && DesignMode && alFFControllers.Count > 0)
				{
					MessageBox.Show("Please dock all current floating windows.", "Essential Tools DockingManager", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
				}
				bDisallowFloating = value;
			}
		}
	}

	[Category("Behavior")]
	[Description("Gets or sets a value indicating whether to slide back selected autohidden control.")]
	[DefaultValue(false)]
	public bool AutoHideActiveControl
	{
		get
		{
			return bAutoHideActiveControl;
		}
		set
		{
			bAutoHideActiveControl = value;
		}
	}

	[Browsable(false)]
	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool MDIActivatedVisibility
	{
		get
		{
			return bMDIActivatedVisibility;
		}
		set
		{
			if (bMDIActivatedVisibility != value)
			{
				bMDIActivatedVisibility = value;
			}
		}
	}

	[Category("Behavior")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HostActivatedVisibility
	{
		get
		{
			return bHostActivatedVisibility;
		}
		set
		{
			if (bHostActivatedVisibility != value)
			{
				bHostActivatedVisibility = value;
			}
		}
	}

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Specifies whether XP Themes(visual styles) should be used for the docking windows.")]
	public bool ThemesEnabled
	{
		get
		{
			return bThemesEnabled;
		}
		set
		{
			if (bThemesEnabled == value)
			{
				return;
			}
			bThemesEnabled = value;
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (!(alDockAreaController is DockHostController))
				{
					continue;
				}
				DockHostController dockHostController = alDockAreaController as DockHostController;
				if (dockHostController.DockVisibility)
				{
					if (dockHostController.ParentController != null && dockHostController.ParentController is DockTabController)
					{
						DockTabControl tabControl = (dockHostController.ParentController as DockTabController).TabControl;
						tabControl.TabStyle = tabControl.GetRendererType();
						tabControl.HotTrack = !tabControl.HotTrack;
					}
					dockHostController.HostControl.Invalidate(invalidateChildren: false);
				}
			}
		}
	}

	[Description("Specifies the interval for showing or hiding an autohidden control.")]
	[Category("Behavior")]
	[DefaultValue(400)]
	public int AutoHideInterval
	{
		get
		{
			return nShowInterval;
		}
		set
		{
			if (nShowInterval != value)
			{
				nShowInterval = value;
				nHideInterval = value;
			}
			if (AHTabControl.tmrShowController != null && AHTabControl.tmrShowController.Enabled)
			{
				AHTabControl.tmrShowController.Stop();
				AHTabControl.tmrShowController.Interval = nShowInterval;
				AHTabControl.tmrShowController.Start();
			}
			if (AHTabControl.tmrHideController != null && AHTabControl.tmrHideController.Enabled)
			{
				AHTabControl.tmrHideController.Stop();
				AHTabControl.tmrHideController.Interval = nHideInterval;
				AHTabControl.tmrHideController.Start();
			}
		}
	}

	[DefaultValue(4)]
	[Category("Appearance")]
	[Description("Gets or sets a value indicating width of splitters between docking windows.")]
	public int SplitterWidth
	{
		get
		{
			return splitterWidth;
		}
		set
		{
			if (value <= 30 && value >= 0)
			{
				splitterWidth = value;
				ControllerSizeCalculator.SplitterWidth = value;
				ResizeSplitters(value);
				if (DesignMode && alEnableDocking.Count > 0)
				{
					UpdateDesigner();
				}
				return;
			}
			throw new SplitterWidthException();
		}
	}

	[DefaultValue(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Category("Behavior")]
	[Description("Determines whether docked and floating windows can be resized.")]
	public bool FreezeResizing
	{
		get
		{
			return bFreezeResizing;
		}
		set
		{
			if (bFreezeResizing == value)
			{
				return;
			}
			bFreezeResizing = value;
			if (HostControl == null)
			{
				return;
			}
			if (bFreezeResizing)
			{
				foreach (FloatingFormController alFFController in alFFControllers)
				{
					FloatingForm floatingForm = alFFController.HostControl as FloatingForm;
					floatingForm.FormBorderStyle = FormBorderStyle.FixedToolWindow;
					alFFController.UpdateControl();
				}
				return;
			}
			foreach (FloatingFormController alFFController2 in alFFControllers)
			{
				FloatingForm floatingForm2 = alFFController2.HostControl as FloatingForm;
				floatingForm2.FormBorderStyle = FormBorderStyle.SizableToolWindow;
				alFFController2.UpdateControl();
			}
		}
	}

	[Description("Specifies whether to paint panel's caption")]
	[DefaultValue(true)]
	[Category("Behavior")]
	public bool ShowCaption
	{
		get
		{
			return m_ShowCaption;
		}
		set
		{
			m_ShowCaption = value;
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (alDockAreaController is DockHostController { HostControl: var hostControl })
				{
					hostControl.Height++;
					hostControl.Height--;
				}
			}
		}
	}

	[Description("Specifies whether to show full autohide tabgroup's page caption.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool FullCaptionsInAutoHideMode
	{
		get
		{
			return m_FullCaptionsInAutoHideMode;
		}
		set
		{
			if (m_FullCaptionsInAutoHideMode != value)
			{
				m_FullCaptionsInAutoHideMode = value;
				if (dcHostForm != null)
				{
					dcHostForm.ahTabCtrlL.ForceLayout();
					dcHostForm.ahTabCtrlT.ForceLayout();
					dcHostForm.ahTabCtrlB.ForceLayout();
					dcHostForm.ahTabCtrlR.ForceLayout();
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the height of the tab control used in tabbed docking groups.")]
	public int DockTabHeight
	{
		get
		{
			return nDockTabHeight;
		}
		set
		{
			if (nDockTabHeight == value)
			{
				return;
			}
			nDockTabHeight = value;
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (alDockAreaController is DockHostController && alDockAreaController.ParentController is DockTabController)
				{
					DockTabController dockTabController = alDockAreaController.ParentController as DockTabController;
					dockTabController.TabControl.ItemSize = new Size(0, nDockTabHeight);
					alDockAreaController.ParentController.AdjustLayout();
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the Font for the tab control used in tabbed docking groups.")]
	public Font DockTabFont
	{
		get
		{
			return ftDockTab;
		}
		set
		{
			if (ftDockTab == value)
			{
				return;
			}
			ftDockTab = value;
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (alDockAreaController is DockHostController && alDockAreaController.ParentController is DockTabController)
				{
					DockTabControl tabControl = (alDockAreaController.ParentController as DockTabController).TabControl;
					if (tabControl.Font != ftDockTab)
					{
						tabControl.Font = ftDockTab;
						tabControl.ActiveTabFont = ftDockTab;
					}
				}
			}
		}
	}

	[Browsable(false)]
	public bool ReduceFlickeringInRtl
	{
		get
		{
			return reduceFlicker;
		}
		set
		{
			if (reduceFlicker != value)
			{
				reduceFlicker = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the height of the autohide tab control.")]
	public int AutoHideTabHeight
	{
		get
		{
			return nAutoHideTabHeight;
		}
		set
		{
			if (nAutoHideTabHeight != value)
			{
				nAutoHideTabHeight = value;
				if (dcHostForm != null)
				{
					AHTabControl aHTabControl = dcHostForm.GetAHTabControl(DockingStyle.Left);
					aHTabControl.ItemSize = new Size(0, nAutoHideTabHeight);
					aHTabControl = dcHostForm.GetAHTabControl(DockingStyle.Top);
					aHTabControl.ItemSize = new Size(0, nAutoHideTabHeight);
					aHTabControl = dcHostForm.GetAHTabControl(DockingStyle.Right);
					aHTabControl.ItemSize = new Size(0, nAutoHideTabHeight);
					aHTabControl = dcHostForm.GetAHTabControl(DockingStyle.Bottom);
					aHTabControl.ItemSize = new Size(0, nAutoHideTabHeight);
					RecalcHostFormLayout();
				}
			}
		}
	}

	[Description("Determines whether allow to move tabs inside DockTabControl.")]
	[DefaultValue(true)]
	[Category("Behavior")]
	public bool AllowTabsMoving
	{
		get
		{
			return bAllowTabsMoving;
		}
		set
		{
			if (bAllowTabsMoving != value)
			{
				bAllowTabsMoving = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the font for the autohide tab control.")]
	public Font AutoHideTabFont
	{
		get
		{
			return ftAutoHideTab;
		}
		set
		{
			if (ftAutoHideTab != value)
			{
				ftAutoHideTab = value;
				if (dcHostForm != null)
				{
					AHTabControl aHTabControl = dcHostForm.GetAHTabControl(DockingStyle.Left);
					aHTabControl.Font = ftAutoHideTab;
					aHTabControl.ActiveTabFont = ftAutoHideTab;
					aHTabControl = dcHostForm.GetAHTabControl(DockingStyle.Top);
					aHTabControl.Font = ftAutoHideTab;
					aHTabControl.ActiveTabFont = ftAutoHideTab;
					aHTabControl = dcHostForm.GetAHTabControl(DockingStyle.Right);
					aHTabControl.Font = ftAutoHideTab;
					aHTabControl.ActiveTabFont = ftAutoHideTab;
					aHTabControl = dcHostForm.GetAHTabControl(DockingStyle.Bottom);
					aHTabControl.Font = ftAutoHideTab;
					aHTabControl.ActiveTabFont = ftAutoHideTab;
					RecalcHostFormLayout();
				}
			}
		}
	}

	[Description("Returns the current RTL setting based on the host control's setting.")]
	[Category("Appearance")]
	public RightToLeft RightToLeft
	{
		get
		{
			RightToLeft result = RightToLeft.No;
			Control hostControl = HostControl;
			if (hostControl != null)
			{
				result = hostControl.RightToLeft;
			}
			return result;
		}
	}

	[Category("Behavior")]
	[Description("Determines whether to rise DragFeedback events upon resizing / dragging splitters.")]
	[DefaultValue(true)]
	public bool DragFeedbackEventsOnSplitters
	{
		get
		{
			return m_DragFeedbackEventsOnSplitters;
		}
		set
		{
			if (value != m_DragFeedbackEventsOnSplitters)
			{
				m_DragFeedbackEventsOnSplitters = value;
			}
		}
	}

	[DefaultValue(true)]
	[Description("Determines whether to perform state transition upon double clicking on caption.")]
	[Category("Behavior")]
	public bool EnableDoubleClickOnCaption
	{
		get
		{
			return m_EnableDoubleClickOnCaption;
		}
		set
		{
			if (value != m_EnableDoubleClickOnCaption)
			{
				m_EnableDoubleClickOnCaption = value;
			}
		}
	}

	[DefaultValue(true)]
	[Description("Gets or sets whether PriorityController need to be set when in DockToFill mode.")]
	public bool NeedDTFPriorityController
	{
		get
		{
			return m_bNeedDTFPriorityController;
		}
		set
		{
			if (m_bNeedDTFPriorityController != value)
			{
				m_bNeedDTFPriorityController = value;
			}
		}
	}

	protected internal TabbedMDIManager HostFormMdiManager
	{
		get
		{
			TabbedMDIManager result = null;
			if (HostForm != null)
			{
				result = TabbedMDIManager.GetManagerForForm(HostForm);
			}
			return result;
		}
	}

	[Browsable(false)]
	[DefaultValue(true)]
	public bool ImportDockingControl
	{
		get
		{
			return importDockingControl;
		}
		set
		{
			if (importDockingControl != value)
			{
				importDockingControl = value;
			}
		}
	}

	[DocumentationExclude]
	protected internal DockHostController DHCInFocus
	{
		get
		{
			return controllerInFocus;
		}
		set
		{
			if (controllerInFocus == value || StopActivationEvents)
			{
				return;
			}
			DockHostController dockHostController = controllerInFocus;
			if (controllerInFocus != null && value != null && dockHostController.HostControl is DockHost { TitleBar: { CaptionRect: var captionRect } } dockHost)
			{
				if (Renderer.VisualStyle != VisualStyle.Default)
				{
					captionRect.Location = new Point(Renderer.ThinBorderWidth, Renderer.ThinBorderWidth);
					captionRect.Size = new Size(Renderer.ControlBounds.Width - 2 * Renderer.ThinBorderWidth, Renderer.CaptionWidth);
				}
				dockHost.Invalidate(captionRect, invalidateChildren: false);
			}
			controllerInFocus = value;
			if (controllerInFocus != null)
			{
				if (controllerInFocus.HostControl.Controls.Count > 0)
				{
					Control control = controllerInFocus.HostControl.Controls[0];
					if (control != m_activeControl)
					{
						SetActiveControl(control);
					}
				}
			}
			else
			{
				SetActiveControl(null);
			}
		}
	}

	[DocumentationExclude]
	protected internal AHTabControl AHInViewTab
	{
		get
		{
			return autoHideTabInView;
		}
		set
		{
			if (autoHideTabInView != value)
			{
				if (value != null && autoHideTabInView != null)
				{
					autoHideTabInView.HideController(null, banimate: false);
				}
				autoHideTabInView = value;
			}
		}
	}

	internal ArrayList HiddenFFControllers => alHiddenFFControllers;

	[Browsable(false)]
	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	protected virtual string PersistKey
	{
		get
		{
			if (HostControl is Form)
			{
				return HostControl.GetType().ToString() + "DockStateInfo";
			}
			return string.Concat(HostControl.GetType(), HostControl.Name, "DockStateInfo");
		}
	}

	[DocumentationExclude]
	protected virtual string PersistenceID
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
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	protected internal IDragProvider DragProvider => m_dragProvider;

	internal bool ForbidFreeze
	{
		get
		{
			return m_bForbidFreeze;
		}
		set
		{
			if (m_bForbidFreeze != value)
			{
				m_bForbidFreeze = value;
			}
		}
	}

	internal bool DesignerInitializing
	{
		get
		{
			if (DesignMode)
			{
				IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
				DockingManagerDesigner dockingManagerDesigner = designerHost.GetDesigner(this) as DockingManagerDesigner;
				if (!designerHost.Loading)
				{
					return dockingManagerDesigner.bReloading;
				}
				return true;
			}
			return false;
		}
	}

	[Description("Occurs when the ImageList is changed.")]
	[Category("Property Changed")]
	public event EventHandler ImageListChanged;

	[Category("DockState")]
	[Description("Occurs when a docking window is about to be dragged.")]
	public event DragAllowEventHandler DragAllow;

	[Description("Occurs when a docking window is dragged over a potential dock target.")]
	[Category("DockState")]
	public event DockAllowEventHandler DockAllow;

	[Category("DockState")]
	[Description("Occurs just before a dock operation.")]
	public event DockStateChangeEventHandler DockStateChanging;

	[Description("Occurs immediately after a dock operation.")]
	[Category("DockState")]
	public event DockStateChangeEventHandler DockStateChanged;

	[Category("DockState")]
	[Description("Occurs before control is going to maximize")]
	public event ControlMaximizeEventHandler ControlMaximizing;

	[Description("Occurs after control is maximized.")]
	[Category("DockState")]
	public event ControlMaximizedEventHandler ControlMaximized;

	[Category("DockState")]
	[Description("Occurs after control is minimized.")]
	public event ControlMinimizeEventHandler ControlMinimized;

	[Description("Occurs after control is restored.")]
	[Category("DockState")]
	public event ControlRestoreEventHandler ControlRestored;

	[Description("Occurs after a control's DockVisibility state has changed.")]
	[Category("DockState")]
	public event DockVisibilityChangedEventHandler DockVisibilityChanged;

	[Description("Occurs during a control's DockVisibility state is changing.")]
	[Category("DockState")]
	public event DockVisibilityChangingEventHandler DockVisibilityChanging;

	[Description("Occurs when a dockable control gets activated.")]
	[Category("Focus")]
	public event DockActivationChangedEventHandler DockControlActivated;

	[Category("Focus")]
	[Description("Occurs when a dockable control gets deactivated.")]
	public event DockActivationChangedEventHandler DockControlDeactivated;

	[Description("Occurs just before the start of autohide animation event.")]
	[Category("Behavior")]
	public event AutoHideAnimationEventHandler AutoHideAnimationStart;

	[Category("Behavior")]
	[Description("Occurs immediately after the end of autohide animation event.")]
	public event AutoHideAnimationEventHandler AutoHideAnimationStop;

	[Category("Behavior")]
	[Description("Occurs when the right mouse button is clicked over a docking window caption.")]
	public event DockContextMenuEventHandler DockContextMenu;

	[Description("The DockMenuClick event occurs when the redock context menu item has been clicked.")]
	[Category("Behavior")]
	public event DockMenuClickEventHandler DockMenuClick;

	[Category("DockState")]
	[Description("Occurs just before a new dock state is loaded.")]
	public event EventHandler NewDockStateBeginLoad;

	[Description("Occurs immediately after a new dock state has been loaded.")]
	[Category("DockState")]
	public event EventHandler NewDockStateEndLoad;

	[Description("Occurs just before the start of feedback of a drag operation.")]
	[Category("Behavior")]
	public event EventHandler DragFeedbackStart;

	[Description("Occurs immediately after the end of feedback of a drag operation.")]
	[Category("Behavior")]
	public event EventHandler DragFeedbackStop;

	[Description("Occurs whenever a docked window's caption needs to be painted.")]
	[Category("Appearance")]
	public event ProvideGraphicsItemsEventHandler ProvideGraphicsItems;

	[Description("Raises the ProvidePersistenceID event.")]
	[Category("DockState")]
	public event ProvidePersistenceIDEventHandler ProvidePersistenceID;

	[Description("Occurs if serialized information is not available.")]
	[Category("DockState")]
	public event DockStateUnavailableEventHandler DockStateUnavailable;

	[Description("Occurs when the DockingManager is not able to locate a control during a load state operation.")]
	[Category("DockState")]
	public event InitializeControlOnLoadEventHandler InitializeControlOnLoad;

	[Description("Occurs when a dockable control hosted by this DockingManager is about to be transferred to the docking layout hosted by some other DockingManager.")]
	[Category("Behavior")]
	public event TransferManagerEventHandler TransferringFromManager;

	[Category("Behavior")]
	[Description("Occurs after a dockable control that previously belonged to some other.")]
	public event TransferManagerEventHandler TransferredToManager;

	[Description("Occurs when the right mouse button is clicked over a AutoHideTabControl.")]
	[Category("Behavior")]
	public event AutoHideTabContextMenuEventHandler AutoHideTabContextMenu;

	internal event EnabledDockingEventHandler OnEnabledDocking;

	static DockingManager()
	{
		DockingManagersList = new ArrayList();
		AnimationSpeed = 1;
		AnimationStep = 25;
		nShowInterval = 400;
		nHideInterval = 401;
		ftSysInfoMenuFont = SystemInformation.MenuFont;
		Application.ApplicationExit += Application_ApplicationExit;
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(DockingManager));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		AppStateSerializer.SetBindingInfo("Syncfusion.Tools.Windows", typeof(DockingManager).Assembly);
		AppStateSerializer.SetBindingInfo("Syncfusion.Tools", typeof(DockingManager).Assembly);
	}

	private static void Application_ApplicationExit(object sender, EventArgs e)
	{
		if (DockingManagersList != null)
		{
			DockingManagersList.Clear();
			DockingManagersList = null;
		}
	}

	public DockingManager()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(DockingManager));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		InitializeDockingManager();
	}

	public DockingManager(IContainer container)
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(DockingManager));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		container.Add(this);
		InitializeDockingManager();
		m_container = container;
	}

	[DocumentationExclude]
	protected virtual void InitializeDockingManager()
	{
		if (DockingManagersList == null)
		{
			DockingManagersList = new ArrayList();
		}
		DockingManagersList.Add(this);
		FramePainter = new FramePainter();
		bDesignProcess = IsDesignMode();
		InitializeDragProvider(providerStyle);
		autoHideButtonToolTip = SR.GetString("DockPanelAutoHideButtonToolTip");
		closeButtonToolTip = SR.GetString("DockPanelCloseButtonToolTip");
		menuButtonToolTip = SR.GetString("DockPanelMenuButtonToolTip");
		maximizeButtonToolTip = SR.GetString("DockPanelMaximizeButtonToolTip");
		restoreButtonToolTip = SR.GetString("DockPanelRestoreButtonToolTip");
		ControllerSizeCalculator.SplitterWidth = splitterWidth;
		m_Renderer = new DockingManagerRenderer();
		if (DockHost.pen == null || DockHost.pen.Color != BorderColor)
		{
			DockHost.pen = new Pen(BorderColor);
		}
		m_Renderer.VisualStyle = VisualStyle.VS2005;
		m_CaptionTextFont = new Font("Tahoma", 8.25f, FontStyle.Bold);
	}

	protected internal virtual void InitializeCaptionButtons()
	{
		if (m_CaptionButtons == null || (m_CaptionButtons != null && m_CaptionButtons.Count == 0))
		{
			LoadCaptionButtionsClearedState();
			if (!m_IsCaptionButtonsCleared)
			{
				m_CaptionButtons = GetDefaultCaptionButtons();
			}
			m_IsCaptionButtonsCleared = false;
		}
		CaptionButtons.CollectionChanged += CaptionButtons_CollectionChanged;
		CaptionButtons.CollectionItemChanged += CaptionButtons_CollectionItemChanged;
		foreach (Control item in alEnableDocking)
		{
			if (GetCustomCaptionButtons(item) == null)
			{
				SetCustomCaptionButtons(item, new CaptionButtonsCollection());
			}
		}
		SynchronizeCaptionButtons();
	}

	protected internal CaptionButtonsCollection GetDefaultCaptionButtons()
	{
		CaptionButtonsCollection captionButtonsCollection = new CaptionButtonsCollection();
		CaptionButton captionButton = new CaptionButton(CaptionButtonType.Close);
		captionButton.Name = "CloseButton";
		captionButtonsCollection.Add(captionButton);
		CaptionButton captionButton2 = new CaptionButton(CaptionButtonType.Pin);
		captionButton2.Name = "PinButton";
		captionButtonsCollection.Add(captionButton2);
		CaptionButton captionButton3 = new CaptionButton(CaptionButtonType.Menu);
		captionButton3.Name = "MenuButton";
		captionButtonsCollection.Add(captionButton3);
		CaptionButton captionButton4 = new CaptionButton(CaptionButtonType.Maximize);
		captionButton4.Name = "MaximizeButton";
		captionButtonsCollection.Add(captionButton4);
		CaptionButton captionButton5 = new CaptionButton(CaptionButtonType.Restore);
		captionButton5.Name = "RestoreButton";
		captionButtonsCollection.Add(captionButton5);
		return captionButtonsCollection;
	}

	internal void UpdateFonts(float DPI)
	{
		Font font = ftSysInfoMenuFont;
		Font menuFont = SystemInformation.MenuFont;
		if (font != menuFont)
		{
			ftSysInfoMenuFont = menuFont;
		}
		if (DockTabHeight == font.Height + 8)
		{
			DockTabHeight = menuFont.Height + 8;
		}
		if (DockTabFont == font)
		{
			DockTabFont = menuFont;
		}
		if (AutoHideTabHeight == font.Height + 8)
		{
			AutoHideTabHeight = menuFont.Height + 8;
		}
		if (AutoHideTabFont == font)
		{
			AutoHideTabFont = menuFont;
		}
		if (m_CaptionTextFont.Size * DPI != menuFont.Size * 72f)
		{
			int num = Convert.ToInt32(menuFont.Size * 72f / DPI);
			float emSize = num;
			m_CaptionTextFont = new Font("Tahoma", emSize, FontStyle.Bold);
		}
	}

	protected internal void SaveCaptionButtionsClearedState()
	{
		try
		{
			AppStateSerializer appStateSerializer = new AppStateSerializer(SerializeMode.XMLFile, "c:\\temp\\SaveCaption.xml");
			appStateSerializer.SerializeObject("Caption_Button_state", m_IsCaptionButtonsCleared);
			appStateSerializer.PersistNow();
		}
		catch (Exception)
		{
		}
	}

	protected internal void LoadCaptionButtionsClearedState()
	{
		try
		{
			if (File.Exists("c:\\temp\\SaveCaption.xml"))
			{
				AppStateSerializer appStateSerializer = new AppStateSerializer(SerializeMode.XMLFile, "c:\\temp\\SaveCaption.xml");
				m_IsCaptionButtonsCleared = (bool)appStateSerializer.DeserializeObject("Caption_Button_state");
			}
		}
		catch
		{
		}
	}

	private bool IsDesignMode()
	{
		StackTrace stackTrace = new StackTrace();
		int num = stackTrace.FrameCount - 1;
		for (int i = 0; i < num; i++)
		{
			Type declaringType = stackTrace.GetFrame(i).GetMethod().DeclaringType;
			if (typeof(IDesignerHost).IsAssignableFrom(declaringType))
			{
				return true;
			}
		}
		return false;
	}

	private DockControllerBase GetController(Control ptctrl, Point pt)
	{
		ArrayList arrayList = new ArrayList(alTargetManagers);
		arrayList.Add(this);
		DockControllerBase result = null;
		DockingManager dockingManager = null;
		DockControllerBase dockControllerBase = null;
		Rectangle rectangle = Rectangle.Empty;
		bool flag = true;
		int i = 0;
		for (int count = arrayList.Count; i < count; i++)
		{
			if (arrayList[i] is DockingManager dockingmgr)
			{
				dockControllerBase = GetDockControllerFromManager(dockingmgr, ptctrl, pt);
				if (dockControllerBase != null && ((dockControllerBase.LayoutRect.Width <= rectangle.Width && dockControllerBase.LayoutRect.Height <= rectangle.Height) || flag))
				{
					rectangle = dockControllerBase.LayoutRect;
					flag = false;
					result = dockControllerBase;
				}
			}
		}
		return result;
	}

	private void ReduceParentSize(DockControllerBase ctrl, SizingController sc)
	{
		SizingController sizingController = sc;
		if (DockToFill)
		{
			return;
		}
		while (true)
		{
			RefreshEmptySize(sizingController);
			if (sizingController.ParentController is SizingController sizingController2 && (sizingController2.DockingOrder == sizingController.DockingOrder || sizingController2.IsEmpty))
			{
				sizingController = sizingController2;
				continue;
			}
			break;
		}
	}

	private void RefreshEmptySize(SizingController parentSc)
	{
		if (parentSc.IsEmpty)
		{
			if (parentSc.DockingOrder == DockPreference.Horizontal)
			{
				parentSc.LayoutRect = new Rectangle(parentSc.LayoutRect.Left, parentSc.LayoutRect.Top, 0, parentSc.LayoutRect.Height);
			}
			else
			{
				parentSc.LayoutRect = new Rectangle(parentSc.LayoutRect.Left, parentSc.LayoutRect.Top, parentSc.LayoutRect.Width, 0);
			}
			parentSc.DITransient.rcDockArea = Rectangle.Empty;
		}
	}

	private void ResizeSplitters(int newLength)
	{
		foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
		{
			if (alDockAreaController is DragSplitterController dragSplitterController)
			{
				switch (dragSplitterController.DICurrent.DP)
				{
				case DockPreference.Horizontal:
					dragSplitterController.LayoutRect = new Rectangle(dragSplitterController.LayoutRect.Left, dragSplitterController.LayoutRect.Top, newLength, dragSplitterController.LayoutRect.Height);
					break;
				case DockPreference.Vertical:
					dragSplitterController.LayoutRect = new Rectangle(dragSplitterController.LayoutRect.Left, dragSplitterController.LayoutRect.Top, dragSplitterController.LayoutRect.Width, newLength);
					break;
				}
			}
		}
		(alDockAreaControllers[0] as MainFormController).AdjustLayout();
	}

	private void AssignNotifyWindow()
	{
		if (m_nativeWindow == null)
		{
			m_nativeWindow = new NotifyNativeWindow(this, HostControl);
			CreateParams createParams = new CreateParams();
			createParams.Parent = HostControl.Handle;
			m_nativeWindow.CreateHandle(createParams);
		}
	}

	private static void PerformFormsExchange(DockControllerBase ctrl)
	{
		SizingController sizingController = null;
		if (!(ctrl.ToplevelController is FloatingFormController))
		{
			return;
		}
		DockStateControllerBase dockStateControllerBase = null;
		if (ctrl.ParentController is DockTabController)
		{
			sizingController = ctrl.ParentController.ParentController as SizingController;
			dockStateControllerBase = ctrl.ParentController as DockStateControllerBase;
		}
		else
		{
			sizingController = ctrl.ParentController as SizingController;
			dockStateControllerBase = ctrl as DockStateControllerBase;
		}
		if (sizingController == null || (sizingController.ParentController is FloatingFormController && sizingController.ChildCount == 1) || ctrl.ToplevelController.HostControl != (ctrl as DockStateControllerBase).InternalForm)
		{
			return;
		}
		DockControllerBase dockControllerBase = null;
		int nDockIndex = dockStateControllerBase.DICurrent.nDockIndex;
		dockControllerBase = ((nDockIndex != sizingController.ChildCount - 1) ? sizingController.GetChildAt(nDockIndex + 2) : sizingController.GetChildAt(nDockIndex - 2));
		if (dockControllerBase is DockStateControllerBase dockStateControllerBase2 && !(dockStateControllerBase2 is DockStateControllerWrapper))
		{
			FloatingForm internalForm = dockStateControllerBase2.InternalForm;
			dockStateControllerBase2.InternalForm = dockStateControllerBase.InternalForm;
			dockStateControllerBase.InternalForm = internalForm;
			return;
		}
		SizingController sizingController2 = dockControllerBase as SizingController;
		DockStateControllerBase dockStateControllerBase3 = null;
		ArrayList arrayList = null;
		if (sizingController2 != null)
		{
			arrayList = sizingController2.GetDockControllers();
			if (arrayList.Count > 0)
			{
				dockStateControllerBase3 = arrayList[0] as DockStateControllerBase;
			}
		}
		else if (ctrl.ToplevelController.ChildControllers[0] is SizingController sizingController3)
		{
			arrayList = sizingController3.GetDockControllers();
			if (arrayList.Count > 0)
			{
				dockStateControllerBase3 = arrayList[0] as DockStateControllerBase;
			}
		}
		if (dockStateControllerBase3 != null)
		{
			FloatingForm internalForm = dockStateControllerBase3.InternalForm;
			dockStateControllerBase3.InternalForm = dockStateControllerBase.InternalForm;
			dockStateControllerBase.InternalForm = internalForm;
		}
	}

	private void UpdateControllers()
	{
		foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
		{
			alDockAreaController.UpdateControl();
		}
		foreach (FloatingFormController alFFController in alFFControllers)
		{
			alFFController.UpdateControl();
		}
	}

	private void RefreshControlSize(Control ctrl, Size newSize)
	{
		SetControlSize(ctrl, newSize);
	}

	public void ResetCaptionButtons()
	{
		CaptionButtonsCollection defaultCaptionButtons = GetDefaultCaptionButtons();
		CaptionButtons.Clear();
		CaptionButtons.MergeWith(defaultCaptionButtons, bCloneButtons: true);
		SynchronizeCaptionButtons();
	}

	public void ResetBrowsingKey()
	{
		browsingKey = Keys.None;
	}

	private ArrayList GetControlsList()
	{
		ArrayList arrayList = new ArrayList();
		GetControlsSequence(dcHostForm, arrayList);
		arrayList.Reverse();
		foreach (Control item in alEnableDocking)
		{
			if (!arrayList.Contains(item))
			{
				arrayList.Add(item);
			}
		}
		return arrayList;
	}

	private void GetControlsSequence(DockControllerBase controller, ArrayList controls)
	{
		IEnumerator childEnumerator = controller.ChildEnumerator;
		bool flag = false;
		if (childEnumerator == null)
		{
			return;
		}
		childEnumerator.Reset();
		while (childEnumerator.MoveNext())
		{
			if (childEnumerator.Current is DockHostController)
			{
				flag = true;
				controls.Add((childEnumerator.Current as DockHostController).HostControl.Controls[0]);
			}
			else if (childEnumerator.Current is SizingController)
			{
				int num = controls.Count - 1;
				GetControlsSequence(childEnumerator.Current as DockControllerBase, controls);
				if (flag)
				{
					controls.Reverse(num, controls.Count - num);
				}
			}
		}
	}

	[DocumentationExclude]
	protected bool ShouldSerializeDockTabHeight()
	{
		return nDockTabHeight != ftSysInfoMenuFont.Height + 8;
	}

	public void ResetDockTabHeight()
	{
		DockTabHeight = ftSysInfoMenuFont.Height + 8;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeDockTabFont()
	{
		return ftDockTab != ftSysInfoMenuFont;
	}

	public void ResetDockTabFont()
	{
		DockTabFont = ftSysInfoMenuFont;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeAutoHideTabHeight()
	{
		return nAutoHideTabHeight != ftSysInfoMenuFont.Height + 8;
	}

	public void ResetAutoHideTabHeight()
	{
		AutoHideTabHeight = ftSysInfoMenuFont.Height + 8;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeAutoHideTabFont()
	{
		return ftAutoHideTab != ftSysInfoMenuFont;
	}

	public void ResetAutoHideTabFont()
	{
		AutoHideTabFont = ftSysInfoMenuFont;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void BeginInit()
	{
		if (HostControl != null)
		{
			HostControl.Layout -= HostControl_Layout;
			HostControl.HandleCreated -= HostControl_HandleCreated;
		}
		bInBeginEndInit = true;
		bApplyMinMaxExtents = false;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void EndInit()
	{
		if (!DesignMode)
		{
			if (HostControl.IsHandleCreated)
			{
				AssignNotifyWindow();
				if (alEnableDocking.Count > 0)
				{
					HostControl.Layout += HostControl_Layout;
				}
			}
			else
			{
				HostControl.HandleCreated += HostControl_HandleCreated;
				if (alEnableDocking.Count > 0)
				{
					bWaitOnLayoutEvent = true;
				}
			}
		}
		if (VisualStyle == VisualStyle.Office2007 || VisualStyle == VisualStyle.Office2007Outlook)
		{
			if (Office2007MdiChildForm)
			{
				m_bCustomMdiStyle = false;
			}
		}
		else if (!Office2007MdiChildForm)
		{
			m_bCustomMdiStyle = false;
		}
		bInBeginEndInit = false;
		bApplyMinMaxExtents = true;
		InitializeCaptionButtons();
		UpdateControllers();
	}

	public void LockHostFormUpdate()
	{
		if (HostForm != null)
		{
			if (m_lockCounter == 0)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.LockWindowUpdate(HostForm.Handle);
			}
			m_lockCounter++;
		}
	}

	public void UnlockHostFormUpdate()
	{
		if (HostForm != null)
		{
			if (m_lockCounter > 0)
			{
				m_lockCounter--;
			}
			if (m_lockCounter == 0)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.LockWindowUpdate(IntPtr.Zero);
			}
		}
	}

	public void LockDockPanelsUpdate()
	{
		lockUpdates++;
		if (lockUpdates == 1)
		{
			NativeMethodsHelper.SuspendRedrawWindow(HostControl.Handle);
		}
	}

	public void UnlockDockPanelsUpdate()
	{
		lockUpdates--;
		if (lockUpdates == 0)
		{
			foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
			{
				if (alDockAreaController is DockHostController dockHostController)
				{
					DockHost dockHost = dockHostController.HostControl as DockHost;
					dockHost.UpdateControlSize();
				}
			}
			NativeMethodsHelper.ResumeRedrawWindow(HostControl.Handle, bRedraw: true);
			if (alDockAreaControllers[0] is DockControllerBase dockControllerBase2)
			{
				dockControllerBase2.AdjustLayout();
			}
		}
		if (lockUpdates < 0)
		{
			lockUpdates = 0;
		}
	}

	public void SuspendLayout()
	{
		if (++m_nSuspendLayoutCount == 1)
		{
			layoutSuspended = true;
		}
	}

	public void ResumeLayout(bool bRefresh)
	{
		if (--m_nSuspendLayoutCount == 0)
		{
			layoutSuspended = false;
			if (bRefresh)
			{
				RecalcHostFormLayout();
			}
			GetMdiClient()?.Refresh();
		}
	}

	public void ResumeLayout()
	{
		ResumeLayout(bRefresh: true);
	}

	[DocumentationExclude]
	public void SuspendHooks()
	{
		if (DesignerHooks.CallWndProcListContains(this, m_curentThreadId))
		{
			DesignerHooks.RemoveCallWndProcListener(this, m_curentThreadId);
			unHookedCallWnd = true;
		}
		if (DesignerHooks.GetMsgProcListContains(this, m_curentThreadId))
		{
			DesignerHooks.RemoveGetMsgProcListener(this, m_curentThreadId);
			unHookedGetMsg = true;
		}
	}

	[DocumentationExclude]
	public void ResumeHooks()
	{
		if (unHookedCallWnd)
		{
			unHookedCallWnd = false;
			if (!DesignerHooks.CallWndProcListContains(this))
			{
				m_curentThreadId = DesignerHooks.AddCallWndProcListener(this);
			}
		}
		if (unHookedGetMsg)
		{
			unHookedGetMsg = false;
			if (!DesignerHooks.GetMsgProcListContains(this))
			{
				DesignerHooks.AddGetMsgProcListener(this);
			}
		}
	}

	[DocumentationExclude]
	public void GetMsgProc(int nCode, IntPtr wparam, IntPtr lparam)
	{
		if (HostControl == null || !HostControl.IsHandleCreated)
		{
			return;
		}
		Message message = (Message)Marshal.PtrToStructure(lparam, typeof(Message));
		if (DesignProcess)
		{
			if (message.Msg == 513)
			{
				bool flag = false;
				if (message.HWnd == HostControl.Handle || Syncfusion.Runtime.InteropServices.NativeMethods.IsChild(HostControl.Handle, message.HWnd))
				{
					flag = true;
				}
				else
				{
					foreach (DockControllerBase alFFController in alFFControllers)
					{
						if (alFFController.HostControl.Visible && (message.HWnd == alFFController.HostControl.Handle || Syncfusion.Runtime.InteropServices.NativeMethods.IsChild(alFFController.HostControl.Handle, message.HWnd)))
						{
							flag = true;
							break;
						}
					}
				}
				{
					foreach (DockControllerBase alFFController2 in alFFControllers)
					{
						if (alFFController2.HostControl.Visible != flag)
						{
							alFFController2.HostControl.Visible = flag;
						}
					}
					return;
				}
			}
			if (message.Msg < 515 || message.Msg > 521)
			{
				return;
			}
			{
				foreach (DockControllerBase alFFController3 in alFFControllers)
				{
					if (alFFController3.HostControl.Visible)
					{
						alFFController3.HostControl.Visible = false;
					}
				}
				return;
			}
		}
		if (message.Msg == 514 && Control.FromHandle(message.HWnd) is FloatingForm { InSizeMove: false, Visible: not false } floatingForm)
		{
			Point ptscreen = new Point(Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(message.LParam), Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(message.LParam));
			floatingForm.HandleMouseUp(MouseButtons.Left, ptscreen);
		}
		if (AHInViewTab != null)
		{
			if ((message.Msg >= 512 && message.Msg <= 521) || message.Msg == 675)
			{
				Point point = Cursor.Position;
				if (!((HostControl.Parent != null) ? HostControl.Parent.RectangleToScreen(HostControl.Bounds) : HostControl.Bounds).Contains(point) || ((message.Msg == 512 || message.Msg == 675 || message.Msg == 513 || message.Msg == 519 || message.Msg == 516) && message.HWnd != AHInViewTab.Handle && !AHInViewTab.GetActiveTabGroupOrSubGroupDockHostRect().Contains(point)))
				{
					point = Point.Empty;
					if ((message.Msg == 513 || message.Msg == 516 || message.Msg == 519) && AutoHideActiveControl)
					{
						ForceHideActiveControl = true;
					}
				}
				if (!(DragProvider.DraggingControl is DragSplitter))
				{
					AHInViewTab.MFMouseMessageHandler(point);
				}
			}
			else if (message.Msg == 160 && message.HWnd == HostControl.Handle)
			{
				int num = (int)message.WParam;
				if ((num >= 10 && num <= 17) || num == 2 || num == 5)
				{
					AHInViewTab.MFNCMouseMessageHandler(Point.Empty);
				}
				else
				{
					Point position = Cursor.Position;
					if (!AHInViewTab.GetActiveTabGroupOrSubGroupRect().Contains(position))
					{
						AHInViewTab.MFNCMouseMessageHandler(Point.Empty);
					}
				}
			}
			else if (message.Msg == 674 && message.HWnd == HostControl.Handle)
			{
				AHInViewTab.MFNCMouseMessageHandler(Point.Empty);
			}
		}
		if (DragProvider != null)
		{
			if (message.Msg == 256)
			{
				if ((int)message.WParam == 27)
				{
					if (DragProvider.DraggingControl == null)
					{
						DragProvider.AllowDrag = false;
					}
					m_bEscKeyPressed = true;
				}
				if ((int)message.WParam == 17)
				{
					DragProvider.ProcessCtrlKeyDown();
				}
			}
			else if (message.Msg == 257)
			{
				if ((int)message.WParam == 27)
				{
					DragProvider.AllowDrag = true;
					m_bEscKeyPressed = false;
				}
				if ((int)message.WParam == 17)
				{
					DragProvider.ProcessCtrlKeyUp();
				}
			}
		}
		if (controllerInFocus != null && (message.Msg == 513 || message.Msg == 516 || message.Msg == 519) && !Syncfusion.Runtime.InteropServices.NativeMethods.IsChild(controllerInFocus.HostControl.Handle, message.HWnd))
		{
			DockHost dockHost = controllerInFocus.HostControl as DockHost;
			dockHost.Invalidate(dockHost.TitleBar.CaptionRect, invalidateChildren: false);
		}
	}

	[DocumentationExclude]
	public void CallWndProc(int nCode, IntPtr wparam, IntPtr lparam)
	{
		if (HostControl == null || !HostControl.IsHandleCreated)
		{
			return;
		}
		Syncfusion.Runtime.InteropServices.NativeMethods.CWPSTRUCT cWPSTRUCT = (Syncfusion.Runtime.InteropServices.NativeMethods.CWPSTRUCT)Marshal.PtrToStructure(lparam, typeof(Syncfusion.Runtime.InteropServices.NativeMethods.CWPSTRUCT));
		if (nCode < 0)
		{
			return;
		}
		if (DesignProcess)
		{
			if (cWPSTRUCT.message != 28)
			{
				return;
			}
			{
				foreach (DockControllerBase alFFController in alFFControllers)
				{
					if (alFFController.HostControl.Visible)
					{
						alFFController.HostControl.Visible = false;
					}
				}
				return;
			}
		}
		if (cWPSTRUCT.message != 546 || !bMDIActivatedVisibility || !(cWPSTRUCT.wParam != IntPtr.Zero) || !(cWPSTRUCT.lParam != IntPtr.Zero))
		{
			return;
		}
		Form form = null;
		if (HostControl is Form && (HostControl as Form).IsMdiChild)
		{
			form = HostControl as Form;
		}
		if (form == null && HostControl.ParentForm != null && HostControl.ParentForm.IsMdiChild)
		{
			form = HostControl.ParentForm;
		}
		if (form == null)
		{
			return;
		}
		if (cWPSTRUCT.lParam == form.Handle)
		{
			if (!Syncfusion.Runtime.InteropServices.NativeMethods.IsWindowVisible(HostControl.Handle) || bFloatingVisibility)
			{
				return;
			}
			bFloatingVisibility = true;
			{
				foreach (FloatingFormController alFFController2 in alFFControllers)
				{
					if (!alFFController2.HostControl.Visible)
					{
						alFFController2.HostControl.Visible = true;
					}
				}
				return;
			}
		}
		if (!bFloatingVisibility)
		{
			return;
		}
		bFloatingVisibility = false;
		foreach (FloatingFormController alFFController3 in alFFControllers)
		{
			if (alFFController3.HostControl.Visible)
			{
				alFFController3.HostControl.Visible = false;
			}
		}
	}

	public void SetControlSize(Control ctrl, Size newsize)
	{
		if (ctrl == null)
		{
			throw new ArgumentNullException("ctrl");
		}
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController == null)
		{
			return;
		}
		if (!dockHostController.DockVisibility)
		{
			dockHostController.StoredSize = newsize;
		}
		else
		{
			if (dockHostController.bInMDIMode)
			{
				return;
			}
			if (bApplyMinMaxExtents)
			{
				Size minimumSize = dockHostController.MinimumSize;
				if (newsize.Width < minimumSize.Width)
				{
					newsize.Width = minimumSize.Width;
				}
				if (newsize.Height < minimumSize.Height)
				{
					newsize.Height = minimumSize.Height;
				}
			}
			if (dockHostController.bInAutoHide)
			{
				bool flag = false;
				DockControllerBase parentController = dockHostController.ParentController;
				if (parentController is DockTabController)
				{
					parentController = parentController.ParentController;
					flag = true;
				}
				DockHost dockHost = dockHostController.HostControl as DockHost;
				int borderWidth = dockHost.BorderWidth;
				int captionHeight = dockHost.CaptionHeight;
				int num = newsize.Width + 2 * borderWidth;
				int num2 = newsize.Height + 2 * borderWidth + captionHeight;
				if (flag)
				{
					if (DockTabAlignment == DockTabAlignmentStyle.Bottom || DockTabAlignment == DockTabAlignmentStyle.Top)
					{
						num2 += 3;
					}
					else
					{
						num++;
					}
				}
				Size autohiddenControlSize = new Size(num, num2);
				dockHostController.SetAutohiddenControlSize(autohiddenControlSize);
			}
			else
			{
				Size size = ctrl.Size;
				if (dockHostController.ParentController != null && dockHostController.ParentController is DockTabController)
				{
					DockTabController dockTabController = dockHostController.ParentController as DockTabController;
					size = dockTabController.HostControl.Controls[0].Size;
				}
				int num3 = newsize.Width - size.Width;
				int num4 = newsize.Height - size.Height;
				if (num3 != 0 && !IterSetSplitterPosition(dockHostController, bvertsplitter: true, num3) && dockHostController.Floating)
				{
					dockHostController.HostControl.TopLevelControl.Width += num3;
				}
				if (num4 != 0 && !IterSetSplitterPosition(dockHostController, bvertsplitter: false, num4) && dockHostController.Floating)
				{
					dockHostController.HostControl.TopLevelControl.Height += num4;
				}
			}
		}
	}

	public Size GetControlSize(Control ctrl)
	{
		if (ctrl == null)
		{
			throw new ArgumentNullException("ctrl");
		}
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController == null)
		{
			return Size.Empty;
		}
		if (dockHostController.bInAutoHide)
		{
			bool flag = false;
			DockControllerBase parentController = dockHostController.ParentController;
			if (parentController is DockTabController)
			{
				parentController = parentController.ParentController;
				flag = true;
			}
			DockControllerBase toplevelController = parentController.ToplevelController;
			if (parentController.GetChildAt(1) is DragSplitterController dragSplitterController && !dragSplitterController.HostControl.Visible && ctrl.Size == Size.Empty)
			{
				Size size = dockHostController.DINew.rcDockArea.Size;
				Size size2 = toplevelController.LayoutRect.Size;
				DockHost dockHost = dockHostController.HostControl as DockHost;
				int borderWidth = dockHost.BorderWidth;
				int captionHeight = dockHost.CaptionHeight;
				int num = ((parentController.DICurrent.DP == DockPreference.Horizontal) ? (size.Width - 2 * borderWidth) : (size2.Width - 2 * borderWidth));
				int num2 = ((parentController.DICurrent.DP == DockPreference.Horizontal) ? (size2.Height - 2 * borderWidth - captionHeight) : (size.Height - 2 * borderWidth - captionHeight));
				if (flag)
				{
					if (DockTabAlignment == DockTabAlignmentStyle.Bottom || DockTabAlignment == DockTabAlignmentStyle.Top)
					{
						num2 -= 3;
					}
					else
					{
						num--;
					}
				}
				return new Size(num, num2);
			}
		}
		else
		{
			try
			{
				RefreshControlSize(ctrl, ctrl.Size);
			}
			catch
			{
			}
		}
		return ctrl.Size;
	}

	public void SetControlMinimumSize(Control ctrl, Size minsize)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null)
		{
			dockHostController.MinimumSize = minsize;
		}
	}

	public Size GetControlMinimumSize(Control ctrl)
	{
		return GetDockHostController(ctrl)?.MinimumSize ?? Size.Empty;
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public bool CanExtend(object target)
	{
		if (target is Form || target is MdiClient || target is DockingClientPanel)
		{
			return false;
		}
		if (target is Control)
		{
			Control parent = (target as Control).Parent;
			if (parent != null && (parent == HostControl || parent is DockHost))
			{
				return true;
			}
		}
		return false;
	}

	[DefaultValue(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Enables/disables the control as a docking window.")]
	[Category("Syncfusion Docking")]
	public bool GetEnableDocking(Control ctrl)
	{
		return alEnableDocking.Contains(ctrl);
	}

	[Category("Syncfusion Docking")]
	[Description("Enables/disables the control as a docking window.")]
	[DefaultValue(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public void SetEnableDocking(Control ctrl, bool value)
	{
		PreviousParentForm = null;
		bool flag = false;
		if (value)
		{
			Control control = ctrl;
			while (control.Parent != null)
			{
				if (control.Parent is DockHost)
				{
					control = control.Parent;
					continue;
				}
				if (control.Parent is Form)
				{
					PreviousParentForm = control.Parent as Form;
					PreviousParentVisibility = control.Parent.Visible;
					break;
				}
				control = control.Parent;
			}
			if (!alEnableDocking.Contains(ctrl))
			{
				flag = true;
				alEnableDocking.Add(ctrl);
			}
			if (dcHostForm == null || dcHostForm.HostControl == null || bInBeginEndInit)
			{
				ctrl.BindingContext = new BindingContext();
				return;
			}
			DockHostController dockHostController = GetDockHostController(ctrl);
			if (dockHostController != null)
			{
				return;
			}
			if (ctrl is Form form)
			{
				if (form.MdiParent != null)
				{
					form.MdiParent = null;
				}
				form.TopLevel = false;
				form.Visible = true;
			}
			InternalEnableDocking(ctrl, DockingStyle.Left, -1);
			if (!DesignMode && alEnableDocking.Count > 0 && !DesignerHooks.GetMsgProcListContains(this))
			{
				m_curentThreadId = DesignerHooks.AddGetMsgProcListener(this);
			}
			if (!htCustomCaptionButtons.ContainsKey(ctrl))
			{
				htCustomCaptionButtons.Add(ctrl, new CaptionButtonsCollection());
			}
			ApplyDHCInitialSettings(ctrl);
			SynchronizeCaptionButtons();
			if (ctrl.Parent != null && PreviousParentForm != null)
			{
				PreviousParentForm.Visible = PreviousParentVisibility;
				PreviousParentForm = null;
			}
		}
		else
		{
			if (DesignMode && GetService(typeof(IDesignerHost)) is IDesignerHost { Loading: false } && alInheritedControls.Contains(ctrl))
			{
				MessageBox.Show("This is an inherited control. Docking can be disabled only in the base form.", "Essential Tools DockingManager", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
				return;
			}
			DockHostController dockHostController2 = GetDockHostController(ctrl);
			if (dockHostController2 == null)
			{
				return;
			}
			if (ActiveControl == ctrl)
			{
				SetActiveControl(null);
			}
			if (dockHostController2.bInMDIMode)
			{
				if (dockHostController2.ctrlReference != null)
				{
					SetAsMDIChild(ctrl, bsetmdi: false);
				}
				else
				{
					dockHostController2.bInMDIMode = false;
				}
			}
			if (alEnableDocking.Contains(ctrl))
			{
				flag = true;
				alEnableDocking.Remove(ctrl);
			}
			Rectangle r = dockHostController2.HostControl.RectangleToScreen(dockHostController2.HostControl.Controls[0].Bounds);
			bFiredVisibilityChangedEvent = true;
			bFiredVisibilityChangingEvent = true;
			dockHostController2.CloseController();
			bFiredVisibilityChangedEvent = false;
			bFiredVisibilityChangingEvent = false;
			RemoveController(dockHostController2);
			DockHost dockHost = dockHostController2.HostControl as DockHost;
			dockHost.RecSubscribeChildControlEvents(ctrl, subscribe: false);
			dockHost.UnsubscribeDockHostEvents();
			ctrl.Visible = true;
			if (DesignMode)
			{
				dcHostForm.HostControl.Controls.Add(ctrl);
				ctrl.Bounds = dcHostForm.HostControl.RectangleToClient(r);
			}
			else
			{
				dockHostController2.HostControl.Controls.Remove(ctrl);
				if (bControlScopeImages)
				{
					RemoveDockHostImageFromList(dockHostController2);
				}
			}
			if (controllerInFocus == dockHostController2)
			{
				controllerInFocus = null;
			}
			ctrl.Parent = HostControl;
			ctrl.Location = dockHostController2.ControlLocation;
			ctrl.Size = dockHostController2.ControlSize;
			if (dockHostController2.SharedForm != null && !dockHostController2.SharedForm.Used)
			{
				dockHostController2.SharedForm.Dispose();
				dockHostController2.SharedForm = null;
			}
			dockHostController2.Dispose();
			if (DesignMode)
			{
				if (!alInheritedControls.Contains(ctrl))
				{
					if (htText.Contains(ctrl))
					{
						htText.Remove(ctrl);
					}
					if (htIcon.Contains(ctrl))
					{
						htIcon.Remove(ctrl);
					}
					if (htmIcon.Contains(ctrl))
					{
						htmIcon.Remove(ctrl);
					}
				}
				if (htFloatOnly.Contains(ctrl))
				{
					htFloatOnly.Remove(ctrl);
				}
				if (listAHOnLoad.Contains(ctrl))
				{
					listAHOnLoad.Remove(ctrl);
				}
				if (htHiddenOnLoad.Contains(ctrl))
				{
					htHiddenOnLoad.Remove(ctrl);
				}
			}
		}
		if (DesignMode)
		{
			RaiseEnabledDocking(ctrl, value);
			TypeDescriptor.Refresh(ctrl);
			if (flag)
			{
				UpdateDesigner();
			}
		}
		else if (alEnableDocking.Count == 0)
		{
			if (DesignerHooks.GetMsgProcListContains(this, m_curentThreadId))
			{
				DesignerHooks.RemoveGetMsgProcListener(this, m_curentThreadId);
			}
			alHiddenFFControllers.Clear();
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	[Category("Syncfusion Docking")]
	[Description("The text displayed by the docking window caption.")]
	public void SetDockLabel(Control ctrl, string strtext)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null)
		{
			if (dockHostController.bInMDIMode && !GetFloatOnly(ctrl))
			{
				Form form = (Form)HostControl;
				IEnumerator enumerator = form.MdiChildren.GetEnumerator();
				while (enumerator.MoveNext())
				{
					if (enumerator.Current is DockingWrapperForm dockingWrapperForm && dockHostController.ctrlReference.Equals(ctrl) && dockHostController.DockLabel.Equals(dockingWrapperForm.Text) && dockingWrapperForm.Name.Contains(ctrl.Name))
					{
						string dockLabel = (dockingWrapperForm.Text = strtext);
						dockHostController.DockLabel = dockLabel;
						return;
					}
				}
			}
			dockHostController.DockLabel = strtext;
			if (DesignMode)
			{
				if (htText.Contains(ctrl))
				{
					htText.Remove(ctrl);
				}
				htText.Add(ctrl, strtext);
			}
			FloatingFormController parentFloatingFormController = dockHostController.GetParentFloatingFormController();
			if (parentFloatingFormController != null)
			{
				parentFloatingFormController.HostControl.Text = strtext;
				parentFloatingFormController.RefreshFormCaption();
				NativeMethodsHelper.RedrawWindow(parentFloatingFormController.HostControl.Handle, 1025);
			}
		}
		else
		{
			if (htText.Contains(ctrl))
			{
				htText.Remove(ctrl);
			}
			htText.Add(ctrl, strtext);
		}
	}

	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	[Description("The text displayed by the docking window caption.")]
	public string GetDockLabel(Control ctrl)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null)
		{
			return dockHostController.DockLabel;
		}
		if (htText.Contains(ctrl))
		{
			return htText[ctrl] as string;
		}
		return string.Empty;
	}

	[RefreshProperties(RefreshProperties.All)]
	[Description("The index of the image associated with this docking window.")]
	[Category("Syncfusion Docking")]
	public void SetDockIcon(Control ctrl, int index)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null)
		{
			dockHostController.ImageIndex = index;
			if (DesignMode)
			{
				if (htIcon.Contains(ctrl))
				{
					htIcon.Remove(ctrl);
				}
				htIcon.Add(ctrl, index);
			}
			if (dockHostController.Floating)
			{
				FloatingFormController parentFloatingFormController = dockHostController.GetParentFloatingFormController();
				if (parentFloatingFormController != null)
				{
					parentFloatingFormController.ImageIndex = index;
					NativeMethodsHelper.RedrawWindow(parentFloatingFormController.HostControl.Handle, 1025);
				}
			}
			if (IsMDIMode(ctrl))
			{
				UpdateMDIChildIcon(ctrl);
			}
		}
		else
		{
			if (htIcon.Contains(ctrl))
			{
				htIcon.Remove(ctrl);
			}
			htIcon.Add(ctrl, index);
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	[Category("Syncfusion Docking")]
	[Description("The index of the image associated with this docking window at MDI Child state.")]
	public void SetMDIChildIcon(Control ctrl, int index)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null)
		{
			dockHostController.MdiImageIndex = index;
			if (DesignMode)
			{
				if (htmIcon.Contains(ctrl))
				{
					htmIcon.Remove(ctrl);
				}
				htmIcon.Add(ctrl, index);
			}
		}
		else
		{
			if (htmIcon.Contains(ctrl))
			{
				htmIcon.Remove(ctrl);
			}
			htmIcon.Add(ctrl, index);
		}
		UpdateMDIChildIcon(ctrl);
		SetDockIcon(ctrl, index);
	}

	public void SetMDIChildIcon(Control ctrl, Icon image)
	{
		if (ctrl == null || image == null)
		{
			return;
		}
		string key = ctrl.GetHashCode().ToString();
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (ImageList == null)
		{
			ImageList = new ImageList();
		}
		bool flag = false;
		if (ilDockTabs.Images.ContainsKey(key) && dockHostController != null)
		{
			int imageIndex = dockHostController.ImageIndex;
			if (ilDockTabs.Images.Count == 1)
			{
				ilDockTabs.Images.RemoveByKey(key);
			}
			else
			{
				using ImageList imageList = new ImageList();
				StringEnumerator enumerator = ilDockTabs.Images.Keys.GetEnumerator();
				try
				{
					while (enumerator.MoveNext())
					{
						string current = enumerator.Current;
						imageList.Images.Add(current, ilDockTabs.Images[current]);
					}
				}
				finally
				{
					if (enumerator is IDisposable disposable)
					{
						disposable.Dispose();
					}
				}
				imageList.Images.RemoveByKey(key);
				ilDockTabs.Images.Clear();
				int num = 0;
				StringEnumerator enumerator2 = imageList.Images.Keys.GetEnumerator();
				try
				{
					while (enumerator2.MoveNext())
					{
						string current2 = enumerator2.Current;
						if (num == imageIndex)
						{
							ilDockTabs.Images.Add(key, image);
							flag = true;
						}
						ilDockTabs.Images.Add(current2, imageList.Images[current2]);
						num++;
					}
				}
				finally
				{
					if (enumerator2 is IDisposable disposable2)
					{
						disposable2.Dispose();
					}
				}
			}
		}
		if (!flag)
		{
			ilDockTabs.Images.Add(ctrl.GetHashCode().ToString(), image);
		}
		dockHostController.MdiImageIndex = ilDockTabs.Images.IndexOfKey(key);
		dockHostController.ControlImage = image;
		if (dockHostController.Floating)
		{
			FloatingFormController parentFloatingFormController = dockHostController.GetParentFloatingFormController();
			if (parentFloatingFormController != null)
			{
				NativeMethodsHelper.RedrawWindow(parentFloatingFormController.HostControl.Handle, 1025);
			}
		}
		else
		{
			NativeMethodsHelper.RedrawWindow(dockHostController.HostControl.Handle, 1025);
		}
		UpdateMDIChildIcon(ctrl);
		SetDockIcon(ctrl, image);
	}

	public void SetDockIcon(Control ctrl, Icon image)
	{
		if (ctrl == null || image == null)
		{
			return;
		}
		string key = ctrl.GetHashCode().ToString();
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (ImageList == null)
		{
			ImageList = new ImageList();
		}
		bool flag = false;
		if (ilDockTabs.Images.ContainsKey(key) && dockHostController != null)
		{
			int imageIndex = dockHostController.ImageIndex;
			if (ilDockTabs.Images.Count == 1)
			{
				ilDockTabs.Images.RemoveByKey(key);
			}
			else
			{
				using ImageList imageList = new ImageList();
				StringEnumerator enumerator = ilDockTabs.Images.Keys.GetEnumerator();
				try
				{
					while (enumerator.MoveNext())
					{
						string current = enumerator.Current;
						imageList.Images.Add(current, ilDockTabs.Images[current]);
					}
				}
				finally
				{
					if (enumerator is IDisposable disposable)
					{
						disposable.Dispose();
					}
				}
				imageList.Images.RemoveByKey(key);
				ilDockTabs.Images.Clear();
				int num = 0;
				StringEnumerator enumerator2 = imageList.Images.Keys.GetEnumerator();
				try
				{
					while (enumerator2.MoveNext())
					{
						string current2 = enumerator2.Current;
						if (num == imageIndex)
						{
							ilDockTabs.Images.Add(key, image);
							flag = true;
						}
						ilDockTabs.Images.Add(current2, imageList.Images[current2]);
						num++;
					}
				}
				finally
				{
					if (enumerator2 is IDisposable disposable2)
					{
						disposable2.Dispose();
					}
				}
			}
		}
		if (!flag)
		{
			ilDockTabs.Images.Add(ctrl.GetHashCode().ToString(), image);
		}
		dockHostController.ImageIndex = ilDockTabs.Images.IndexOfKey(key);
		dockHostController.ControlImage = image;
		if (dockHostController.Floating)
		{
			FloatingFormController parentFloatingFormController = dockHostController.GetParentFloatingFormController();
			if (parentFloatingFormController != null)
			{
				parentFloatingFormController.ImageIndex = dockHostController.ImageIndex;
				NativeMethodsHelper.RedrawWindow(parentFloatingFormController.HostControl.Handle, 1025);
			}
		}
		else
		{
			NativeMethodsHelper.RedrawWindow(dockHostController.HostControl.Handle, 1025);
		}
		if (IsMDIMode(ctrl))
		{
			UpdateMDIChildIcon(ctrl);
		}
	}

	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	[Description("The index of the image associated with this docking window.")]
	public int GetDockIcon(Control ctrl)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null)
		{
			return dockHostController.ImageIndex;
		}
		if (htIcon.Contains(ctrl))
		{
			return (int)htIcon[ctrl];
		}
		return -1;
	}

	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	[Description("The index of the image associated with this docking window at MDI Child state.")]
	public int GetMDIChildIcon(Control ctrl)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null)
		{
			return dockHostController.MdiImageIndex;
		}
		if (htmIcon.Contains(ctrl))
		{
			return (int)htmIcon[ctrl];
		}
		return -1;
	}

	[Description("Indicates whether the docking window is set for the float-only mode.")]
	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	public void SetFloatOnly(Control ctrl, bool bfloating)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null)
		{
			dockHostController.FloatOnly = bfloating;
			if (DesignMode)
			{
				if (htFloatOnly.Contains(ctrl))
				{
					htFloatOnly.Remove(ctrl);
				}
				htFloatOnly.Add(ctrl, bfloating);
			}
		}
		else
		{
			if (htFloatOnly.Contains(ctrl))
			{
				htFloatOnly.Remove(ctrl);
			}
			htFloatOnly.Add(ctrl, bfloating);
		}
	}

	[Description("Indicates whether the docking window is set for the float-only mode.")]
	[RefreshProperties(RefreshProperties.All)]
	[Category("Syncfusion Docking")]
	public bool GetFloatOnly(Control ctrl)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null)
		{
			return dockHostController.FloatOnly;
		}
		if (htFloatOnly.Contains(ctrl))
		{
			return (bool)htFloatOnly[ctrl];
		}
		return false;
	}

	[Description("Indicates whether the docking window can be transited to floating state")]
	[RefreshProperties(RefreshProperties.All)]
	[Category("Syncfusion Docking")]
	[DefaultValue(true)]
	public bool GetAllowFloating(Control ctrl)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null)
		{
			return dockHostController.AllowFloating;
		}
		if (htAllowFloating.Contains(ctrl))
		{
			return (bool)htAllowFloating[ctrl];
		}
		return false;
	}

	[RefreshProperties(RefreshProperties.All)]
	[Description("Indicates whether the docking window can be transited to floating state")]
	[Category("Syncfusion Docking")]
	[DefaultValue(true)]
	public void SetAllowFloating(Control ctrl, bool bfloating)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null)
		{
			dockHostController.AllowFloating = bfloating;
			if (DesignMode)
			{
				if (htAllowFloating.Contains(ctrl))
				{
					htAllowFloating.Remove(ctrl);
				}
				htAllowFloating.Add(ctrl, bfloating);
			}
		}
		else
		{
			if (htAllowFloating.Contains(ctrl))
			{
				htAllowFloating.Remove(ctrl);
			}
			htAllowFloating.Add(ctrl, bfloating);
		}
	}

	[Category("Syncfusion Docking")]
	[Description("Specifies whether the docking window should be in the autohide mode on application startup.")]
	[DocumentationExclude]
	[RefreshProperties(RefreshProperties.All)]
	public void SetAutoHideOnLoad(Control ctrl, bool bautohide)
	{
		listAHOnLoad.Remove(ctrl);
		if (bautohide)
		{
			listAHOnLoad.Add(ctrl);
		}
		if (bautohide && htHiddenOnLoad.Contains(ctrl))
		{
			htHiddenOnLoad.Remove(ctrl);
			htHiddenOnLoad.Add(ctrl, false);
		}
		if (DesignMode && !bInBeginEndInit)
		{
			UpdateDesigner();
		}
	}

	[DocumentationExclude]
	[Description("Specifies whether the docking window should be in the autohide mode on application startup.")]
	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	public bool GetAutoHideOnLoad(Control ctrl)
	{
		return listAHOnLoad.Contains(ctrl);
	}

	[Category("Syncfusion Docking")]
	[Description("Specifies whether the docking window should be hidden on application startup.")]
	[DocumentationExclude]
	[RefreshProperties(RefreshProperties.All)]
	public void SetHiddenOnLoad(Control ctrl, bool bhidden)
	{
		if (htHiddenOnLoad.Contains(ctrl))
		{
			htHiddenOnLoad.Remove(ctrl);
		}
		htHiddenOnLoad.Add(ctrl, bhidden);
		if (bhidden && listAHOnLoad.Contains(ctrl))
		{
			listAHOnLoad.Remove(ctrl);
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	[Category("Syncfusion Docking")]
	[DocumentationExclude]
	[Description("Specifies whether the docking window should be hidden on application startup.")]
	public bool GetHiddenOnLoad(Control ctrl)
	{
		if (htHiddenOnLoad.Contains(ctrl))
		{
			return (bool)htHiddenOnLoad[ctrl];
		}
		return false;
	}

	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	[Description("Specifies whether the docking window should not be resized.")]
	public void SetFreezeResize(Control ctrl, bool freeze)
	{
		if (freeze)
		{
			if (!m_freezeResizeCtrls.Contains(ctrl))
			{
				m_freezeResizeCtrls.Add(ctrl);
			}
		}
		else if (m_freezeResizeCtrls.Contains(ctrl))
		{
			m_freezeResizeCtrls.Remove(ctrl);
		}
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null && !DesignMode)
		{
			dockHostController.FreezeResize = freeze;
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	[Category("Syncfusion Docking")]
	[Description("Specifies whether the docking window should not be resized.")]
	public bool GetFreezeResize(Control ctrl)
	{
		return m_freezeResizeCtrls.Contains(ctrl);
	}

	[Description("Indicates where user can dock in this control using drag providers (Arrow drag providers only).")]
	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	public void SetDockAbility(Control ctrl, DockAbility ability)
	{
		if (htDockAbility.Contains(ctrl))
		{
			htDockAbility.Remove(ctrl);
		}
		htDockAbility.Add(ctrl, ability);
	}

	[Description("Indicates where user can dock in this control using drag providers (Arrow drag providers only).")]
	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	public void SetDockAbility(Control ctrl, int nAbility)
	{
		DockAbility ability = (DockAbility)Enum.ToObject(typeof(DockAbility), nAbility);
		SetDockAbility(ctrl, ability);
	}

	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	[Description("Indicates where user can dock in this control using drag providers (Arrow drag providers only).")]
	public void SetDockAbility(Control ctrl, string strAbility)
	{
		DockAbility ability = (DockAbility)Enum.Parse(typeof(DockAbility), strAbility);
		SetDockAbility(ctrl, ability);
	}

	[RefreshProperties(RefreshProperties.All)]
	[Description("Indicates where user can dock in this control using drag providers (Arrow drag providers only).")]
	[Category("Syncfusion Docking")]
	public DockAbility GetDockAbility(Control ctrl)
	{
		if (htDockAbility.Contains(ctrl))
		{
			return (DockAbility)htDockAbility[ctrl];
		}
		return DockAbility.All;
	}

	[Description("Indicates where user can dock this control using drag providers (Arrow drag providers only).")]
	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	public void SetOuterDockAbility(Control ctrl, DockAbility ability)
	{
		if (htOuterDockAbility.Contains(ctrl))
		{
			htOuterDockAbility.Remove(ctrl);
		}
		htOuterDockAbility.Add(ctrl, ability);
	}

	[Category("Syncfusion Docking")]
	[Description("Indicates where user can dock this control using drag providers (Arrow drag providers only).")]
	[RefreshProperties(RefreshProperties.All)]
	public void SetOuterDockAbility(Control ctrl, int nAbility)
	{
		DockAbility ability = (DockAbility)Enum.ToObject(typeof(DockAbility), nAbility);
		SetOuterDockAbility(ctrl, ability);
	}

	[Description("Indicates where user can dock this control using drag providers (Whidbey and VS2005 drag providers only).")]
	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	public void SetOuterDockAbility(Control ctrl, string strAbility)
	{
		DockAbility ability = (DockAbility)Enum.Parse(typeof(DockAbility), strAbility);
		SetOuterDockAbility(ctrl, ability);
	}

	[Description("Indicates where user can dock this control using drag providers (Whidbey and VS2005 drag providers only).")]
	[RefreshProperties(RefreshProperties.All)]
	[Category("Syncfusion Docking")]
	public DockAbility GetOuterDockAbility(Control ctrl)
	{
		if (htOuterDockAbility.Contains(ctrl))
		{
			return (DockAbility)htOuterDockAbility[ctrl];
		}
		return DockAbility.All;
	}

	[Description("Contains custom caption buttons collection for each docked control.")]
	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	public CaptionButtonsCollection GetCustomCaptionButtons(Control ctrl)
	{
		if (htCustomCaptionButtons != null && htCustomCaptionButtons.ContainsKey(ctrl))
		{
			return htCustomCaptionButtons[ctrl] as CaptionButtonsCollection;
		}
		return null;
	}

	[Description("Contains custom caption buttons collection for each docked control.")]
	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	public void SetCustomCaptionButtons(Control ctrl, CaptionButtonsCollection buttons)
	{
		if (htCustomCaptionButtons.ContainsKey(ctrl))
		{
			htCustomCaptionButtons[ctrl] = buttons;
		}
		else
		{
			htCustomCaptionButtons.Add(ctrl, buttons);
		}
	}

	public void SetAutoHideButtonToolTip(string text)
	{
		foreach (CaptionButton captionButton in CaptionButtons)
		{
			if (captionButton.Type == CaptionButtonType.Pin)
			{
				captionButton.ToolTip = text;
			}
		}
		autoHideButtonToolTip = text;
	}

	public string GetAutoHideButtonToolTip()
	{
		foreach (CaptionButton captionButton in CaptionButtons)
		{
			if (captionButton.Type == CaptionButtonType.Pin)
			{
				return captionButton.ToolTip;
			}
		}
		return autoHideButtonToolTip;
	}

	public void SetCloseButtonToolTip(string text)
	{
		foreach (CaptionButton captionButton in CaptionButtons)
		{
			if (captionButton.Type == CaptionButtonType.Close)
			{
				captionButton.ToolTip = text;
			}
		}
		closeButtonToolTip = text;
	}

	public string GetCloseButtonToolTip()
	{
		foreach (CaptionButton captionButton in CaptionButtons)
		{
			if (captionButton.Type == CaptionButtonType.Close)
			{
				return captionButton.ToolTip;
			}
		}
		return closeButtonToolTip;
	}

	public void SetMenuButtonToolTip(string text)
	{
		foreach (CaptionButton captionButton in CaptionButtons)
		{
			if (captionButton.Type == CaptionButtonType.Menu)
			{
				captionButton.ToolTip = text;
			}
		}
		menuButtonToolTip = text;
	}

	public string GetMenuButtonToolTip()
	{
		foreach (CaptionButton captionButton in CaptionButtons)
		{
			if (captionButton.Type == CaptionButtonType.Menu)
			{
				return captionButton.ToolTip;
			}
		}
		return menuButtonToolTip;
	}

	public void SetMaximizeButtonToolTip(string text)
	{
		foreach (CaptionButton captionButton in CaptionButtons)
		{
			if (captionButton.Type == CaptionButtonType.Maximize)
			{
				captionButton.ToolTip = text;
			}
		}
		maximizeButtonToolTip = text;
	}

	public string GetMaximizeButtonToolTip()
	{
		foreach (CaptionButton captionButton in CaptionButtons)
		{
			if (captionButton.Type == CaptionButtonType.Maximize)
			{
				return captionButton.ToolTip;
			}
		}
		return maximizeButtonToolTip;
	}

	public void SetRestoreButtonToolTip(string text)
	{
		restoreButtonToolTip = text;
	}

	public string GetRestoreButtonToolTip()
	{
		return restoreButtonToolTip;
	}

	public bool GetAutoHideButtonVisibility(Control ctrl)
	{
		return GetDockHostController(ctrl)?.AutoHideButtonVisibility ?? false;
	}

	public void SetAutoHideButtonVisibility(Control ctrl, bool bvisible)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null && dockHostController.AutoHideButtonVisibility != bvisible)
		{
			dockHostController.AutoHideButtonVisibility = bvisible;
		}
	}

	public void SetCloseButtonVisibility(Control ctrl, bool bvisible)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null && dockHostController.CloseButtonVisibility != bvisible)
		{
			dockHostController.CloseButtonVisibility = bvisible;
			if (dockHostController.DockVisibility && dockHostController.Floating)
			{
				FloatingForm floatingForm = dockHostController.HostControl.TopLevelControl as FloatingForm;
				floatingForm.CloseButtonVisibility = bvisible;
				floatingForm.UpdateControlBoxVisibility();
			}
		}
	}

	public bool GetCloseButtonVisibility(Control ctrl)
	{
		return GetDockHostController(ctrl)?.CloseButtonVisibility ?? false;
	}

	public void SetMenuButtonVisibility(Control ctrl, bool bvisible)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null && dockHostController.MenuButtonVisiblity != bvisible)
		{
			dockHostController.MenuButtonVisiblity = bvisible;
		}
	}

	public bool GetMenuButtonVisibility(Control ctrl)
	{
		return GetDockHostController(ctrl)?.MenuButtonVisiblity ?? false;
	}

	public bool GetDockVisibility(Control ctrl)
	{
		return GetDockHostController(ctrl)?.DockVisibility ?? false;
	}

	public void SetDockVisibility(Control ctrl, bool bvisible, Point floatingLocation)
	{
		if (bvisible)
		{
			FloatingLocation = floatingLocation;
			CustomizeControlCollection.Add(ctrl);
		}
		SetDockVisibility(ctrl, bvisible);
	}

	public void SetDockVisibility(Control ctrl, bool bvisible)
	{
		bool forbidFreeze = ForbidFreeze;
		ForbidFreeze = true;
		SuspendLayout();
		bFreezeDockStateChangeEvents = true;
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null && dockHostController.DockVisibility != bvisible)
		{
			if (dockHostController.AutoHideMode && AHInViewTab != null && dcHostForm.GetAHTabControl(dockHostController.DINew.dStyle) == AHInViewTab)
			{
				HideAutoHiddenControl();
				dockHostController.DockVisibility = bvisible;
				bFreezeDockStateChangeEvents = false;
				ResumeLayout();
				return;
			}
			if (dockHostController.bInMDIMode)
			{
				if (ctrl.Visible == bvisible)
				{
					bFreezeDockStateChangeEvents = false;
					ResumeLayout();
					return;
				}
				DockVisibilityChangingEventArgs e = new DockVisibilityChangingEventArgs(ctrl);
				if (!bFiredVisibilityChangingEvent)
				{
					FireDockVisibilityChangingEvent(e);
					bFiredVisibilityChangingEvent = !bHoldEvents;
					bCancelVisibilityChangingEvent = e.Cancel;
				}
				if (!bvisible && !e.Cancel && !bCancelVisibilityChangingEvent)
				{
					dockHostController.MdiChildState = true;
					if (dockHostController.ctrlReference != null)
					{
						Control parent = dockHostController.ctrlReference.Parent;
						if (parent != null)
						{
							dockHostController.MdiChildBounds = parent.Bounds;
						}
					}
					SetAsMDIChild(ctrl, bvisible);
					DockVisibilityChangedEventArgs arg = new DockVisibilityChangedEventArgs(ctrl);
					if (!bFiredVisibilityChangedEvent)
					{
						FireDockVisibilityChangedEvent(arg);
						bFiredVisibilityChangedEvent = !bHoldEvents;
					}
				}
			}
			if (dockHostController.Floating)
			{
				dockHostController.AutoHiddedBeforeHide = false;
			}
			dockHostController.DockVisibility = bvisible;
			if (!bCancelVisibilityChangingEvent && dockHostController.MdiChildState && bvisible)
			{
				SetAsMDIChild(ctrl, bvisible);
				dockHostController.MdiChildState = false;
			}
			if (bvisible && dockHostController.Floating)
			{
				ctrl.TopLevelControl.Focus();
				ctrl.Focus();
			}
		}
		bFiredVisibilityChangedEvent = false;
		bFiredVisibilityChangingEvent = false;
		bCancelVisibilityChangingEvent = false;
		bFreezeDockStateChangeEvents = false;
		ResumeLayout();
		ForbidFreeze = forbidFreeze;
	}

	public void MaximizeControl(Control ctrl)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null && dockHostController.DockVisibility)
		{
			dockHostController.MaximizeController();
		}
	}

	public void RestoreControl(Control ctrl)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null && dockHostController.DockVisibility)
		{
			if (dockHostController.Maximized)
			{
				dockHostController.RestoreController();
			}
			else
			{
				dockHostController.Minimized = Minimization.None;
			}
		}
	}

	public void ActivateControl(Control ctrl)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController == null)
		{
			return;
		}
		if (ctrl != null && ctrl.Parent is DockingWrapperForm)
		{
			((DockingWrapperForm)ctrl.Parent).Activate();
			SetActiveControl(ctrl);
		}
		if (!dockHostController.DockVisibility)
		{
			return;
		}
		bool banimate = true;
		AHTabPage aHTabPage = null;
		if (ahTabAnimate != null)
		{
			if (ahTabAnimate.SelectedTab is AHTabPage aHTabPage2)
			{
				ahTabAnimate.HideController(aHTabPage2.m_dhcClient, banimate: false, bhidenow: true);
			}
			banimate = false;
		}
		if (dockHostController.AutoHideMode)
		{
			if (autoHideTabInView != null)
			{
				banimate = false;
				if (autoHideTabInView.Edge == dockHostController.DICurrent.dStyle && autoHideTabInView.SelectedTab is AHTabPage aHTabPage3 && aHTabPage3.m_dhcClient == dockHostController)
				{
					autoHideTabInView.ShowController(dockHostController, bAnimate: false);
					if (ctrl != null && !ctrl.ContainsFocus)
					{
						ctrl.Focus();
						SetActiveControl(ctrl);
					}
					return;
				}
			}
			DockingStyle border = ((!(dockHostController.ParentController is DockTabController)) ? dockHostController.DINew.dStyle : (dockHostController.ParentController as DockTabController).DINew.dStyle);
			AHTabControl aHTabControl = dcHostForm.GetAHTabControl(border);
			DockStateControllerBase dockStateControllerBase = null;
			if (dockHostController.ParentController != null && dockHostController.ParentController is DockTabController)
			{
				DockTabController dockTabController = dockHostController.ParentController as DockTabController;
				if (dockTabController.SelectedController != dockHostController)
				{
					int num = -1;
					foreach (TabGroupData tabsDatum in aHTabControl.TabsData)
					{
						if (tabsDatum.Items.Count > 1)
						{
							foreach (TabGroupItem item in tabsDatum.Items)
							{
								if (item.Tag == dockHostController)
								{
									num = (tabsDatum.SelectedIndex = tabsDatum.Items.IndexOf(item));
									break;
								}
							}
						}
						if (num >= 0)
						{
							break;
						}
					}
					dockTabController.TabControl.SelectedIndex = num;
					dockTabController.HostControl.Visible = false;
				}
				dockStateControllerBase = dockTabController;
			}
			else
			{
				dockStateControllerBase = dockHostController;
			}
			aHTabControl.ShowController(dockStateControllerBase, banimate, bActivateAfterShow: true);
			AHInViewTab = aHTabControl;
		}
		else if (dockHostController.ParentController != null && dockHostController.ParentController is DockTabController)
		{
			DockTabController dockTabController2 = dockHostController.ParentController as DockTabController;
			if (dockTabController2.SelectedController != dockHostController)
			{
				dockTabController2.SelectedController = dockHostController;
			}
		}
		if (ctrl != null && !ctrl.ContainsFocus)
		{
			ctrl.Focus();
			SetActiveControl(ctrl);
		}
		if (autoHideTabInView != null && !dockHostController.bInAutoHide)
		{
			autoHideTabInView.MFMouseMessageHandler(Point.Empty);
		}
	}

	public void HideAutoHiddenControl(bool animate)
	{
		if (autoHideTabInView != null)
		{
			autoHideTabInView.HideController(null, animate, bhidenow: true);
			autoHideTabInView = null;
			HostControl.Focus();
		}
	}

	public void HideAutoHiddenControl()
	{
		HideAutoHiddenControl(animate: false);
	}

	public void SetAutoHideMode(Control ctrl, bool bautohide)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController == null || dockHostController.Floating || dockHostController.bInMDIMode)
		{
			return;
		}
		if (!bautohide && dockHostController.AutoHideMode)
		{
			DockingStyle border = ((!(dockHostController.ParentController is DockTabController)) ? dockHostController.DINew.dStyle : (dockHostController.ParentController as DockTabController).DINew.dStyle);
			AHTabControl aHTabControl = dcHostForm.GetAHTabControl(border);
			if (aHTabControl != null)
			{
				if (GetAutoHideMode(ActiveControl))
				{
					HideAutoHiddenControl();
				}
				aHTabControl.ShowController(dockHostController, bAnimate: false);
			}
		}
		if (bautohide && AHInViewTab != null)
		{
			AHInViewTab.StopAllAnimations();
		}
		if (dockHostController.DockVisibility)
		{
			dockHostController.AutoHideMode = bautohide;
		}
		else
		{
			dockHostController.AutoHiddedBeforeHide = bautohide;
		}
	}

	public void SetAutoHideMode(Control ctrl, bool autoHide, bool singleOperate)
	{
		ToggleAHState(ctrl, !GetAutoHideMode(ctrl), singleOperate, animate: true);
	}

	public bool GetAutoHideMode(Control ctrl)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController == null)
		{
			return false;
		}
		if (dockHostController.DockVisibility)
		{
			return dockHostController.AutoHideMode;
		}
		return dockHostController.AutoHiddedBeforeHide;
	}

	private void SetDHCDockVisibility(DockHostController dhc, bool bVisible, bool bFireEvent)
	{
		bool flag = bFiredVisibilityChangingEvent;
		bool flag2 = bFiredVisibilityChangedEvent;
		bFiredVisibilityChangingEvent = !bFireEvent;
		bFiredVisibilityChangedEvent = !bFireEvent;
		dhc.DockVisibility = bVisible;
		bFiredVisibilityChangingEvent = flag;
		bFiredVisibilityChangedEvent = flag2;
	}

	public virtual void SetAsMDIChild(Control ctrl, bool bsetmdi)
	{
		SetAsMDIChild(ctrl, bsetmdi, Rectangle.Empty);
	}

	public virtual void SetAsMDIChild(Control ctrl, bool bsetmdi, Rectangle layout)
	{
		if (!(HostControl is Form) || !(HostControl as Form).IsMdiContainer)
		{
			return;
		}
		DockHostController dockHostController = null;
		ArrayList arrayList = new ArrayList(alTargetManagers);
		arrayList.Add(this);
		foreach (DockingManager item in arrayList)
		{
			dockHostController = item.GetDockHostController(ctrl);
			if (dockHostController != null)
			{
				break;
			}
		}
		if (dockHostController != null)
		{
			SetAsMdiChild(dockHostController, bsetmdi, layout);
		}
	}

	private void UpdateMDIChildIcon(Control ctrl)
	{
		if (DesignMode)
		{
			return;
		}
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController == null || !IsMDIMode(ctrl) || !(ctrl.Parent is DockingWrapperForm dockingWrapperForm) || !dockingWrapperForm.Name.Contains(ctrl.Name))
		{
			return;
		}
		dockingWrapperForm.Text = dockHostController.HostControl.Text;
		new Rectangle(dockHostController.MdiChildBounds.Location, dockHostController.MdiChildBounds.Size);
		if (ilDockTabs != null && dockHostController.MdiImageIndex < ilDockTabs.Images.Count)
		{
			if (dockHostController.MdiImageIndex >= 0)
			{
				Bitmap bitmap = new Bitmap(ilDockTabs.Images[dockHostController.MdiImageIndex], ImageList.ImageSize);
				IntPtr hicon = bitmap.GetHicon();
				Icon icon = dockingWrapperForm.Icon;
				Icon icon2 = Icon.FromHandle(hicon);
				dockingWrapperForm.Icon = icon2.Clone() as Icon;
				bitmap.Dispose();
				Syncfusion.Runtime.InteropServices.NativeMethods.DestroyIcon(icon2.Handle);
				Syncfusion.Runtime.InteropServices.NativeMethods.DestroyIcon(icon.Handle);
			}
			else if (dockHostController.ImageIndex >= 0)
			{
				Bitmap bitmap2 = new Bitmap(ilDockTabs.Images[dockHostController.ImageIndex], ImageList.ImageSize);
				IntPtr hicon2 = bitmap2.GetHicon();
				Icon icon3 = dockingWrapperForm.Icon;
				Icon icon4 = Icon.FromHandle(hicon2);
				dockingWrapperForm.Icon = icon4.Clone() as Icon;
				bitmap2.Dispose();
				Syncfusion.Runtime.InteropServices.NativeMethods.DestroyIcon(icon4.Handle);
				Syncfusion.Runtime.InteropServices.NativeMethods.DestroyIcon(icon3.Handle);
			}
		}
	}

	internal void SetAsMdiChild(DockHostController dhc, bool bsetmdi, Rectangle layout)
	{
		Control control = null;
		if (dhc.bInMDIMode == bsetmdi)
		{
			return;
		}
		control = ((!bsetmdi) ? dhc.ctrlReference : dhc.HostControl.Controls[0]);
		Control[] ctrls = new Control[1] { control };
		FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(ctrls));
		bool flag = bFreezeDockStateChangeEvents;
		bFreezeDockStateChangeEvents = true;
		bool flag2 = bCancelVisibilityChangingEvent;
		bCancelVisibilityChangingEvent = false;
		Form form = HostControl as Form;
		if (bsetmdi)
		{
			foreach (Control item in alEnableDocking)
			{
				if (item == control && item.Parent is DockingWrapperForm)
				{
					bHoldEvents = false;
					return;
				}
			}
			form.Activate();
			dhc.FloatOnly = false;
			if (dhc.HostControl.Parent is FloatingForm frmfloat)
			{
				if (dhc.ParentController is DockTabController dockTabController)
				{
					dockTabController.CheckFormOwnership(dhc);
				}
				else
				{
					PerformFormsExchange(dhc);
				}
				dhc.AssignFormBelongings(frmfloat);
			}
			dhc.bInMDIMode = true;
			SetDHCDockVisibility(dhc, bVisible: false, bFireEvent: false);
			dhc.ctrlReference = control;
			DockingWrapperForm dockingWrapperForm = new DockingWrapperForm(this, control);
			dockingWrapperForm.Text = dhc.HostControl.Text;
			Rectangle rectangle = new Rectangle(dhc.MdiChildBounds.Location, dhc.MdiChildBounds.Size);
			if (ilDockTabs != null)
			{
				if (dhc.MdiImageIndex >= 0 && dhc.MdiImageIndex < ilDockTabs.Images.Count)
				{
					Bitmap bitmap = new Bitmap(ilDockTabs.Images[dhc.MdiImageIndex], ImageList.ImageSize);
					dockingWrapperForm.Icon = Icon.FromHandle(bitmap.GetHicon());
					bitmap.Dispose();
				}
				else if (dhc.ImageIndex >= 0 && dhc.ImageIndex < ilDockTabs.Images.Count)
				{
					Bitmap bitmap2 = new Bitmap(ilDockTabs.Images[dhc.ImageIndex], ImageList.ImageSize);
					dockingWrapperForm.Icon = Icon.FromHandle(bitmap2.GetHicon());
					bitmap2.Dispose();
				}
			}
			if (!CloseEnabled || !dhc.CloseButtonVisibility)
			{
				dockingWrapperForm.ControlBox = false;
				dockingWrapperForm.MinimizeBox = true;
				dockingWrapperForm.MaximizeBox = true;
			}
			dockingWrapperForm.Controls.Add(control);
			dockingWrapperForm.WindowState = dhc.MdiWindowState;
			control.Dock = DockStyle.Fill;
			dockingWrapperForm.MdiParent = form;
			dockingWrapperForm.ColorScheme = Office2007MdiColorScheme;
			dockingWrapperForm.TabStop = false;
			control.Visible = true;
			try
			{
				dockingWrapperForm.Show();
			}
			catch
			{
			}
			if (rectangle != Rectangle.Empty)
			{
				dockingWrapperForm.Location = rectangle.Location;
				dockingWrapperForm.Size = rectangle.Size;
			}
			if (layout != Rectangle.Empty)
			{
				dockingWrapperForm.Location = layout.Location;
				dockingWrapperForm.Size = layout.Size;
			}
			dockingWrapperForm.Activate();
			dockingWrapperForm.dockable.Click += MDIFormDockableItem_Click;
			dockingWrapperForm.hideItem.Click += MDIFormHideItem_Click;
			if (dockingWrapperForm.floating != null)
			{
				dockingWrapperForm.floating.Click += MDIFormFloatingItem_Click;
			}
		}
		else
		{
			if (control.Parent is DockingWrapperForm dockingWrapperForm2)
			{
				dhc.HostControl.Controls.Add(control);
				dhc.MdiWindowState = dockingWrapperForm2.WindowState;
				dhc.MdiChildBounds = dockingWrapperForm2.Bounds;
				if (control is Form form2)
				{
					form2.Menu = dockingWrapperForm2.Menu;
				}
				bAllowActivationEvents = bMdiFormClosing;
				dockingWrapperForm2.Hide();
				dockingWrapperForm2.MdiParent = null;
				if (bAllowActivationEvents)
				{
					bAllowActivationEvents = false;
				}
				dockingWrapperForm2.dockable.Click -= MDIFormDockableItem_Click;
				dockingWrapperForm2.hideItem.Click -= MDIFormHideItem_Click;
				dhc.bInMDIMode = false;
				dhc.ctrlReference = null;
				control.Size = dhc.HostControl.ClientRectangle.Size;
				control.Anchor = AnchorStyles.Top | AnchorStyles.Left;
				control.Dock = DockStyle.None;
				SetDHCDockVisibility(dhc, bVisible: true, bFireEvent: false);
				if (!dhc.Closing && control.TopLevelControl != null)
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.SetFocus(control.Handle);
				}
				if (dockingWrapperForm2.floating != null)
				{
					dockingWrapperForm2.floating.Click -= MDIFormFloatingItem_Click;
				}
				if (!dockingWrapperForm2.bInCloseProc)
				{
					dockingWrapperForm2.Close();
				}
				lastActivated = control;
				bAllowActivationEvents = true;
			}
			UpdateFloatingFormsImages();
		}
		dhc.DIPrevious = dhc.DITransient;
		bCancelVisibilityChangingEvent = flag2;
		bFreezeDockStateChangeEvents = flag;
		FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(ctrls));
	}

	public bool IsMDIMode(Control ctrl)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController == null)
		{
			throw new ArgumentException($"Control {ctrl.Name} is not enable for docking.");
		}
		return dockHostController.bInMDIMode;
	}

	public bool IsFloating(Control ctrl)
	{
		return GetDockHostController(ctrl)?.Floating ?? false;
	}

	public DockingStyle GetDockStyle(Control ctrl)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController == null)
		{
			throw new ArgumentException($"Control {ctrl.Name} is not enable for docking.");
		}
		return dockHostController.DICurrent.dStyle;
	}

	public Control[] GetTabbedSiblings(Control ctrl)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController == null)
		{
			throw new ArgumentException($"Control {ctrl.Name} is not enable for docking.");
		}
		if (!(dockHostController.ParentController is DockTabController dockTabController))
		{
			throw new ArgumentException("Control {0} is not tabbed", ctrl.Name);
		}
		ArrayList arrayList = new ArrayList();
		DockTabControl tabControl = dockTabController.TabControl;
		foreach (DockTabPage tabPage in tabControl.TabPages)
		{
			arrayList.Add(tabPage.dhcClient.HostControl.Controls[0]);
		}
		return arrayList.ToArray(typeof(Control)) as Control[];
	}

	public virtual bool IsSameTabbedGroup(Control ctrl1, Control ctrl2)
	{
		DockHostController dockHostController = GetDockHostController(ctrl1);
		if (dockHostController == null)
		{
			return false;
		}
		if (dockHostController.ParentController is DockTabController)
		{
			DockTabControl tabControl = (dockHostController.ParentController as DockTabController).TabControl;
			if (tabControl == null)
			{
				return false;
			}
			foreach (DockTabPage tabPage in tabControl.TabPages)
			{
				if (ctrl2 == tabPage.dhcClient.HostControl.Controls[0])
				{
					return true;
				}
			}
		}
		return false;
	}

	public int GetTabPosition(Control control)
	{
		if (control == null)
		{
			throw new ArgumentNullException("control");
		}
		DockHostController dockHostController = GetDockHostController(control);
		if (dockHostController == null)
		{
			throw new ArgumentException($"Control {control.Name} is not enable for docking.");
		}
		if (!(dockHostController.ParentController is DockTabController { TabControl: var tabControl }))
		{
			throw new ArgumentException("Control {0} is not tabbed", control.Name);
		}
		if (tabControl.TabPages.Count <= 0)
		{
			throw new ArgumentException("Control {0} is not tabbed", control.Name);
		}
		DockTabPage page = null;
		foreach (DockTabPage tabPage in tabControl.TabPages)
		{
			if (tabPage.dhcClient == dockHostController)
			{
				page = tabPage;
				break;
			}
		}
		return tabControl.TabPages.IndexOf(page);
	}

	public void SetTabPosition(Control control, int newPosition)
	{
		if (control == null)
		{
			throw new ArgumentNullException("control");
		}
		DockHostController dockHostController = GetDockHostController(control);
		if (dockHostController == null)
		{
			throw new ArgumentException($"Control {control.Name} is not enable for docking.");
		}
		if (!(dockHostController.ParentController is DockTabController { TabControl: var tabControl } dockTabController))
		{
			return;
		}
		if (newPosition < 0 || tabControl.TabPages.Count <= newPosition)
		{
			throw new ArgumentException("Position index is invalid");
		}
		DockTabPage page = null;
		foreach (DockTabPage tabPage in tabControl.TabPages)
		{
			if (tabPage.dhcClient == dockHostController)
			{
				page = tabPage;
				break;
			}
		}
		int num = tabControl.TabPages.IndexOf(page);
		int selectedIndex = tabControl.SelectedIndex;
		if (num != newPosition)
		{
			dockTabController.PauseActivation = true;
			DockTabPage value = tabControl.TabPages[num] as DockTabPage;
			if (num < newPosition)
			{
				for (int i = 0; i < tabControl.TabPages.Count; i++)
				{
					if (i >= num)
					{
						if (i == newPosition)
						{
							tabControl.TabPages[i] = value;
							break;
						}
						tabControl.TabPages[i] = tabControl.TabPages[i + 1];
					}
				}
			}
			else if (num > newPosition)
			{
				for (int num2 = tabControl.TabPages.Count - 1; num2 >= 0; num2--)
				{
					if (num2 <= num)
					{
						if (num2 == newPosition)
						{
							tabControl.TabPages[num2] = value;
							break;
						}
						tabControl.TabPages[num2] = tabControl.TabPages[num2 - 1];
					}
				}
			}
			tabControl.SelectedIndex = newPosition;
			dockTabController.PauseActivation = false;
		}
		if (selectedIndex != num)
		{
			dockTabController.SetHostCtrlForSelection();
		}
	}

	public bool IsTabbed(Control ctrl)
	{
		if (ctrl == null)
		{
			throw new ArgumentNullException("control");
		}
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController == null)
		{
			throw new ArgumentException($"Control {ctrl.Name} is not enable for docking.");
		}
		if (dockHostController.ParentController is DockTabController)
		{
			return true;
		}
		return false;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	public void ShowMenu(DockHostController dhc, Point pt)
	{
		ShowMenu(dhc, pt, singleTabOperate: false);
	}

	protected internal void ShowMenu(DockHostController dhc, Point pt, bool singleTabOperate)
	{
		Control control = null;
		m_singleTabOperate = singleTabOperate;
		if (dhc.bInMDIMode)
		{
			control = dhc.ctrlReference;
			if (control.Parent is DockingWrapperForm dockingWrapperForm)
			{
				dockingWrapperForm.InitializeMenu();
			}
			return;
		}
		control = dhc.HostControl.Controls[0];
		if (bEnableContextMenu)
		{
			PopupMenu popupMenu = new PopupMenu();
			popupMenu.ParentBarItem = new ParentBarItem();
			InitializeDefaultMenu(dhc, popupMenu);
			DockContextMenuEventArgs e = new DockContextMenuEventArgs(control, popupMenu);
			OnDockContextMenu(e);
			if (e.ContextMenu != null)
			{
				e.ContextMenu.Show(control, control.PointToClient(pt));
			}
		}
		else
		{
			OnDockContextMenu(new DockContextMenuEventArgs(control, null));
		}
	}

	public void ShowMenu(Control ctrl, Point pt)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (!ctrl.Visible)
		{
			throw new DockingManagerException("Can not show context menu for invisible control");
		}
		if (dockHostController == null)
		{
			throw new DockingManagerException($"Control {ctrl.Name} is not enable for docking.");
		}
		ShowMenu(dockHostController, pt);
	}

	public void AddToTargetManagersList(DockingManager dockingmgr)
	{
		if (dockingmgr != this && !alTargetManagers.Contains(dockingmgr))
		{
			alTargetManagers.Add(dockingmgr);
		}
	}

	public void RemoveFromTargetManagersList(DockingManager dockingmgr)
	{
		if (alTargetManagers.Contains(dockingmgr))
		{
			alTargetManagers.Remove(dockingmgr);
		}
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public void RemoveControllerFromDockingManager(DockHostController dhc)
	{
		if (dhc.InternalFloatWrapper != null && dhc.InternalFloatWrapper.DockingManager == this)
		{
			dhc.InternalFloatWrapper = null;
		}
		if (dhc.InternalDockWrapper != null && dhc.InternalDockWrapper.DockingManager == this)
		{
			dhc.InternalDockWrapper = null;
		}
		dhc.SharedForm = null;
		if (dhc.InternalForm != null)
		{
			HiddenFFControllers.Remove(dhc.InternalForm.InternalController);
			dhc.InternalForm.Owner = null;
		}
		OnTransferringFromManager(new TransferManagerEventArgs(dhc.HostControl.Controls[0]));
		if (alDockAreaControllers.Contains(dhc))
		{
			alDockAreaControllers.Remove(dhc);
		}
		Control control = dhc.HostControl.Controls[0];
		if (alEnableDocking.Contains(control))
		{
			alEnableDocking.Remove(control);
		}
		if (ControlScopeImages)
		{
			RemoveDockHostImageFromList(dhc);
		}
		if (dhc.Floating)
		{
			dhc.DockDCRList.Clear();
		}
		else
		{
			dhc.FloatDCRList.Clear();
		}
		if (dhc.DIPrevious.dController != null)
		{
			dhc.DIPrevious.dController.ControllerChanged -= dhc.dhc_ControllerChanged;
		}
		dhc.DIPrevious = DockInfo.NullInfo;
		dhc.DockingManager = null;
		if (!DesignMode && alEnableDocking.Count == 0 && DesignerHooks.GetMsgProcListContains(this, m_curentThreadId))
		{
			DesignerHooks.RemoveGetMsgProcListener(this, m_curentThreadId);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	public void AddControllerToDockingManager(DockHostController dhc)
	{
		dhc.DockingManager = this;
		Control control = dhc.HostControl.Controls[0];
		if (!alEnableDocking.Contains(control))
		{
			alEnableDocking.Add(control);
		}
		if (!alDockAreaControllers.Contains(dhc))
		{
			alDockAreaControllers.Add(dhc);
		}
		if (ControlScopeImages && dhc.ControlImage != null)
		{
			SetDockIcon(dhc.HostControl.Controls[0], dhc.ControlImage);
			SetMDIChildIcon(dhc.HostControl.Controls[0], dhc.ControlImage);
		}
		if (dhc.InternalForm != null)
		{
			FloatingFormController floatingFormController = dhc.InternalForm.InternalController as FloatingFormController;
			floatingFormController.DockingManager = this;
			HiddenFFControllers.Add(floatingFormController);
		}
		if (!DesignMode && alEnableDocking.Count > 0 && !DesignerHooks.GetMsgProcListContains(this))
		{
			m_curentThreadId = DesignerHooks.AddGetMsgProcListener(this);
		}
		OnTransferredToManager(new TransferManagerEventArgs(dhc.HostControl.Controls[0]));
	}

	public void SetIsMirrored(Control ctrl, bool bRTL)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null && dockHostController.IsMirrored != bRTL)
		{
			dockHostController.IsMirrored = bRTL;
		}
	}

	public void RecalcHostFormLayout()
	{
		dcHostForm.AdjustLayoutDockArea();
		dcHostForm.AdjustLayout();
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public void RestrictDockFillAutoHideBorder(DockingStyle style)
	{
		if (DockToFill)
		{
			dsDockFillAHBorder = style;
		}
	}

	public IEnumerator GetSerializedControls(AppStateSerializer serializer)
	{
		try
		{
			string strname = PersistenceID + PersistKey;
			if (serializer.DeserializeObject(strname) is DockingMgrSerializationWrapper dockingMgrSerializationWrapper)
			{
				return dockingMgrSerializationWrapper.htDHCWrapper.Keys.GetEnumerator();
			}
		}
		catch (Exception)
		{
		}
		return null;
	}

	public bool ContainsSerializationInfo(AppStateSerializer serializer, Control ctrl)
	{
		DHCSerializationWrapper dHCSerializationWrapper = null;
		try
		{
			string strname = PersistenceID + PersistKey;
			if (serializer.DeserializeObject(strname) is DockingMgrSerializationWrapper dockingMgrSerializationWrapper)
			{
				dHCSerializationWrapper = dockingMgrSerializationWrapper.GetDHCSerializationWrapper(ctrl.Name);
			}
			if (dHCSerializationWrapper == null)
			{
				strname = PersistenceID + PersistKey + ctrl.Name;
				dHCSerializationWrapper = serializer.DeserializeObject(strname) as DHCSerializationWrapper;
			}
		}
		catch (Exception)
		{
		}
		return dHCSerializationWrapper != null;
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[DocumentationExclude]
	public virtual void ApplyDeserializedState(DockingMgrSerializationWrapper dmgrserializer)
	{
		m_bForbidWrapperLogic = true;
		StopAutoHideAnimation();
		ControllerWrapper controllerWrapper = dmgrserializer.controllerWrapper;
		foreach (string key in dmgrserializer.htDHCWrapper.Keys)
		{
			bool flag = false;
			foreach (Control item in alEnableDocking)
			{
				if (item.Name == key)
				{
					flag = true;
					break;
				}
			}
			if (!flag)
			{
				OnInitializeControlOnLoad(new InitializeControlOnLoadEventArgs(key));
			}
		}
		dcHostForm.bOverlapSizing = false;
		Array array = alDockAreaControllers.ToArray(typeof(DockControllerBase));
		foreach (DockControllerBase item2 in array)
		{
			if (!(item2 is DockHostController))
			{
				continue;
			}
			DockHostController dockHostController = item2 as DockHostController;
			DHCSerializationWrapper dHCSerializationWrapper = dmgrserializer.GetDHCSerializationWrapper(dockHostController);
			if (dHCSerializationWrapper == null)
			{
				if (dockHostController.HostControl.Controls.Count > 0)
				{
					OnDockStateUnavailable(new DockStateUnavailableEventArgs(dockHostController.HostControl.Controls[0]));
				}
				if (dockHostController.bInMDIMode)
				{
					SetAsMdiChild(dockHostController, bsetmdi: false, Rectangle.Empty);
				}
				dockHostController.DockVisibility = false;
				continue;
			}
			if (dHCSerializationWrapper.uniqueName != null)
			{
				dockHostController.UniqueName = dHCSerializationWrapper.uniqueName;
			}
			dockHostController.DockEdge = dHCSerializationWrapper.dockEdge;
			if (dockHostController.bInMDIMode)
			{
				if (dockHostController.ctrlReference != null)
				{
					SetAsMDIChild(dockHostController.ctrlReference, bsetmdi: false);
				}
				else
				{
					dockHostController.bInMDIMode = false;
				}
			}
			if (!dockHostController.DockVisibility)
			{
				dockHostController.DockVisibility = true;
			}
			if (dockHostController.FloatOnly)
			{
				dockHostController.FloatOnly = false;
			}
			if (dockHostController.AutoHideMode)
			{
				dockHostController.ToggleAutoHideMode();
			}
			if (dockHostController.ParentController is DockTabController)
			{
				DockTabController dockTabController = dockHostController.ParentController as DockTabController;
				dockTabController.RemoveDockHostFromTab(dockHostController, btransittoprev: false);
			}
			dockHostController.FloatDCRList.Clear();
			dockHostController.DockDCRList.Clear();
			if (!DesignMode)
			{
				if (dockHostController.Floating)
				{
					dockHostController.HostControl.Parent.Visible = false;
				}
				else
				{
					dockHostController.HostControl.Visible = false;
				}
			}
		}
		bLoadVisibility = false;
		foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
		{
			if (alDockAreaController is DockHostController dockHostController2)
			{
				DHCSerializationWrapper dHCSerializationWrapper2 = dmgrserializer.GetDHCSerializationWrapper(dockHostController2);
				if (dHCSerializationWrapper2 != null)
				{
					dockHostController2.AutoHideIndex = dHCSerializationWrapper2.autoHideIndex;
				}
			}
		}
		ArrayList arrayList = new ArrayList();
		bool disallowFloating = DisallowFloating;
		DisallowFloating = false;
		foreach (DockControllerBase item3 in array)
		{
			if (!(item3 is DockHostController))
			{
				continue;
			}
			DockHostController dockHostController3 = item3 as DockHostController;
			DHCSerializationWrapper dHCSerializationWrapper3 = dmgrserializer.GetDHCSerializationWrapper(dockHostController3);
			if (dHCSerializationWrapper3 == null)
			{
				continue;
			}
			dockHostController3.DockLabel = dHCSerializationWrapper3.strLabel;
			if (((!dockHostController3.Floating && dHCSerializationWrapper3.dockInfoCurrent.DP != DockPreference.All) || (dockHostController3.Floating && dHCSerializationWrapper3.dockInfoCurrent.DP == DockPreference.All)) && !dHCSerializationWrapper3.bInMDIMode)
			{
				dockHostController3.InvokePrevDockFloatTransition(dockHostController3.Floating);
			}
			dockHostController3.DockDCRList = dHCSerializationWrapper3.alDockDCR;
			dockHostController3.FloatDCRList = dHCSerializationWrapper3.alFloatDCR;
			dockHostController3.InternalFloatWrapper = null;
			dockHostController3.InternalDockWrapper = null;
			dockHostController3.SharedForm = null;
			if (dHCSerializationWrapper3.dockInfoCurrent.DP != DockPreference.All)
			{
				dHCSerializationWrapper3.dockInfoCurrent.dController = dcHostForm;
			}
			else
			{
				(dockHostController3.HostControl as DockHost).DragRectangle = dHCSerializationWrapper3.dockInfoCurrent.rcDockArea;
			}
			if (dHCSerializationWrapper3.dockInfoPrevious.DP != DockPreference.All)
			{
				dHCSerializationWrapper3.dockInfoPrevious.dController = dcHostForm;
			}
			dockHostController3.DIPrevious = new DockInfo(dHCSerializationWrapper3.dockInfoCurrent);
			if (!dHCSerializationWrapper3.bAutoHideMode)
			{
				if (!dHCSerializationWrapper3.bInMDIMode)
				{
					dockHostController3.InvokePrevDockFloatTransition(showFloating: true);
				}
				dockHostController3.DIPrevious = new DockInfo(dHCSerializationWrapper3.dockInfoPrevious);
				dockHostController3.DockVisibility = dHCSerializationWrapper3.bDockVisibility;
			}
			if (dHCSerializationWrapper3.bAutoHideMode)
			{
				int index = arrayList.Count;
				if (dockHostController3.AutoHideIndex != -1)
				{
					foreach (DockHostController item4 in arrayList)
					{
						if (item4.AutoHideIndex >= dockHostController3.AutoHideIndex || item4.AutoHideIndex == -1)
						{
							index = arrayList.IndexOf(item4);
							break;
						}
					}
				}
				arrayList.Insert(index, dockHostController3);
			}
			dockHostController3.FloatOnly = dHCSerializationWrapper3.bFloatOnly;
			dockHostController3.MdiChildState = dHCSerializationWrapper3.bInMDIMode;
		}
		DisallowFloating = disallowFloating;
		bLoadVisibility = true;
		foreach (DockControllerBase item5 in array)
		{
			if (!(item5 is DockHostController))
			{
				continue;
			}
			DockHostController dockHostController5 = item5 as DockHostController;
			DHCSerializationWrapper dHCSerializationWrapper4 = dmgrserializer.GetDHCSerializationWrapper(dockHostController5);
			if (dHCSerializationWrapper4 == null)
			{
				continue;
			}
			if (dHCSerializationWrapper4.bSelectedPage && dockHostController5.ParentController is DockTabController dockTabController2)
			{
				dockTabController2.SelectedController = dockHostController5;
			}
			if (!dockHostController5.Floating)
			{
				dockHostController5.DIPrevious.rcDockArea = Rectangle.Empty;
				(dockHostController5.HostControl as DockHost).DragRectangle = Rectangle.Empty;
			}
			if (!dockHostController5.DockVisibility || arrayList.Contains(dockHostController5) || (dockHostController5.ParentController is DockTabController && dockHostController5.DockTab == null))
			{
				continue;
			}
			if (dockHostController5.Floating)
			{
				if (!DesignProcess)
				{
					if (HostControl.IsHandleCreated && Syncfusion.Runtime.InteropServices.NativeMethods.IsWindowVisible(HostControl.Handle))
					{
						dockHostController5.HostControl.Parent.Visible = true;
					}
				}
				else if (DesignMode || HostControl is Form)
				{
					dockHostController5.HostControl.Parent.Visible = true;
				}
			}
			dockHostController5.HostControl.Visible = true;
			if (dockHostController5.ParentController is FloatingFormController && lockUpdates > 0)
			{
				dockHostController5.ParentController.HostControl.Visible = true;
			}
		}
		foreach (DockControllerBase item6 in array)
		{
			if (!(item6 is DockHostController))
			{
				continue;
			}
			DockHostController dockHostController6 = item6 as DockHostController;
			if (dockHostController6.MdiChildState && dockHostController6.DockVisibility && !dockHostController6.FloatOnly)
			{
				DHCSerializationWrapper dHCSerializationWrapper5 = dmgrserializer.GetDHCSerializationWrapper(dockHostController6);
				Rectangle layout = new Rectangle(dHCSerializationWrapper5.ctrlLocation, dHCSerializationWrapper5.ctrlSize);
				if (dockHostController6.HostControl.Controls.Count > 0)
				{
					SetAsMDIChild(dockHostController6.HostControl.Controls[0], bsetmdi: true, layout);
				}
			}
		}
		if (controllerWrapper != null)
		{
			MainFormController mainFormController = (MainFormController)alDockAreaControllers[0];
			mainFormController.StoreControllers(controllers);
			mainFormController.ApplyWrapper(controllerWrapper);
			mainFormController.ResizeControllers(controllerWrapper);
			mainFormController.AdjustLayout();
		}
		else
		{
			foreach (DockControllerBase item7 in array)
			{
				if (!(item7 is DockHostController))
				{
					continue;
				}
				DockHostController dockHostController7 = item7 as DockHostController;
				if (!dockHostController7.bInMDIMode)
				{
					DHCSerializationWrapper dHCSerializationWrapper6 = dmgrserializer.GetDHCSerializationWrapper(dockHostController7);
					if (dHCSerializationWrapper6 != null && dHCSerializationWrapper6.ctrlSize != Size.Empty)
					{
						DockControllerBase dockControllerBase7 = ((!(dockHostController7.ParentController is DockTabController)) ? dockHostController7.ParentController : dockHostController7.ParentController.ParentController);
						Size newsize = Size.Empty;
						newsize = ((!(dHCSerializationWrapper6.layoutSize == Size.Empty)) ? new Size((int)((float)dHCSerializationWrapper6.ctrlSize.Width / (float)dHCSerializationWrapper6.layoutSize.Width * (float)dockControllerBase7.LayoutRect.Width), (int)((float)dHCSerializationWrapper6.ctrlSize.Height / (float)dHCSerializationWrapper6.layoutSize.Height * (float)dockControllerBase7.LayoutRect.Height)) : dHCSerializationWrapper6.ctrlSize);
						SetControlSize(dockHostController7.HostControl.Controls[0], newsize);
					}
				}
			}
		}
		foreach (DockHostController item8 in arrayList)
		{
			DHCSerializationWrapper dHCSerializationWrapper7 = dmgrserializer.GetDHCSerializationWrapper(item8);
			item8.InvokePrevDockFloatTransition(showFloating: true);
			item8.DIPrevious = new DockInfo(dHCSerializationWrapper7.dockInfoPrevious);
			item8.DockVisibility = dHCSerializationWrapper7.bDockVisibility;
			item8.DIPrevious.rcDockArea = Rectangle.Empty;
			(item8.HostControl as DockHost).DragRectangle = Rectangle.Empty;
			item8.DIPrevious = dHCSerializationWrapper7.dockInfoCurrent;
		}
		foreach (DockHostController item9 in arrayList)
		{
			if (!item9.AutoHideMode)
			{
				item9.ToggleAutoHideMode();
				if (item9.ParentController is DockTabController)
				{
					DockTabController dockTabController3 = item9.ParentController as DockTabController;
					dcHostForm.GetAHTabControl(dockTabController3.DINew.dStyle).HideController(item9, banimate: false);
				}
				else
				{
					dcHostForm.GetAHTabControl(item9.DINew.dStyle).HideController(item9, banimate: false);
				}
			}
		}
		arrayList.Clear();
		dcHostForm.bOverlapSizing = true;
		ResizeSplitters(splitterWidth);
		m_bForbidWrapperLogic = false;
	}

	internal void SaveMdiZOrder()
	{
		if (HostFormMdiManager != null)
		{
			TabbedMDIManager hostFormMdiManager = HostFormMdiManager;
			if (hostFormMdiManager.TabGroupHosts.Length <= 0)
			{
				return;
			}
			MDITabPanel mDITabPanel = hostFormMdiManager.TabGroupHosts[0].MDITabPanel;
			if (mDITabPanel == null || mDITabPanel.TabPages.Count == 0)
			{
				return;
			}
			m_mdiZOrder.Clear();
			{
				foreach (TabPageAdv tabPage in mDITabPanel.TabPages)
				{
					if (tabPage.TabData is MDIChildTabData { MdiChild: not null } mDIChildTabData && mDIChildTabData.MdiChild is DockingWrapperForm && mDIChildTabData.MdiChild.Controls.Count != 0)
					{
						Control ctrl = mDIChildTabData.MdiChild.Controls[0];
						DockHostController dockHostController = GetDockHostController(ctrl);
						if (dockHostController != null)
						{
							m_mdiZOrder.Add(dockHostController.UniqueName);
						}
					}
				}
				return;
			}
		}
		Control control = null;
		foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
		{
			if (alDockAreaController is DockHostController { bInMDIMode: not false } dockHostController2)
			{
				control = dockHostController2.ctrlReference;
				break;
			}
		}
		if (control == null || !(control.Parent.Parent is MdiClient mdiClient) || m_mdiZOrder.Count != 0)
		{
			return;
		}
		foreach (Control control2 in mdiClient.Controls)
		{
			DockHostController dockHostController3 = null;
			if (control2.Controls.Count > 0)
			{
				dockHostController3 = GetDockHostController(control2.Controls[0]);
			}
			if (dockHostController3 != null)
			{
				m_mdiZOrder.Add(dockHostController3.UniqueName);
			}
		}
		m_mdiZOrder.Reverse();
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public virtual void ApplyDeserializedState(DockingMgrSerializationWrapperAdv dmgrserializer)
	{
		SuspendLayout();
		LockHostFormUpdate();
		bLoadVisibility = false;
		bool flag = false;
		StopAutoHideAnimation();
		ControllerWrapper controllerWrapper = dmgrserializer.controllerWrapper;
		ArrayList floatingControllerWrappers = dmgrserializer.FloatingControllerWrappers;
		ArrayList autohideOnLoad = dmgrserializer.AutohideOnLoad;
		foreach (string key in dmgrserializer.htDHCWrapper.Keys)
		{
			bool flag2 = false;
			foreach (Control item in alEnableDocking)
			{
				if (item.Name == key)
				{
					flag2 = true;
					break;
				}
			}
			if (flag2)
			{
				continue;
			}
			if (importDockingControl)
			{
				try
				{
					if (DockingManagersList.Count > 1)
					{
						foreach (DockingManager dockingManagers in DockingManagersList)
						{
							bool flag3 = false;
							foreach (Control item2 in dockingManagers.alEnableDocking)
							{
								if (item2.Name == key)
								{
									DockHostController dockHostController = dockingManagers.GetDockHostController(item2);
									ImportControl(dockHostController);
									flag3 = true;
									break;
								}
							}
							if (flag3)
							{
								break;
							}
						}
					}
				}
				catch
				{
				}
			}
			OnInitializeControlOnLoad(new InitializeControlOnLoadEventArgs(key));
			flag = true;
		}
		dcHostForm.bOverlapSizing = false;
		Array array = alDockAreaControllers.ToArray(typeof(DockControllerBase));
		foreach (DockControllerBase item3 in array)
		{
			if (!(item3 is DockHostController))
			{
				continue;
			}
			DockHostController dockHostController2 = item3 as DockHostController;
			DHCSerializationWrapper dHCSerializationWrapper = dmgrserializer.GetDHCSerializationWrapper(dockHostController2);
			if (dHCSerializationWrapper == null)
			{
				if (dockHostController2.PreviousDockingMgr != null && dockHostController2.PreviousDockingMgr != this)
				{
					try
					{
						dockHostController2.PreviousDockingMgr.ImportControl(dockHostController2);
					}
					catch
					{
					}
				}
				if (dockHostController2.HostControl.Controls.Count > 0)
				{
					OnDockStateUnavailable(new DockStateUnavailableEventArgs(dockHostController2.HostControl.Controls[0]));
				}
				if (dockHostController2.bInMDIMode)
				{
					SetAsMdiChild(dockHostController2, bsetmdi: false, Rectangle.Empty);
				}
				dockHostController2.DockVisibility = false;
				continue;
			}
			dockHostController2.DockLabel = dHCSerializationWrapper.strLabel;
			if (!dockHostController2.DockVisibility)
			{
				dockHostController2.DockVisibility = true;
			}
			if (dockHostController2.bInMDIMode)
			{
				if (dockHostController2.ctrlReference != null)
				{
					SetAsMDIChild(dockHostController2.ctrlReference, bsetmdi: false);
				}
				else
				{
					dockHostController2.bInMDIMode = false;
				}
			}
			if (dockHostController2.FloatOnly)
			{
				dockHostController2.FloatOnly = false;
			}
			if (dockHostController2.FreezeResize)
			{
				dockHostController2.FreezeResize = false;
			}
			if (!dockHostController2.AllowFloating)
			{
				dockHostController2.AllowFloating = true;
			}
			if (dockHostController2.Floating)
			{
				if (dockHostController2.ParentController is DockTabController)
				{
					(dockHostController2.ParentController as DockTabController).RemoveDockHostFromTab(dockHostController2, btransittoprev: true);
				}
				else
				{
					dockHostController2.InvokePrevDockFloatTransition(showFloating: false);
				}
				dockHostController2.SharedForm = null;
			}
			if (dockHostController2.AutoHideMode)
			{
				dockHostController2.ToggleAutoHideMode();
				dockHostController2.LayoutRect = new Rectangle(dockHostController2.LayoutRect.Location, dHCSerializationWrapper.layoutSize);
			}
			dockHostController2.DockEdge = dHCSerializationWrapper.dockEdge;
			if (dockHostController2.Maximized)
			{
				dockHostController2.RestoreController();
			}
			if (dockHostController2.ParentController is DockTabController)
			{
				DockTabController dockTabController = dockHostController2.ParentController as DockTabController;
				dockTabController.RemoveDockHostFromTab(dockHostController2, btransittoprev: false);
			}
			dockHostController2.MdiChildState = false;
			dockHostController2.FloatDCRList.Clear();
			dockHostController2.DockDCRList.Clear();
			if (!DesignMode)
			{
				if (dockHostController2.Floating)
				{
					dockHostController2.HostControl.Parent.Visible = false;
				}
				else
				{
					dockHostController2.HostControl.Visible = false;
				}
			}
			if (dHCSerializationWrapper.uniqueName != null)
			{
				dockHostController2.UniqueName = dHCSerializationWrapper.uniqueName;
			}
		}
		foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
		{
			if (alDockAreaController is DockHostController dockHostController3)
			{
				DHCSerializationWrapper dHCSerializationWrapper2 = dmgrserializer.GetDHCSerializationWrapper(dockHostController3);
				if (dHCSerializationWrapper2 != null)
				{
					dockHostController3.AutoHideIndex = dHCSerializationWrapper2.autoHideIndex;
				}
			}
		}
		ArrayList arrayList = new ArrayList();
		alautohide = new ArrayList();
		foreach (DockControllerBase item4 in array)
		{
			if (!(item4 is DockHostController))
			{
				continue;
			}
			DockHostController dockHostController4 = item4 as DockHostController;
			DHCSerializationWrapper dHCSerializationWrapper3 = dmgrserializer.GetDHCSerializationWrapper(dockHostController4);
			if (dHCSerializationWrapper3 == null)
			{
				continue;
			}
			if (dHCSerializationWrapper3.bAutoHideMode)
			{
				int index = arrayList.Count;
				if (dockHostController4.AutoHideIndex != -1)
				{
					foreach (DockHostController item5 in arrayList)
					{
						if (item5.AutoHideIndex >= dockHostController4.AutoHideIndex || item5.AutoHideIndex == -1)
						{
							index = arrayList.IndexOf(item5);
							break;
						}
					}
				}
				arrayList.Insert(index, dockHostController4);
			}
			if (dHCSerializationWrapper3.dockAbility >= 0)
			{
				SetDockAbility(dockHostController4.HostControl.Controls[0], dHCSerializationWrapper3.dockAbility);
			}
			if (dHCSerializationWrapper3.outerDockAbility >= 0)
			{
				SetOuterDockAbility(dockHostController4.HostControl.Controls[0], dHCSerializationWrapper3.outerDockAbility);
			}
			if (!flag && dHCSerializationWrapper3.imageIndex != -2)
			{
				dockHostController4.ImageIndex = dHCSerializationWrapper3.imageIndex;
			}
			dockHostController4.SharedForm = null;
		}
		ArrayList arrayList2 = new ArrayList();
		DockHostController dockHostController6 = null;
		foreach (DockControllerBase item6 in array)
		{
			if (!(item6 is DockHostController))
			{
				continue;
			}
			DockHostController dockHostController7 = item6 as DockHostController;
			DHCSerializationWrapper dHCSerializationWrapper4 = dmgrserializer.GetDHCSerializationWrapper(dockHostController7);
			if (dHCSerializationWrapper4 == null || !dHCSerializationWrapper4.bInMDIMode || dockHostController7.FloatOnly)
			{
				continue;
			}
			if (dHCSerializationWrapper4.bDockVisibility)
			{
				if (HostFormMdiManager != null && dmgrserializer.MdiZOrder != null && dmgrserializer.MdiZOrder.Contains(dockHostController7.UniqueName))
				{
					arrayList2.Add(dockHostController7);
					if (dHCSerializationWrapper4.bSelectedPage)
					{
						dockHostController6 = dockHostController7;
					}
					continue;
				}
				Rectangle layout = new Rectangle(dHCSerializationWrapper4.ctrlLocation, dHCSerializationWrapper4.ctrlSize);
				if (dockHostController7.HostControl.Controls.Count > 0)
				{
					dockHostController7.MdiWindowState = dHCSerializationWrapper4.windowState;
					SetAsMDIChild(dockHostController7.HostControl.Controls[0], bsetmdi: true, layout);
				}
			}
			else
			{
				if (dockHostController7.HostControl.Controls.Count > 0)
				{
					dockHostController7.MdiWindowState = dHCSerializationWrapper4.windowState;
					dockHostController7.MdiChildBounds = new Rectangle(dHCSerializationWrapper4.ctrlLocation, dHCSerializationWrapper4.ctrlSize);
				}
				dockHostController7.MdiChildState = dHCSerializationWrapper4.bInMDIMode;
			}
		}
		RestoreMdiZOrder(dmgrserializer.MdiZOrder);
		if (arrayList2.Count > 0)
		{
			foreach (string item7 in dmgrserializer.MdiZOrder)
			{
				foreach (DockHostController item8 in arrayList2)
				{
					if (item8 != null && item8.UniqueName == item7)
					{
						SetAsMDIChild(item8.HostControl.Controls[0], bsetmdi: true);
						break;
					}
				}
			}
			if (dockHostController6 != null)
			{
				TabbedMDIManager hostFormMdiManager = HostFormMdiManager;
				if (hostFormMdiManager.TabGroupHosts.Length > 0)
				{
					MDITabPanel mDITabPanel = hostFormMdiManager.TabGroupHosts[0].MDITabPanel;
					if (mDITabPanel != null && mDITabPanel.TabPages.Count != 0)
					{
						m_mdiZOrder.Clear();
						foreach (TabPageAdv tabPage in mDITabPanel.TabPages)
						{
							if (tabPage.TabData is MDIChildTabData { MdiChild: not null } mDIChildTabData && mDIChildTabData.MdiChild is DockingWrapperForm && mDIChildTabData.MdiChild.Controls.Count != 0)
							{
								Control ctrl = mDIChildTabData.MdiChild.Controls[0];
								DockHostController dockHostController9 = GetDockHostController(ctrl);
								if (dockHostController9 == dockHostController6)
								{
									mDITabPanel.SelectedTab = tabPage;
								}
							}
						}
					}
				}
			}
		}
		foreach (FloatingFormController hiddenFFController in HiddenFFControllers)
		{
			if (hiddenFFController.HostControl is FloatingForm { FormOwner: not null } floatingForm)
			{
				floatingForm.FormOwner.InternalForm = null;
			}
			hiddenFFController.Dispose();
		}
		HiddenFFControllers.Clear();
		ArrayList arrayList3 = new ArrayList();
		foreach (FloatingFormControllerWrapper item9 in floatingControllerWrappers)
		{
			if (item9 != null)
			{
				DockHostController dockHostController10 = LocateDockController(item9);
				if (dockHostController10 != null)
				{
					bLoadVisibility = true;
					dockHostController10.InternalForm = null;
					dockHostController10.SharedForm = null;
					DockControllerBase parentController = dockHostController10.ParentController;
					parentController.RemoveChild(dockHostController10);
					dockHostController10.DINew.rcDockArea.Height = 0;
					dockHostController10.InternalFloatWrapper = null;
					FloatingForm floatingForm2 = dockHostController10.CreateFloatingFrame(item9.LayoutRect.Location, show: false);
					floatingForm2.Size = item9.LayoutRect.Size;
					parentController.Refresh();
					ReArrangeControls(floatingForm2.InternalController, item9.Children);
					floatingForm2.Enable(show: false);
					floatingForm2.Used = true;
					(floatingForm2.InternalController as FloatingFormController).RefreshFormCaption();
					floatingForm2.InternalController.AdjustLayout();
				}
				else
				{
					bLoadVisibility = false;
					FloatingForm floatingForm3 = new FloatingForm(this);
					floatingForm3.Bounds = item9.LayoutRect;
					floatingForm3.Disable();
					ReArrangeControls(floatingForm3.InternalController, item9.Children);
					floatingForm3.Used = false;
				}
			}
		}
		alautohide.AddRange(arrayList);
		foreach (DockControllerBase childController in dcHostForm.ChildControllers)
		{
			arrayList3.Add(childController);
		}
		bLoadVisibility = true;
		ReArrangeControls(dcHostForm, controllerWrapper.Children);
		foreach (DockControllerBase item10 in arrayList3)
		{
			item10.RemoveDockController();
		}
		foreach (DockHostController item11 in alautohide)
		{
			DHCSerializationWrapper dHCSerializationWrapper5 = dmgrserializer.GetDHCSerializationWrapper(item11);
			if (item11.AutoHideMode)
			{
				continue;
			}
			if (item11.ParentController is DockTabController)
			{
				DockTabController dockTabController2 = item11.ParentController as DockTabController;
				dockTabController2.LayoutRect = new Rectangle(dockTabController2.LayoutRect.Location, dHCSerializationWrapper5.layoutSize);
				bool flag4 = true;
				foreach (DockTabPage tabPage2 in dockTabController2.TabControl.TabPages)
				{
					DHCSerializationWrapper dHCSerializationWrapper6 = dmgrserializer.GetDHCSerializationWrapper(tabPage2.dhcClient);
					if (dHCSerializationWrapper6 != null && dHCSerializationWrapper6.bSelectedPage)
					{
						dockTabController2.SelectedController = tabPage2.dhcClient;
					}
					if (dHCSerializationWrapper6 != null && !dHCSerializationWrapper6.bAutoHideMode)
					{
						flag4 = false;
					}
				}
				if (flag4)
				{
					dockTabController2.HostController.ToggleAutoHideMode();
					arrayList3.Remove(dockTabController2.ParentController);
					dcHostForm.GetAHTabControl(dockTabController2.DINew.dStyle).HideController(item11, banimate: false);
					dockTabController2.DITransient.rcDockArea.Size = dHCSerializationWrapper5.layoutSize;
					dockTabController2.DINew.rcDockArea.Size = dHCSerializationWrapper5.layoutSize;
					foreach (DockTabPage tabPage3 in dockTabController2.TabControl.TabPages)
					{
						tabPage3.dhcClient.DITransient.rcDockArea.Size = dHCSerializationWrapper5.layoutSize;
						tabPage3.dhcClient.DINew.rcDockArea.Size = dHCSerializationWrapper5.layoutSize;
					}
				}
				else
				{
					ToggleAHState(item11, ahState: true, singleTab: true, animate: false);
				}
			}
			else if (item11.ParentController != null)
			{
				arrayList3.Remove(item11.ParentController);
				item11.LayoutRect = new Rectangle(item11.LayoutRect.Location, dHCSerializationWrapper5.layoutSize);
				item11.ToggleAutoHideMode();
				dcHostForm.GetAHTabControl(item11.DINew.dStyle).HideController(item11, banimate: false);
			}
			item11.DITransient.rcDockArea.Size = dHCSerializationWrapper5.layoutSize;
			item11.DINew.rcDockArea.Size = dHCSerializationWrapper5.layoutSize;
		}
		foreach (DockControllerBase item12 in array)
		{
			if (!(item12 is DockHostController dockHostController12))
			{
				continue;
			}
			DHCSerializationWrapper dHCSerializationWrapper7 = dmgrserializer.GetDHCSerializationWrapper(dockHostController12);
			if (!alautohide.Contains(dockHostController12) && dHCSerializationWrapper7 != null)
			{
				dockHostController12.LayoutRect = new Rectangle(dockHostController12.LayoutRect.Location, dHCSerializationWrapper7.layoutSize);
				if (dHCSerializationWrapper7.transientRect.Width > 0 && dHCSerializationWrapper7.transientRect.Height > 0)
				{
					dockHostController12.DITransient.rcDockArea = dHCSerializationWrapper7.transientRect;
				}
				else
				{
					dockHostController12.DITransient.rcDockArea = dockHostController12.LayoutRect;
				}
			}
			if (dHCSerializationWrapper7 == null)
			{
				continue;
			}
			bool bInAutoHide = dockHostController12.bInAutoHide;
			if (!dockHostController12.bInMDIMode)
			{
				dockHostController12.DockVisibility = dHCSerializationWrapper7.bDockVisibility;
				if (!dockHostController12.DockVisibility)
				{
					(dockHostController12.HostControl as DockHost).DragRectangle = dockHostController12.DINew.rcDockArea;
				}
			}
			if (dHCSerializationWrapper7.previousFloat)
			{
				dockHostController12.PrevWrapper = dockHostController12.InternalFloatWrapper;
				if (dockHostController12.PrevWrapper != null && dockHostController12.PrevWrapper.ToplevelController.HostControl != null)
				{
					dockHostController12.SharedForm = dockHostController12.PrevWrapper.ToplevelController.HostControl as FloatingForm;
					dockHostController12.SharedForm.FormOwner = dockHostController12;
				}
			}
			dockHostController12.Maximized = dHCSerializationWrapper7.maximized;
			dockHostController12.PrevAutohideStyle = dHCSerializationWrapper7.prevAHStyle;
			dockHostController12.AllowFloating = dHCSerializationWrapper7.bAllowFloating;
			dockHostController12.StoredDockSizes = dHCSerializationWrapper7.m_storedDockSizes;
			dockHostController12.StoredFloatSizes = dHCSerializationWrapper7.m_storedFloatSizes;
			if (dHCSerializationWrapper7.tabSiblings.Count > 0 && !bInAutoHide)
			{
				if (!dockHostController12.DockVisibility || dockHostController12.bInMDIMode)
				{
					DockStateControllerWrapper dockStateControllerWrapper = new DockStateControllerWrapper(this, dockHostController12);
					foreach (string tabSibling in dHCSerializationWrapper7.tabSiblings)
					{
						if (dcHostForm.QueryController(tabSibling) is DockHostController dockHostController13)
						{
							dockStateControllerWrapper.DockRelationControllers.Add(dockHostController13);
							if (dockHostController13.ParentController != null)
							{
								dockStateControllerWrapper.ParentController = dockHostController13.ParentController;
							}
						}
					}
					if (dockStateControllerWrapper.ParentController != null)
					{
						DockRelation dockRelation = new DockRelation();
						dockRelation.Relation = dHCSerializationWrapper7.dockInfoPrevious;
						dockStateControllerWrapper.Relations[dockHostController12.UniqueName] = dockRelation;
						if (dHCSerializationWrapper7.previousFloat)
						{
							dockHostController12.InternalFloatWrapper = dockStateControllerWrapper;
						}
						else
						{
							dockHostController12.InternalDockWrapper = dockStateControllerWrapper;
						}
					}
				}
				else if (dHCSerializationWrapper7.bAutoHideMode && dockHostController12.ParentController == null)
				{
					foreach (string tabSibling2 in dHCSerializationWrapper7.tabSiblings)
					{
						if (dcHostForm.QueryController(tabSibling2) is DockHostController { DockVisibility: not false, Floating: false } dockHostController14)
						{
							DCRelationship dCRelationship = new DCRelationship(0, child: false, DockPreference.Tabbed, dHCSerializationWrapper7.tabSiblings.IndexOf(dockHostController12.UniqueName));
							dockHostController12.DINew.nDockIndex = dCRelationship.nIndex;
							dockHostController14.InvokeTabbedDocking(dockHostController12, dCRelationship);
							ToggleAHState(dockHostController12, ahState: true, singleTab: true, animate: false);
							break;
						}
					}
				}
			}
			if (dHCSerializationWrapper7.bSelectedPage && dockHostController12.ParentController is DockTabController dockTabController3)
			{
				dockTabController3.SelectedController = dockHostController12;
			}
			if (dHCSerializationWrapper7.alDockDCR.Count > 0)
			{
				dockHostController12.DCRCurrent = dHCSerializationWrapper7.alDockDCR[0] as DCRelationship;
			}
			dockHostController12.AutoHiddedBeforeHide = dHCSerializationWrapper7.bAutoHideMode;
			dockHostController12.FreezeResize = dHCSerializationWrapper7.bFreezeResize;
			dockHostController12.FloatOnly = dHCSerializationWrapper7.bFloatOnly;
		}
		alautohide.Clear();
		dcHostForm.bOverlapSizing = true;
		dcHostForm.AdjustLayout();
		foreach (FloatingFormController alFFController in alFFControllers)
		{
			FloatingForm floatingForm4 = null;
			bool flag5 = false;
			if (alFFController.HostControl.Controls.Count > 0 && alFFController.HostControl.Controls[0].Controls.Count > 0)
			{
				flag5 = GetHiddenOnLoad(alFFController.HostControl.Controls[0].Controls[0]);
			}
			if (m_isInitializing && flag5)
			{
				if (alFFController.HostControl is FloatingForm)
				{
					floatingForm4 = alFFController.HostControl as FloatingForm;
					floatingForm4.UpdateFormBorderStyle();
				}
			}
			else
			{
				alFFController.HostControl.Visible = true;
			}
			alFFController.AdjustLayout();
		}
		foreach (Control freezeResizeCtrl in m_freezeResizeCtrls)
		{
			DockHostController dockHostController15 = GetDockHostController(freezeResizeCtrl);
			if (dockHostController15 != null)
			{
				dockHostController15.FreezeResize = true;
			}
		}
		if (autohideOnLoad != null && autohideOnLoad.Count > 0)
		{
			listAHOnLoad.Clear();
			foreach (string item13 in autohideOnLoad)
			{
				if (dcHostForm.QueryController(item13) is DockHostController dockHostController16)
				{
					listAHOnLoad.Add(dockHostController16.HostControl.Controls[0]);
				}
			}
		}
		ResumeLayout();
		UnlockHostFormUpdate();
	}

	public bool LoadDockState()
	{
		return LoadDockState(AppStateSerializer.GetSingleton());
	}

	[Obsolete("This method will be removed in a future version. Please use the more flexible LoadDockState(AppStateSerializer) variant, instead.", false)]
	public virtual bool LoadDockState(SerializeMode mode, object persistpath)
	{
		bool flag = bApplyMinMaxExtents;
		bApplyMinMaxExtents = false;
		bool flag2 = false;
		m_bLoadingDockState = true;
		try
		{
			OnNewDockStateBeginLoad(EventArgs.Empty);
			string empty = string.Empty;
			empty = (DesignProcess ? "DockStateInfo" : (PersistenceID + PersistKey));
			DockingMgrSerializationWrapper dockingMgrSerializationWrapper = null;
			if (mode == SerializeMode.IsolatedStorage && persistpath == null)
			{
				AppStateSerializer singleton = AppStateSerializer.GetSingleton();
				dockingMgrSerializationWrapper = singleton.DeserializeObject(empty) as DockingMgrSerializationWrapper;
			}
			else
			{
				dockingMgrSerializationWrapper = AppStateSerializer.DeserializeIsolatedObject(mode, persistpath, empty) as DockingMgrSerializationWrapper;
			}
			if (dockingMgrSerializationWrapper != null)
			{
				if (dockingMgrSerializationWrapper is DockingMgrSerializationWrapperAdv dmgrserializer)
				{
					ApplyDeserializedState(dmgrserializer);
				}
				else
				{
					ApplyDeserializedState(dockingMgrSerializationWrapper);
				}
				flag2 = true;
			}
		}
		catch (Exception)
		{
		}
		finally
		{
			bApplyMinMaxExtents = flag;
			m_bLoadingDockState = false;
		}
		DockStateLoadEventArgs arg = new DockStateLoadEventArgs(flag2);
		OnNewDockStateEndLoad(arg);
		return flag2;
	}

	public virtual bool LoadDockState(AppStateSerializer serializer)
	{
		if (serializer == null)
		{
			return false;
		}
		bool flag = bApplyMinMaxExtents;
		bApplyMinMaxExtents = false;
		bool flag2 = false;
		m_bLoadingDockState = true;
		try
		{
			OnNewDockStateBeginLoad(EventArgs.Empty);
			string empty = string.Empty;
			empty = (DesignProcess ? "DockStateInfo" : (PersistenceID + PersistKey));
			if (serializer.DeserializeObject(empty) is DockingMgrSerializationWrapper dockingMgrSerializationWrapper)
			{
				if (dockingMgrSerializationWrapper is DockingMgrSerializationWrapperAdv)
				{
					ApplyDeserializedState(dockingMgrSerializationWrapper as DockingMgrSerializationWrapperAdv);
				}
				else
				{
					ApplyDeserializedState(dockingMgrSerializationWrapper);
				}
				flag2 = true;
			}
		}
		catch (Exception)
		{
		}
		finally
		{
			bApplyMinMaxExtents = flag;
			m_bLoadingDockState = false;
		}
		DockStateLoadEventArgs arg = new DockStateLoadEventArgs(flag2);
		OnNewDockStateEndLoad(arg);
		return flag2;
	}

	public bool LoadDockState(AppStateSerializer serializer, Control ctrl)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController == null)
		{
			return false;
		}
		bool flag = bApplyMinMaxExtents;
		bApplyMinMaxExtents = false;
		bool result = false;
		m_bLoadingDockState = true;
		try
		{
			DHCSerializationWrapper dHCSerializationWrapper = null;
			string strname = PersistenceID + PersistKey;
			DockingMgrSerializationWrapperAdv dockingMgrSerializationWrapperAdv = serializer.DeserializeObject(strname) as DockingMgrSerializationWrapperAdv;
			if (dockingMgrSerializationWrapperAdv != null)
			{
				dHCSerializationWrapper = dockingMgrSerializationWrapperAdv.GetDHCSerializationWrapper(dockHostController);
			}
			if (dHCSerializationWrapper == null)
			{
				strname = PersistenceID + PersistKey + ctrl.Name;
				dHCSerializationWrapper = serializer.DeserializeObject(strname) as DHCSerializationWrapper;
			}
			if (dockingMgrSerializationWrapperAdv != null)
			{
				ApplyDeserializedState(dockHostController, dockingMgrSerializationWrapperAdv);
				result = true;
			}
			else
			{
				OnDockStateUnavailable(new DockStateUnavailableEventArgs(ctrl));
			}
		}
		catch (Exception)
		{
		}
		finally
		{
			bApplyMinMaxExtents = flag;
			m_bLoadingDockState = false;
		}
		return result;
	}

	public bool LoadDesignerDockState()
	{
		bool flag = false;
		m_bLoadingDockState = true;
		ctrlLastActive = null;
		if (stmLayout == null || stmLayout.Length <= 0)
		{
			ApplyDHCInitialSettings();
			return false;
		}
		stmLayout.Seek(0L, SeekOrigin.Begin);
		OnNewDockStateBeginLoad(EventArgs.Empty);
		bool flag2 = bApplyMinMaxExtents;
		bApplyMinMaxExtents = false;
		if (LoadFromStream(stmLayout))
		{
			ApplyDHCAHSettings();
			ApplyDHCFloatOnlySettings();
			ApplyDHCHiddenOnLoadSettings();
			flag = true;
		}
		bApplyMinMaxExtents = flag2;
		m_bLoadingDockState = false;
		DockStateLoadEventArgs arg = new DockStateLoadEventArgs(flag);
		OnNewDockStateEndLoad(arg);
		return flag;
	}

	public void SaveDockState(AppStateSerializer serializer, Control ctrl)
	{
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController == null)
		{
			return;
		}
		try
		{
			DockingMgrSerializationWrapperAdv obj = new DockingMgrSerializationWrapperAdv(this);
			string strname = PersistenceID + PersistKey;
			serializer.SerializeObject(strname, obj);
		}
		catch (Exception)
		{
		}
	}

	public void SaveDockState()
	{
		SaveDockState(AppStateSerializer.GetSingleton());
	}

	[Obsolete("This method will be removed in a future version. Please use the more flexible SaveDockState(AppStateSerializer) variant, instead.", false)]
	public virtual void SaveDockState(SerializeMode mode, object persistpath)
	{
		try
		{
			DockingMgrSerializationWrapperAdv obj = new DockingMgrSerializationWrapperAdv(this);
			string empty = string.Empty;
			empty = (DesignProcess ? "DockStateInfo" : (PersistenceID + PersistKey));
			if (mode == SerializeMode.IsolatedStorage && persistpath == null)
			{
				AppStateSerializer singleton = AppStateSerializer.GetSingleton();
				singleton.SerializeObject(empty, obj);
			}
			else
			{
				AppStateSerializer.SerializeIsolatedObject(mode, persistpath, empty, obj);
			}
		}
		catch (Exception)
		{
		}
	}

	public virtual void SaveDockState(AppStateSerializer serializer)
	{
		if (serializer == null)
		{
			return;
		}
		try
		{
			DockingMgrSerializationWrapperAdv obj = new DockingMgrSerializationWrapperAdv(this);
			string empty = string.Empty;
			empty = (DesignProcess ? "DockStateInfo" : (PersistenceID + PersistKey));
			serializer.SerializeObject(empty, obj);
		}
		catch (Exception)
		{
		}
	}

	public void DockControlInAutoHideMode(Control ctrl, DockingStyle edge, int size)
	{
		if (!alEnableDocking.Contains(ctrl))
		{
			SetEnableDocking(ctrl, value: true);
		}
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController != null && !dockHostController.Floating && !dockHostController.bInMDIMode && dockHostController.DockVisibility)
		{
			if (dockHostController.DICurrent.dStyle != edge)
			{
				DockControl(ctrl, HostControl, edge, size);
			}
			SetAutoHideMode(ctrl, bautohide: true);
			dockHostController.bAutoHideSizing = false;
		}
	}

	public virtual void FloatControl(Control ctrl, Rectangle rcscreen)
	{
		FloatControl(ctrl, rcscreen, bTabFloating: false);
	}

	public virtual void FloatControl(Control ctrl, Rectangle rcscreen, bool bTabFloating)
	{
		Control control = ctrl;
		while (control.Parent != null)
		{
			if (control.Parent is DockHost)
			{
				control = control.Parent;
				continue;
			}
			if (control.Parent is Form)
			{
				PreviousParentForm = control.Parent as Form;
				PreviousParentVisibility = control.Parent.Visible;
				break;
			}
			control = control.Parent;
		}
		Size frameBorderSize = SystemInformation.FrameBorderSize;
		rcscreen.Height += SystemInformation.ToolWindowCaptionHeight + frameBorderSize.Height * 2 + 2;
		rcscreen.Width += frameBorderSize.Width * 2 + 2;
		Control[] ctrls = new Control[1] { ctrl };
		DockStateChangeEventArgs arg = new DockStateChangeEventArgs(ctrls);
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController == null)
		{
			if (!alEnableDocking.Contains(ctrl))
			{
				alEnableDocking.Add(ctrl);
			}
			DockHost dockHost = CreateDockHost(ctrl);
			if (!htCustomCaptionButtons.ContainsKey(ctrl))
			{
				htCustomCaptionButtons.Add(ctrl, new CaptionButtonsCollection());
			}
			SynchronizeCaptionButtons();
			dockHostController = dockHost.InternalController as DockHostController;
			dockHostController.DINew = new DockInfo(null, DockingStyle.Fill, -1, 0, DockPreference.None, rcscreen);
			dockHost.DragRectangle = rcscreen;
			FireDockStateChangeEvent("DockStateChanging", arg);
			dockHostController.CreateFloatingFrame(rcscreen.Location, show: true);
			dockHostController.Floating = true;
			dockHostController.HostControl.Focus();
			if (alEnableDocking.Count > 0 && !DesignerHooks.GetMsgProcListContains(this))
			{
				m_curentThreadId = DesignerHooks.AddGetMsgProcListener(this);
			}
			FireDockStateChangeEvent("DockStateChanged", arg);
		}
		else
		{
			bool flag = false;
			DockHostController dockHostController2 = null;
			if (!dockHostController.DockVisibility)
			{
				return;
			}
			bFreezeDockStateChangeEvents = true;
			if (dockHostController.bInMDIMode)
			{
				SetAsMdiChild(dockHostController, bsetmdi: false, Rectangle.Empty);
			}
			if (dockHostController.bInAutoHide)
			{
				dockHostController.ToggleAutoHideMode();
				flag = true;
			}
			DockTabController dockTabController = dockHostController.ParentController as DockTabController;
			if (dockHostController.dockInfoCurrent.DP == DockPreference.Tabbed && !bTabFloating)
			{
				dockTabController = dockHostController.ParentController as DockTabController;
				if (flag)
				{
					foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
					{
						if (tabPage.dhcClient != dockHostController)
						{
							dockHostController2 = tabPage.dhcClient;
						}
					}
				}
				dockTabController.RemoveDockHostFromTab(dockHostController, !dockHostController.Floating);
				if (dockHostController.ParentController is DockTabController dockTabController2)
				{
					dockTabController2.RemoveDockHostFromTab(dockHostController, btransittoprev: false);
					if (dockHostController.HostControl.Controls.Count > 0)
					{
						NeedFocusControls.Add(dockHostController.HostControl.Controls[0]);
						if (NeedFocusControls != null)
						{
							foreach (Control needFocusControl in NeedFocusControls)
							{
								needFocusControl.Focus();
							}
						}
						ActivateControl(dockHostController.HostControl.Controls[0]);
					}
				}
			}
			if (dockTabController != null && bTabFloating)
			{
				if (dockTabController.Floating)
				{
					if (dockTabController.ParentController is FloatingFormController floatingFormController)
					{
						floatingFormController.HostControl.Bounds = rcscreen;
						dockTabController.SelectedController = dockHostController;
						return;
					}
					bFreezeDockStateChangeEvents = false;
					FireDockStateChangeEvent("DockStateChanging", arg);
				}
				else
				{
					bFreezeDockStateChangeEvents = false;
					FireDockStateChangeEvent("DockStateChanging", arg);
				}
				dockTabController.TransitToPrevFloat();
				if (dockTabController.ParentController.HostControl is FloatingForm floatingForm)
				{
					floatingForm.Bounds = rcscreen;
				}
				dockTabController.SelectedController = dockHostController;
			}
			else
			{
				if (dockHostController.Floating)
				{
					if (!(dockHostController.ParentController is FloatingFormController))
					{
						bFreezeDockStateChangeEvents = false;
						FireDockStateChangeEvent("DockStateChanging", arg);
					}
					dockHostController.ExitFloatingFrame();
				}
				else
				{
					bFreezeDockStateChangeEvents = false;
					FireDockStateChangeEvent("DockStateChanging", arg);
					UndockFromController(dockHostController);
				}
				dockHostController.DINew = new DockInfo(null, DockingStyle.Fill, -1, 0, DockPreference.None, rcscreen);
				(dockHostController.HostControl as DockHost).DragRectangle = rcscreen;
				dockHostController.CreateFloatingFrame(rcscreen.Location, show: true);
				if (dockHostController2 != null)
				{
					Rectangle rcDockArea = dockHostController2.DITransient.rcDockArea;
					UndockFromController(dockHostController2);
					dockHostController2.LayoutRect = rcDockArea;
					dockHostController2.ToggleAutoHideMode(animate: false);
					dockHostController2.DINew.rcDockArea = rcDockArea;
					dockHostController2.DITransient.rcDockArea = rcDockArea;
				}
			}
			dockHostController.HostControl.Focus();
			FireDockStateChangeEvent("DockStateChanged", arg);
			bFreezeDockStateChangeEvents = false;
		}
		if (ctrl.Parent != null && PreviousParentForm != null && !PreviousParentForm.IsDisposed)
		{
			PreviousParentForm.Visible = PreviousParentVisibility;
			PreviousParentForm = null;
		}
	}

	public virtual void DockControl(Control ctrl, Control parent, DockingStyle dockstyle, int nsize)
	{
		if (parent != null && parent is Form)
		{
			PreviousParentVisibility = parent.Visible;
		}
		DockControl(ctrl, parent, dockstyle, nsize, tabGroup: false);
		if (parent != null && parent is Form && parent.Visible != PreviousParentVisibility)
		{
			parent.Visible = PreviousParentVisibility;
		}
	}

	public virtual void DockControl(Control ctrl, Control parent, DockingStyle dockstyle, int nsize, bool tabGroup)
	{
		if (PreviousParentForm != null && PreviousParentForm.Controls.Count > 0)
		{
			PreviousParentVisibility = PreviousParentForm.Visible;
		}
		LockActivationEvents++;
		if (AHInViewTab != null)
		{
			AHInViewTab.StopAllAnimations();
		}
		bool forbidFreeze = ForbidFreeze;
		ForbidFreeze = true;
		RightToLeft rightToLeft = parent.RightToLeft;
		try
		{
			if (ctrl == parent)
			{
				throw new DockingManagerException("Docking control inside itself not allowed.");
			}
			if (dockstyle == DockingStyle.Fill && parent == HostControl)
			{
				throw new DockingManagerException("Docking control with DockingStyle.Fill to DockingManager's host control not allowed.");
			}
			Control activeControl = ActiveControl;
			if (GetFloatOnly(ctrl) || GetFloatOnly(parent))
			{
				return;
			}
			DockHostController dockHostController = GetDockHostController(ctrl);
			DockHostController dockHostController2 = GetDockHostController(parent);
			if (dockHostController2 != null)
			{
				if (dockHostController2.bInMDIMode)
				{
					throw new DockingManagerException("Docking to control in mdi child state is not allowed");
				}
				if (!dockHostController2.DockVisibility)
				{
					throw new DockingManagerException("Docking to invisible control is not allowed");
				}
			}
			if (!reduceFlicker && parent.RightToLeft != RightToLeft.No)
			{
				parent.RightToLeft = RightToLeft.No;
			}
			MainFormController mainFormController = alDockAreaControllers[0] as MainFormController;
			bool flag = false;
			bFreezeDockStateChangeEvents = true;
			if (dockHostController2 != null && dockHostController2.AutoHideMode && mainFormController != null)
			{
				if (dockstyle != DockingStyle.Tabbed)
				{
					throw new DockingManagerException("Only tabbed docking is allowed when the parent control is autohidden");
				}
				DockingStyle border = ((dockHostController2.ParentController is DockTabController) ? dockHostController2.ParentController.DICurrent.dStyle : dockHostController2.DICurrent.dStyle);
				mainFormController.GetAHTabControl(border).ShowController(dockHostController2, bAnimate: false);
				dockHostController2.ToggleAutoHideMode();
				flag = true;
			}
			if (dockHostController != null)
			{
				if (dockHostController.bInAutoHide)
				{
					dockHostController.ToggleAutoHideMode(animate: false);
				}
				dockHostController.DockEdge = dockstyle;
				if (dockHostController.LayoutRect.Size == Size.Empty)
				{
					dockHostController.LayoutRect = dockHostController.DINew.rcDockArea;
				}
			}
			bFreezeDockStateChangeEvents = false;
			if (HostForm != null && HostForm.RightToLeftLayout && HostForm.RightToLeft == RightToLeft.Yes && !reduceFlicker)
			{
				switch (dockstyle)
				{
				case DockingStyle.Left:
					dockstyle = DockingStyle.Right;
					break;
				case DockingStyle.Right:
					dockstyle = DockingStyle.Left;
					break;
				}
			}
			if (tabGroup && dockHostController != null && dockHostController.ParentController is DockTabController)
			{
				InternalDockTabGroup(ctrl, parent, dockstyle, nsize);
			}
			else
			{
				DockControllerBase dockControllerBase = null;
				if (parent == HostControl)
				{
					dockControllerBase = dcHostForm;
				}
				else
				{
					if (dockHostController2 == null)
					{
						if (parent.RightToLeft != rightToLeft)
						{
							parent.RightToLeft = rightToLeft;
						}
						return;
					}
					if (dockHostController2.ParentController != null && dockHostController2.ParentController is DockTabController)
					{
						DockTabController dockTabController = dockHostController2.ParentController as DockTabController;
						if (dockTabController.SelectedController != dockHostController2)
						{
							dockTabController.SelectedController = dockHostController2;
						}
					}
					dockControllerBase = dockHostController2;
				}
				if (!alEnableDocking.Contains(ctrl))
				{
					SetEnableDocking(ctrl, value: true);
				}
				InternalDockControl(ctrl, dockControllerBase, dockstyle, nsize);
				if (PreviousParentForm != null && PreviousParentForm.Controls.Count > 0)
				{
					PreviousParentForm.Visible = PreviousParentVisibility;
				}
			}
			if (dockHostController2 != null && flag)
			{
				dockHostController2.ToggleAutoHideMode();
			}
			if (ActiveControl != activeControl)
			{
				ActivateControl(activeControl);
			}
		}
		finally
		{
			LockActivationEvents--;
			ForbidFreeze = forbidFreeze;
			if (parent.RightToLeft != rightToLeft)
			{
				parent.RightToLeft = rightToLeft;
			}
		}
	}

	protected virtual void OnProvidePresistenceID(ProvidePersistenceIDEventArgs e)
	{
		if (this.ProvidePersistenceID != null)
		{
			this.ProvidePersistenceID(this, e);
		}
	}

	[DocumentationExclude]
	protected void subclass_OnDeactivate(object sender, Message m)
	{
		if (AHInViewTab != null)
		{
			ForceHideActiveControl = true;
			AHInViewTab.MFMouseMessageHandler(Point.Empty);
		}
	}

	protected void HostForm_OnClose(object sender, Message m)
	{
		bHostFormClosing = true;
		Form form = HostControl as Form;
		TabbedMDIManager managerForForm = TabbedMDIManager.GetManagerForForm(form);
		if (managerForForm != null && managerForForm.AttachedTo != null)
		{
			bHostFormClosing = false;
		}
	}

	internal void SaveToStream()
	{
		stmLayout.Seek(0L, SeekOrigin.Begin);
		SaveToStream(stmLayout);
	}

	internal void UpdateDesigner()
	{
		if (stmLayout == null)
		{
			return;
		}
		stmLayout.Seek(0L, SeekOrigin.Begin);
		SaveToStream(stmLayout);
		IDesigner designer = (GetService(typeof(IDesignerHost)) as IDesignerHost).GetDesigner(this);
		if (designer != null)
		{
			IDockingManagerDesignerComponentInvoke dockingManagerDesignerComponentInvoke = designer as IDockingManagerDesignerComponentInvoke;
			if (AppDomain.CurrentDomain == null || AppDomain.CurrentDomain.DomainManager == null || AppDomain.CurrentDomain.DomainManager.ApplicationActivator == null)
			{
				dockingManagerDesignerComponentInvoke.RaiseComponentChanged();
			}
		}
	}

	internal object GetPrimarySelection()
	{
		ISelectionService selectionService = GetService(typeof(ISelectionService)) as ISelectionService;
		return selectionService.PrimarySelection;
	}

	internal void SetSelectedComponents(ICollection clln, SelectionTypes seltype)
	{
		ISelectionService selectionService = GetService(typeof(ISelectionService)) as ISelectionService;
		selectionService.SetSelectedComponents(clln, seltype);
	}

	internal object GetServiceFromMgr(Type service)
	{
		return GetService(service);
	}

	internal void AddController(DockControllerBase dc)
	{
		if (!alDockAreaControllers.Contains(dc))
		{
			alDockAreaControllers.Add(dc);
		}
	}

	internal void RemoveController(DockControllerBase dc)
	{
		try
		{
			if (alDockAreaControllers.Contains(dc))
			{
				alDockAreaControllers.Remove(dc);
			}
			if (dc is DockHostController dockHostController)
			{
				dockHostController.InternalDockWrapper = null;
				dockHostController.InternalFloatWrapper = null;
				dockHostController.InternalForm = null;
				dockHostController.TempWrapper = null;
			}
		}
		catch (ArgumentException)
		{
		}
	}

	internal void AddFFController(FloatingFormController ffc)
	{
		if (!alFFControllers.Contains(ffc))
		{
			alFFControllers.Add(ffc);
			alDockAreaControllers.Add(ffc);
		}
	}

	internal void RemoveFFController(FloatingFormController ffc)
	{
		try
		{
			if (alFFControllers.Contains(ffc))
			{
				alFFControllers.Remove(ffc);
				alDockAreaControllers.Remove(ffc);
			}
		}
		catch (ArgumentException)
		{
		}
	}

	internal IntPtr GetFloatingWindow(Control control, Point pt)
	{
		IntPtr result = IntPtr.Zero;
		foreach (FloatingFormController alFFController in alFFControllers)
		{
			if (alFFController.HostControl != control && ((FloatingForm)alFFController.HostControl).DragRectangle.Contains(pt) && alFFController.HostControl.Controls.Count != 0)
			{
				result = alFFController.HostControl.Controls[0].Handle;
				break;
			}
		}
		return result;
	}

	protected void RestoreMdiZOrder(ArrayList list)
	{
		if (list == null || list.Count <= 0)
		{
			return;
		}
		foreach (string item in list)
		{
			if (dcHostForm.QueryController(item) is DockHostController { bInMDIMode: not false } dockHostController)
			{
				dockHostController.ctrlReference.Parent.BringToFront();
			}
		}
	}

	internal DockControllerBase GetDockController(Point pt)
	{
		Control control = m_dragProvider.GetUnderlyingControl(pt);
		if (control == null)
		{
			return null;
		}
		DockControllerBase dockControllerBase = null;
		while (dockControllerBase == null && control != null)
		{
			dockControllerBase = GetController(control, pt);
			if (dockControllerBase == null)
			{
				control = control.Parent;
			}
		}
		if (dockControllerBase == null && control is ContainerControl && control.Parent != null)
		{
			dockControllerBase = GetController(control.Parent, pt);
		}
		return dockControllerBase;
	}

	internal DockingManager GetManagerFromPoint(Point pt)
	{
		Rectangle empty = Rectangle.Empty;
		DockingManager result = null;
		ArrayList arrayList = new ArrayList(alTargetManagers);
		arrayList.Add(this);
		foreach (DockingManager item in arrayList)
		{
			if (item.HostControl != null && ((item.HostControl is Form || item.HostControl.ParentForm == null) ? item.HostControl.Bounds : new Rectangle(item.HostControl.ParentForm.PointToScreen(item.HostControl.Location), item.HostControl.Size)).Contains(pt))
			{
				result = item;
				break;
			}
		}
		return result;
	}

	internal DockingManager GetVisibleDockingManager()
	{
		DockingManager result = null;
		ArrayList arrayList = new ArrayList(alTargetManagers);
		arrayList.Add(this);
		foreach (DockingManager item in arrayList)
		{
			if (item.dcHostForm.HostControl.Visible)
			{
				result = item;
			}
		}
		return result;
	}

	[DocumentationExclude]
	protected DockControllerBase GetDockControllerFromManager(DockingManager dockingmgr, Control ptctrl, Point pt)
	{
		if (!(ptctrl.GetContainerControl() is ContainerControl containerControl))
		{
			return null;
		}
		Control control = containerControl.ParentForm;
		if (control == null && containerControl is FloatingForm)
		{
			control = containerControl as FloatingForm;
		}
		if (control == null)
		{
			if (dockingmgr.HostControl == null || (ptctrl != dockingmgr.HostControl && !Syncfusion.Runtime.InteropServices.NativeMethods.IsChild(dockingmgr.HostControl.Handle, ptctrl.Handle)))
			{
				return null;
			}
			control = dockingmgr.HostControl;
		}
		ArrayList dockAreaControllers = dockingmgr.DockAreaControllers;
		foreach (DockControllerBase item in dockAreaControllers)
		{
			if (item.HostControl.Visible)
			{
				ContainerControl containerControl2 = item.HostControl.GetContainerControl() as ContainerControl;
				Control control2 = containerControl2.ParentForm;
				if (control2 == null && containerControl2 is FloatingForm)
				{
					control2 = containerControl2 as FloatingForm;
				}
				if (control2 == null && (item.HostControl == dockingmgr.HostControl || Syncfusion.Runtime.InteropServices.NativeMethods.IsChild(dockingmgr.HostControl.Handle, item.HostControl.Handle)))
				{
					control2 = dockingmgr.HostControl;
				}
				if (control2 == control && item.IsTargetController(pt))
				{
					DockControllerBase dockControllerBase2 = RecurseChildController(item, pt);
					return (dockControllerBase2 != null) ? dockControllerBase2 : item;
				}
			}
		}
		return null;
	}

	[DocumentationExclude]
	protected DockControllerBase RecurseChildController(DockControllerBase dc, Point pt)
	{
		if (dc == null)
		{
			return null;
		}
		if (dc.ChildCount <= 0)
		{
			if (dc.IsTargetController(pt))
			{
				return dc;
			}
			return null;
		}
		if (!dc.IsTargetController(pt))
		{
			return null;
		}
		for (int i = 0; i < dc.ChildCount; i++)
		{
			DockControllerBase dockControllerBase = RecurseChildController(dc.GetChildAt(i), pt);
			if (dockControllerBase != null)
			{
				return dockControllerBase;
			}
		}
		return null;
	}

	internal DockControllerBase GetDockController(ContainerControl ctrl)
	{
		foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
		{
			if (alDockAreaController.IsTargetController(ctrl))
			{
				return alDockAreaController;
			}
		}
		return null;
	}

	[DocumentationExclude]
	protected internal DockHostController GetDockHostController(Control ctrl)
	{
		foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
		{
			if (alDockAreaController is DockHostController)
			{
				DockHostController dockHostController = alDockAreaController as DockHostController;
				if (dockHostController.HostControl != null && ((dockHostController.HostControl.Controls.Count > 0 && dockHostController.HostControl.Controls[0].Equals(ctrl)) || dockHostController.ctrlReference == ctrl))
				{
					return dockHostController;
				}
			}
		}
		return null;
	}

	internal void ApplyDHCInitialSettings()
	{
		foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
		{
			if (alDockAreaController is DockHostController)
			{
				DockHostController dockHostController = alDockAreaController as DockHostController;
				Control hostControl = dockHostController.HostControl;
				if (hostControl.HasChildren)
				{
					Control ctrl = hostControl.Controls[0];
					ApplyDHCInitialSettings(ctrl);
				}
			}
		}
	}

	private void ApplyDHCInitialSettings(Control ctrl)
	{
		try
		{
			if (htText.Contains(ctrl))
			{
				SetDockLabel(ctrl, (string)htText[ctrl]);
			}
			if (htIcon.Contains(ctrl))
			{
				SetDockIcon(ctrl, (int)htIcon[ctrl]);
			}
			if (htmIcon.Contains(ctrl))
			{
				SetMDIChildIcon(ctrl, (int)htmIcon[ctrl]);
			}
			if (htDockAbility.Contains(ctrl))
			{
				SetDockAbility(ctrl, (DockAbility)htDockAbility[ctrl]);
			}
			if (htOuterDockAbility.Contains(ctrl))
			{
				SetOuterDockAbility(ctrl, (DockAbility)htOuterDockAbility[ctrl]);
			}
			if (htAllowFloating.Contains(ctrl))
			{
				SetAllowFloating(ctrl, bfloating: false);
			}
		}
		catch (Exception ex)
		{
			MessageBox.Show("Error in ApplyDHInitialSettings Method. \n Details:\n" + ex.Message);
		}
	}

	internal void ApplyDHCAHSettings()
	{
		foreach (Control item in listAHOnLoad)
		{
			DockHostController dockHostController = GetDockHostController(item);
			if (!dockHostController.AutoHideMode && !dockHostController.Floating && dockHostController.DockVisibility)
			{
				dockHostController.AutoHideMode = true;
				DockingStyle dStyle = dockHostController.ParentController.DICurrent.dStyle;
				AHTabControl aHTabControl = dcHostForm.GetAHTabControl(dStyle);
				aHTabControl.HideController(dockHostController, banimate: false);
			}
		}
	}

	[DocumentationExclude]
	protected void ApplyDHCFloatOnlySettings()
	{
		foreach (Control key in htFloatOnly.Keys)
		{
			if ((bool)htFloatOnly[key])
			{
				DockHostController dockHostController = GetDockHostController(key);
				dockHostController.FloatOnly = true;
			}
		}
	}

	internal void ApplyDHCHiddenOnLoadSettings()
	{
		foreach (Control key in htHiddenOnLoad.Keys)
		{
			if ((bool)htHiddenOnLoad[key])
			{
				DockHostController dockHostController = GetDockHostController(key);
				dockHostController.DockVisibility = false;
			}
		}
	}

	[DocumentationExclude]
	private void InternalDockTabGroup(Control ctrl, Control parent, DockingStyle dockstyle, int nsize)
	{
		LockHostFormUpdate();
		DockHostController dockHostController = GetDockHostController(ctrl);
		DockTabController dockTabController = dockHostController.ParentController as DockTabController;
		DockHostController selectedController = dockTabController.SelectedController;
		TabControlAdv tabControl = dockTabController.TabControl;
		int count = tabControl.TabPages.Count;
		DockTabPage dockTabPage = tabControl.TabPages[count - 1] as DockTabPage;
		Control control = dockTabPage.dhcClient.HostControl.Controls[0];
		ArrayList arrayList = new ArrayList();
		for (int num = count - 2; num >= 0; num--)
		{
			DockTabPage dockTabPage2 = tabControl.TabPages[num] as DockTabPage;
			arrayList.Add(dockTabPage2.dhcClient);
		}
		if (control != parent)
		{
			RedockDockTabControl(dockTabController, parent, dockstyle, nsize);
			DockTabController dockTabController2 = dockHostController.ParentController as DockTabController;
			if (dockTabController2.SelectedController != selectedController)
			{
				dockTabController2.SelectedController = selectedController;
			}
			UnlockHostFormUpdate();
		}
	}

	[DocumentationExclude]
	protected internal void RedockDockTabControl(DockTabController dtc, Control parent, DockingStyle dockstyle, int nsize)
	{
		if (dtc == null)
		{
			return;
		}
		DockControllerBase dockHostController = GetDockHostController(parent);
		if (dockHostController == null && parent == HostControl)
		{
			dockHostController = dcHostForm;
		}
		DockHostController dockHostController2 = null;
		if (dtc.ChildControllers.Count > 0)
		{
			dockHostController2 = dtc.ChildControllers[0] as DockHostController;
		}
		if (dockHostController2 == null)
		{
			return;
		}
		InitializeDHCNew(dockHostController2, dockHostController, dockstyle, nsize);
		dtc.DINew = dockHostController2.DINew;
		dtc.DockEdge = dtc.DINew.dStyle;
		if (dockHostController2.Floating)
		{
			if (dockHostController2.DINew.dController.Floating)
			{
				dtc.TransitFloatToDockInFloat();
			}
			else
			{
				dtc.TransitFloatToDock();
			}
		}
		else if (dockHostController2.DINew.dController.Floating)
		{
			dtc.TransitDockToDockInFloat();
		}
		else
		{
			dtc.TransitDockToDock();
		}
	}

	[DocumentationExclude]
	protected virtual void InternalDockControl(Control ctrl, DockControllerBase dcbparent, DockingStyle dockstyle, int nsize)
	{
		if (bDockToFill && dcHostForm.ChildCount == 0 && dsDockFillAHBorder != DockingStyle.Fill)
		{
			dockstyle = dsDockFillAHBorder;
		}
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController == null)
		{
			DockHost dockHost = CreateDockHost(ctrl);
			dockHostController = dockHost.InternalController as DockHostController;
			if (dcbparent.Floating)
			{
				dockHostController.Floating = true;
			}
			InitializeDHCNew(dockHostController, dcbparent, dockstyle, nsize);
			dockHostController.DINew.dController.InvokeDocking(dockHostController);
			if (alEnableDocking.Count > 0 && !DesignerHooks.GetMsgProcListContains(this))
			{
				m_curentThreadId = DesignerHooks.AddGetMsgProcListener(this);
			}
		}
		else
		{
			if (!dockHostController.DockVisibility)
			{
				return;
			}
			DockTabController dockTabController = dockHostController.ParentController as DockTabController;
			DockHostController dockHostController2 = null;
			if (dockHostController.AutoHideMode)
			{
				if (dockTabController != null)
				{
					foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
					{
						if (tabPage.dhcClient != dockHostController)
						{
							dockHostController2 = tabPage.dhcClient;
							break;
						}
					}
				}
				dockHostController.AutoHideMode = false;
			}
			if (dockHostController.ParentController != null && dockHostController.ParentController is DockTabController)
			{
				(dockHostController.ParentController as DockTabController).RemoveDockHostFromTab(dockHostController, btransittoprev: false);
			}
			InitializeDHCNew(dockHostController, dcbparent, dockstyle, nsize);
			SizingController sizingController = null;
			if (dockHostController2 != null)
			{
				UndockFromController(dockHostController2);
				dockHostController2.ToggleAutoHideMode(animate: false);
				DockingStyle controllerBorder = dcHostForm.GetControllerBorder(dockHostController2);
				dcHostForm.GetAHTabControl(controllerBorder)?.HideController(dockHostController2, banimate: false, bhidenow: true);
			}
			if (dockHostController.DINew.dStyle != DockingStyle.Tabbed)
			{
				if (dockHostController.DINew.dController != null)
				{
					sizingController = ((!(dockHostController.DINew.dController is DockStateControllerBase)) ? (dockHostController.DINew.dController as SizingController) : (dockHostController.DINew.dController.ParentController as SizingController));
				}
				if (sizingController != null)
				{
					DockPreference preference = DockPreference.Horizontal;
					if (dockHostController.DINew.dStyle == DockingStyle.Top || dockHostController.DINew.dStyle == DockingStyle.Bottom)
					{
						preference = DockPreference.Vertical;
					}
					dockHostController.PerformSizeCorrection(sizingController, preference);
				}
			}
			if (dockHostController.Floating)
			{
				if (dockHostController.DINew.dController.Floating)
				{
					dockHostController.TransitFloatToDockInFloat();
				}
				else
				{
					dockHostController.TransitFloatToDock();
					dcHostForm.AdjustLayout();
				}
			}
			else if (dockHostController.DINew.dController.Floating)
			{
				dockHostController.TransitDockToDockInFloat();
			}
			else
			{
				dockHostController.TransitDockToDock();
			}
		}
		dockHostController.DockEdge = dockstyle;
	}

	[DocumentationExclude]
	protected void InitializeDHCNew(DockHostController dhc, DockControllerBase dcbparent, DockingStyle dockstyle, int nsize)
	{
		Control control = dhc.HostControl.Controls[0];
		Rectangle rc = Rectangle.Empty;
		DockPreference dp = DockPreference.None;
		switch (dockstyle)
		{
		case DockingStyle.Left:
		case DockingStyle.Right:
			rc = ((nsize > dcbparent.LayoutRect.Width - SplitterWidth) ? new Rectangle(0, 0, dcbparent.LayoutRect.Width - SplitterWidth, control.Height) : new Rectangle(0, 0, nsize, control.Height));
			dp = DockPreference.Horizontal;
			break;
		case DockingStyle.Top:
		case DockingStyle.Bottom:
			rc = ((nsize > dcbparent.LayoutRect.Height - SplitterWidth) ? new Rectangle(0, 0, control.Width, dcbparent.LayoutRect.Height - SplitterWidth) : new Rectangle(0, 0, control.Width, nsize));
			dp = DockPreference.Vertical;
			break;
		case DockingStyle.Tabbed:
			rc = new Rectangle(0, 0, control.Width, control.Height);
			dp = DockPreference.Tabbed;
			break;
		case DockingStyle.Fill:
			rc = ((dcbparent.DICurrent.DP == DockPreference.Vertical) ? new Rectangle(0, 0, dcbparent.LayoutRect.Width, dcbparent.LayoutRect.Height - SplitterWidth) : new Rectangle(0, 0, dcbparent.LayoutRect.Width - SplitterWidth, dcbparent.LayoutRect.Height));
			dp = dcbparent.DICurrent.DP;
			dockstyle = dcbparent.DICurrent.dStyle;
			break;
		}
		dhc.DINew = new DockInfo(dcbparent, dockstyle, -1, 0, dp, rc);
	}

	internal void SaveToStream(Stream file)
	{
		try
		{
			if (!DesignMode || !bInBeginEndInit)
			{
				AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
				BinaryFormatter binaryFormatter = new BinaryFormatter();
				binaryFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
				binaryFormatter.Binder = AppStateSerializer.CustomBinder;
				binaryFormatter.Serialize(file, new DockingMgrSerializationWrapperAdv(this));
			}
		}
		catch (Exception)
		{
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
	}

	[DocumentationExclude]
	protected bool LoadFromStream(Stream file)
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			BinaryFormatter binaryFormatter = new BinaryFormatter();
			binaryFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
			binaryFormatter.Binder = AppStateSerializer.CustomBinder;
			DockingMgrSerializationWrapper dockingMgrSerializationWrapper = null;
			try
			{
				object obj = binaryFormatter.Deserialize(file);
				dockingMgrSerializationWrapper = obj as DockingMgrSerializationWrapper;
				if (dockingMgrSerializationWrapper == null && obj != null)
				{
					dockingMgrSerializationWrapper = DockingMgrSerializationWrapper.CloneByReflection(obj);
				}
			}
			catch (Exception)
			{
				return false;
			}
			if (dockingMgrSerializationWrapper == null)
			{
				return false;
			}
			if (dockingMgrSerializationWrapper is DockingMgrSerializationWrapperAdv)
			{
				ApplyDeserializedState(dockingMgrSerializationWrapper as DockingMgrSerializationWrapperAdv);
			}
			else
			{
				ApplyDeserializedState(dockingMgrSerializationWrapper);
			}
		}
		catch (Exception)
		{
			return false;
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		return true;
	}

	protected DockControllerBase ReArrangeControls(DockControllerBase parent, ArrayList controls)
	{
		foreach (LayoutControllerWrapper control2 in controls)
		{
			SizingControllerWrapper sizingControllerWrapper = control2 as SizingControllerWrapper;
			DockControllerBase dockControllerBase = null;
			if (sizingControllerWrapper != null)
			{
				Control control = null;
				control = parent.ToplevelController.HostControl;
				SizingController sizingController = new SizingController(this, control, sizingControllerWrapper.Orientation);
				sizingController.ParentController = parent;
				sizingController.LayoutRect = sizingControllerWrapper.LayoutRect;
				sizingController.DICurrent.dStyle = sizingControllerWrapper.Style;
				ArrayList children = control2.Children;
				ReArrangeControls(sizingController, children);
				sizingController.LayoutRect = sizingControllerWrapper.LayoutRect;
				if (sizingController.ChildCount != 0)
				{
					RefreshEmptySize(sizingController);
					parent.InsertChild(sizingController, parent.ChildCount, sizingControllerWrapper.Style);
					if (sizingControllerWrapper.TransientRect.Width > 0 && sizingControllerWrapper.TransientRect.Height > 0)
					{
						sizingController.DITransient.rcDockArea = sizingControllerWrapper.TransientRect;
					}
				}
			}
			else if (control2 is DockHostControllerWrapper)
			{
				DockHostControllerWrapper dockHostControllerWrapper = control2 as DockHostControllerWrapper;
				dockControllerBase = dcHostForm.QueryController(dockHostControllerWrapper.UniqueName);
				if (dockControllerBase == null)
				{
					continue;
				}
				DockControllerBase parentController = dockControllerBase.ParentController;
				if (parentController != null)
				{
					dockControllerBase.ParentController.RemoveChild(dockControllerBase);
				}
				parent.InsertChild(dockControllerBase, parent.ChildCount, parent.DICurrent.dStyle);
				dockControllerBase.HostControl.Visible = true;
				if (parentController != null)
				{
					if (parentController.ToplevelController != parent.ToplevelController)
					{
						parent.ToplevelController.HostControl.Controls.Add(dockControllerBase.HostControl);
					}
					parentController.Refresh();
				}
			}
			else if (control2 is DockStateWrapper)
			{
				DockStateWrapper dockStateWrapper = control2 as DockStateWrapper;
				DockStateControllerWrapper dockStateControllerWrapper = null;
				ArrayList arrayList = new ArrayList();
				if (dockStateWrapper.Relations.Count < 2)
				{
					if (dockStateWrapper.InternalController.Count > 0)
					{
						string uniqueName = dockStateWrapper.InternalController[0] as string;
						dockControllerBase = dcHostForm.QueryController(uniqueName);
						if (dockControllerBase != null)
						{
							if (alautohide.Contains(dockControllerBase))
							{
								DockHostController dockHostController = dockControllerBase as DockHostController;
								SizingController sizingController2 = parent as SizingController;
								if (dockHostController != null && sizingController2 != null)
								{
									dockHostController.PerformSizeCorrection(sizingController2);
								}
								DockControllerBase parentController2 = dockControllerBase.ParentController;
								parentController2.RemoveChild(dockControllerBase);
								parent.InsertChild(dockControllerBase, parent.ChildCount, parent.DICurrent.dStyle);
							}
							else
							{
								arrayList.Add(dockControllerBase);
								dockStateControllerWrapper = new DockStateControllerWrapper(this, dockControllerBase as DockHostController);
							}
						}
					}
				}
				else
				{
					foreach (string item in dockStateWrapper.InternalController)
					{
						if (dcHostForm.QueryController(item) is DockHostController dockHostController2)
						{
							if (dockStateControllerWrapper == null)
							{
								dockStateControllerWrapper = new DockStateControllerWrapper(this, dockHostController2);
							}
							arrayList.Add(dockHostController2);
							if (dockHostController2.DockVisibility && !dockHostController2.bInMDIMode && !dockHostController2.FloatOnly && (alautohide.Contains(dockHostController2) || dockControllerBase == null))
							{
								dockControllerBase = dockHostController2;
							}
						}
					}
					if (alautohide.Contains(dockControllerBase))
					{
						DockTabController dockTabController = AssembleTabControl(arrayList);
						DockControllerBase parentController3 = dockTabController.ParentController;
						parentController3.RemoveChild(dockTabController);
						if (parentController3 is FloatingFormController)
						{
							FloatingForm floatingForm = parentController3.HostControl as FloatingForm;
							parent.ToplevelController.HostControl.Controls.Add(dockTabController.HostControl);
							floatingForm.Disable();
						}
						parent.InsertChild(dockTabController, parent.ChildCount, parent.DICurrent.dStyle);
						parentController3.Refresh();
						dockStateControllerWrapper = null;
					}
					else
					{
						foreach (DockRelation value in dockStateWrapper.Relations.Values)
						{
							DockInfo relation = value.Relation;
							dockControllerBase = dcHostForm.QueryController(relation.ControlleName);
							relation.dController = dockControllerBase;
							value.RelatedControllers = arrayList;
						}
						if (dockStateControllerWrapper != null)
						{
							dockStateControllerWrapper.DockRelationControllers = arrayList;
							dockStateControllerWrapper.Relations = dockStateWrapper.Relations;
						}
					}
				}
				if (dockStateControllerWrapper == null)
				{
					continue;
				}
				dockStateControllerWrapper.ControlSize = dockStateWrapper.StoredLayoutSize;
				if (alautohide.Contains(dockStateControllerWrapper.InternalControl))
				{
					dockStateControllerWrapper.InternalControl.ParentController.RemoveChild(dockStateControllerWrapper.InternalControl);
					parent.InsertChild(dockStateControllerWrapper.InternalControl, parent.ChildCount, parent.DICurrent.dStyle);
				}
				else
				{
					parent.AddChild(dockStateControllerWrapper, dockStateControllerWrapper.DICurrent.dStyle);
					if (parent is SizingController sizingController3)
					{
						sizingController3.HideRelatedSplitter(dockStateControllerWrapper);
					}
					foreach (DockStateControllerBase item2 in arrayList)
					{
						if (item2 == null)
						{
							continue;
						}
						if (dockStateControllerWrapper.Floating)
						{
							item2.InternalFloatWrapper = dockStateControllerWrapper;
							if (dockStateControllerWrapper.ToplevelController.HostControl is FloatingForm sharedForm)
							{
								item2.SharedForm = sharedForm;
								item2.SharedForm.FormOwner = item2;
							}
						}
						else
						{
							item2.InternalDockWrapper = dockStateControllerWrapper;
						}
					}
				}
				dockStateControllerWrapper.RefreshSize();
			}
			else
			{
				if (!(control2 is DockTabControllerWrapper))
				{
					continue;
				}
				DockHostController dockHostController3 = null;
				DockTabControllerWrapper dockTabControllerWrapper = control2 as DockTabControllerWrapper;
				ArrayList arrayList2 = new ArrayList(dockTabControllerWrapper.Controls);
				foreach (string item3 in arrayList2)
				{
					if (!(dcHostForm.QueryController(item3) is DockHostController dockHostController4))
					{
						continue;
					}
					if (dockHostController3 == null)
					{
						dockHostController3 = dockHostController4;
					}
					else
					{
						DockControllerBase parentController4 = dockHostController4.ParentController;
						parentController4.RemoveChild(dockHostController4);
						if (parentController4 is FloatingFormController)
						{
							FloatingForm floatingForm2 = parentController4.HostControl as FloatingForm;
							floatingForm2.Disable();
						}
						dockHostController4.DINew.nDockIndex = arrayList2.IndexOf(item3);
						dockHostController3.InvokeTabbedDocking(dockHostController4);
						dockHostController3 = dockHostController4;
					}
					dockHostController4.HostControl.Visible = true;
				}
				if (dockHostController3 != null)
				{
					DockControllerBase dockControllerBase2 = dockHostController3.ParentController;
					DockControllerBase parentController5 = dockHostController3.ParentController.ParentController;
					if (!(dockControllerBase2 is DockTabController))
					{
						parentController5 = dockHostController3.ParentController;
						dockControllerBase2 = dockHostController3;
					}
					parentController5.RemoveChild(dockControllerBase2);
					if (parentController5.ToplevelController != parent.ToplevelController)
					{
						parent.ToplevelController.HostControl.Controls.Add(dockHostController3.ParentController.HostControl);
					}
					if (parentController5 is FloatingFormController)
					{
						FloatingForm floatingForm3 = parentController5.HostControl as FloatingForm;
						floatingForm3.Disable();
					}
					parent.InsertChild(dockControllerBase2, parent.ChildCount, parent.DICurrent.dStyle);
					dockControllerBase2.LayoutRect = dockTabControllerWrapper.LayoutRect;
					parentController5.Refresh();
				}
			}
		}
		return parent;
	}

	protected bool ReArrangeControl(DockControllerBase parent, ArrayList controls, DockHostController dhc)
	{
		ArrayList arrayList = new ArrayList();
		DockHostController dockHostController = null;
		LayoutControllerWrapper topParentWrapper = GetTopParentWrapper(controls, dhc);
		if (topParentWrapper == null)
		{
			return false;
		}
		arrayList = CollectControllers(topParentWrapper.Children);
		int num = -1;
		int num2 = -1;
		foreach (ArrayList item in arrayList)
		{
			int num3 = item.IndexOf(dhc.UniqueName);
			if (num3 != -1)
			{
				num2 = num3;
				num = arrayList.IndexOf(item);
				break;
			}
		}
		if (arrayList.Count == 0 && topParentWrapper is DockHostControllerWrapper dockHostControllerWrapper && dockHostControllerWrapper.UniqueName == dhc.UniqueName)
		{
			return true;
		}
		DockControllerBase parentController = dhc.ParentController;
		FloatingForm floatingForm = null;
		if (dhc.Floating)
		{
			floatingForm = dhc.HostControl.Parent as FloatingForm;
			dhc.ExitFloatingFrame();
		}
		else
		{
			UndockFromController(dhc);
		}
		if (floatingForm != null)
		{
			(floatingForm.InternalController as FloatingFormController).RefreshFormCaption();
		}
		dhc.ParentController.RemoveChild(dhc);
		parentController.Refresh();
		if (num2 == -1)
		{
			return false;
		}
		ArrayList arrayList3 = arrayList[num] as ArrayList;
		if (arrayList3.Count > 1)
		{
			foreach (string item2 in arrayList3)
			{
				if (dcHostForm.QueryController(item2) is DockHostController dockHostController2 && dockHostController2 != dhc && (!(dockHostController2.ParentController is DockTabController) || dockHostController2.DockTab != null))
				{
					dockHostController = dockHostController2;
					break;
				}
			}
		}
		if (dockHostController != null)
		{
			dockHostController.InvokeTabbedDocking(dhc);
		}
		else
		{
			SizingControllerWrapper sizingControllerWrapper = LocateParentWrapper(controls, dhc) as SizingControllerWrapper;
			foreach (LayoutControllerWrapper child in sizingControllerWrapper.Children)
			{
				if (child is DockHostControllerWrapper dockHostControllerWrapper2 && dockHostControllerWrapper2.UniqueName == dhc.UniqueName)
				{
					num2 = sizingControllerWrapper.Children.IndexOf(dockHostControllerWrapper2);
				}
				else
				{
					if (!(child is DockTabControllerWrapper))
					{
						continue;
					}
					DockTabControllerWrapper dockTabControllerWrapper = child as DockTabControllerWrapper;
					StringEnumerator enumerator4 = dockTabControllerWrapper.Controls.GetEnumerator();
					try
					{
						while (enumerator4.MoveNext())
						{
							string current = enumerator4.Current;
							if (current == dhc.UniqueName)
							{
								num2 = sizingControllerWrapper.Children.IndexOf(dockTabControllerWrapper);
							}
						}
					}
					finally
					{
						if (enumerator4 is IDisposable disposable)
						{
							disposable.Dispose();
						}
					}
				}
			}
			if (num2 != 0)
			{
				num--;
			}
			for (int i = num; i < arrayList.Count; i++)
			{
				ArrayList arrayList4 = arrayList[i] as ArrayList;
				foreach (string item3 in arrayList4)
				{
					if (item3 != dhc.UniqueName && dcHostForm.QueryController(item3) is DockHostController dockHostController3 && dockHostController3.Floating == parent.Floating)
					{
						dockHostController = dockHostController3;
					}
				}
				if (dockHostController != null)
				{
					break;
				}
			}
			if (dockHostController == null)
			{
				for (int num4 = num - 1; num4 != -1; num4--)
				{
					ArrayList arrayList5 = arrayList[num4] as ArrayList;
					foreach (string item4 in arrayList5)
					{
						if (item4 != dhc.UniqueName && dcHostForm.QueryController(item4) is DockHostController dockHostController4 && dockHostController4.Floating == parent.Floating)
						{
							dockHostController = dockHostController4;
						}
					}
					if (dockHostController != null)
					{
						break;
					}
				}
			}
			if (dockHostController != null)
			{
				LayoutControllerWrapper layoutControllerWrapper2 = LocateParentWrapper(controls, dockHostController);
				try
				{
					bool flag = false;
					SizingController sizingController = dockHostController.ParentController as SizingController;
					if (layoutControllerWrapper2 is SizingControllerWrapper sizingControllerWrapper2 && sizingController != null && sizingControllerWrapper2.Orientation != sizingController.DICurrent.DP)
					{
						flag = InsertControl(dockHostController, sizingController, sizingControllerWrapper2, dhc);
					}
					if (!flag)
					{
						InsertControl(dockHostController, layoutControllerWrapper2.Children, dhc);
					}
				}
				catch
				{
					MessageBox.Show("Error while loading state");
				}
			}
			else if (!parent.Floating)
			{
				if (GetTopParentWrapper(controls, dhc) is SizingControllerWrapper sizingControllerWrapper3)
				{
					Control hostControl = parent.ToplevelController.HostControl;
					hostControl.Controls.Add(dhc.HostControl);
					SizingController sizingController2 = new SizingController(this, hostControl, sizingControllerWrapper3.Orientation);
					sizingController2.ParentController = parent;
					sizingController2.LayoutRect = sizingControllerWrapper3.LayoutRect;
					sizingController2.DICurrent.dStyle = sizingControllerWrapper3.Style;
					sizingController2.DICurrent.nPriority = sizingControllerWrapper3.Priority;
					sizingController2.AddChild(dhc, DockingStyle.Fill);
					if (sizingControllerWrapper3.Priority == -1)
					{
						parent.AddChild(sizingController2, sizingControllerWrapper3.Style);
					}
					else
					{
						parent.InsertChild(sizingController2, sizingControllerWrapper3.Priority, sizingControllerWrapper3.Style);
					}
				}
			}
			else
			{
				dhc.CreateFloatingFrame(dhc.HostControl.PointToScreen(new Point(0, 0)), show: true);
				dcHostForm.AdjustLayout();
			}
		}
		dcHostForm.AdjustLayout();
		return true;
	}

	private bool InsertControl(DockHostController targetController, SizingController targetParent, SizingControllerWrapper parentWrapper, DockHostController dhc)
	{
		bool result = false;
		try
		{
			DockHostControllerWrapper dHCWrapper = GetDHCWrapper(parentWrapper, dhc);
			if (dHCWrapper != null)
			{
				int nsize = dhc.LayoutRect.Height;
				if (dHCWrapper.DockEdge == DockingStyle.Top || dHCWrapper.DockEdge == DockingStyle.Bottom)
				{
					nsize = dhc.LayoutRect.Height;
				}
				else if (dHCWrapper.DockEdge == DockingStyle.Left || dHCWrapper.DockEdge == DockingStyle.Right)
				{
					nsize = dhc.LayoutRect.Width;
				}
				InternalDockControl(dhc.HostControl.Controls[0], targetController, dHCWrapper.DockEdge, nsize);
				result = true;
			}
		}
		catch
		{
		}
		return result;
	}

	private DockHostControllerWrapper GetDHCWrapper(SizingControllerWrapper parentWrapper, DockHostController dhc)
	{
		DockHostControllerWrapper result = null;
		if (parentWrapper != null && dhc != null)
		{
			foreach (LayoutControllerWrapper child in parentWrapper.Children)
			{
				if (child is DockHostControllerWrapper && (child as DockHostControllerWrapper).UniqueName == dhc.UniqueName)
				{
					result = child as DockHostControllerWrapper;
					dhc.LayoutRect = (child as DockHostControllerWrapper).LayoutRect;
					break;
				}
			}
		}
		return result;
	}

	private void InsertControl(DockHostController target, ArrayList children, DockHostController dhc)
	{
		DockStateControllerBase dockStateControllerBase = target;
		if (target.ParentController is DockTabController dockTabController)
		{
			dockStateControllerBase = dockTabController;
		}
		DockControllerBase parentController = target.ParentController;
		if (parentController == null)
		{
			return;
		}
		int hostIndex = GetHostIndex(target, children);
		Size size = target.LayoutRect.Size;
		parentController.ToplevelController.HostControl.Controls.Add(dhc.HostControl);
		if (parentController.ChildCount < 3 && !(parentController is FloatingFormController))
		{
			if (m_bLoadingDockState)
			{
				parentController.InsertChild(dhc, hostIndex, dhc.DockEdge);
			}
			else
			{
				parentController.InsertChild(dhc, hostIndex, target.DICurrent.dStyle);
			}
			dhc.PerformSizeCorrection(parentController as SizingController);
			return;
		}
		SizingController sizingController = new SizingController(this, dockStateControllerBase.ToplevelController.HostControl, dockStateControllerBase.DICurrent.DP);
		DockControllerBase parentController2 = target.ParentController;
		if (parentController2 is DockTabController)
		{
			parentController2 = parentController2.ParentController;
		}
		parentController2.ReplaceChild(dockStateControllerBase, sizingController);
		sizingController.AddChild(dockStateControllerBase, dockStateControllerBase.DICurrent.dStyle);
		sizingController.LayoutRect = new Rectangle(sizingController.LayoutRect.Location, size);
		sizingController.InsertChild(dhc, hostIndex, dockStateControllerBase.DICurrent.dStyle);
		dhc.PerformSizeCorrection(sizingController);
	}

	private int GetHostIndex(DockHostController target, ArrayList children)
	{
		int num = -1;
		foreach (LayoutControllerWrapper child in children)
		{
			if (child is DockHostControllerWrapper dockHostControllerWrapper && dockHostControllerWrapper.UniqueName == target.UniqueName)
			{
				num = children.IndexOf(dockHostControllerWrapper);
			}
			else if (child is DockTabControllerWrapper)
			{
				DockTabControllerWrapper dockTabControllerWrapper = child as DockTabControllerWrapper;
				StringEnumerator enumerator2 = dockTabControllerWrapper.Controls.GetEnumerator();
				try
				{
					while (enumerator2.MoveNext())
					{
						string current = enumerator2.Current;
						if (current == target.UniqueName)
						{
							num = children.IndexOf(dockTabControllerWrapper);
							break;
						}
					}
				}
				finally
				{
					if (enumerator2 is IDisposable disposable)
					{
						disposable.Dispose();
					}
				}
			}
			if (num != -1)
			{
				break;
			}
		}
		switch (num)
		{
		case 0:
			num = 2;
			break;
		default:
			num = 0;
			break;
		case -1:
			break;
		}
		return num;
	}

	private LayoutControllerWrapper GetTopParentWrapper(ArrayList controls, DockHostController dhc)
	{
		LayoutControllerWrapper layoutControllerWrapper = null;
		foreach (LayoutControllerWrapper control in controls)
		{
			if (control is SizingControllerWrapper)
			{
				SizingControllerWrapper sizingControllerWrapper = control as SizingControllerWrapper;
				layoutControllerWrapper = LocateParentWrapper(sizingControllerWrapper.Children, dhc);
				if (layoutControllerWrapper != null)
				{
					return sizingControllerWrapper;
				}
			}
			else if (control is DockHostControllerWrapper)
			{
				if ((control as DockHostControllerWrapper).UniqueName == dhc.UniqueName)
				{
					return control;
				}
			}
			else if (control is DockTabControllerWrapper)
			{
				DockTabControllerWrapper dockTabControllerWrapper = control as DockTabControllerWrapper;
				StringEnumerator enumerator2 = dockTabControllerWrapper.Controls.GetEnumerator();
				try
				{
					while (enumerator2.MoveNext())
					{
						string current = enumerator2.Current;
						if (current == dhc.UniqueName)
						{
							return dockTabControllerWrapper;
						}
					}
				}
				finally
				{
					if (enumerator2 is IDisposable disposable)
					{
						disposable.Dispose();
					}
				}
			}
			else
			{
				if (!alautohide.Contains(dhc) || !(control is DockStateWrapper))
				{
					continue;
				}
				DockStateWrapper dockStateWrapper = control as DockStateWrapper;
				foreach (string item in dockStateWrapper.InternalController)
				{
					if (item == dhc.UniqueName)
					{
						return dockStateWrapper;
					}
				}
			}
		}
		return null;
	}

	private LayoutControllerWrapper LocateParentWrapper(ArrayList controls, DockHostController dhc)
	{
		LayoutControllerWrapper layoutControllerWrapper = null;
		foreach (LayoutControllerWrapper control in controls)
		{
			if (control is SizingControllerWrapper)
			{
				SizingControllerWrapper sizingControllerWrapper = control as SizingControllerWrapper;
				layoutControllerWrapper = LocateParentWrapper(sizingControllerWrapper.Children, dhc);
				if (layoutControllerWrapper != null)
				{
					if (layoutControllerWrapper is SizingControllerWrapper)
					{
						return layoutControllerWrapper;
					}
					return sizingControllerWrapper;
				}
			}
			else if (control is DockHostControllerWrapper)
			{
				if ((control as DockHostControllerWrapper).UniqueName == dhc.UniqueName)
				{
					return control;
				}
			}
			else if (control is DockTabControllerWrapper)
			{
				DockTabControllerWrapper dockTabControllerWrapper = control as DockTabControllerWrapper;
				StringEnumerator enumerator2 = dockTabControllerWrapper.Controls.GetEnumerator();
				try
				{
					while (enumerator2.MoveNext())
					{
						string current = enumerator2.Current;
						if (current == dhc.UniqueName)
						{
							return dockTabControllerWrapper;
						}
					}
				}
				finally
				{
					if (enumerator2 is IDisposable disposable)
					{
						disposable.Dispose();
					}
				}
			}
			else
			{
				if (!alautohide.Contains(dhc) || !(control is DockStateWrapper))
				{
					continue;
				}
				DockStateWrapper dockStateWrapper = control as DockStateWrapper;
				foreach (string item in dockStateWrapper.InternalController)
				{
					if (item == dhc.UniqueName)
					{
						return dockStateWrapper;
					}
				}
			}
		}
		return null;
	}

	protected ArrayList CollectControllers(ArrayList controls)
	{
		ArrayList arrayList = new ArrayList();
		foreach (LayoutControllerWrapper control in controls)
		{
			if (control is SizingControllerWrapper)
			{
				SizingControllerWrapper sizingControllerWrapper = control as SizingControllerWrapper;
				ArrayList c = CollectControllers(sizingControllerWrapper.Children);
				arrayList.AddRange(c);
			}
			else if (control is DockHostControllerWrapper)
			{
				ArrayList arrayList2 = new ArrayList();
				arrayList2.Add((control as DockHostControllerWrapper).UniqueName);
				arrayList.Add(arrayList2);
			}
			else if (control is DockTabControllerWrapper)
			{
				DockTabControllerWrapper dockTabControllerWrapper = control as DockTabControllerWrapper;
				ArrayList arrayList3 = new ArrayList();
				StringEnumerator enumerator2 = dockTabControllerWrapper.Controls.GetEnumerator();
				try
				{
					while (enumerator2.MoveNext())
					{
						string current = enumerator2.Current;
						arrayList3.Add(current);
					}
				}
				finally
				{
					if (enumerator2 is IDisposable disposable)
					{
						disposable.Dispose();
					}
				}
				arrayList.Add(arrayList3);
			}
			else
			{
				if (!(control is DockStateWrapper))
				{
					continue;
				}
				DockStateWrapper dockStateWrapper = control as DockStateWrapper;
				ArrayList arrayList4 = new ArrayList();
				foreach (string item in dockStateWrapper.InternalController)
				{
					foreach (DockHostController item2 in alautohide)
					{
						if (item == item2.UniqueName)
						{
							arrayList4.Add(item);
						}
					}
				}
				arrayList.Add(arrayList4);
			}
		}
		return arrayList;
	}

	internal DockStateControllerWrapper AssembleTabWrapper(InternalDockStateWrapper wrapper)
	{
		ArrayList arrayList = new ArrayList();
		DockHostController dockHostController = null;
		DockStateControllerWrapper dockStateControllerWrapper = new DockStateControllerWrapper(this, null);
		foreach (string key in wrapper.Relations.Keys)
		{
			if (dcHostForm.QueryController(key) is DockHostController value)
			{
				arrayList.Add(value);
			}
		}
		dockStateControllerWrapper.DockRelationControllers = arrayList;
		dockStateControllerWrapper.Relations = wrapper.Relations;
		return dockStateControllerWrapper;
	}

	protected internal DockTabController AssembleTabControl(ArrayList hostControllers)
	{
		DockHostController dockHostController = null;
		if (hostControllers != null)
		{
			ArrayList arrayList = new ArrayList(hostControllers);
			arrayList.Reverse();
			foreach (DockHostController item in arrayList)
			{
				if (item == null || !item.DockVisibility)
				{
					continue;
				}
				if (dockHostController == null)
				{
					dockHostController = item;
					continue;
				}
				DockControllerBase parentController = item.ParentController;
				parentController.RemoveChild(item);
				if (parentController is FloatingFormController)
				{
					FloatingForm floatingForm = parentController.HostControl as FloatingForm;
					floatingForm.Disable();
				}
				item.DINew.nDockIndex = 0;
				dockHostController.InvokeTabbedDocking(item);
				dockHostController = item;
			}
		}
		return dockHostController.ParentController as DockTabController;
	}

	internal DockHostController LocateDockController(ControllerWrapper cw)
	{
		DockHostController dockHostController = null;
		if (cw is FloatingFormControllerWrapper)
		{
			foreach (ControllerWrapper child in cw.Children)
			{
				dockHostController = LocateDockController(child);
				if (dockHostController != null)
				{
					break;
				}
			}
		}
		else if (cw is SizingControllerWrapper)
		{
			foreach (ControllerWrapper child2 in cw.Children)
			{
				dockHostController = LocateDockController(child2);
				if (dockHostController != null)
				{
					break;
				}
			}
		}
		else if (cw is DockTabControllerWrapper)
		{
			DockTabControllerWrapper dockTabControllerWrapper = cw as DockTabControllerWrapper;
			StringEnumerator enumerator3 = dockTabControllerWrapper.Controls.GetEnumerator();
			try
			{
				while (enumerator3.MoveNext())
				{
					string current = enumerator3.Current;
					dockHostController = dcHostForm.QueryController(current) as DockHostController;
					if (dockHostController != null)
					{
						break;
					}
				}
			}
			finally
			{
				if (enumerator3 is IDisposable disposable)
				{
					disposable.Dispose();
				}
			}
		}
		else if (cw is DockHostControllerWrapper)
		{
			string uniqueName = (cw as DockHostControllerWrapper).UniqueName;
			dockHostController = dcHostForm.QueryController(uniqueName) as DockHostController;
		}
		return dockHostController;
	}

	[DocumentationExclude]
	protected void ApplyDeserializedState(DockHostController dhc, DHCSerializationWrapper dhcwrapper)
	{
		StopAutoHideAnimation();
		dcHostForm.bOverlapSizing = false;
		if (dhc.bInMDIMode)
		{
			if (dhc.ctrlReference != null)
			{
				SetAsMDIChild(dhc.ctrlReference, bsetmdi: false);
			}
			else
			{
				dhc.bInMDIMode = false;
			}
		}
		if (dhc.FloatOnly)
		{
			dhc.FloatOnly = false;
		}
		if (dhc.AutoHideMode)
		{
			dhc.ToggleAutoHideMode();
		}
		if (!dhc.DockVisibility)
		{
			dhc.DockVisibility = true;
		}
		if (dhc.ParentController is DockTabController)
		{
			DockTabController dockTabController = dhc.ParentController as DockTabController;
			dockTabController.RemoveDockHostFromTab(dhc, btransittoprev: false);
		}
		dhc.FloatDCRList.Clear();
		dhc.DockDCRList.Clear();
		if (dhc.Floating)
		{
			dhc.HostControl.Parent.Visible = false;
		}
		else
		{
			dhc.HostControl.Visible = false;
		}
		if ((!dhcwrapper.bInMDIMode && !dhc.Floating && dhcwrapper.dockInfoCurrent.DP != DockPreference.All) || (dhc.Floating && dhcwrapper.dockInfoCurrent.DP == DockPreference.All))
		{
			dhc.InvokePrevDockFloatTransition(dhc.Floating);
		}
		dhc.DockDCRList = dhcwrapper.alDockDCR;
		dhc.FloatDCRList = dhcwrapper.alFloatDCR;
		if (dhcwrapper.dockInfoCurrent.DP != DockPreference.All)
		{
			dhcwrapper.dockInfoCurrent.dController = dcHostForm;
		}
		else
		{
			(dhc.HostControl as DockHost).DragRectangle = dhcwrapper.dockInfoCurrent.rcDockArea;
		}
		if (dhcwrapper.dockInfoPrevious.DP != DockPreference.All)
		{
			dhcwrapper.dockInfoPrevious.dController = dcHostForm;
		}
		dhc.DIPrevious = new DockInfo(dhcwrapper.dockInfoCurrent);
		if (!dhcwrapper.bInMDIMode)
		{
			dhc.InvokePrevDockFloatTransition(showFloating: true);
		}
		dhc.DIPrevious = new DockInfo(dhcwrapper.dockInfoPrevious);
		dhc.DockVisibility = dhcwrapper.bDockVisibility;
		dhc.FloatOnly = dhcwrapper.bFloatOnly;
		dhc.bInMDIMode = dhcwrapper.bInMDIMode;
		dhc.UniqueName = dhcwrapper.uniqueName;
		if (!dhc.Floating)
		{
			dhc.DIPrevious.rcDockArea = Rectangle.Empty;
			(dhc.HostControl as DockHost).DragRectangle = Rectangle.Empty;
		}
		if (dhc.DockVisibility && (!(dhc.ParentController is DockTabController) || dhc.DockTab != null))
		{
			if (dhc.Floating && HostControl.IsHandleCreated && Syncfusion.Runtime.InteropServices.NativeMethods.IsWindowVisible(HostControl.Handle))
			{
				dhc.HostControl.Parent.Visible = true;
			}
			dhc.HostControl.Visible = true;
		}
		if (dhcwrapper.bAutoHideMode && !dhc.AutoHideMode)
		{
			dhc.ToggleAutoHideMode();
			dcHostForm.GetAHTabControl(dhc.DINew.dStyle).HideController(dhc, banimate: false);
		}
		if (dhc.bInMDIMode && dhc.DockVisibility && !dhc.FloatOnly)
		{
			SetAsMDIChild(dhc.HostControl.Controls[0], bsetmdi: true);
		}
		if (!dhc.bInMDIMode && dhcwrapper.ctrlSize != Size.Empty)
		{
			DockControllerBase dockControllerBase = ((!(dhc.ParentController is DockTabController)) ? dhc.ParentController : dhc.ParentController.ParentController);
			Size newsize = Size.Empty;
			newsize = ((!(dhcwrapper.layoutSize == Size.Empty)) ? new Size((int)((float)dhcwrapper.ctrlSize.Width / (float)dhcwrapper.layoutSize.Width * (float)dockControllerBase.LayoutRect.Width), (int)((float)dhcwrapper.ctrlSize.Height / (float)dhcwrapper.layoutSize.Height * (float)dockControllerBase.LayoutRect.Height)) : dhcwrapper.ctrlSize);
			SetControlSize(dhc.HostControl.Controls[0], newsize);
		}
		dcHostForm.bOverlapSizing = true;
	}

	[DocumentationExclude]
	protected void ApplyDeserializedState(DockHostController dhc, DockingMgrSerializationWrapperAdv dmgrwrapper)
	{
		StopAutoHideAnimation();
		dhc.HostControl.Visible = false;
		dcHostForm.bOverlapSizing = false;
		if (dhc.bInMDIMode)
		{
			if (dhc.ctrlReference != null)
			{
				SetAsMDIChild(dhc.ctrlReference, bsetmdi: false);
			}
			else
			{
				dhc.bInMDIMode = false;
			}
		}
		if (dhc.FloatOnly)
		{
			dhc.FloatOnly = false;
		}
		if (dhc.AutoHideMode)
		{
			dhc.ToggleAutoHideMode();
		}
		if (!dhc.DockVisibility)
		{
			dhc.DockVisibility = true;
		}
		if (dhc.ParentController is DockTabController)
		{
			DockTabController dockTabController = dhc.ParentController as DockTabController;
			dockTabController.RemoveDockHostFromTab(dhc, btransittoprev: false);
		}
		if (dhc.Floating)
		{
			dhc.InvokePrevDockFloatTransition(showFloating: false);
			dhc.SharedForm = null;
		}
		dhc.FloatDCRList.Clear();
		dhc.DockDCRList.Clear();
		DHCSerializationWrapper dHCSerializationWrapper = dmgrwrapper.GetDHCSerializationWrapper(dhc);
		ArrayList floatingControllerWrappers = dmgrwrapper.FloatingControllerWrappers;
		ControllerWrapper controllerWrapper = dmgrwrapper.controllerWrapper;
		alautohide = new ArrayList();
		if (dHCSerializationWrapper.bAutoHideMode || !dHCSerializationWrapper.bDockVisibility)
		{
			alautohide.Add(dhc);
		}
		FloatingFormControllerWrapper floatingFormControllerWrapper = null;
		dhc.UniqueName = dHCSerializationWrapper.uniqueName;
		dhc.LayoutRect = new Rectangle(dhc.LayoutRect.Location, dHCSerializationWrapper.layoutSize);
		foreach (FloatingFormControllerWrapper item in floatingControllerWrappers)
		{
			if (item.Children.Count > 0 && SearchWrappers(item.Children, dhc))
			{
				floatingFormControllerWrapper = item;
				break;
			}
		}
		if (LocateParentWrapper(controllerWrapper.Children, dhc) != null)
		{
			ReArrangeControl(dcHostForm, controllerWrapper.Children, dhc);
		}
		else
		{
			bool flag = false;
			if (floatingFormControllerWrapper != null)
			{
				foreach (FloatingFormController alFFController in alFFControllers)
				{
					if (ReArrangeControl(alFFController, floatingFormControllerWrapper.Children, dhc))
					{
						flag = true;
						break;
					}
				}
				if (!flag)
				{
					dhc.InternalForm = null;
					dhc.SharedForm = null;
					DockControllerBase parentController = dhc.ParentController;
					parentController.RemoveChild(dhc);
					dhc.DINew.rcDockArea.Height = 0;
					dhc.InternalFloatWrapper = null;
					parentController.Refresh();
					FloatingForm floatingForm = dhc.CreateFloatingFrame(floatingFormControllerWrapper.LayoutRect.Location, show: true);
					floatingForm.Size = floatingFormControllerWrapper.LayoutRect.Size;
					ReArrangeControls(floatingForm.InternalController, floatingFormControllerWrapper.Children);
					floatingForm.Enable(show: true);
					floatingForm.Used = true;
					(floatingForm.InternalController as FloatingFormController).RefreshFormCaption();
					floatingForm.InternalController.AdjustLayout();
				}
			}
			if (dhc.ToplevelController is FloatingFormController floatingFormController)
			{
				floatingFormController.RefreshFormCaption();
			}
		}
		if (dHCSerializationWrapper.bAutoHideMode)
		{
			dhc.EnterAutoHideMode();
		}
		dhc.HostControl.Visible = true;
		dhc.DockVisibility = dHCSerializationWrapper.bDockVisibility;
	}

	protected bool SearchWrappers(ArrayList wr, DockHostController dhc)
	{
		bool flag = false;
		for (int i = 0; i < wr.Count; i++)
		{
			if (wr[i] is DockHostControllerWrapper dockHostControllerWrapper)
			{
				if (dockHostControllerWrapper.UniqueName == dhc.UniqueName)
				{
					flag = true;
					break;
				}
				flag = SearchWrappers(dockHostControllerWrapper.Children, dhc);
				if (flag)
				{
					break;
				}
			}
		}
		return flag;
	}

	internal ArrayList GetFloatingWrapper()
	{
		ArrayList arrayList = new ArrayList();
		foreach (FloatingFormController alFFController in alFFControllers)
		{
			arrayList.Add(alFFController.GetWrapper());
		}
		foreach (FloatingFormController alHiddenFFController in alHiddenFFControllers)
		{
			arrayList.Add(alHiddenFFController.GetWrapper());
		}
		return arrayList;
	}

	internal ArrayList GetAhOnLoadList()
	{
		ArrayList arrayList = new ArrayList();
		foreach (Control item in listAHOnLoad)
		{
			DockHostController dockHostController = GetDockHostController(item);
			if (dockHostController != null)
			{
				arrayList.Add(dockHostController.UniqueName);
			}
		}
		return arrayList;
	}

	protected internal void SetActiveControl(Control ctrl)
	{
		if (m_activeControl != ctrl && !StopActivationEvents)
		{
			if (m_activeControl != null && !bHoldEvents)
			{
				OnDockControlDeactivated(new DockActivationChangedEventArgs(ctrlLastActive));
			}
			if (ctrl != null)
			{
				ctrlLastActive = ctrl;
			}
			m_activeControl = ctrl;
			if (ctrl != null && !bHoldEvents)
			{
				dactivatedFlag = 1;
				OnDockControlActivated(new DockActivationChangedEventArgs(ctrl));
			}
		}
	}

	[DocumentationExclude]
	protected bool IterSetSplitterPosition(DockControllerBase dcthis, bool bvertsplitter, int ndelta)
	{
		if (dcthis == null)
		{
			return false;
		}
		DockControllerBase parentController = dcthis.ParentController;
		if (parentController == null)
		{
			return false;
		}
		IEnumerator childEnumerator = parentController.ChildEnumerator;
		if (childEnumerator != null && parentController.ChildCount > 1)
		{
			DockControllerBase[] array = new DockControllerBase[parentController.ChildCount];
			childEnumerator.Reset();
			int num = 0;
			while (childEnumerator.MoveNext())
			{
				array[num++] = childEnumerator.Current as DockControllerBase;
			}
			int num2 = Array.IndexOf(array, dcthis, 0);
			int num3 = num2 - 1;
			int num4 = num2 + 1;
			if (num4 < array.GetLength(0))
			{
				DockControllerBase dockControllerBase = array[num4];
				if (dockControllerBase is DragSplitterController && ((bvertsplitter && dockControllerBase.HostControl.Cursor == Cursors.VSplit) || (!bvertsplitter && dockControllerBase.HostControl.Cursor == Cursors.HSplit)))
				{
					DragSplitterController dragSplitterController = dockControllerBase as DragSplitterController;
					if (parentController.ParentController == dcHostForm && (parentController.DICurrent.dStyle == DockingStyle.Right || parentController.DICurrent.dStyle == DockingStyle.Bottom))
					{
						if (bvertsplitter)
						{
							(dragSplitterController.HostControl as DragSplitter).DragDockInfo.rcDockArea.X -= ndelta;
						}
						else
						{
							(dragSplitterController.HostControl as DragSplitter).DragDockInfo.rcDockArea.Y -= ndelta;
						}
					}
					else if (bvertsplitter)
					{
						(dragSplitterController.HostControl as DragSplitter).DragDockInfo.rcDockArea.X += ndelta;
					}
					else
					{
						(dragSplitterController.HostControl as DragSplitter).DragDockInfo.rcDockArea.Y += ndelta;
					}
					dragSplitterController.ResizeTargetPanes();
					dragSplitterController.ParentController.AdjustLayout();
					return true;
				}
			}
			if (num3 >= 0)
			{
				DockControllerBase dockControllerBase2 = array[num3];
				if (dockControllerBase2 is DragSplitterController && ((bvertsplitter && dockControllerBase2.HostControl.Cursor == Cursors.VSplit) || (!bvertsplitter && dockControllerBase2.HostControl.Cursor == Cursors.HSplit)))
				{
					DragSplitterController dragSplitterController2 = dockControllerBase2 as DragSplitterController;
					if (parentController.ParentController == dcHostForm && (parentController.DICurrent.dStyle == DockingStyle.Right || parentController.DICurrent.dStyle == DockingStyle.Bottom))
					{
						if (bvertsplitter)
						{
							(dragSplitterController2.HostControl as DragSplitter).DragDockInfo.rcDockArea.X += ndelta;
						}
						else
						{
							(dragSplitterController2.HostControl as DragSplitter).DragDockInfo.rcDockArea.Y += ndelta;
						}
					}
					else if (bvertsplitter)
					{
						(dragSplitterController2.HostControl as DragSplitter).DragDockInfo.rcDockArea.X -= ndelta;
					}
					else
					{
						(dragSplitterController2.HostControl as DragSplitter).DragDockInfo.rcDockArea.Y -= ndelta;
					}
					dragSplitterController2.ResizeTargetPanes();
					dragSplitterController2.ParentController.AdjustLayout();
					return true;
				}
			}
		}
		return IterSetSplitterPosition(parentController, bvertsplitter, ndelta);
	}

	[DocumentationExclude]
	protected internal void StopAutoHideAnimation()
	{
		if (alDockAreaControllers[0] is MainFormController mainFormController)
		{
			mainFormController.ahTabCtrlB.StopAllAnimations();
			mainFormController.ahTabCtrlL.StopAllAnimations();
			mainFormController.ahTabCtrlR.StopAllAnimations();
			mainFormController.ahTabCtrlT.StopAllAnimations();
		}
	}

	[DocumentationExclude]
	protected internal void DockToFormController(DockStateControllerBase ctrl)
	{
		DockInfo dINew = ctrl.DINew;
		if (dINew.dController is MainFormController mainFormController)
		{
			ctrl.HostControl.Visible = false;
			if (!mainFormController.HostControl.Controls.Contains(ctrl.HostControl))
			{
				mainFormController.HostControl.Controls.Add(ctrl.HostControl);
			}
			ctrl.LayoutRect = ToDockHostRectangle(dINew.rcDockArea);
			SizingController sizingController = new SizingController(this, mainFormController.HostControl, dINew.DP);
			Size empty = Size.Empty;
			switch (dINew.DP)
			{
			case DockPreference.Horizontal:
				empty.Width = splitterWidth;
				break;
			case DockPreference.Vertical:
				empty.Height = splitterWidth;
				break;
			}
			if (bDockToFill)
			{
				sizingController.LayoutRect = dINew.rcDockArea;
			}
			else
			{
				sizingController.LayoutRect = ToDockHostRectangle(dINew.rcDockArea.X, dINew.rcDockArea.Y, dINew.rcDockArea.Width + empty.Width, dINew.rcDockArea.Height + empty.Height);
			}
			sizingController.DICurrent = new DockInfo(dINew);
			if (dINew.nPriority == -1)
			{
				mainFormController.AddChild(sizingController, dINew.dStyle);
			}
			else
			{
				mainFormController.InsertChild(sizingController, dINew.nPriority, dINew.dStyle);
			}
			sizingController.AddChild(ctrl, dINew.dStyle);
			mainFormController.AdjustLayout();
			if (ctrl.HostControl.DataBindings.Count == 0 && ctrl.HostControl.BindingContext != null)
			{
				ctrl.HostControl.Controls[0].BindingContext = null;
			}
			ctrl.HostControl.Visible = true;
		}
	}

	[DocumentationExclude]
	protected internal void DockToNewSizingController(DockStateControllerBase ctrl)
	{
		if (ctrl == null)
		{
			return;
		}
		DockInfo dINew = ctrl.DINew;
		DockInfo dICurrent = dINew.dController.DICurrent;
		int nDockIndex = dICurrent.nDockIndex;
		if (ctrl.HostControl != null)
		{
			ctrl.HostControl.Visible = false;
		}
		if (!(dINew.dController.HostControl is ContainerControl containerControl))
		{
			return;
		}
		Control control = null;
		if (containerControl == HostControl || containerControl.Parent == HostControl)
		{
			control = HostControl;
		}
		if (control == null)
		{
			control = ((!(containerControl is Form)) ? containerControl.ParentForm : containerControl);
		}
		if (control == null)
		{
			return;
		}
		if (!control.Controls.Contains(ctrl.HostControl))
		{
			control.Controls.Add(ctrl.HostControl);
		}
		ctrl.LayoutRect = new Rectangle(0, 0, dINew.rcDockArea.Width, dINew.rcDockArea.Height);
		DockControllerBase parentController = dINew.dController.ParentController;
		if (parentController != null)
		{
			parentController.RemoveChild(dINew.dController);
			DockPreference dp = ((dINew.dStyle == DockingStyle.Left || dINew.dStyle == DockingStyle.Right) ? DockPreference.Horizontal : DockPreference.Vertical);
			SizingController sizingController = new SizingController(this, parentController.HostControl, dp);
			sizingController.LayoutRect = dINew.dController.LayoutRect;
			sizingController.DICurrent = new DockInfo(parentController, dICurrent.dStyle, 0, dICurrent.nDockIndex, dp, sizingController.LayoutRect);
			sizingController.ParentController = parentController;
			sizingController.AddChild(dINew.dController, DockingStyle.Fill);
			dINew.dController.DICurrent.dStyle = dICurrent.dStyle;
			int index = 0;
			if (dINew.dStyle == DockingStyle.Right || dINew.dStyle == DockingStyle.Bottom)
			{
				index = 1;
			}
			sizingController.InsertChild(ctrl, index, dINew.dStyle);
			parentController.InsertChild(sizingController, nDockIndex, dICurrent.dStyle);
			ctrl.DICurrent.dStyle = dICurrent.dStyle;
			sizingController.PriorityController = ctrl;
			parentController.AdjustLayout();
			sizingController.PriorityController = null;
			if (ctrl.HostControl != null)
			{
				ctrl.HostControl.Visible = true;
			}
		}
	}

	internal void DockToBlankSizingController(DockStateControllerBase ctrl)
	{
		if (DockToFill)
		{
			ctrl.DINew.dController = dcHostForm;
			DockToNewSizingControllerFillMode(ctrl);
			return;
		}
		SizingController sizingController = new SizingController(this, HostControl, ctrl.DICurrent.DP);
		DockControllerBase parentController = ctrl.ParentController;
		dcHostForm.HostControl.Controls.Add(ctrl.HostControl);
		if (parentController != null)
		{
			parentController.RemoveChild(ctrl);
			parentController.Refresh();
		}
		sizingController.ParentController = dcHostForm;
		sizingController.AddChild(ctrl, DockingStyle.Left);
		dcHostForm.AddChild(sizingController, DockingStyle.Left);
	}

	[DocumentationExclude]
	protected internal void DockToSizingController(DockStateControllerBase ctrl)
	{
		if (ctrl.DINew.rcDockArea.Size == Size.Empty)
		{
			ctrl.DINew.rcDockArea.Size = new Size(ctrl.LayoutRect.Width, ctrl.LayoutRect.Height);
		}
		DockInfo dINew = ctrl.DINew;
		int nDockIndex = dINew.nDockIndex;
		ctrl.HostControl.Visible = false;
		ContainerControl containerControl = dINew.dController.HostControl as ContainerControl;
		Control control = null;
		if (containerControl == HostControl || containerControl.Parent == HostControl)
		{
			control = HostControl;
		}
		if (control == null)
		{
			control = ((!(containerControl is Form)) ? containerControl.ParentForm : containerControl);
		}
		if (!control.Controls.Contains(ctrl.HostControl))
		{
			control.Controls.Add(ctrl.HostControl);
		}
		SizingController sizingController = dINew.dController as SizingController;
		if (sizingController.ParentController.MainFormController && !bDockToFill)
		{
			if (sizingController.DICurrent.DP == DockPreference.Horizontal)
			{
				sizingController.LayoutRect = new Rectangle(sizingController.LayoutRect.Left, sizingController.LayoutRect.Top, sizingController.LayoutRect.Width + dINew.rcDockArea.Width, sizingController.LayoutRect.Height);
			}
			else
			{
				sizingController.LayoutRect = new Rectangle(sizingController.LayoutRect.Left, sizingController.LayoutRect.Top, sizingController.LayoutRect.Width, sizingController.LayoutRect.Height + dINew.rcDockArea.Height);
			}
		}
		sizingController.InsertChild(ctrl, nDockIndex, sizingController.DICurrent.dStyle);
		ctrl.LayoutRect = dINew.rcDockArea;
		sizingController.PriorityController = ctrl;
		sizingController.ParentController.AdjustLayout();
		sizingController.PriorityController = null;
		ctrl.HostControl.Visible = true;
	}

	[DocumentationExclude]
	protected internal void DockToNewSizingControllerFillMode(DockStateControllerBase ctrl)
	{
		DockInfo dINew = ctrl.DINew;
		if (dINew.dController is MainFormController mainFormController)
		{
			ctrl.HostControl.Visible = false;
			if (!mainFormController.HostControl.Controls.Contains(ctrl.HostControl))
			{
				mainFormController.HostControl.Controls.Add(ctrl.HostControl);
			}
			ctrl.LayoutRect = dINew.rcDockArea;
			DockControllerBase childAt = mainFormController.GetChildAt(0);
			DockControllerBase childAt2 = childAt.GetChildAt(0);
			DockInfo dICurrent = childAt2.DICurrent;
			childAt.RemoveChild(childAt2);
			DockPreference dp = ((dINew.dStyle == DockingStyle.Left || dINew.dStyle == DockingStyle.Right) ? DockPreference.Horizontal : DockPreference.Vertical);
			SizingController sizingController = new SizingController(this, childAt.HostControl, dp);
			Rectangle layoutRect = ctrl.LayoutRect;
			bool flag = false;
			if (!(childAt2 is DockStateControllerWrapper))
			{
				layoutRect = childAt2.LayoutRect;
			}
			if (childAt2 is SizingController && (childAt2 as SizingController).IsEmpty)
			{
				layoutRect = ctrl.LayoutRect;
				flag = true;
			}
			sizingController.LayoutRect = layoutRect;
			sizingController.DICurrent = new DockInfo(childAt, dICurrent.dStyle, 0, dICurrent.nDockIndex, dp, sizingController.LayoutRect);
			childAt.InsertChild(sizingController, dICurrent.nDockIndex, dICurrent.dStyle);
			sizingController.AddChild(childAt2, DockingStyle.Fill);
			childAt2.DICurrent.dStyle = dICurrent.dStyle;
			int index = 0;
			if (dINew.dStyle == DockingStyle.Right || dINew.dStyle == DockingStyle.Bottom)
			{
				index = 1;
			}
			sizingController.InsertChild(ctrl, index, dINew.dStyle);
			ctrl.DICurrent.dStyle = dICurrent.dStyle;
			_ = childAt2.DCRCurrent;
			int hashCode = sizingController.GetHashCode();
			sizingController.DCRCurrent = new DCRelationship(hashCode, child: false, sizingController.DICurrent.DP, -1);
			ctrl.AddToDCR(new DCRelationship(hashCode, child: true, sizingController.DICurrent.DP, sizingController.GetChildHostIndex(ctrl)));
			if (childAt2 is SizingController)
			{
				SizingController sizingController2 = childAt2 as SizingController;
				sizingController2.AddToDCRSharedList(new DCRelationship(hashCode, child: true, sizingController.DICurrent.DP, sizingController.GetChildHostIndex(sizingController2)), baddtochildren: true);
			}
			else
			{
				childAt2.DCRCurrent = new DCRelationship(hashCode, child: true, sizingController.DICurrent.DP, sizingController.GetChildHostIndex(childAt2));
			}
			if (sizingController.GetDockControllers().Count > 1 && NeedDTFPriorityController)
			{
				sizingController.PriorityController = ctrl;
			}
			childAt.AdjustLayout();
			sizingController.PriorityController = null;
			ctrl.HostControl.Visible = true;
			if (flag)
			{
				sizingController.ParentController.AdjustLayout();
			}
		}
	}

	protected internal void InitiateFormDrag(FloatingForm floatForm, Point ptscreen, Point offset)
	{
		Point location = floatForm.Location;
		if (!SystemInformation.DragFullWindows)
		{
			floatForm.DragOffset = offset;
		}
		location.Offset(offset.X, offset.Y);
		if (SystemInformation.DragFullWindows && !SystemInformation.TerminalServerSession)
		{
			DockHost dockHost = floatForm.Controls[0] as DockHost;
			Control control = dockHost.Controls[0];
			Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(floatForm.Handle, 274, 61458, Syncfusion.Runtime.InteropServices.NativeMethods.MAKELPARAM(Cursor.Position.X, Cursor.Position.Y));
			if (control != null && !control.Focused && !(control.Parent is DockingWrapperForm))
			{
				control.Focus();
			}
			return;
		}
		IntPtr intPtr = Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(floatForm.Handle, 132, 0, Syncfusion.Runtime.InteropServices.NativeMethods.MAKELPARAM(location.X, location.Y));
		if (intPtr.ToInt32() == 14)
		{
			while (intPtr.ToInt32() != 2)
			{
				location.X -= offset.X;
				intPtr = Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(floatForm.Handle, 132, 0, Syncfusion.Runtime.InteropServices.NativeMethods.MAKELPARAM(location.X, location.Y));
			}
		}
		Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(floatForm.Handle, 32, floatForm.Handle, Syncfusion.Runtime.InteropServices.NativeMethods.MAKELPARAM(2, 513));
		Syncfusion.Runtime.InteropServices.NativeMethods.PostMessage(floatForm.Handle, 161, new IntPtr(2), new IntPtr(Syncfusion.Runtime.InteropServices.NativeMethods.MAKELPARAM(location.X, location.Y)));
		Point location2 = new Point(Cursor.Position.X - offset.X, Cursor.Position.Y - offset.Y);
		floatForm.Location = location2;
	}

	protected internal void ImportControl(DockControllerBase dc)
	{
		DockingManager dockingManager = dc.DockingManager;
		dc.PreviousDockingMgr = dc.DockingManager;
		ArrayList arrayList = new ArrayList();
		DockUtilities.RecGetChildControllers(dc, arrayList);
		foreach (DockHostController item in arrayList)
		{
			if (item.ImageIndex > -1 && dockingManager.ImageList != null && item.ImageIndex < dockingManager.ImageList.Images.Count)
			{
				Image image = dockingManager.ImageList.Images[item.ImageIndex];
				if (image != null)
				{
					dockingManager.ImageList.Images.RemoveAt(item.ImageIndex);
					ImageList.Images.Add(dc.HostControl.Controls[0].GetHashCode().ToString(), image);
					item.ImageIndex = ImageList.Images.Count - 1;
				}
			}
			CaptionButtonsCollection customCaptionButtons = item.DockingManager.GetCustomCaptionButtons(item.HostControl.Controls[0]);
			if (customCaptionButtons != null)
			{
				SetCustomCaptionButtons(item.HostControl.Controls[0], customCaptionButtons);
			}
			dockingManager.RemoveControllerFromDockingManager(item);
			AddControllerToDockingManager(item);
		}
		if (dockingManager != null)
		{
			dockingManager.controllerInFocus = null;
		}
		if (dc.DockingManager != this)
		{
			dc.DockingManager = this;
		}
	}

	[DocumentationExclude]
	protected internal void UndockFromController(DockControllerBase ctrl)
	{
		SetRelativeSize(ctrl);
		ctrl.Deleting = true;
		SizingController sizingController = ctrl.ParentController as SizingController;
		FloatingFormController floatingFormController = ctrl.ToplevelController as FloatingFormController;
		PerformFormsExchange(ctrl);
		bool bForbidFreeze = m_bForbidFreeze;
		m_bForbidFreeze = true;
		if (sizingController != null)
		{
			DockControllerBase parentController = sizingController.ParentController;
			if (!sizingController.ParentController.MainFormController)
			{
				DockInfo newdi = new DockInfo(ctrl.ParentController, ctrl.DICurrent.dStyle, ctrl.DICurrent.nPriority, -1, ctrl.DICurrent.DP, (ctrl.HostControl == null) ? Rectangle.Empty : ctrl.HostControl.RectangleToScreen(ctrl.HostControl.ClientRectangle));
				DCRelationship dCRelationship = null;
				DockPreference dP = sizingController.DICurrent.DP;
				int childHostIndex = sizingController.GetChildHostIndex(ctrl);
				dCRelationship = ((sizingController.DCRCurrent == null) ? new DCRelationship(0, child: true, dP, childHostIndex) : new DCRelationship(sizingController.DCRCurrent.nRelation, child: true, dP, childHostIndex));
				ctrl.FireControllerChanged(newdi, dCRelationship);
				_ = ctrl.DICurrent.nDockIndex;
				DockControllerBase toplevelController = ctrl.ToplevelController;
				DockStateControllerBase dockStateControllerBase = ctrl as DockStateControllerBase;
				DockStateControllerWrapper dockStateControllerWrapper = null;
				if (dockStateControllerBase != null && !ForbidWrapperLogic)
				{
					dockStateControllerWrapper = ((dockStateControllerBase.TempWrapper == null || dockStateControllerBase.TempWrapper.ParentController != sizingController) ? new DockStateControllerWrapper(this, dockStateControllerBase) : dockStateControllerBase.TempWrapper);
					sizingController.ReplaceChild(dockStateControllerBase, dockStateControllerWrapper);
					if (sizingController.Floating)
					{
						dockStateControllerBase.InternalFloatWrapper = dockStateControllerWrapper;
					}
					else
					{
						dockStateControllerBase.InternalDockWrapper = dockStateControllerWrapper;
					}
					dockStateControllerWrapper.ParentController.AdjustLayout();
					sizingController = dockStateControllerWrapper.ParentController as SizingController;
				}
				else
				{
					sizingController.RemoveChild(ctrl);
				}
				if (toplevelController.Floating)
				{
					toplevelController.AdjustLayout();
				}
				else
				{
					ReduceParentSize(ctrl, sizingController);
				}
			}
			else
			{
				DockInfo newdi2 = new DockInfo(ctrl.ParentController, ctrl.DICurrent.dStyle, ctrl.DICurrent.nPriority, -1, ctrl.DICurrent.DP, (ctrl.HostControl == null) ? Rectangle.Empty : ctrl.HostControl.RectangleToScreen(ctrl.HostControl.ClientRectangle));
				DCRelationship dcr = null;
				if (sizingController.DCRCurrent != null)
				{
					dcr = new DCRelationship(sizingController.DCRCurrent.nRelation, child: true, sizingController.DICurrent.DP, sizingController.GetChildHostIndex(ctrl));
				}
				ctrl.FireControllerChanged(newdi2, dcr);
				DockStateControllerBase dockStateControllerBase2 = ctrl as DockStateControllerBase;
				DockStateControllerWrapper dockStateControllerWrapper2 = null;
				if (dockStateControllerBase2 != null && !ForbidWrapperLogic)
				{
					dockStateControllerWrapper2 = ((dockStateControllerBase2.TempWrapper == null || dockStateControllerBase2.TempWrapper.ParentController != sizingController) ? new DockStateControllerWrapper(this, dockStateControllerBase2) : dockStateControllerBase2.TempWrapper);
					sizingController.ReplaceChild(dockStateControllerBase2, dockStateControllerWrapper2);
					if (sizingController.Floating)
					{
						dockStateControllerBase2.InternalFloatWrapper = dockStateControllerWrapper2;
					}
					else
					{
						dockStateControllerBase2.InternalDockWrapper = dockStateControllerWrapper2;
					}
					dockStateControllerWrapper2.ParentController.AdjustLayout();
					sizingController = dockStateControllerWrapper2.ParentController as SizingController;
				}
				else
				{
					sizingController.RemoveChild(ctrl);
				}
				if (sizingController.ChildCount == 0)
				{
					newdi2 = new DockInfo(parentController, sizingController.DICurrent.dStyle, sizingController.ParentController.GetChildHostIndex(sizingController), -1, sizingController.DICurrent.DP, new Rectangle(0, 0, sizingController.LayoutRect.Width, sizingController.LayoutRect.Height));
					parentController.RemoveChild(sizingController);
					sizingController.FireControllerChanged(newdi2, null);
				}
				else
				{
					ReduceParentSize(ctrl, sizingController);
				}
			}
			dcHostForm.AdjustLayout();
		}
		else if (ctrl.ParentController != null && ctrl.ParentController is FloatingFormController)
		{
			Control hostControl = ctrl.ToplevelController.HostControl;
			DockInfo newdi3 = new DockInfo(null, DockingStyle.Fill, 0, -1, DockPreference.All, hostControl.Bounds);
			ctrl.FireControllerChanged(newdi3, null);
			DockControllerBase parentController2 = ctrl.ParentController;
			DockStateControllerBase dockStateControllerBase3 = ctrl as DockStateControllerBase;
			DockStateControllerWrapper dockStateControllerWrapper3 = null;
			if (dockStateControllerBase3 != null && !ForbidWrapperLogic)
			{
				dockStateControllerWrapper3 = ((dockStateControllerBase3.TempWrapper == null || dockStateControllerBase3.TempWrapper.ParentController != parentController2) ? new DockStateControllerWrapper(this, dockStateControllerBase3) : dockStateControllerBase3.TempWrapper);
				parentController2.ReplaceChild(dockStateControllerBase3, dockStateControllerWrapper3);
				dockStateControllerBase3.InternalFloatWrapper = dockStateControllerWrapper3;
			}
			else
			{
				parentController2.RemoveChild(ctrl);
			}
			parentController2.FireControllerChanged(newdi3, null);
		}
		if (ctrl is DockStateControllerBase dockStateControllerBase4)
		{
			dockStateControllerBase4.ExitMaxMinState();
		}
		if (ctrl.HostControl is ContainerControl { Parent: not null } containerControl && containerControl.Parent.Controls.Contains(containerControl))
		{
			if (!DesignProcess && containerControl.Parent == HostControl)
			{
				try
				{
					if (ctrl is DockHostController { DockVisibility: false })
					{
						LockActivationEvents = 0;
					}
					else
					{
						LockActivationEvents++;
					}
					if (containerControl.ContainsFocus)
					{
						dcHostForm.FocusHolderControl.Visible = true;
						dcHostForm.FocusHolderControl.Focus();
						containerControl.Parent.Controls.Remove(containerControl);
						dcHostForm.FocusHolderControl.Visible = false;
					}
				}
				finally
				{
					LockActivationEvents--;
				}
			}
			else
			{
				containerControl.Parent.Controls.Remove(containerControl);
			}
		}
		floatingFormController?.RefreshFormCaption();
		m_bForbidFreeze = bForbidFreeze;
		ctrl.Deleting = false;
	}

	internal void SetRelativeSize(DockControllerBase ctrl)
	{
		_ = string.Empty;
		if (ctrl is DockHostController)
		{
			_ = (ctrl as DockHostController).UniqueName;
		}
		else
		{
			ctrl.GetHashCode().ToString();
		}
		DockStateControllerBase dockStateControllerBase = ctrl as DockStateControllerBase;
		DockControllerBase dockControllerBase = ctrl;
		if (ctrl.ParentController == null)
		{
			return;
		}
		FloatingFormController floatingFormController = ctrl.ToplevelController as FloatingFormController;
		if (floatingFormController == null)
		{
			dockStateControllerBase.PreviousDockSize = dockStateControllerBase.LayoutRect.Size;
		}
		else
		{
			dockStateControllerBase.PreviousFloatSize = dockStateControllerBase.LayoutRect.Size;
		}
		bool floating = dockStateControllerBase.Floating;
		if (dockStateControllerBase == null)
		{
			return;
		}
		string empty = string.Empty;
		ArrayList arrayList = ((floatingFormController != null) ? dockStateControllerBase.StoredFloatSizes : dockStateControllerBase.StoredDockSizes);
		if (ctrl.ParentController is DockTabController dockTabController)
		{
			dockStateControllerBase = dockTabController;
		}
		for (SizingController sizingController = dockStateControllerBase.ParentController as SizingController; sizingController != null; sizingController = sizingController.ParentController as SizingController)
		{
			float num = 0f;
			if (sizingController.ChildCount == 3)
			{
				int childHostIndex = sizingController.GetChildHostIndex(dockControllerBase);
				DockControllerBase dockControllerBase2 = null;
				dockControllerBase2 = ((childHostIndex != 0) ? sizingController.GetChildAt(0) : sizingController.GetChildAt(2));
				empty = ((!(dockControllerBase2 is DockHostController)) ? dockControllerBase2.GetHashCode().ToString() : (dockControllerBase2 as DockHostController).UniqueName);
				if (dockControllerBase2.DITransient.rcDockArea == Rectangle.Empty)
				{
					dockControllerBase2.DITransient.rcDockArea = dockControllerBase2.LayoutRect;
				}
				if (dockControllerBase.DITransient.rcDockArea == Rectangle.Empty)
				{
					dockControllerBase.DITransient.rcDockArea = dockControllerBase.LayoutRect;
				}
				num = ((sizingController.DockingOrder != DockPreference.Vertical) ? ((float)dockControllerBase2.DITransient.rcDockArea.Width / (float)dockControllerBase.DITransient.rcDockArea.Width) : ((float)dockControllerBase2.DITransient.rcDockArea.Height / (float)dockControllerBase.DITransient.rcDockArea.Height));
				DockStateControllerBase dockStateControllerBase2 = dockControllerBase2 as DockStateControllerBase;
				string empty2 = string.Empty;
				empty2 = ((!(dockControllerBase is DockHostController)) ? dockControllerBase.GetHashCode().ToString() : (dockControllerBase as DockHostController).UniqueName);
				if (dockStateControllerBase2 != null)
				{
					if (floating)
					{
						dockStateControllerBase2.StoredFloatSizes.Insert(0, new RelationNamePair(empty2, 1f / num));
					}
					else
					{
						dockStateControllerBase2.StoredDockSizes.Insert(0, new RelationNamePair(empty2, 1f / num));
					}
				}
			}
			else
			{
				empty = string.Empty;
			}
			ArrayList arrayList2 = new ArrayList();
			foreach (RelationNamePair item in arrayList)
			{
				if (item.Name == empty && empty != string.Empty)
				{
					arrayList2.Add(item);
				}
			}
			foreach (RelationNamePair item2 in arrayList2)
			{
				arrayList.Remove(item2);
			}
			arrayList.Add(new RelationNamePair(empty, num));
			dockControllerBase = sizingController;
		}
	}

	private ArrayList GetSiblings(DockControllerBase ctrl)
	{
		SizingController sizingController = ctrl.ParentController as SizingController;
		ArrayList arrayList = new ArrayList();
		if (sizingController != null)
		{
			DockControllerBase dockControllerBase = null;
			int childHostIndex = sizingController.GetChildHostIndex(ctrl);
			if (sizingController.ChildCount == 3)
			{
				dockControllerBase = ((childHostIndex != 0) ? sizingController.GetChildAt(0) : sizingController.GetChildAt(2));
			}
			if (dockControllerBase != null && !(dockControllerBase is DockStateControllerWrapper))
			{
				if (dockControllerBase is SizingController)
				{
					SizingController sizingController2 = dockControllerBase as SizingController;
					arrayList = sizingController2.GetDockControllers();
					if (childHostIndex == 2)
					{
						arrayList.Reverse();
					}
				}
				else if (dockControllerBase is DockHostController)
				{
					arrayList.Add(dockControllerBase);
				}
				else if (dockControllerBase is DockTabController)
				{
					arrayList.Add((dockControllerBase as DockTabController).HostController);
				}
			}
		}
		return arrayList;
	}

	[DocumentationExclude]
	protected internal bool AttemptFloatingFormDCRDocking(DockHostController ctrl, IEnumerator iedcr)
	{
		while (iedcr.MoveNext())
		{
			IEnumerator iedcr2 = new IEnumWrapper(iedcr.Current);
			foreach (FloatingFormController alFFController in alFFControllers)
			{
				if (alFFController.AttemptDCRDocking(ctrl, iedcr2))
				{
					return true;
				}
			}
		}
		return false;
	}

	[DocumentationExclude]
	protected virtual MainFormController CreateMainFormController(ContainerControl hostcontrol)
	{
		return new MainFormController(this, hostcontrol);
	}

	[DocumentationExclude]
	protected virtual DockHost CreateDockHost(Control ctrl)
	{
		return new DockHost(this, ctrl);
	}

	protected internal virtual FloatingForm CreateFloatingForm()
	{
		return new FloatingForm(this);
	}

	[DocumentationExclude]
	protected void RecSubscribeHostControlEvents(Control ctrl, bool subscribe)
	{
		if (ctrl == null)
		{
			return;
		}
		if (subscribe)
		{
			foreach (ArrayList item in subscribed)
			{
				if (item.Count > 0)
				{
					Control control = item[item.Count - 1] as Control;
					if (control.Parent == ctrl)
					{
						item.Add(ctrl);
					}
				}
			}
			ArrayList arrayList2 = new ArrayList();
			arrayList2.Add(ctrl);
			subscribed.Add(arrayList2);
			if (ctrl != HostControl)
			{
				ctrl.ControlRemoved += HostControl_ControlRemoved;
			}
			ctrl.ParentChanged += HostControl_ParentChanged;
			ctrl.VisibleChanged += HostControl_VisibleChanged;
			if (ctrl.Parent != null)
			{
				RecSubscribeHostControlEvents(ctrl.Parent, subscribe);
			}
			return;
		}
		for (int i = 0; i < subscribed.Count; i++)
		{
			if (!(subscribed[i] is ArrayList { Count: >0 } arrayList3))
			{
				continue;
			}
			Control control2 = arrayList3[0] as Control;
			if (control2 != ctrl)
			{
				continue;
			}
			foreach (Control item2 in arrayList3)
			{
				if (item2 != HostControl)
				{
					item2.ControlRemoved -= HostControl_ControlRemoved;
				}
				item2.ParentChanged -= HostControl_ParentChanged;
				item2.VisibleChanged -= HostControl_VisibleChanged;
			}
			subscribed.Remove(arrayList3);
		}
	}

	[DocumentationExclude]
	protected void HostControl_HandleCreated(object sender, EventArgs e)
	{
		if (bWaitOnLayoutEvent)
		{
			HostControl.Layout += HostControl_Layout;
		}
		if (subclass == null)
		{
			subclass = new MainWindowSubclass();
			subclass.OnDeactivate += subclass_OnDeactivate;
			subclass.OnMdiActivate += ProcessMDIActivate;
			subclass.OnClose += HostForm_OnClose;
		}
		else
		{
			subclass.ReleaseHandle();
		}
		subclass.AssignHandle(HostControl.Handle);
		Graphics graphics = Graphics.FromHwnd(HostControl.Handle);
		UpdateFonts(graphics.DpiY);
		AssignNotifyWindow();
	}

	[DocumentationExclude]
	protected void HostControl_SystemColorsChanged(object sender, EventArgs e)
	{
		m_dragProvider.UpdateColors();
		Graphics graphics = Graphics.FromHwnd(HostControl.Handle);
		UpdateFonts(graphics.DpiY);
		if (VisualStyle != VisualStyle.Default)
		{
			Renderer.RefreshColors();
		}
	}

	[DocumentationExclude]
	protected void HostControl_Paint(object sender, PaintEventArgs e)
	{
		Form hostForm = HostForm;
		if (hostForm != null)
		{
			Form[] ownedForms = hostForm.OwnedForms;
			foreach (Form form in ownedForms)
			{
				if (form.Modal && form.Visible && alFFControllers.Count != 0)
				{
					return;
				}
			}
		}
		HostControl.Paint -= HostControl_Paint;
		dcHostForm.GetAHTabControl(DockingStyle.Left).Name = "AHTabControl_Left" + HostControl.Name;
		dcHostForm.GetAHTabControl(DockingStyle.Top).Name = "AHTabControl_Top" + HostControl.Name;
		dcHostForm.GetAHTabControl(DockingStyle.Right).Name = "AHTabControl_Right" + HostControl.Name;
		dcHostForm.GetAHTabControl(DockingStyle.Bottom).Name = "AHTabControl_Bottom" + HostControl.Name;
		if (bMDIActivatedVisibility)
		{
			Form form2 = null;
			form2 = ((!(HostControl is Form)) ? HostControl.ParentForm : (HostControl as Form));
			if (form2 != null && form2.IsMdiChild && form2.MdiParent.ActiveMdiChild != form2)
			{
				return;
			}
		}
		bFloatingVisibility = true;
		foreach (FloatingFormController alFFController in alFFControllers)
		{
			if (!alFFController.HostControl.Visible)
			{
				alFFController.HostControl.Visible = true;
			}
		}
	}

	[DocumentationExclude]
	protected void HostForm_Closed(object sender, EventArgs e)
	{
		if (!DesignMode && bPersistState)
		{
			SaveDockState();
		}
		foreach (FloatingFormController alFFController in alFFControllers)
		{
			if (alFFController.HostControl.Visible)
			{
				alFFController.HostControl.Visible = false;
			}
		}
	}

	internal void ProcessMDIActivate(object sender, Message msg)
	{
		if (!bMDIActivatedVisibility)
		{
			return;
		}
		Form form = null;
		if (HostControl is Form && (HostControl as Form).IsMdiChild)
		{
			form = HostControl as Form;
		}
		if (form == null && HostControl.ParentForm != null && HostControl.ParentForm.IsMdiChild)
		{
			form = HostControl.ParentForm;
		}
		if (form == null)
		{
			return;
		}
		if (msg.LParam == form.Handle)
		{
			bool flag = true;
			for (Control control = HostControl; control != null; control = control.Parent)
			{
				if (!control.Visible)
				{
					flag = false;
					break;
				}
			}
			if (flag && !bFloatingVisibility)
			{
				dcHostForm.FocusHolderControl.Enable();
				dcHostForm.FocusHolderControl.Visible = true;
				dcHostForm.FocusHolderControl.Focus();
				dcHostForm.FocusHolderControl.LockFocus = true;
				bFloatingVisibility = true;
				foreach (FloatingFormController alFFController in alFFControllers)
				{
					if (!alFFController.HostControl.Visible)
					{
						alFFController.HostControl.Visible = true;
					}
				}
				dcHostForm.FocusHolderControl.LockFocus = false;
				dcHostForm.FocusHolderControl.Visible = false;
				dcHostForm.FocusHolderControl.Disable();
			}
		}
		if (!(msg.WParam == form.Handle) || !bFloatingVisibility)
		{
			return;
		}
		bFloatingVisibility = false;
		foreach (FloatingFormController alFFController2 in alFFControllers)
		{
			if (alFFController2.HostControl.Visible)
			{
				alFFController2.HostControl.Visible = false;
			}
		}
	}

	[DocumentationExclude]
	protected void HostControl_ParentChanged(object sender, EventArgs e)
	{
		Control control = sender as Control;
		if (control.Parent == null && HostControl == null)
		{
			return;
		}
		RecSubscribeHostControlEvents(control.Parent, subscribe: true);
		Form parentForm = HostControl.ParentForm;
		if (parentForm == null)
		{
			return;
		}
		if (parentForm != frmOwner)
		{
			if (frmOwner != null)
			{
				frmOwner.HandleCreated -= OwnerForm_HandleCreated;
			}
			frmOwner = parentForm;
			frmOwner.HandleCreated += OwnerForm_HandleCreated;
		}
		foreach (FloatingFormController alFFController in alFFControllers)
		{
			Form form = alFFController.HostControl as Form;
			form.Owner = null;
			form.Owner = parentForm;
			form.BringToFront();
		}
	}

	[DocumentationExclude]
	protected void OwnerForm_HandleCreated(object sender, EventArgs e)
	{
		foreach (FloatingFormController alFFController in alFFControllers)
		{
			Form form = alFFController.HostControl as Form;
			form.Owner = null;
			form.Owner = frmOwner;
			form.BringToFront();
		}
	}

	[DocumentationExclude]
	protected void HostControl_ControlRemoved(object sender, ControlEventArgs e)
	{
		for (Control control = HostControl; control != null; control = control.Parent)
		{
			if (control == e.Control)
			{
				Control control2 = sender as Control;
				if (control2 is Form)
				{
					Form form = control2 as Form;
					foreach (FloatingFormController alFFController in alFFControllers)
					{
						FloatingForm floatingForm = alFFController.HostControl as FloatingForm;
						if (floatingForm.Owner == form)
						{
							form.RemoveOwnedForm(floatingForm);
						}
					}
				}
				RecSubscribeHostControlEvents(control2, subscribe: false);
				break;
			}
		}
	}

	[DocumentationExclude]
	protected void HostControl_VisibleChanged(object sender, EventArgs e)
	{
		Control control = sender as Control;
		if (HostControl != control)
		{
			return;
		}
		if (control.Visible)
		{
			if (!Syncfusion.Runtime.InteropServices.NativeMethods.IsWindowVisible(HostControl.Handle) || bFloatingVisibility)
			{
				return;
			}
			bFloatingVisibility = true;
			{
				foreach (FloatingFormController alFFController in alFFControllers)
				{
					if (!alFFController.HostControl.Visible)
					{
						alFFController.HostControl.Visible = true;
					}
				}
				return;
			}
		}
		if (!bHostActivatedVisibility || Syncfusion.Runtime.InteropServices.NativeMethods.IsWindowVisible(HostControl.Handle) || !bFloatingVisibility)
		{
			return;
		}
		bFloatingVisibility = false;
		foreach (FloatingFormController alFFController2 in alFFControllers)
		{
			if (alFFController2.HostControl.Visible)
			{
				alFFController2.HostControl.Visible = false;
			}
		}
	}

	[DocumentationExclude]
	protected void HostControl_Layout(object sender, LayoutEventArgs levent)
	{
		if (DesignDockStateLoad)
		{
			return;
		}
		HostControl.Layout -= HostControl_Layout;
		if (dcHostForm != null && dcHostForm.LayoutRect != HostControl.DisplayRectangle)
		{
			dcHostForm.LayoutRect = HostControl.DisplayRectangle;
		}
		bWaitOnLayoutEvent = false;
		LockHostFormUpdate();
		bool flag = bApplyMinMaxExtents;
		bApplyMinMaxExtents = false;
		bool lResult = false;
		foreach (Control item in alEnableDocking)
		{
			SetEnableDocking(item, value: true);
		}
		ApplyDHCInitialSettings();
		bool flag2 = bPersistState;
		if (bPersistState)
		{
			flag2 = !DesignProcess && LoadDockState();
		}
		if (!flag2 && stmLayout != null && stmLayout.Length > 0)
		{
			try
			{
				OnNewDockStateBeginLoad(EventArgs.Empty);
				stmLayout.Seek(0L, SeekOrigin.Begin);
				m_isInitializing = true;
				LoadFromStream(stmLayout);
				if (!DesignProcess)
				{
					ApplyDHCAHSettings();
				}
				ApplyDHCFloatOnlySettings();
				if (!DesignProcess)
				{
					ApplyDHCHiddenOnLoadSettings();
				}
				lResult = true;
			}
			catch (Exception)
			{
			}
			finally
			{
				DockStateLoadEventArgs arg = new DockStateLoadEventArgs(lResult);
				OnNewDockStateEndLoad(arg);
				m_isInitializing = false;
			}
		}
		foreach (Control item2 in alEnableDocking)
		{
			if (item2.Parent != null)
			{
				item2.Parent.TabIndex = item2.TabIndex;
			}
		}
		if (DesignProcess && !DesignMode && !(HostControl is Form))
		{
			foreach (DockControllerBase alFFController in alFFControllers)
			{
				alFFController.HostControl.Visible = false;
			}
		}
		bApplyMinMaxExtents = flag;
		UnlockHostFormUpdate();
	}

	[DocumentationExclude]
	protected void HostControl_RightToLeftChanged(object objSender, EventArgs eaArgs)
	{
		if (objSender is Control control)
		{
			UpdateRightToLeftProperty(control.RightToLeft);
			RestoreFloatingForms();
		}
	}

	protected virtual void OnImageListChanged(EventArgs arg)
	{
		if (this.ImageListChanged != null)
		{
			this.ImageListChanged(this, arg);
		}
	}

	[DocumentationExclude]
	protected internal void FireDragAllowEvent(DragAllowEventArgs arg)
	{
		if (!bHoldEvents)
		{
			OnDragAllow(arg);
		}
	}

	protected virtual void OnDragAllow(DragAllowEventArgs arg)
	{
		if (this.DragAllow != null)
		{
			this.DragAllow(this, arg);
		}
	}

	[DocumentationExclude]
	protected internal void FireDockAllowEvent(DockAllowEventArgs arg)
	{
		if (!bHoldEvents)
		{
			OnDockAllow(arg);
		}
	}

	protected virtual void OnDockAllow(DockAllowEventArgs arg)
	{
		if (this.DockAllow != null)
		{
			this.DockAllow(this, arg);
		}
	}

	[DocumentationExclude]
	protected internal void FireDockStateChangeEvent(string strevent, DockStateChangeEventArgs arg)
	{
		if (!bHoldEvents && !bFreezeDockStateChangeEvents)
		{
			if (strevent == "DockStateChanging")
			{
				OnDockStateChanging(arg);
			}
			else if (strevent == "DockStateChanged")
			{
				OnDockStateChanged(arg);
			}
		}
	}

	[DocumentationExclude]
	protected internal void FireControlSizeStateChanged(ControlSizeStates newState, ControlSizeStateChangedEventArgs args)
	{
		switch (newState)
		{
		case ControlSizeStates.Maximized:
			OnControlMaximized(args as ControlMaximizedEventArgs);
			break;
		case ControlSizeStates.Maximize:
			OnControlMaximizing(args as ControlMaximizeEventArgs);
			break;
		case ControlSizeStates.Minimize:
			OnControlMinimized(args as ControlMinimizedEventArgs);
			break;
		case ControlSizeStates.Restore:
			OnControlRestored(args as ControlRestoredEventArgs);
			break;
		}
	}

	protected virtual void OnControlMinimized(ControlMinimizedEventArgs args)
	{
		if (this.ControlMinimized != null)
		{
			this.ControlMinimized(this, args);
		}
	}

	protected virtual void OnControlMaximizing(ControlMaximizeEventArgs args)
	{
		if (this.ControlMaximizing != null)
		{
			this.ControlMaximizing(this, args);
		}
	}

	protected virtual void OnControlMaximized(ControlMaximizedEventArgs args)
	{
		if (this.ControlMaximized != null)
		{
			this.ControlMaximized(this, args);
		}
	}

	protected virtual void OnControlRestored(ControlRestoredEventArgs args)
	{
		if (this.ControlRestored != null)
		{
			this.ControlRestored(this, args);
		}
	}

	protected virtual void OnDockStateChanging(DockStateChangeEventArgs arg)
	{
		if (this.DockStateChanging != null)
		{
			this.DockStateChanging(this, arg);
		}
	}

	protected virtual void OnDockStateChanged(DockStateChangeEventArgs arg)
	{
		if (this.DockStateChanged != null)
		{
			this.DockStateChanged(this, arg);
		}
	}

	[DocumentationExclude]
	protected internal void FireDockVisibilityChangedEvent(DockVisibilityChangedEventArgs arg)
	{
		if (!bHoldEvents)
		{
			OnDockVisibilityChanged(arg);
		}
	}

	[DocumentationExclude]
	protected internal void FireDockVisibilityChangingEvent(DockVisibilityChangingEventArgs arg)
	{
		if (!bHoldEvents)
		{
			OnDockVisibilityChanging(arg);
		}
	}

	[DocumentationExclude]
	protected internal void FireDockMenuClickEvent(Control dockControl, DockingStyle ds)
	{
		if (!bHoldEvents)
		{
			DockMenuClickEventArgs arg = new DockMenuClickEventArgs(dockControl, ds);
			OnDockMenuClick(arg);
		}
	}

	protected virtual void OnDockVisibilityChanged(DockVisibilityChangedEventArgs arg)
	{
		if (this.DockVisibilityChanged != null)
		{
			this.DockVisibilityChanged(this, arg);
		}
	}

	protected virtual bool OnDockVisibilityChanging(DockVisibilityChangingEventArgs arg)
	{
		if (this.DockVisibilityChanging != null)
		{
			this.DockVisibilityChanging(this, arg);
		}
		return !arg.Cancel;
	}

	protected virtual void OnDockMenuClick(DockMenuClickEventArgs arg)
	{
		if (this.DockMenuClick != null)
		{
			this.DockMenuClick(this, arg);
		}
	}

	protected virtual void OnDockControlActivated(DockActivationChangedEventArgs arg)
	{
		if (this.DockControlActivated != null && bAllowActivationEvents && (mouseActivatedControl == null || mouseActivatedControl == arg.Control))
		{
			lastActivated = arg.Control;
			mouseActivatedControl = null;
			if (LockActivationEvents <= 0)
			{
				this.DockControlActivated(this, arg);
			}
		}
	}

	protected virtual void OnDockControlDeactivated(DockActivationChangedEventArgs arg)
	{
		if (this.DockControlDeactivated != null && LockActivationEvents <= 0 && lastActivated == arg.Control && bAllowActivationEvents)
		{
			dactivatedFlag = 1;
			this.DockControlDeactivated(this, arg);
		}
	}

	[DocumentationExclude]
	protected internal void FireAutoHideAnimationEvent(string strevent, AutoHideAnimationEventArgs arg)
	{
		if (!bHoldEvents)
		{
			if (strevent == "AutoHideAnimationStart")
			{
				OnAutoHideAnimationStart(arg);
			}
			else if (strevent == "AutoHideAnimationStop")
			{
				OnAutoHideAnimationStop(arg);
			}
		}
	}

	protected virtual void OnAutoHideAnimationStart(AutoHideAnimationEventArgs arg)
	{
		if (this.AutoHideAnimationStart != null)
		{
			this.AutoHideAnimationStart(this, arg);
		}
	}

	protected virtual void OnAutoHideAnimationStop(AutoHideAnimationEventArgs arg)
	{
		DockHost dockHost = arg.Control.Parent as DockHost;
		if (dockHost.DisplayRectangle != Rectangle.Empty)
		{
			arg.RollState = AutoHideRollState.RolledOut;
		}
		else
		{
			arg.RollState = AutoHideRollState.RolledIn;
		}
		ForceHideActiveControl = false;
		if (this.AutoHideAnimationStop != null)
		{
			this.AutoHideAnimationStop(this, arg);
		}
	}

	protected virtual void OnNewDockStateBeginLoad(EventArgs arg)
	{
		if (this.NewDockStateBeginLoad != null)
		{
			this.NewDockStateBeginLoad(this, arg);
		}
	}

	protected virtual void OnNewDockStateEndLoad(EventArgs arg)
	{
		if (this.NewDockStateEndLoad != null)
		{
			this.NewDockStateEndLoad(this, arg);
		}
	}

	[DocumentationExclude]
	protected internal void FireDragFeedbackEvent(string strevent)
	{
		if (!bHoldEvents)
		{
			if (strevent == "DragFeedbackStart")
			{
				OnDragFeedbackStart(EventArgs.Empty);
			}
			else if (strevent == "DragFeedbackStop")
			{
				OnDragFeedbackStop(EventArgs.Empty);
			}
		}
	}

	protected virtual void OnDragFeedbackStart(EventArgs arg)
	{
		if (this.DragFeedbackStart != null)
		{
			this.DragFeedbackStart(this, arg);
		}
		if (HostForm != null)
		{
			if (HostForm.TopMost)
			{
				isHostFormTopMost = true;
				HostForm.TopMost = false;
			}
			else
			{
				isHostFormTopMost = false;
			}
		}
	}

	protected virtual void OnDragFeedbackStop(EventArgs arg)
	{
		if (isHostFormTopMost)
		{
			isHostFormTopMost = false;
			HostForm.TopMost = true;
		}
		if (this.DragFeedbackStop != null)
		{
			this.DragFeedbackStop(this, arg);
		}
	}

	[DocumentationExclude]
	protected internal void FireProvideGraphicsItemsEvent(ProvideGraphicsItemsEventArgs arg)
	{
		if (!bHoldEvents && arg != null)
		{
			OnProvideGraphicsItems(arg);
		}
	}

	[DocumentationExclude]
	protected internal void FireAutoHideTabContextMenuEvent(AutoHideTabContextMenuEventArgs ahcmenuargs)
	{
		OnAutoHideTabContextMenu(ahcmenuargs);
	}

	protected virtual void OnAutoHideTabContextMenu(AutoHideTabContextMenuEventArgs ahcmenuargs)
	{
		if (this.AutoHideTabContextMenu != null)
		{
			this.AutoHideTabContextMenu(null, ahcmenuargs);
		}
	}

	protected virtual void OnProvideGraphicsItems(ProvideGraphicsItemsEventArgs arg)
	{
		if (this.ProvideGraphicsItems != null)
		{
			try
			{
				this.ProvideGraphicsItems(this, arg);
			}
			catch (Exception)
			{
			}
		}
	}

	protected virtual void OnDockStateUnavailable(DockStateUnavailableEventArgs arg)
	{
		if (this.DockStateUnavailable != null)
		{
			this.DockStateUnavailable(this, arg);
		}
	}

	protected void OnInitializeControlOnLoad(InitializeControlOnLoadEventArgs args)
	{
		if (this.InitializeControlOnLoad != null)
		{
			this.InitializeControlOnLoad(this, args);
		}
	}

	protected void OnTransferringFromManager(TransferManagerEventArgs args)
	{
		if (this.TransferringFromManager != null)
		{
			this.TransferringFromManager(this, args);
		}
	}

	protected void OnTransferredToManager(TransferManagerEventArgs args)
	{
		if (this.TransferredToManager != null)
		{
			this.TransferredToManager(this, args);
		}
	}

	[DocumentationExclude]
	protected void InvalidateDockControllers()
	{
		foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
		{
			if (alDockAreaController is DockHostController { HostControl: var hostControl } dockHostController)
			{
				if (dockHostController.ParentController is DockTabController)
				{
					dockHostController.ParentController.AdjustLayout();
				}
				hostControl.Invalidate();
			}
		}
	}

	[DocumentationExclude]
	protected virtual void InitializeDefaultMenu(DockHostController dhc, PopupMenu menu)
	{
		BarItem barItem = null;
		Form form = HostControl as Form;
		if (form != null || HostControl != null)
		{
			barItem = new BarItem(SR.GetString("DockableMenuItemText"), OnMenuDockable_Click);
			barItem.Tag = dhc.HostControl.Controls[0];
			if (!dhc.FloatOnly && !dhc.bInMDIMode)
			{
				barItem.Checked = true;
			}
			menu.ParentBarItem.Items.Add(barItem);
		}
		BarItem barItem2 = null;
		menu.ParentBarItem.Style = VisualStyle;
		bool flag = false;
		if ((GetOuterDockAbility(dhc.HostControl.Controls[0]) & DockAbility.Tabbed) != DockAbility.None)
		{
			flag = true;
		}
		if (MenuStyle == DockMenuStyle.VS2005 && flag)
		{
			bool flag2 = false;
			if (form != null)
			{
				TabbedMDIManager managerForForm = TabbedMDIManager.GetManagerForForm(form);
				if (managerForForm != null)
				{
					flag2 = true;
				}
			}
			barItem2 = ((!flag2) ? new BarItem(SR.GetString("MDIChildMenuItemText"), OnMenuMDIChild_Click) : new BarItem(SR.GetString("TabbedMDIMenuItemText"), OnMenuMDIChild_Click));
			barItem2.Tag = dhc.HostControl.Controls[0];
			barItem2.Enabled = form != null && form.IsMdiContainer && !dhc.AutoHideMode;
			barItem2.Checked = dhc.bInMDIMode;
			menu.ParentBarItem.Items.Add(barItem2);
		}
		BarItem barItem3 = null;
		if (bCloseEnabled && dhc.CloseButtonVisibility && !dhc.AutoHideMode)
		{
			barItem3 = new BarItem(SR.GetString("HideMenuItemText"), OnMenuHide_Click);
			barItem3.Tag = dhc.HostControl.Controls[0];
			menu.ParentBarItem.Items.Add(barItem3);
		}
		bool allowFloating = dhc.AllowFloating;
		if (dhc.ParentController is DockTabController && !m_singleTabOperate)
		{
			allowFloating = dhc.ParentController.AllowFloating;
		}
		BarItem barItem4 = null;
		if (!bDisallowFloating && allowFloating)
		{
			barItem4 = new BarItem(SR.GetString("FloatingMenuItemText"), OnMenuFloat_Click);
			barItem4.Tag = dhc.HostControl.Controls[0];
			if (dhc.FloatOnly)
			{
				barItem4.Checked = true;
			}
			if (MenuStyle == DockMenuStyle.VS2003)
			{
				menu.ParentBarItem.Items.Add(barItem4);
			}
			else
			{
				menu.ParentBarItem.Items.Insert(0, barItem4);
			}
		}
		if (!dhc.Floating || MenuStyle == DockMenuStyle.VS2005)
		{
			BarItem barItem5 = null;
			barItem5 = new BarItem(SR.GetString("AutoHideMenuItemText"), OnMenuAutoHide_Click);
			barItem5.Tag = dhc.HostControl.Controls[0];
			barItem5.Enabled = dhc.AutoHideButtonVisibility && !dhc.Floating;
			if (dhc.AutoHideMode)
			{
				if (barItem != null)
				{
					barItem.Checked = false;
					barItem.Enabled = false;
				}
				if (barItem3 != null)
				{
					barItem3.Enabled = false;
				}
				if (barItem4 != null)
				{
					barItem4.Enabled = false;
				}
				if (barItem5 != null)
				{
					barItem5.Checked = true;
				}
			}
			if (barItem5 != null)
			{
				if (MenuStyle == DockMenuStyle.VS2003)
				{
					menu.ParentBarItem.Items.Add(barItem5);
				}
				else
				{
					int index = Math.Min(3, menu.ParentBarItem.Items.Count);
					menu.ParentBarItem.Items.Insert(index, barItem5);
				}
			}
		}
		if (barItem4 == null || !barItem4.Checked)
		{
			BarItem barItem6 = new BarItem(SR.GetString("MenuItemDockToLeft"), OnMenuDockToLeft_Click);
			barItem6.Tag = dhc.HostControl.Controls[0];
			BarItem barItem7 = new BarItem(SR.GetString("MenuItemDockToRight"), OnMenuDockToRight_Click);
			barItem7.Tag = dhc.HostControl.Controls[0];
			BarItem barItem8 = new BarItem(SR.GetString("MenuItemDockToTop"), OnMenuDockToTop_Click);
			barItem8.Tag = dhc.HostControl.Controls[0];
			BarItem barItem9 = new BarItem(SR.GetString("MenuItemDockToBottom"), OnMenuDockToBottom_Click);
			barItem9.Tag = dhc.HostControl.Controls[0];
			ParentBarItem parentBarItem = new ParentBarItem(SR.GetString("MenuItemDockTo"));
			parentBarItem.Items.Add(barItem6);
			parentBarItem.Items.Add(barItem7);
			parentBarItem.Items.Add(barItem8);
			parentBarItem.Items.Add(barItem9);
			menu.ParentBarItem.Items.Add(parentBarItem);
		}
	}

	protected internal virtual void OnDockContextMenu(DockContextMenuEventArgs arg)
	{
		if (this.DockContextMenu != null)
		{
			this.DockContextMenu(this, arg);
		}
	}

	[DocumentationExclude]
	protected void OnMenuDockable_Click(object sender, EventArgs arg)
	{
		BarItem barItem = sender as BarItem;
		if (!(barItem.Tag is Control))
		{
			return;
		}
		Control ctrl = barItem.Tag as Control;
		DockHostController dockHostController = GetDockHostController(ctrl);
		if (dockHostController.FloatOnly)
		{
			if (dockHostController.bInMDIMode)
			{
				dockHostController.bInMDIMode = false;
			}
			dockHostController.FloatOnly = false;
		}
		else if (HostControl is Form && (HostControl as Form).IsMdiContainer && MenuStyle != DockMenuStyle.VS2005)
		{
			if (!dockHostController.bInMDIMode)
			{
				SetAsMDIChild(ctrl, bsetmdi: true);
			}
			else
			{
				dockHostController.bInMDIMode = false;
			}
		}
	}

	[DocumentationExclude]
	protected void OnMenuHide_Click(object sender, EventArgs arg)
	{
		BarItem barItem = sender as BarItem;
		if (barItem.Tag is Control)
		{
			Control ctrl = barItem.Tag as Control;
			if (!barItem.Checked)
			{
				SetDockVisibility(ctrl, bvisible: false);
			}
		}
	}

	[DocumentationExclude]
	protected void OnMenuFloat_Click(object sender, EventArgs arg)
	{
		BarItem barItem = sender as BarItem;
		if (barItem.Tag is Control)
		{
			Control control = barItem.Tag as Control;
			if (!barItem.Checked)
			{
				SetFloatOnly(control, bfloating: true);
				control.TopLevelControl.Focus();
				control.Focus();
			}
			else if (MenuStyle == DockMenuStyle.VS2003)
			{
				SetFloatOnly(control, bfloating: false);
			}
			barItem.Checked = !barItem.Checked;
		}
	}

	[DocumentationExclude]
	protected void OnMenuDockToLeft_Click(object sender, EventArgs arg)
	{
		ProcessDockToClick(sender, DockingStyle.Left);
	}

	[DocumentationExclude]
	protected void OnMenuDockToRight_Click(object sender, EventArgs arg)
	{
		ProcessDockToClick(sender, DockingStyle.Right);
	}

	[DocumentationExclude]
	protected void OnMenuDockToTop_Click(object sender, EventArgs arg)
	{
		ProcessDockToClick(sender, DockingStyle.Top);
	}

	[DocumentationExclude]
	protected void OnMenuDockToBottom_Click(object sender, EventArgs arg)
	{
		ProcessDockToClick(sender, DockingStyle.Bottom);
	}

	[DocumentationExclude]
	protected void OnMenuAutoHide_Click(object sender, EventArgs arg)
	{
		BarItem barItem = sender as BarItem;
		if (barItem.Tag is Control)
		{
			Control ctrl = barItem.Tag as Control;
			ToggleAHState(ctrl, !barItem.Checked, m_singleTabOperate, animate: true);
			barItem.Checked = !barItem.Checked;
		}
	}

	protected internal void ToggleAHState(DockHostController dhc, bool ahState, bool singleTab, bool animate)
	{
		if (dhc == null)
		{
			return;
		}
		DockTabController dockTabController = dhc.ParentController as DockTabController;
		DockingStyle controllerBorder = dcHostForm.GetControllerBorder(dhc);
		if (dockTabController != null && singleTab)
		{
			DockStateControllerWrapper dockStateControllerWrapper = new DockStateControllerWrapper(this, dockTabController);
			dockStateControllerWrapper.ParentController = dockTabController.ParentController;
			dockTabController.SetChildWrapper(dockStateControllerWrapper);
			DockTabPage dockTabPage = null;
			foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
			{
				if (tabPage.dhcClient == dhc)
				{
					dockTabPage = tabPage;
				}
			}
			if (dockTabPage != null)
			{
				dockTabController.TabControl.TabPages.Remove(dockTabPage);
			}
		}
		if (ahState)
		{
			if (dockTabController != null && singleTab)
			{
				dhc.DINew.dStyle = controllerBorder;
				dhc.bInAutoHide = true;
				dcHostForm.EnterAutoHideMode(dhc, animate: false);
				if (!animate)
				{
					dcHostForm.GetAHTabControl(controllerBorder).HideController(dhc, banimate: false);
				}
			}
			else
			{
				dhc.AutoHideMode = true;
			}
		}
		else
		{
			dhc.AutoHideMode = false;
		}
		if (dockTabController != null && singleTab && ahState)
		{
			dockTabController.UpdateTabPages();
		}
		dcHostForm.AdjustLayout();
	}

	protected internal void ToggleAHState(Control ctrl, bool ahState, bool singleTab, bool animate)
	{
		if (ctrl != null)
		{
			DockHostController dockHostController = GetDockHostController(ctrl);
			ToggleAHState(dockHostController, ahState, singleTab, animate);
		}
	}

	protected void OnMenuMDIChild_Click(object sender, EventArgs arg)
	{
		BarItem barItem = sender as BarItem;
		if (barItem.Tag is Control)
		{
			Control ctrl = barItem.Tag as Control;
			GetDockHostController(ctrl);
			if (!barItem.Checked)
			{
				SetAsMDIChild(ctrl, bsetmdi: true);
			}
		}
	}

	[DocumentationExclude]
	protected void MDIFormDockableItem_Click(object sender, EventArgs e)
	{
		BarItem barItem = sender as BarItem;
		DockingWrapperForm dockingWrapperForm = barItem.Tag as DockingWrapperForm;
		SetAsMDIChild(dockingWrapperForm.ctrlChildRef, bsetmdi: false);
	}

	[DocumentationExclude]
	protected void MDIFormHideItem_Click(object sender, EventArgs e)
	{
		BarItem barItem = sender as BarItem;
		DockingWrapperForm dockingWrapperForm = barItem.Tag as DockingWrapperForm;
		Control ctrlChildRef = dockingWrapperForm.ctrlChildRef;
		DockVisibilityChangingEventArgs e2 = new DockVisibilityChangingEventArgs(ctrlChildRef);
		if (!bFiredVisibilityChangingEvent)
		{
			FireDockVisibilityChangingEvent(e2);
			bFiredVisibilityChangingEvent = true;
		}
		if (!e2.Cancel)
		{
			DockHostController dockHostController = GetDockHostController(ctrlChildRef);
			dockHostController.Closing = true;
			SetDockVisibility(ctrlChildRef, bvisible: false);
			dockHostController.Closing = false;
		}
		bFiredVisibilityChangingEvent = false;
	}

	[DocumentationExclude]
	protected void MDIFormFloatingItem_Click(object sender, EventArgs e)
	{
		BarItem barItem = sender as BarItem;
		DockingWrapperForm dockingWrapperForm = barItem.Tag as DockingWrapperForm;
		Control ctrlChildRef = dockingWrapperForm.ctrlChildRef;
		if (GetAllowFloating(ctrlChildRef))
		{
			bFreezeDockStateChangeEvents = true;
			SetAsMDIChild(ctrlChildRef, bsetmdi: false);
			bFreezeDockStateChangeEvents = false;
			SetFloatOnly(ctrlChildRef, bfloating: true);
			ctrlChildRef.TopLevelControl.Focus();
			ctrlChildRef.Focus();
		}
	}

	[DocumentationExclude]
	protected internal void ProcessDockToClick(object sender, DockingStyle dockstyle)
	{
		BarItem barItem = sender as BarItem;
		Control control = barItem.Tag as Control;
		DockHostController dockHostController = GetDockHostController(control);
		MainFormController mainFormController = alDockAreaControllers[0] as MainFormController;
		int num = SplitterWidth;
		if (dockHostController.bInAutoHide)
		{
			if (AHInViewTab != null)
			{
				AHInViewTab.StopAllAnimations();
			}
			dockHostController.LayoutRect = dockHostController.DINew.rcDockArea;
		}
		Rectangle layoutRect = dockHostController.LayoutRect;
		switch (dockstyle)
		{
		case DockingStyle.Top:
		case DockingStyle.Bottom:
			num += ((mainFormController.LayoutRect.Height > 2 * layoutRect.Height) ? layoutRect.Height : (mainFormController.LayoutRect.Height / 2));
			if (VisualStyle == VisualStyle.VS2005 || VisualStyle == VisualStyle.Office2003 || VisualStyle == VisualStyle.Default)
			{
				num -= Renderer.CaptionWidth + Renderer.BorderWidth * 6;
			}
			else if (VisualStyle == VisualStyle.Office2007 || VisualStyle == VisualStyle.Office2007Outlook)
			{
				num -= Renderer.CaptionWidth + Renderer.BorderWidth * 3 + 1;
			}
			break;
		case DockingStyle.Left:
		case DockingStyle.Right:
			num += ((mainFormController.LayoutRect.Width > 2 * layoutRect.Width) ? layoutRect.Width : (mainFormController.LayoutRect.Width / 2));
			if (VisualStyle == VisualStyle.VS2005 || VisualStyle == VisualStyle.Office2003 || VisualStyle == VisualStyle.Default)
			{
				num -= SplitterWidth + Renderer.BorderWidth * 2;
			}
			else if (VisualStyle == VisualStyle.Office2007 || VisualStyle == VisualStyle.Office2007Outlook)
			{
				num -= SplitterWidth + Renderer.BorderWidth * 2;
			}
			break;
		}
		DockAllowEventArgs e = new DockAllowEventArgs(control, HostControl, dockstyle);
		FireDockAllowEvent(e);
		if (!e.Cancel)
		{
			DockControl(control, HostControl, dockstyle, num, dockHostController.ParentController is DockTabController && !m_singleTabOperate);
			FireDockMenuClickEvent(control, dockstyle);
		}
	}

	protected override void Dispose(bool bdisposing)
	{
		if (m_nativeWindow != null)
		{
			m_nativeWindow.DestroyHandle();
			m_nativeWindow = null;
		}
		if (CaptionButtons != null)
		{
			CaptionButtons.CollectionChanged -= CaptionButtons_CollectionChanged;
			CaptionButtons.CollectionItemChanged -= CaptionButtons_CollectionItemChanged;
			CaptionButtons.Dispose();
		}
		if (DesignerHooks.GetMsgProcListContains(this, m_curentThreadId))
		{
			DesignerHooks.RemoveGetMsgProcListener(this, m_curentThreadId);
		}
		if (bdisposing && dcHostForm != null)
		{
			RecSubscribeHostControlEvents(HostControl.Parent, subscribe: false);
			m_dragProvider.Dispose();
			m_dragProvider = null;
			controllerInFocus = null;
			HostControl.Paint -= HostControl_Paint;
			HostControl.Layout -= HostControl_Layout;
			HostControl.HandleCreated -= HostControl_HandleCreated;
			HostControl.SystemColorsChanged -= HostControl_SystemColorsChanged;
			HostControl.RightToLeftChanged -= HostControl_RightToLeftChanged;
			if (!DesignMode)
			{
				if (subclass != null)
				{
					subclass.OnMdiActivate -= ProcessMDIActivate;
					subclass.OnDeactivate -= subclass_OnDeactivate;
					subclass.OnClose -= HostForm_OnClose;
					subclass.ReleaseHandle();
					subclass = null;
				}
				if (!DesignProcess)
				{
					HostControl.Paint -= HostControl_Paint;
					if (frmOwner != null)
					{
						frmOwner.HandleCreated -= OwnerForm_HandleCreated;
						frmOwner = null;
					}
					if (HostControl is Form)
					{
						(HostControl as Form).Closed -= HostForm_Closed;
						HostControl.ParentChanged -= HostControl_ParentChanged;
					}
					else
					{
						RecSubscribeHostControlEvents(HostControl, subscribe: false);
					}
				}
			}
			Array array = alFFControllers.ToArray(typeof(FloatingFormController));
			foreach (FloatingFormController item in array)
			{
				item.Dispose();
			}
			foreach (FloatingFormController alHiddenFFController in alHiddenFFControllers)
			{
				alHiddenFFController.Dispose();
			}
			dcHostForm.Dispose();
			dcHostForm = null;
			AHInViewTab = null;
			controllers.Clear();
			controllerInFocus = null;
			alFFControllers.Clear();
			alHiddenFFControllers.Clear();
			alDockAreaControllers.Clear();
			alEnableDocking.Clear();
			htText.Clear();
			htIcon.Clear();
			listAHOnLoad.Clear();
			htFloatOnly.Clear();
			htHiddenOnLoad.Clear();
			htDockAbility.Clear();
			htOuterDockAbility.Clear();
			alInheritedControls.Clear();
			alTargetManagers.Clear();
			m_freezeResizeCtrls.Clear();
			htCustomCaptionButtons.Clear();
			htAllowFloating.Clear();
			htmIcon.Clear();
			m_CaptionButtons.Clear();
			m_mdiZOrder.Clear();
			m_CustomizeControlCollection.Clear();
			alTargetManagers.Clear();
			controllers.Clear();
			if (bControlScopeImages && ilDockTabs != null)
			{
				ilDockTabs.Images.Clear();
				ilDockTabs.Dispose();
				ilDockTabs = null;
			}
			if (stmLayout != null)
			{
				stmLayout.Close();
			}
			htText = null;
			htIcon = null;
			listAHOnLoad = null;
			htFloatOnly = null;
			htHiddenOnLoad = null;
			htDockAbility = null;
			htOuterDockAbility = null;
			m_freezeResizeCtrls = null;
			htCustomCaptionButtons = null;
			htAllowFloating = null;
			htmIcon = null;
			m_CaptionButtons = null;
			m_mdiZOrder = null;
			m_CustomizeControlCollection = null;
			controllers = null;
			ctrlLastActive = null;
			ctrlLastPainted = null;
			dhLastActive = null;
			lastActivated = null;
			if (m_container != null)
			{
				m_container.Remove(this);
				m_container = null;
			}
			if (DockingManagersList != null)
			{
				DockingManagersList.Clear();
				DockingManagersList = null;
			}
			mouseActivatedControl = null;
			dcHostForm = null;
		}
		base.Dispose(bdisposing);
	}

	[DocumentationExclude]
	protected void RaiseEnabledDocking(Control ctrl, bool enabledDocking)
	{
		if (this.OnEnabledDocking != null)
		{
			this.OnEnabledDocking(ctrl, enabledDocking);
		}
	}

	[DocumentationExclude]
	protected void RemoveDockHostImageFromList(DockHostController dhcontroller)
	{
		if (!bControlScopeImages || ilDockTabs == null || dhcontroller.ImageIndex < 0 || dhcontroller.ImageIndex >= ilDockTabs.Images.Count)
		{
			return;
		}
		ilDockTabs.Images.RemoveAt(dhcontroller.ImageIndex);
		foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
		{
			if (alDockAreaController is DockHostController)
			{
				DockHostController dockHostController = alDockAreaController as DockHostController;
				if (dockHostController.ImageIndex > dhcontroller.ImageIndex)
				{
					dockHostController.ImageIndex--;
				}
			}
		}
	}

	[DocumentationExclude]
	protected virtual DockHostController InternalEnableDocking(Control ctrl, DockingStyle border, int npriority)
	{
		DockHost dockHost = CreateDockHost(ctrl);
		DockHostController dockHostController = dockHost.InternalController as DockHostController;
		dockHostController.ControlLocation = ctrl.Location;
		dockHostController.ControlSize = ctrl.Size;
		int width = ((ctrl.Size.Width >= dcHostForm.HostControl.Width / 2) ? (dcHostForm.HostControl.Width / 2) : ctrl.Size.Width);
		DockPreference dp = ((border == DockingStyle.Left || border == DockingStyle.Right) ? DockPreference.Horizontal : DockPreference.Vertical);
		dockHostController.DINew = new DockInfo(dcHostForm, border, npriority, 0, dp, new Rectangle(0, 0, width, ctrl.Size.Height));
		dockHostController.DICurrent = new DockInfo(dockHostController.DINew);
		dockHostController.DINew.dController.InvokeDocking(dockHostController);
		return dockHostController;
	}

	private void UpdateRightToLeftProperty(RightToLeft rtlNewRightToLeft)
	{
		bool flag = false;
		if (RightToLeft.Inherit == rtlNewRightToLeft && HostControl != null)
		{
			RightToLeft rightToLeft = HostControl.RightToLeft;
			flag = rightToLeft == RightToLeft.Yes;
		}
		else
		{
			flag = rtlNewRightToLeft == RightToLeft.Yes;
		}
		if (m_bIsMirrored == flag)
		{
			return;
		}
		m_bIsMirrored = flag;
		if (VisualStyle != VisualStyle.Default)
		{
			Renderer.IsMirrored = IsMirrored;
		}
		foreach (DockControllerBase alDockAreaController in alDockAreaControllers)
		{
			if (!(alDockAreaController is DockHostController))
			{
				continue;
			}
			DockHost dockHost = alDockAreaController.HostControl as DockHost;
			Syncfusion.Runtime.InteropServices.NativeMethods.TRACKMOUSEEVENT lpEventTrack = new Syncfusion.Runtime.InteropServices.NativeMethods.TRACKMOUSEEVENT();
			lpEventTrack.dwFlags = 3;
			lpEventTrack.dwHoverTime = 0;
			lpEventTrack.hwndTrack = dockHost.Handle;
			lpEventTrack.cbSize = Marshal.SizeOf((object)lpEventTrack);
			Syncfusion.Runtime.InteropServices.NativeMethods.TrackMouseEvent(ref lpEventTrack);
			if (dockHost.Controls.Count > 0)
			{
				SetIsMirrored(dockHost.Controls[0], flag);
				dockHost.Controls[0].RightToLeft = (flag ? RightToLeft.Yes : RightToLeft.No);
				if (alDockAreaController.ParentController is DockTabController)
				{
					alDockAreaController.ParentController.HostControl.RightToLeft = (flag ? RightToLeft.Yes : RightToLeft.No);
				}
			}
		}
		foreach (FloatingFormController alFFController in alFFControllers)
		{
			RightToLeft rtlEffective = (flag ? RightToLeft.Yes : RightToLeft.No);
			FloatingForm floatingForm = alFFController.HostControl as FloatingForm;
			floatingForm?.UpdateChildsRightToLeft(rtlEffective);
			floatingForm.UpdateControlBoxVisibility();
		}
		DockingStyle[] array = new DockingStyle[4]
		{
			DockingStyle.Left,
			DockingStyle.Right,
			DockingStyle.Top,
			DockingStyle.Bottom
		};
		DockingStyle[] array2 = array;
		foreach (DockingStyle border in array2)
		{
			AHTabControl aHTabControl = dcHostForm.GetAHTabControl(border);
			if (aHTabControl != null)
			{
				RightToLeft rightToLeft2 = (flag ? RightToLeft.Yes : RightToLeft.No);
				if (rightToLeft2 != aHTabControl.RightToLeft)
				{
					aHTabControl.RightToLeft = rightToLeft2;
				}
			}
		}
	}

	[DocumentationExclude]
	protected internal void UpdateFloatingFormsImages()
	{
		for (int i = 0; i < alDockAreaControllers.Count; i++)
		{
			if (alDockAreaControllers[i] is DockHostController { HostControl: not null } dockHostController)
			{
				if (!dockHostController.Floating)
				{
					continue;
				}
				DockTabController dockTabController = dockHostController.ParentController as DockTabController;
				FloatingFormController floatingFormController = null;
				if (dockTabController != null)
				{
					if (dockTabController.ParentController is FloatingFormController floatingFormController2 && dockTabController.TabControl != null && dockTabController.TabControl.SelectedIndex >= 0)
					{
						DockTabPage dockTabPage = dockTabController.TabControl.TabPages[dockTabController.TabControl.SelectedIndex] as DockTabPage;
						if (dockTabPage.dhcClient != null && floatingFormController2.ImageIndex != dockTabPage.dhcClient.ImageIndex)
						{
							floatingFormController2.ImageIndex = dockTabPage.dhcClient.ImageIndex;
							Syncfusion.Runtime.InteropServices.NativeMethods.RedrawWindow(floatingFormController2.HostControl.Handle, IntPtr.Zero, IntPtr.Zero, 1025u);
						}
					}
				}
				else if (dockHostController.ParentController is FloatingFormController floatingFormController3)
				{
					if (floatingFormController3.ImageIndex != dockHostController.ImageIndex)
					{
						floatingFormController3.ImageIndex = dockHostController.ImageIndex;
						Syncfusion.Runtime.InteropServices.NativeMethods.RedrawWindow(floatingFormController3.HostControl.Handle, IntPtr.Zero, IntPtr.Zero, 1025u);
					}
				}
				else if (dockHostController.ToplevelController is FloatingFormController { dcChild: SizingController dcChild } floatingFormController4 && dcChild.GetDockControllers().Count == 1)
				{
					floatingFormController4.ImageIndex = dockHostController.ImageIndex;
					Syncfusion.Runtime.InteropServices.NativeMethods.RedrawWindow(floatingFormController4.HostControl.Handle, IntPtr.Zero, IntPtr.Zero, 1025u);
				}
			}
			else if (alDockAreaControllers[i] is FloatingFormController { dcChild: SizingController dcChild2 } floatingFormController5 && dcChild2.GetDockControllers().Count != 1 && floatingFormController5.ImageIndex >= 0)
			{
				floatingFormController5.ImageIndex = -1;
				Syncfusion.Runtime.InteropServices.NativeMethods.RedrawWindow(floatingFormController5.HostControl.Handle, IntPtr.Zero, IntPtr.Zero, 1025u);
			}
		}
	}

	[DocumentationExclude]
	protected void RestoreFloatingForms()
	{
		foreach (FloatingFormController alFFController in alFFControllers)
		{
			if (alFFController.Floating && alFFController.HostControl is FloatingForm floatingForm)
			{
				floatingForm.RestoreStateOnRightToLeftUpdate();
			}
		}
	}

	protected internal bool HasCaptionButtonWithName(string name)
	{
		if (CaptionButtons.ContainsName(name))
		{
			return true;
		}
		foreach (Control item in alEnableDocking)
		{
			if (htCustomCaptionButtons[item] is CaptionButtonsCollection captionButtonsCollection && captionButtonsCollection.ContainsName(name))
			{
				return true;
			}
		}
		return false;
	}

	protected internal string GetCaptionButtonDefaultName()
	{
		int num = 1;
		while (HasCaptionButtonWithName("CaptionButton" + num))
		{
			num++;
		}
		return "CaptionButton" + num;
	}

	MainFormController IDockingManagerDesignerInvoke.GetHostFormController()
	{
		return dcHostForm;
	}

	ArrayList IDockingManagerDesignerInvoke.GetEnableDockingList()
	{
		return alEnableDocking;
	}

	ArrayList IDockingManagerDesignerInvoke.GetFFControllerList()
	{
		return alFFControllers;
	}

	ArrayList IDockingManagerDesignerInvoke.GetControllerList()
	{
		return alDockAreaControllers;
	}

	ArrayList IDockingManagerDesignerInvoke.GetFreezeResizeControllers()
	{
		return m_freezeResizeCtrls;
	}

	Hashtable IDockingManagerDesignerInvoke.GetTextTable()
	{
		return htText;
	}

	Hashtable IDockingManagerDesignerInvoke.GetIconTable()
	{
		return htIcon;
	}

	Hashtable IDockingManagerDesignerInvoke.GetmIconTable()
	{
		return htmIcon;
	}

	Hashtable IDockingManagerDesignerInvoke.GetDockAbilityTable()
	{
		return htDockAbility;
	}

	Hashtable IDockingManagerDesignerInvoke.GetOuterDockAbilityTable()
	{
		return htOuterDockAbility;
	}

	ArrayList IDockingManagerDesignerInvoke.GetInheritedControlsList()
	{
		return alInheritedControls;
	}

	DockHostController IDockingManagerDesignerInvoke.GetDHCInFocus()
	{
		return controllerInFocus;
	}

	void IDockingManagerDesignerInvoke.SetDHCInFocus(DockHostController dhc)
	{
		DHCInFocus = dhc;
	}

	bool IDockingManagerDesignerInvoke.LoadFromStream(Stream file)
	{
		bool flag = bApplyMinMaxExtents;
		bApplyMinMaxExtents = false;
		bool result = LoadFromStream(file);
		bApplyMinMaxExtents = flag;
		return result;
	}

	void IDockingManagerDesignerInvoke.ApplyDHCFloatOnlySettings()
	{
		ApplyDHCFloatOnlySettings();
	}

	object IDockingManagerDesignerInvoke.GetPrimarySelection()
	{
		ISelectionService selectionService = GetService(typeof(ISelectionService)) as ISelectionService;
		return selectionService.PrimarySelection;
	}

	void IDockingManagerDesignerInvoke.SetSelectedComponents(ICollection clln, SelectionTypes seltype)
	{
		ISelectionService selectionService = GetService(typeof(ISelectionService)) as ISelectionService;
		selectionService.SetSelectedComponents(clln, seltype);
	}

	internal ControllerWrapper GetWrapper()
	{
		MainFormController mainFormController = (MainFormController)alDockAreaControllers[0];
		return mainFormController.GetWrapper();
	}

	internal DockControllerBase LocateController(ControllerWrapper cw)
	{
		foreach (DockControllerBase controller in controllers)
		{
			if (controller.IsEqual(cw))
			{
				controllers.Remove(controller);
				return controller;
			}
		}
		if (cw is SizingControllerWrapper)
		{
			return new SizingController(this, HostControl, (cw as SizingControllerWrapper).Orientation);
		}
		return null;
	}

	private void InitializeDragProvider(DragProviderStyle dragProviderStyle)
	{
		providerStyle = dragProviderStyle;
		if (m_dragProvider != null)
		{
			m_dragProvider.Dispose();
			m_dragProvider = null;
		}
		if (bDesignProcess)
		{
			m_dragProvider = new BorderDragProvider(this);
			return;
		}
		switch (providerStyle)
		{
		case DragProviderStyle.Standard:
			m_dragProvider = new BorderDragProvider(this);
			break;
		case DragProviderStyle.Whidbey:
			m_dragProvider = new WhidbeyDragProvider(this);
			break;
		case DragProviderStyle.VS2005:
			m_dragProvider = new VS2005DragProvider(this);
			break;
		case DragProviderStyle.VS2008:
			m_dragProvider = new VS2008DragProvider(this);
			break;
		default:
			m_dragProvider = new BorderDragProvider(this);
			break;
		}
	}

	internal Size ToDockHostSize(int width, int height)
	{
		return new Size(width + 2 * Renderer.BorderWidth, height + 2 * Renderer.BorderWidth + Renderer.CaptionWidth);
	}

	internal Size ToDockHostSize(Size size)
	{
		return ToDockHostSize(size.Width, size.Height);
	}

	internal Rectangle ToDockHostRectangle(int x, int y, int width, int height)
	{
		return new Rectangle(new Point(x, y), ToDockHostSize(width, height));
	}

	internal Rectangle ToDockHostRectangle(Rectangle rectangle)
	{
		return new Rectangle(rectangle.Location, ToDockHostSize(rectangle.Size));
	}

	internal Control GetMdiClient()
	{
		Control result = null;
		if (HostControl != null && HostControl is Form && (HostControl as Form).IsMdiContainer)
		{
			foreach (Control control in HostControl.Controls)
			{
				if (control is MdiClient)
				{
					result = control;
					break;
				}
			}
		}
		return result;
	}

	private void SynchronizeCaptionButtons()
	{
		CaptionButtonsCollection captionButtonsCollection = new CaptionButtonsCollection();
		if (m_prevCaptionButtons.Count > m_CaptionButtons.Count)
		{
			captionButtonsCollection = m_prevCaptionButtons.Clone();
			captionButtonsCollection.ExcludeCommonButtonsWith(m_CaptionButtons);
		}
		for (int i = 0; i < alEnableDocking.Count; i++)
		{
			if (!(alEnableDocking[i] is Control ctrl))
			{
				continue;
			}
			CaptionButtonsCollection customCaptionButtons = GetCustomCaptionButtons(ctrl);
			if (customCaptionButtons == null)
			{
				continue;
			}
			CaptionButtonsCollection captionButtonsCollection2 = new CaptionButtonsCollection();
			captionButtonsCollection2.MergeWith(CaptionButtons, bCloneButtons: false);
			for (int j = 0; j < captionButtonsCollection.Count; j++)
			{
				if (customCaptionButtons.ContainsName(captionButtonsCollection[j].Name))
				{
					customCaptionButtons.Remove(customCaptionButtons[captionButtonsCollection[j].Name]);
				}
			}
			captionButtonsCollection2.MergeWith(customCaptionButtons, bCloneButtons: false);
			customCaptionButtons.Clear();
			customCaptionButtons.MergeWith(captionButtonsCollection2, bCloneButtons: false);
		}
		m_prevCaptionButtons = m_CaptionButtons.Clone();
	}

	private void CaptionButtons_CollectionChanged(object sender, EventArgs e)
	{
		SynchronizeCaptionButtons();
		if (DesignMode)
		{
			UpdateDesigner();
		}
		UpdateControllers();
	}

	private void CaptionButtons_CollectionItemChanged(object sender, EventArgs e)
	{
		if (DesignMode)
		{
			UpdateDesigner();
		}
		UpdateControllers();
	}

	internal bool IsDefaultRendering()
	{
		if (Syncfusion.Runtime.InteropServices.NativeMethods.IsCompositionEnabled() && (VisualStyle == VisualStyle.VS2005 || VisualStyle == VisualStyle.Default))
		{
			return true;
		}
		return false;
	}
}
