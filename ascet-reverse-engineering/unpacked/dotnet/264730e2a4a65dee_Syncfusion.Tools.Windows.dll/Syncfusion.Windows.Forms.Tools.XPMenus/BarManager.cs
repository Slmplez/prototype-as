using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.IO;
using System.Reflection;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Collections;
using Syncfusion.ComponentModel;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Runtime.Serialization;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
[ToolboxItem(false)]
[Designer(typeof(BarManagerDesigner), typeof(IDesigner))]
public class BarManager : Component, ISupportInitialize, IBarItemsRepository, ISerializable, IDeserializationCallback, IIgnoreWorkingArea
{
	private bool m_bCustomDrag;

	private bool m_bShowHighlightRectangle = true;

	private bool m_bShowDropShadow = true;

	private bool m_bShowShadow = true;

	private bool enableCustomizing = true;

	internal bool useHooksForMenus;

	private string formName = string.Empty;

	internal string formFullName = string.Empty;

	private Bars barList;

	private ArrayList categories;

	private ImageList m_imageList;

	private ImageListAdv m_imageListAdv;

	private ImageList m_largeImageList;

	private ImageListAdv m_largeImageListAdv;

	private ImageList m_disabledImgList;

	private ImageListAdv m_disabledImgListAdv;

	private ImageList m_disabledLargeImgList;

	private ImageListAdv m_disabledLargeImgListAdv;

	private ImageList m_highlightImgList;

	private ImageListAdv m_highlightImgListAdv;

	private ImageList m_highlightLargeImgList;

	private ImageListAdv m_highlightLargeImgListAdv;

	private ImageList m_pressedImageList;

	private ImageListAdv m_pressedImageListAdv;

	private ImageList m_pressedLargeImageList;

	private ImageListAdv m_pressedLargeImageListAdv;

	private BarItems barItems;

	private BarItem customizingItem;

	private BarItem selectedItem;

	private Form parentForm;

	protected bool expandSubMenusAfterDelay = true;

	protected BarCustomizationDialog customizationDlg;

	internal MainFrameBarManager mainBarManager;

	internal CustomizationDndHelper helper;

	protected Hashtable shortcuts;

	protected internal CommandBarManager commandBarManager;

	internal static string SyncfusionTransientItemID;

	public static int PartialMenusExpandedStateResetDelay;

	internal MemoryStream barPosInfo;

	protected internal IBarManagerDesigner designer;

	private int recentlyUsedItemResetDelay = 100;

	protected bool partialMenusMode = true;

	private IntList categoriesToIgnoreInCustDialog;

	private bool showItemsInCustomizationDialog = true;

	protected bool endInitCalled;

	internal static Hashtable htFormsVsBarManager;

	private string currentInitializingBaseFormType = string.Empty;

	protected bool insertContainerWhileSerializing = true;

	internal IContainer components;

	private ArrayList deserializedItems;

	private ArrayList deserializedBars;

	private VisualStyle style = VisualStyle.OfficeXP;

	private bool _uiUpdateMFCStyle;

	private bool bBarItemActiveFormCheckOverride;

	private static bool s_isDevEnv;

	private MenuActivationControl m_subclass;

	private Hashtable replacedBarsByMerge = new Hashtable();

	protected bool m_DesignerLoaded;

	protected bool m_bXPMenuActive = true;

	protected bool m_bFormClosed;

	private ArrayList m_arrDragDropControls = new ArrayList();

	internal static bool preventCopyingItemsInContainers;

	private static bool navigatingMenus;

	private bool m_bShouldHidePopup;

	private Bar workingBar;

	private bool m_bIgnoreWorkingArea;

	protected internal CustomizationDndHelper CustomizationHelper => helper;

	protected internal bool CustomDrag
	{
		get
		{
			return m_bCustomDrag;
		}
		set
		{
			if (value != m_bCustomDrag)
			{
				m_bCustomDrag = value;
				if (this.CustomDragChanged != null)
				{
					this.CustomDragChanged(this, EventArgs.Empty);
				}
			}
		}
	}

	[Description("Indicates whether to highlight BarItem when mouse moves over it.")]
	[DefaultValue(true)]
	public bool ShowHighlightRectangle
	{
		get
		{
			return m_bShowHighlightRectangle;
		}
		set
		{
			if (value != m_bShowHighlightRectangle)
			{
				m_bShowHighlightRectangle = value;
			}
		}
	}

	[DefaultValue(true)]
	[Description("Indicates whether to show shadow for BarItem's images.")]
	public bool ShowDropShadow
	{
		get
		{
			return m_bShowDropShadow;
		}
		set
		{
			if (value != m_bShowDropShadow)
			{
				m_bShowDropShadow = value;
			}
		}
	}

	[Description("Indicates whether to show shadows for Popups.")]
	[DefaultValue(true)]
	public bool ShowShadow
	{
		get
		{
			return m_bShowShadow;
		}
		set
		{
			m_bShowShadow = value;
			XPMenuGridFactory.ReleaseAllGrids();
		}
	}

	[Description("Specifies whether the UpdateUI event for the BarItems should be fired in a MFC style fashion.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool UpdateUIMFCStyle
	{
		get
		{
			return _uiUpdateMFCStyle;
		}
		set
		{
			if (_uiUpdateMFCStyle != value)
			{
				_uiUpdateMFCStyle = value;
				if (!_uiUpdateMFCStyle)
				{
					Application.Idle -= OnIdle;
				}
				else
				{
					Application.Idle += OnIdle;
				}
			}
		}
	}

	[DefaultValue(true)]
	[Category("Behavior")]
	[Localizable(true)]
	[Description("Specifies whether or not the BarItems in this BarManager should appear in the Customization dialog that the user invokes.")]
	public bool ShowItemsInCustomizationDialog
	{
		get
		{
			return showItemsInCustomizationDialog;
		}
		set
		{
			showItemsInCustomizationDialog = value;
		}
	}

	[Description("Specifies the delay in days after which an item's recently used setting will be reset.")]
	[Category("Behavior")]
	[Browsable(true)]
	[DefaultValue(100)]
	[Localizable(true)]
	public virtual int PartialMenusResetDelay
	{
		get
		{
			return recentlyUsedItemResetDelay;
		}
		set
		{
			recentlyUsedItemResetDelay = value;
		}
	}

	[Description("Enables or disables Partial Menus mode in submenus.")]
	[DefaultValue(true)]
	[Category("Behavior")]
	[Localizable(true)]
	public virtual bool UsePartialMenus
	{
		get
		{
			return partialMenusMode;
		}
		set
		{
			partialMenusMode = value;
		}
	}

	[DefaultValue(true)]
	[Description("Specifies whether or not customization by the user is allowed during run-time.")]
	[Localizable(true)]
	[Category("Persistance")]
	public bool EnableCustomizing
	{
		get
		{
			return enableCustomizing;
		}
		set
		{
			enableCustomizing = value;
		}
	}

	[DefaultValue(true)]
	[Localizable(true)]
	[Category("Behavior")]
	[Description("Enable automatic expansion of the partial menus into full menus after a delay.")]
	public virtual bool ExpandPartialMenusAfterDelay
	{
		get
		{
			return expandSubMenusAfterDelay;
		}
		set
		{
			if (expandSubMenusAfterDelay != value)
			{
				expandSubMenusAfterDelay = value;
			}
		}
	}

	[DefaultValue(null)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public MemoryStream BarPositionInfo
	{
		get
		{
			if (commandBarManager == null)
			{
				return null;
			}
			return commandBarManager.GetBarPositionInfo();
		}
		set
		{
			if (barPosInfo != null)
			{
				barPosInfo.Close();
			}
			barPosInfo = value;
		}
	}

	[Localizable(true)]
	[Description("A user-friendly name that will be used to refer to a Form type in the customization dialog.")]
	[Category("Data")]
	public string FormName
	{
		get
		{
			if (formName != string.Empty)
			{
				return formName;
			}
			if (Form != null)
			{
				return Form.Name;
			}
			return string.Empty;
		}
		set
		{
			formName = value;
		}
	}

	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public BarCustomizationDialog CustomizationDialog
	{
		get
		{
			if (!DesignMode && !(this is MainFrameBarManager) && MainFrameBarManager != null)
			{
				return MainFrameBarManager.CustomizationDialog;
			}
			InitCustomizationDialog();
			return customizationDlg;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	[Browsable(false)]
	public bool IsCustomizationDialogCreated
	{
		get
		{
			if (!DesignMode && !(this is MainFrameBarManager) && MainFrameBarManager != null)
			{
				return MainFrameBarManager.IsCustomizationDialogCreated;
			}
			return customizationDlg != null;
		}
	}

	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	protected internal new bool DesignMode => base.DesignMode;

	[Description("Indicates whether the user is currently customizing the menus.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual bool Customizing
	{
		get
		{
			if (!DesignMode && !(this is MainFrameBarManager) && MainFrameBarManager != null)
			{
				return MainFrameBarManager.Customizing;
			}
			if (DesignMode || (customizationDlg != null && customizationDlg.Visible))
			{
				return true;
			}
			return false;
		}
	}

	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual bool DndCustomizing
	{
		get
		{
			if (MainFrameBarManager != null)
			{
				return MainFrameBarManager.DndCustomizing;
			}
			return false;
		}
	}

	[Description("Indicates whether the menus and toolbars should draw right-to-left.")]
	[Category("Appearance")]
	public virtual RightToLeft RightToLeft
	{
		get
		{
			if (parentForm == null)
			{
				return RightToLeft.No;
			}
			return parentForm.RightToLeft;
		}
	}

	[DocumentationExclude]
	protected internal bool IsRTL => RightToLeft.Yes == RightToLeft;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual BarItem SelectedItem
	{
		get
		{
			return selectedItem;
		}
		set
		{
			if (selectedItem != value)
			{
				selectedItem = value;
				OnSelectedItemChanged(EventArgs.Empty);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual BarItem CustomizingItem
	{
		get
		{
			MainFrameBarManager mainFrameBarManager = MainFrameBarManager;
			if (mainFrameBarManager != null && mainFrameBarManager != this)
			{
				return mainFrameBarManager.CustomizingItem;
			}
			return customizingItem;
		}
		set
		{
			if (CustomizingItem != value)
			{
				MainFrameBarManager mainFrameBarManager = MainFrameBarManager;
				if (mainFrameBarManager != null && mainFrameBarManager != this)
				{
					mainFrameBarManager.CustomizingItem = value;
					return;
				}
				customizingItem = value;
				OnCustomizingItemChanged(EventArgs.Empty);
			}
		}
	}

	[Category("Data")]
	[Description("Collection of Bars, representing the toolbars for the corresponding form.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Editor(typeof(CustDlgEditor), typeof(UITypeEditor))]
	public Bars Bars => barList;

	[Description("The list of categories defined in this BarManager, under which the BarItems will be grouped.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Data")]
	[Editor(typeof(CustDlgEditor), typeof(UITypeEditor))]
	[Localizable(true)]
	public ArrayList Categories => categories;

	[Description("The list of BarItems associated with this BarManager.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Data")]
	public BarItems Items => barItems;

	[Category("Appearance")]
	[DefaultValue(null)]
	[Description("The ImageList that the BarItems refer to when in small icons mode.")]
	public ImageList ImageList
	{
		get
		{
			return m_imageList;
		}
		set
		{
			if (m_imageList != value)
			{
				m_imageList = value;
				if (m_imageList != null)
				{
					m_imageListAdv = null;
				}
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "ImageList", null, null));
			}
		}
	}

	[DefaultValue(null)]
	[Category("Appearance")]
	[Description("The ImageList that the BarItems refer to when in small icons mode.")]
	public ImageListAdv ImageListAdv
	{
		get
		{
			return m_imageListAdv;
		}
		set
		{
			if (m_imageListAdv != value)
			{
				m_imageListAdv = value;
				if (m_imageListAdv != null)
				{
					m_imageList = null;
				}
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "ImageListAdv", null, null));
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(null)]
	[Description("The ImageList to which the BarItems refer to when in large icons mode.")]
	public ImageList LargeImageList
	{
		get
		{
			return m_largeImageList;
		}
		set
		{
			if (m_largeImageList != value)
			{
				m_largeImageList = value;
				if (m_largeImageList != null)
				{
					m_largeImageListAdv = null;
				}
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "LargeImageList", null, null));
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(null)]
	[Description("The ImageListAdv to which the BarItems refer to when in large icons mode.")]
	public ImageListAdv LargeImageListAdv
	{
		get
		{
			return m_largeImageListAdv;
		}
		set
		{
			if (m_largeImageListAdv != value)
			{
				m_largeImageListAdv = value;
				if (m_largeImageListAdv != null)
				{
					m_largeImageList = null;
				}
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "LargeImageListAdv", null, null));
			}
		}
	}

	[DefaultValue(null)]
	[Category("Appearance")]
	[Description("The ImageList to which the BarItems refer to when disabled.")]
	public virtual ImageList DisabledImageList
	{
		get
		{
			return m_disabledImgList;
		}
		set
		{
			if (value != m_disabledImgList)
			{
				m_disabledImgList = value;
				if (m_disabledImgList != null)
				{
					m_disabledImgListAdv = null;
				}
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(null)]
	[Description("The ImageListAdv to which the BarItems refer to when disabled.")]
	public virtual ImageListAdv DisabledImageListAdv
	{
		get
		{
			return m_disabledImgListAdv;
		}
		set
		{
			if (value != m_disabledImgListAdv)
			{
				m_disabledImgListAdv = value;
				if (m_disabledImgListAdv != null)
				{
					m_disabledImgList = null;
				}
			}
		}
	}

	[DefaultValue(null)]
	[Category("Appearance")]
	[Description("The ImageList to which the BarItems refer to when disabled, and using LargeIcons mode.")]
	public virtual ImageList DisabledLargeImageList
	{
		get
		{
			return m_disabledLargeImgList;
		}
		set
		{
			if (value != m_disabledLargeImgList)
			{
				m_disabledLargeImgList = value;
				if (m_disabledLargeImgList != null)
				{
					m_disabledLargeImgListAdv = null;
				}
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(null)]
	[Description("The ImageListAdv to which the BarItems refer to when disabled, and using LargeIcons mode.")]
	public virtual ImageListAdv DisabledLargeImageListAdv
	{
		get
		{
			return m_disabledLargeImgListAdv;
		}
		set
		{
			if (value != m_disabledLargeImgListAdv)
			{
				m_disabledLargeImgListAdv = value;
				if (m_disabledLargeImgListAdv != null)
				{
					m_disabledLargeImgList = null;
				}
			}
		}
	}

	[DefaultValue(null)]
	[Category("Appearance")]
	[Description("Gets or sets the ImageList to which BarItems refer to when highlighted.")]
	public virtual ImageList HighlightImageList
	{
		get
		{
			return m_highlightImgList;
		}
		set
		{
			if (value != m_highlightImgList)
			{
				m_highlightImgList = value;
				if (m_highlightImgList != null)
				{
					m_highlightImgListAdv = null;
				}
			}
		}
	}

	[Description("Gets or sets the ImageListAdv to which BarItems refer to when highlighted.")]
	[Category("Appearance")]
	[DefaultValue(null)]
	public virtual ImageListAdv HighlightImageListAdv
	{
		get
		{
			return m_highlightImgListAdv;
		}
		set
		{
			if (value != m_highlightImgListAdv)
			{
				m_highlightImgListAdv = value;
				if (m_highlightImgListAdv != null)
				{
					m_highlightImgList = null;
				}
			}
		}
	}

	[Description("Gets or sets the ImageList to which BarItems refer to when highlighted.")]
	[Category("Appearance")]
	[DefaultValue(null)]
	public virtual ImageList HighlightLargeImageList
	{
		get
		{
			return m_highlightLargeImgList;
		}
		set
		{
			if (value != m_highlightLargeImgList)
			{
				m_highlightLargeImgList = value;
				if (m_highlightLargeImgList != null)
				{
					m_highlightLargeImgListAdv = null;
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the ImageListAdv to which BarItems refer to when highlighted.")]
	[DefaultValue(null)]
	public virtual ImageListAdv HighlightLargeImageListAdv
	{
		get
		{
			return m_highlightLargeImgListAdv;
		}
		set
		{
			if (value != m_highlightLargeImgListAdv)
			{
				m_highlightLargeImgListAdv = value;
				if (m_highlightLargeImgListAdv != null)
				{
					m_highlightLargeImgList = null;
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the ImageList to which BarItems refer to when pressed.")]
	[DefaultValue(null)]
	public virtual ImageList PressedImageList
	{
		get
		{
			return m_pressedImageList;
		}
		set
		{
			if (value != m_pressedImageList)
			{
				m_pressedImageList = value;
				if (m_pressedImageList != null)
				{
					m_pressedImageListAdv = null;
				}
			}
		}
	}

	[Description("Gets or sets the ImageListAdv to which BarItems refer to when pressed.")]
	[Category("Appearance")]
	[DefaultValue(null)]
	public virtual ImageListAdv PressedImageListAdv
	{
		get
		{
			return m_pressedImageListAdv;
		}
		set
		{
			if (value != m_pressedImageListAdv)
			{
				m_pressedImageListAdv = value;
				if (m_pressedImageListAdv != null)
				{
					m_pressedImageList = null;
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the ImageList to which BarItems refer to when pressed.")]
	[DefaultValue(null)]
	public virtual ImageList PressedLargeImageList
	{
		get
		{
			return m_pressedLargeImageList;
		}
		set
		{
			if (value != m_pressedLargeImageList)
			{
				m_pressedLargeImageList = value;
				if (m_pressedLargeImageList != null)
				{
					m_pressedLargeImageListAdv = null;
				}
			}
		}
	}

	[DefaultValue(null)]
	[Category("Appearance")]
	[Description("Gets or sets the ImageListAdv to which BarItems refer to when pressed.")]
	public virtual ImageListAdv PressedLargeImageListAdv
	{
		get
		{
			return m_pressedLargeImageListAdv;
		}
		set
		{
			if (value != m_pressedLargeImageListAdv)
			{
				m_pressedLargeImageListAdv = value;
				if (m_pressedLargeImageListAdv != null)
				{
					m_pressedLargeImageList = null;
				}
			}
		}
	}

	bool IBarItemsRepository.ClearItemsAfterImport => true;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Behavior")]
	[Localizable(true)]
	[Description("Specifies the categories that should not be shown in the Customization Dialog.")]
	[Browsable(false)]
	public IntList CategoriesToIgnoreInCustDialog => categoriesToIgnoreInCustDialog;

	protected bool ShouldSerializeCategoriesToIgnoreInCustDialog => categoriesToIgnoreInCustDialog.Count > 0;

	[Category("Appearance")]
	[DefaultValue(false)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Localizable(true)]
	[Description("Enables or disables LargIcons mode for items in the tool bar.")]
	public virtual bool LargeIcons
	{
		get
		{
			if (MainFrameBarManager != null && MainFrameBarManager != this)
			{
				return MainFrameBarManager.LargeIcons;
			}
			return false;
		}
		set
		{
			if (MainFrameBarManager != null && MainFrameBarManager != this)
			{
				MainFrameBarManager.LargeIcons = value;
			}
		}
	}

	[Description("The Form to which this BarManager is associated with.")]
	[Category("Data")]
	[Browsable(false)]
	public virtual Form Form
	{
		get
		{
			return parentForm;
		}
		set
		{
			if (parentForm != value)
			{
				if (parentForm != null)
				{
					OnDetachForm();
				}
				parentForm = value;
				if (parentForm != null)
				{
					OnAttachForm();
				}
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public MainFrameBarManager MainFrameBarManager
	{
		get
		{
			if (mainBarManager != null)
			{
				return mainBarManager;
			}
			if (this is MainFrameBarManager)
			{
				return this as MainFrameBarManager;
			}
			if (Form != null && Form.MdiParent != null)
			{
				return GetManagerFrom(Form.MdiParent) as MainFrameBarManager;
			}
			return null;
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	public string CurrentBaseFormType
	{
		get
		{
			return currentInitializingBaseFormType;
		}
		set
		{
			currentInitializingBaseFormType = value;
		}
	}

	[DefaultValue(VisualStyle.OfficeXP)]
	[RefreshProperties(RefreshProperties.All)]
	[Category("Appearance")]
	[Description("Specifies the visual style of the toolbars and main-menus.")]
	public virtual VisualStyle Style
	{
		get
		{
			if (MainFrameBarManager != null && MainFrameBarManager != this)
			{
				return MainFrameBarManager.Style;
			}
			return style;
		}
		set
		{
			if (style == value)
			{
				return;
			}
			VisualStyle visualStyle = style;
			style = value;
			if (commandBarManager != null)
			{
				CommandBarController commandBarController = commandBarManager.GetCommandBarController();
				if (commandBarController != null)
				{
					commandBarController.Style = value;
				}
			}
			OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Style", visualStyle, style));
		}
	}

	[Description("Colorschemes for Office2007 visual style.")]
	[DefaultValue(Office2007Theme.Blue)]
	[Category("Appearance")]
	public Office2007Theme Office2007Theme
	{
		get
		{
			Office2007Theme result = Office2007Theme.Blue;
			if (commandBarManager != null)
			{
				result = commandBarManager.Office2007Theme;
			}
			return result;
		}
		set
		{
			if (commandBarManager != null)
			{
				commandBarManager.Office2007Theme = value;
			}
		}
	}

	[Category("Behavior")]
	[Description("Specifies whether the BarItems should check for ActiveForm before displaying tooltip.")]
	[DefaultValue(false)]
	public bool BarItemActiveFormCheckOverride
	{
		get
		{
			return bBarItemActiveFormCheckOverride;
		}
		set
		{
			if (bBarItemActiveFormCheckOverride != value)
			{
				bBarItemActiveFormCheckOverride = value;
			}
		}
	}

	internal IBarManagerDesigner Designer
	{
		get
		{
			if (GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
			{
				return designerHost.GetDesigner(this) as IBarManagerDesigner;
			}
			return null;
		}
	}

	internal bool XPMenuActive
	{
		get
		{
			return m_bXPMenuActive;
		}
		set
		{
			if (m_bXPMenuActive == value)
			{
				return;
			}
			m_bXPMenuActive = value;
			if (commandBarManager == null)
			{
				return;
			}
			CommandBarController commandBarController = commandBarManager.GetCommandBarController();
			foreach (CommandBar commandBar in commandBarController.CommandBars)
			{
				if (commandBar is CommandBarExt { BarControl: not null } commandBarExt)
				{
					commandBarExt.BarControl.XPMenuActive = value;
				}
			}
		}
	}

	ImageList IBarItemsRepository.ImageList => ImageList;

	ImageList IBarItemsRepository.LargeImageList => LargeImageList;

	BarItems IBarItemsRepository.Items => Items;

	Bars IBarItemsRepository.Bars => Bars;

	ArrayList IBarItemsRepository.Categories => Categories;

	IntList IBarItemsRepository.CategoriesToIgnoreInCustDialog => CategoriesToIgnoreInCustDialog;

	internal bool Initializing => !endInitCalled;

	internal bool ShouldHidePopup
	{
		get
		{
			return m_bShouldHidePopup;
		}
		set
		{
			if (value != m_bShouldHidePopup)
			{
				m_bShouldHidePopup = value;
			}
		}
	}

	[Description("Indicates whether to ignore working area of the display before showing popups.")]
	[DefaultValue(false)]
	public bool IgnoreWorkingArea
	{
		get
		{
			return m_bIgnoreWorkingArea;
		}
		set
		{
			if (m_bIgnoreWorkingArea == value)
			{
				return;
			}
			m_bIgnoreWorkingArea = value;
			foreach (BarItem item in Items)
			{
				if (item is IIgnoreWorkingArea ignoreWorkingArea)
				{
					ignoreWorkingArea.IgnoreWorkingArea = value;
				}
			}
		}
	}

	[Description("Occurs when the floating bar gets closed")]
	public event BarChangedEventHandler FloatingFormClosed;

	[Description("Occurs when reset BarItem is clicked.")]
	public event BarItemClickedEventHandler ResetBarItemClicked;

	[Description("Occurs when bar visibility is changed by the user.")]
	public event BarChangedEventHandler UserChangedBarVisibility;

	[Description("Occurs when Bar object is bound or unbound to a control.")]
	public event BarControlBindingChangedEventHanlder BarControlBindingChanged;

	internal event EventHandler CustomDragChanged;

	[Category("Customization")]
	[Description("Occurs when the BarManager's CustomizingItem property has changed.")]
	public event EventHandler CustomizingItemChanged;

	[Category("UI")]
	[Description("Occurs when a new BarItem is selected or unselected by the user.")]
	public event EventHandler SelectedItemChanged;

	[Description("Occurs when the BarManager's LargeIcons or ThemesEnabled property has changed.")]
	[Category("Appearance")]
	public event SyncfusionPropertyChangedEventHandler PropertyChanged;

	[Description("Occurs when the Customization dialog is about to be shown.")]
	[Category("Customization")]
	public event EventHandler CustomizationBegin;

	[Category("Customization")]
	[Description("Occurs when the Customization dialog has been closed.")]
	public event EventHandler CustomizationDone;

	[Description("Occurs when one of the items in this BarManager was clicked.")]
	[Category("UI")]
	public event BarItemClickedEventHandler ItemClicked;

	[Category("Misc")]
	[Description("Occurs after a clone of this BarManager was created in a MDI scenario.")]
	public event BarManagerClonedEventHandler AfterClone;

	static BarManager()
	{
		SyncfusionTransientItemID = "SyncfusionTransientItem";
		PartialMenusExpandedStateResetDelay = 5000;
		htFormsVsBarManager = new Hashtable();
		s_isDevEnv = Application.ExecutablePath.ToLower().IndexOf("devenv.exe") >= 0;
		preventCopyingItemsInContainers = false;
		navigatingMenus = false;
		AppStateSerializer.SetBindingInfo("Syncfusion.Tools.Windows", typeof(BarManager).Assembly);
		XPMenuGridFactory.InitMenus();
	}

	public BarManager()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(BarManager));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		Init();
	}

	public BarManager(Form form)
		: this()
	{
		Form = form;
		SetFormProperty(bIsUsedWithBarManager: true, form);
	}

	public BarManager(IContainer container, Form form)
		: this(form)
	{
		container?.Add(this);
	}

	[DocumentationExclude]
	protected virtual void Init()
	{
		components = new Container();
		shortcuts = new Hashtable();
		barList = new Bars();
		barList.manager = this;
		barList.CollectionChanged += BarListCollectionChanged;
		barList.ItemPropertyChanged += BarPropertyChanged;
		barItems = new BarItems(this);
		barItems.CollectionChanged += BarItemsCollectionChanged;
		barItems.ItemPropertyChanged += BarItemPropertyChanged;
		categories = new ArrayList();
		helper = new CustomizationDndHelper(null);
		categoriesToIgnoreInCustDialog = new IntList();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void BeginInit()
	{
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void EndInit()
	{
		endInitCalled = true;
		if (DesignMode && s_isDevEnv)
		{
			if (Form != null)
			{
				CurrentBaseFormType = GetFormTypeName(this);
			}
		}
		else if (Form != null)
		{
			Form.Layout += Form_Layout;
		}
	}

	protected internal new object GetService(Type serviceType)
	{
		return base.GetService(serviceType);
	}

	[DocumentationExclude]
	protected virtual void InitCustomizationDialog()
	{
		if (customizationDlg == null)
		{
			customizationDlg = new BarCustomizationDialog(this);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			Application.Idle -= OnIdle;
			SelectedItem = null;
			if (customizationDlg != null)
			{
				customizationDlg.Dispose();
				customizationDlg = null;
			}
			if (commandBarManager != null)
			{
				commandBarManager.Dispose();
				commandBarManager = null;
			}
			if (!DesignMode && MainFrameBarManager != this && MainFrameBarManager != null)
			{
				MainFrameBarManager.CustomizingItemChanged -= MainBarManager_CustomizingItemChanged;
				MainFrameBarManager.PropertyChanged -= MainBarManager_PropertyChanged;
			}
			if (barList != null)
			{
				barList.CollectionChanged -= BarListCollectionChanged;
				barList.ItemPropertyChanged -= BarPropertyChanged;
				for (int i = 0; i < barList.Count; i++)
				{
					barList[i]?.Dispose();
				}
				barList.Dispose();
				barList = null;
			}
			if (barItems != null)
			{
				barItems.CollectionChanged -= BarItemsCollectionChanged;
				barItems.ItemPropertyChanged -= BarItemPropertyChanged;
				BarItem barItem = null;
				for (int j = 0; j < Items.Count; j++)
				{
					Items[j]?.Dispose();
				}
				barItems.Dispose();
				barItems = null;
			}
			Form = null;
		}
		base.Dispose(disposing);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected bool ShouldSerializeFormName()
	{
		if (Form != null && FormName == Form.Name)
		{
			return false;
		}
		return formName != string.Empty;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected void ResetFormName()
	{
		formName = string.Empty;
	}

	private void OnIdle(object sender, EventArgs e)
	{
		if (commandBarManager == null)
		{
			return;
		}
		foreach (Bar bar in Bars)
		{
			if (!commandBarManager.IsBarVisible(bar))
			{
				continue;
			}
			foreach (BarItem item in bar.Items)
			{
				if (item.Visible)
				{
					item.PerformUpdateUI();
				}
			}
		}
	}

	[Browsable(false)]
	internal void SetUseHooksForMenus(bool useHooks)
	{
		useHooksForMenus = useHooks;
	}

	[DocumentationExclude]
	public void InitFromDesigner()
	{
		SetUseHooksForMenus(useHooks: true);
		CustomizationDialog.DesignerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
	}

	protected virtual void BarListCollectionChanged(object sender, CollectionChangeEventArgs args)
	{
		SetDirtyOnDesigner();
	}

	protected virtual void BarItemsCollectionChanged(object sender, CollectionChangeEventArgs args)
	{
		if (!(args.Element is BarItem barItem))
		{
			return;
		}
		if (args.Action == CollectionChangeAction.Add)
		{
			if (barItem.Shortcut != Shortcut.None)
			{
				shortcuts[(int)barItem.Shortcut] = barItem;
			}
			if (barItem is IIgnoreWorkingArea ignoreWorkingArea)
			{
				ignoreWorkingArea.IgnoreWorkingArea = IgnoreWorkingArea;
			}
			barItem.Manager = this;
		}
		else if (args.Action == CollectionChangeAction.Remove)
		{
			if (barItem.Shortcut != Shortcut.None)
			{
				shortcuts.Remove((int)barItem.Shortcut);
			}
			barItem.Manager = null;
		}
	}

	private void BarPropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		SetDirtyOnDesigner();
	}

	private void BarItemPropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "Shortcut")
		{
			if ((Shortcut)e.OldValue != Shortcut.None)
			{
				shortcuts.Remove((int)e.OldValue);
			}
			if ((Shortcut)e.NewValue != Shortcut.None)
			{
				shortcuts[(int)e.NewValue] = sender;
			}
		}
		SetDirtyOnDesigner();
	}

	private void SetDirtyOnDesigner()
	{
		if (DesignMode && Designer != null)
		{
			Designer.SetDirty();
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	public Bar GetBarFromBarID(BarID barID)
	{
		if (barID.formTypeName != GetFormTypeName(this))
		{
			return null;
		}
		foreach (Bar bar in Bars)
		{
			if (bar.BarName == barID.containerName)
			{
				return bar;
			}
		}
		return null;
	}

	public Bar GetBarFromBarName(string barName)
	{
		foreach (Bar bar in Bars)
		{
			if (bar.BarName == barName)
			{
				return bar;
			}
		}
		return null;
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public BarItem GetBarItemFromBarItemID(BarItemID barItemID)
	{
		if (barItemID.formTypeName != GetFormTypeName(this))
		{
			return null;
		}
		return Items.FindItem(barItemID.barItemID);
	}

	internal static string GetFormTypeName(Form form)
	{
		return GetFormTypeName(GetManagerFromForm(form));
	}

	internal static string GetFormTypeName(BarManager manager)
	{
		if (manager != null)
		{
			return manager.formFullName;
		}
		return string.Empty;
	}

	internal static Form CreateDummyForm(Form form)
	{
		BarManager managerFromForm = GetManagerFromForm(form);
		BarManager barManager = null;
		barManager = ((ChildFrameBarManager)managerFromForm).Clone() as ChildFrameBarManager;
		DummyForm result = new DummyForm(barManager);
		barManager.formFullName = form.GetType().FullName;
		return result;
	}

	public ParentBarItem GetMergedEquivalent(ParentBarItem originalParent, ParentBarItem defaultReturnValue)
	{
		MainFrameBarManager mainFrameBarManager = MainFrameBarManager;
		ParentBarItem parentBarItem = defaultReturnValue;
		if (mainFrameBarManager != this && mainFrameBarManager != null)
		{
			parentBarItem = mainFrameBarManager.GetMergedEquivalent(originalParent, defaultReturnValue);
		}
		else
		{
			string text = originalParent.Text;
			if (text != string.Empty)
			{
				parentBarItem = Items.FindItem(text, 1001) as ParentBarItem;
			}
		}
		if (parentBarItem == null)
		{
			return defaultReturnValue;
		}
		return parentBarItem;
	}

	internal virtual MergedParentBarItem[] GetMergedEquivalents(ParentBarItem originalParent)
	{
		MergedParentBarItem[] array = null;
		string text = originalParent.Text;
		if (text != string.Empty)
		{
			Hashtable hashtable = new Hashtable();
			BarItem barItem = null;
			foreach (Bar bar in Bars)
			{
				barItem = bar.Items.FindItem(text, 1001);
				if (barItem != null && !hashtable.ContainsKey(barItem))
				{
					hashtable.Add(barItem, barItem);
				}
			}
			barItem = Items.FindItem(text, 1001);
			if (barItem != null && !hashtable.ContainsKey(barItem))
			{
				hashtable.Add(barItem, barItem);
			}
			array = new MergedParentBarItem[hashtable.Count];
			hashtable.Values.CopyTo(array, 0);
		}
		return array;
	}

	public Bar GetMergedEquivalent(Bar originalBar, Bar defaultReturnValue)
	{
		MainFrameBarManager mainFrameBarManager = MainFrameBarManager;
		if (mainFrameBarManager != this && mainFrameBarManager != null)
		{
			return mainFrameBarManager.GetMergedEquivalent(originalBar, defaultReturnValue);
		}
		Bar barFromBarID = GetBarFromBarID(new BarID(originalBar.BarName, GetFormTypeName(this)));
		if (barFromBarID == null)
		{
			return defaultReturnValue;
		}
		return barFromBarID;
	}

	[DocumentationExclude]
	public void UpdateContainer(IBarItemContainer parentItem, BarItem source, BarItem adjacentItem, UpdateType updateType, object updateData, ref bool keepUpdateInfo)
	{
		if (source == null)
		{
			return;
		}
		helper.ParentItem = parentItem;
		switch (updateType)
		{
		case UpdateType.InsertAfter:
			helper.InsertItem(adjacentItem, source, beforeOrAfter: false, record: false);
			break;
		case UpdateType.InsertBefore:
			helper.InsertItem(adjacentItem, source, beforeOrAfter: true, record: false);
			break;
		case UpdateType.Remove:
			helper.RemoveItem(adjacentItem, source, record: false);
			break;
		case UpdateType.ModifiedGrouping:
			if ((bool)updateData)
			{
				parentItem.BeginGroupAt(source);
			}
			else
			{
				parentItem.RemoveGroupAt(source);
			}
			break;
		}
		helper.ParentItem = null;
	}

	internal bool IsUpdateTypeForItemProperty(UpdateType updateType)
	{
		switch (updateType)
		{
		case UpdateType.ModifiedPaintStyle:
		case UpdateType.ModifiedText:
		case UpdateType.RecentlyUsedItemClicked:
			return true;
		default:
			return false;
		}
	}

	public virtual void RemoveReferencesToForeignItems()
	{
		for (int num = Bars.Count - 1; num >= 0; num--)
		{
			Bar bar = Bars[num];
			BarItems items = bar.Items;
			if (items != null)
			{
				items.SuspendEvents();
				for (int num2 = items.Count - 1; num2 >= 0; num2--)
				{
					BarItem barItem = items[num2];
					if (barItem.Manager != this)
					{
						items.RemoveAt(num2);
					}
				}
				items.ResumeEvents(throwEvent: true);
			}
		}
		for (int num3 = Items.Count - 1; num3 >= 0; num3--)
		{
			BarItem barItem2 = Items[num3];
			if (barItem2 is ParentBarItem)
			{
				ParentBarItem parentBarItem = barItem2 as ParentBarItem;
				BarItems items2 = parentBarItem.Items;
				if (items2 != null)
				{
					items2.SuspendEvents();
					for (int num4 = items2.Count - 1; num4 >= 0; num4--)
					{
						BarItem barItem3 = items2[num4];
						if (barItem3.Manager != this)
						{
							items2.RemoveAt(num4);
						}
					}
					items2.ResumeEvents(throwEvent: true);
				}
			}
		}
	}

	[DocumentationExclude]
	public virtual void RemoveReferencesToBarItem(BarItem item)
	{
		Items.Remove(item);
		foreach (Bar bar in Bars)
		{
			bar.RemoveItem(item);
		}
		foreach (BarItem item2 in Items)
		{
			if (item2 is ParentBarItem parentBarItem)
			{
				parentBarItem.RemoveItem(item);
			}
		}
	}

	[DocumentationExclude]
	public void UpdateItem(BarItem item, UpdateType updateType, object updateData, ref bool keepUpdateInfo)
	{
		switch (updateType)
		{
		case UpdateType.ModifiedPaintStyle:
			item.PaintStyle = (PaintStyle)updateData;
			break;
		case UpdateType.ModifiedText:
			item.Text = (string)updateData;
			break;
		case UpdateType.RecentlyUsedItemClicked:
			if (item.IsRecentlyUsedItem || (DateTime)updateData < DateTime.Now - TimeSpan.FromDays(MainFrameBarManager.PartialMenusResetDelay))
			{
				keepUpdateInfo = false;
			}
			else
			{
				item.IsRecentlyUsedItem = true;
			}
			break;
		case UpdateType.ChangedImage:
			item.Image = updateData as ImageExt;
			break;
		}
	}

	internal void ReplaceBarsWithMergedBar(Bar mergedBar)
	{
		if (Bars == null)
		{
			return;
		}
		int num = -1;
		foreach (Bar bar in Bars)
		{
			if (bar.BarName == mergedBar.BarName)
			{
				replacedBarsByMerge[mergedBar] = bar;
				num = Bars.IndexOf(bar);
				Bars.Remove(bar);
				break;
			}
		}
		if (this is MainFrameBarManager)
		{
			if (num != -1)
			{
				Bars.Insert(num, mergedBar);
			}
			else
			{
				Bars.Add(mergedBar);
			}
		}
	}

	internal void RestoreOriginalBar(Bar mergedBar)
	{
		if (Bars == null)
		{
			return;
		}
		if (replacedBarsByMerge[mergedBar] is Bar value)
		{
			int num = Bars.IndexOf(mergedBar);
			Bars.Remove(mergedBar);
			if (num != -1)
			{
				Bars.Insert(num, value);
			}
			else
			{
				Bars.Add(value);
			}
		}
		else
		{
			Bars.Remove(mergedBar);
		}
		replacedBarsByMerge.Remove(mergedBar);
	}

	internal void ReplaceBars(Bar oldBar, Bar newBar)
	{
		if (Bars != null)
		{
			int num = Bars.IndexOf(oldBar);
			if (num != -1)
			{
				Bars.RemoveAt(num);
				Bars.Insert(num, newBar);
			}
			else
			{
				Bars.Add(newBar);
			}
		}
	}

	protected virtual void OnDetachForm()
	{
		CleanupOnFormClose();
		UnadviseForm();
		if (commandBarManager != null)
		{
			commandBarManager.Dispose();
			commandBarManager = null;
		}
		if (Form.ContextMenu is ContextMenuPlaceHolder)
		{
			ContextMenuPlaceHolder contextMenuPlaceHolder = Form.ContextMenu as ContextMenuPlaceHolder;
			contextMenuPlaceHolder.MainMenuForm = null;
		}
		if (m_subclass != null)
		{
			m_subclass.ReleaseHandleCustom();
			m_subclass.AppDeactivate -= MenuActivationControl_AppDeactivate;
			m_subclass.AppActivate -= MenuActivationControl_AppActivate;
			m_subclass = null;
		}
	}

	protected void UnadviseForm()
	{
		if (Form != null)
		{
			Form.Deactivate -= Form_Deactivate;
			Form.Load -= FormLoaded;
			Form.Closed -= FormClosed;
			Form.Disposed -= FormDisposed;
			Form.RightToLeftChanged -= FormRightToLeftChanged;
			Form.Layout -= Form_Layout;
		}
	}

	protected virtual void OnAttachForm()
	{
		htFormsVsBarManager[Form] = this;
		Form.Deactivate += Form_Deactivate;
		Form.Load += FormLoaded;
		Form.Closed += FormClosed;
		Form.Disposed += FormDisposed;
		Form.RightToLeftChanged += FormRightToLeftChanged;
		formFullName = Form.GetType().FullName;
		if (commandBarManager == null)
		{
			CreateCommandBarManager();
		}
		if (!DesignMode && !s_isDevEnv)
		{
			ContextMenuPlaceHolder contextMenuPlaceHolder = Form.ContextMenu as ContextMenuPlaceHolder;
			if (contextMenuPlaceHolder == null)
			{
				contextMenuPlaceHolder = new ContextMenuPlaceHolder();
			}
			contextMenuPlaceHolder.MainMenuForm = Form;
		}
		if (m_subclass == null)
		{
			m_subclass = new MenuActivationControl();
		}
		m_subclass.AppDeactivate += MenuActivationControl_AppDeactivate;
		m_subclass.AppActivate += MenuActivationControl_AppActivate;
		m_subclass.AssignHandleCustom(Form);
	}

	[DocumentationExclude]
	protected virtual void CreateCommandBarManager()
	{
		if (DesignMode && Form != null)
		{
			commandBarManager = new CommandBarManager(Form, this);
		}
	}

	[DocumentationExclude]
	public CommandBarManager GetCommandBarManager()
	{
		if (commandBarManager == null)
		{
			if (DesignMode || MainFrameBarManager == this)
			{
				CreateCommandBarManager();
			}
			else if (MainFrameBarManager != null)
			{
				return MainFrameBarManager.GetCommandBarManager();
			}
		}
		return commandBarManager;
	}

	public CommandBar GetBarControl(Bar bar)
	{
		if (commandBarManager != null)
		{
			return commandBarManager.GetCommandBarFromBar(bar);
		}
		return null;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	public virtual void RefreshCommandBarsAfterDesignerLoad(bool saveCommandBarState)
	{
		if (!m_DesignerLoaded)
		{
			if (saveCommandBarState)
			{
				barPosInfo = BarPositionInfo;
			}
			commandBarManager.RemoveBars(this, saveCommandBarState);
			AttachCommandBarsOfForm(Form, show: true, hideImmediately: false);
			commandBarManager.GetCommandBarController().ResetDockBarZOrder();
			m_DesignerLoaded = true;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	public virtual void AttachCommandBarsOfForm(Form form, bool show, bool hideImmediately)
	{
		BarManager managerFrom = GetManagerFrom(form);
		commandBarManager.AttachBars(managerFrom);
		if (show)
		{
			commandBarManager.ShowBars(managerFrom);
		}
		else
		{
			commandBarManager.HideBars(managerFrom, hideImmediately);
		}
	}

	private void MainBarManager_CustomizingItemChanged(object sender, EventArgs args)
	{
		OnCustomizingItemChanged(args);
	}

	private void MainBarManager_PropertyChanged(object sender, SyncfusionPropertyChangedEventArgs args)
	{
		OnPropertyChanged(args);
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void FormLoaded(object sender, EventArgs e)
	{
		if (Form != null)
		{
			if (!DesignMode && MainFrameBarManager != this && MainFrameBarManager != null)
			{
				MainFrameBarManager.CustomizingItemChanged += MainBarManager_CustomizingItemChanged;
				MainFrameBarManager.PropertyChanged += MainBarManager_PropertyChanged;
			}
			if (commandBarManager == null)
			{
				CreateCommandBarManager();
			}
			if (commandBarManager != null)
			{
				commandBarManager.ShowMainMenusAutomatically = DesignMode | !Form.IsMdiContainer;
			}
		}
	}

	[DocumentationExclude]
	protected void FormClosed(object sender, EventArgs e)
	{
		if (Form == null)
		{
			return;
		}
		MainFrameBarManager mainFrameBarManager = MainFrameBarManager;
		if (mainFrameBarManager != null)
		{
			if (mainFrameBarManager != this)
			{
				mainFrameBarManager.CustomizingItemChanged -= MainBarManager_CustomizingItemChanged;
				mainFrameBarManager.PropertyChanged -= MainBarManager_PropertyChanged;
			}
			mainFrameBarManager.OnFormClosed(sender as Form);
		}
		m_bFormClosed = true;
	}

	protected void Form_Layout(object sender, LayoutEventArgs levent)
	{
		Form.Layout -= Form_Layout;
		if (commandBarManager != null)
		{
			commandBarManager.GetCommandBarController().ResetDockBarZOrder();
		}
	}

	internal void CleanupOnFormClose()
	{
		htFormsVsBarManager.Remove(Form);
	}

	[DocumentationExclude]
	protected void FormDisposed(object sender, EventArgs e)
	{
		Dispose();
	}

	[DocumentationExclude]
	private void FormRightToLeftChanged(object sender, EventArgs e)
	{
		XPMenuGridFactory.ReleaseAllGrids();
		OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "RightToLeft", null, ((Form)sender).RightToLeft));
	}

	protected internal virtual void OnFloatingFormClosed(Bar bar)
	{
		if (bar == null)
		{
			throw new ArgumentNullException("bar");
		}
		if (this.FloatingFormClosed != null)
		{
			this.FloatingFormClosed(this, new BarChangedEventArgs(bar));
		}
	}

	protected internal virtual void OnResetBarItem(BarItem itemToReset)
	{
		if (itemToReset == null)
		{
			throw new ArgumentNullException("itemToReset");
		}
		if (this.ResetBarItemClicked != null)
		{
			this.ResetBarItemClicked(this, new BarItemClickedEventArgs(itemToReset));
		}
	}

	protected internal virtual void OnUserChangedBarVisibility(Bar bar)
	{
		if (this.UserChangedBarVisibility != null)
		{
			this.UserChangedBarVisibility(this, new BarChangedEventArgs(bar));
		}
	}

	public PropertyDescriptorCollection AppendBindableBarItemProperties(PropertyDescriptorCollection originalList)
	{
		return DataBindingUtils.AppendBindableProperties(originalList, Items);
	}

	internal bool IsDummyManager()
	{
		if (MainFrameBarManager != null)
		{
			return MainFrameBarManager.IsDummyManager(this);
		}
		return false;
	}

	public void ImportBarItems(IBarItemsRepository sourceRepository)
	{
		BarItemsImporter barItemsImporter = CreateImporter();
		barItemsImporter.ImportItems(sourceRepository, this);
	}

	protected BarItemsImporter CreateImporter()
	{
		return new BarItemsImporter();
	}

	[DocumentationExclude]
	protected virtual BarManager GetManagerFrom(Form form)
	{
		if (Form == form)
		{
			return this;
		}
		return GetManagerFromForm(form);
	}

	public static BarManager GetManagerFromForm(Form form)
	{
		return (form == null) ? null : (htFormsVsBarManager[form] as BarManager);
	}

	[DocumentationExclude]
	public virtual bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		if (Customizing)
		{
			return false;
		}
		return ProcessShortcut(keyData);
	}

	[DocumentationExclude]
	public virtual bool ProcessShortcut(Keys key)
	{
		if (shortcuts[(int)key] != null)
		{
			Form activeForm = Form.ActiveForm;
			if (Form != null && activeForm != null && (Form.ActiveForm == Form || (activeForm.IsMdiContainer && activeForm.ActiveMdiChild == Form) || (Form.Parent != null && Form.Parent.FindForm() == activeForm)))
			{
				BarItem barItem = shortcuts[(int)key] as BarItem;
				if (UpdateUIMFCStyle)
				{
					barItem.PerformUpdateUI();
				}
				if (barItem.Enabled)
				{
					barItem.SetShortCutProcessing(bProcessing: true);
					barItem.PerformClick();
					barItem.SetShortCutProcessing(bProcessing: false);
					return true;
				}
			}
		}
		return false;
	}

	public void Customize(bool start)
	{
		if (start && !(EnableCustomizing | DesignMode))
		{
			return;
		}
		if (start)
		{
			if (!Customizing)
			{
				Customize(null);
			}
			return;
		}
		if (Customizing && IsCustomizationDialogCreated && CustomizationDialog.Visible)
		{
			CustomizationDialog.Close();
		}
		HidePopups();
	}

	[DocumentationExclude]
	public void Customize(IDesignerHost designerHost)
	{
		if ((EnableCustomizing | DesignMode) && !CustomizationDialog.Visible)
		{
			CustomizationDialog.DesignerHost = designerHost;
			CustomizationDialog.Owner = Form;
			CustomizationDialog.RightToLeft = RightToLeft;
			OnBeginCustomization(EventArgs.Empty);
			CustomizationDialog.Show();
		}
	}

	internal void HidePopups()
	{
		if (ShouldHidePopup && PopupManager.ActivePopupClient != null)
		{
			PopupManager.ActivePopupClient.HidePopup(PopupCloseType.Deactivated);
		}
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public bool CanStartDragging(BarItem item)
	{
		return true;
	}

	public BarItems GetItemsInCategory(int categoryIndex)
	{
		BarItems barItems = new BarItems();
		foreach (BarItem item in Items)
		{
			if (item.CategoryIndex == categoryIndex)
			{
				barItems.Add(item);
			}
		}
		return barItems;
	}

	internal ArrayList GetMergedBars()
	{
		ArrayList arrayList = new ArrayList();
		foreach (Bar key in replacedBarsByMerge.Keys)
		{
			arrayList.Add(key);
		}
		return arrayList;
	}

	protected internal BarControlInternal GetBarControlForDragDrop()
	{
		BarControlInternal barControlInternal = null;
		if (commandBarManager != null)
		{
			CommandBarController commandBarController = commandBarManager.GetCommandBarController();
			if (commandBarController != null)
			{
				barControlInternal = GetBarControlForDragDrop(commandBarController.CommandDockBarB);
				if (barControlInternal == null)
				{
					barControlInternal = GetBarControlForDragDrop(commandBarController.CommandDockBarL);
				}
				if (barControlInternal == null)
				{
					barControlInternal = GetBarControlForDragDrop(commandBarController.CommandDockBarR);
				}
				if (barControlInternal == null)
				{
					barControlInternal = GetBarControlForDragDrop(commandBarController.CommandDockBarT);
				}
			}
		}
		if (barControlInternal == null)
		{
			barControlInternal = FindBarControlForDragDrop();
		}
		return barControlInternal;
	}

	private BarControlInternal FindBarControlForDragDrop()
	{
		if (m_arrDragDropControls != null && m_arrDragDropControls.Count > 0)
		{
			BarControlInternal barControlInternal = null;
			Point mousePosition = Control.MousePosition;
			int i = 0;
			for (int count = m_arrDragDropControls.Count; i < count; i++)
			{
				if (m_arrDragDropControls[i] is BarControlInternal { ClientRectangle: var clientRectangle } barControlInternal2)
				{
					clientRectangle.Location = barControlInternal2.PointToScreen(Point.Empty);
					if (clientRectangle.Contains(mousePosition))
					{
						return barControlInternal2;
					}
				}
			}
		}
		return null;
	}

	protected internal void RegisterDragDropControl(BarControlInternal barControl)
	{
		if (barControl == null)
		{
			throw new NullReferenceException("barControl");
		}
		if (!m_arrDragDropControls.Contains(barControl))
		{
			m_arrDragDropControls.Add(barControl);
		}
	}

	protected internal void UnRegisterDragDropControl(BarControlInternal barControl)
	{
		if (barControl == null)
		{
			throw new NullReferenceException("barControl");
		}
		if (!m_arrDragDropControls.Contains(barControl))
		{
			m_arrDragDropControls.Add(barControl);
		}
	}

	protected internal BarControlInternal GetBarControlForDragDrop(CommandDockBar dockBar)
	{
		if (dockBar == null)
		{
			throw new ArgumentNullException("dockBar");
		}
		if (dockBar.Controls.Count > 0)
		{
			Point mousePosition = Control.MousePosition;
			BarControlInternal barControlInternal = null;
			foreach (CommandBar control in dockBar.Controls)
			{
				if (control == null || control.Controls.Count <= 0)
				{
					continue;
				}
				int i = 0;
				for (int count = control.Controls.Count; i < count; i++)
				{
					if (control.Controls[i] is BarControlInternal { ClientRectangle: var clientRectangle } barControlInternal2)
					{
						clientRectangle.Location = barControlInternal2.PointToScreen(Point.Empty);
						if (clientRectangle.Contains(mousePosition))
						{
							return barControlInternal2;
						}
					}
				}
			}
		}
		return null;
	}

	private void SetFormProperty(bool bIsUsedWithBarManager, Form form)
	{
		if (form is Office2007Form obj)
		{
			Type typeFromHandle = typeof(Office2007Form);
			PropertyInfo property = typeFromHandle.GetProperty("IsUsedWithBarManager", BindingFlags.Instance | BindingFlags.NonPublic);
			if (property != null)
			{
				property.SetValue(obj, bIsUsedWithBarManager, null);
			}
		}
	}

	protected internal virtual void OnBarControlBindingChanged(BarControlBindingChangedArgs args)
	{
		if (this.BarControlBindingChanged != null)
		{
			this.BarControlBindingChanged(this, args);
		}
	}

	protected virtual void OnCustomizingItemChanged(EventArgs args)
	{
		if (this.CustomizingItemChanged != null)
		{
			this.CustomizingItemChanged(this, args);
		}
	}

	protected virtual void OnSelectedItemChanged(EventArgs args)
	{
		if (this.SelectedItemChanged != null)
		{
			this.SelectedItemChanged(this, args);
		}
	}

	protected virtual void OnPropertyChanged(SyncfusionPropertyChangedEventArgs args)
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, args);
		}
	}

	protected internal virtual void OnBeginCustomization(EventArgs args)
	{
		if (this.CustomizationBegin != null)
		{
			this.CustomizationBegin(this, args);
		}
	}

	protected internal virtual void OnCustomizationDone(EventArgs args)
	{
		HidePopups();
		if (this.CustomizationDone != null)
		{
			this.CustomizationDone(this, args);
		}
	}

	protected internal virtual void OnItemClicked(BarItemClickedEventArgs args)
	{
		if (this.ItemClicked != null)
		{
			this.ItemClicked(this, args);
		}
	}

	protected internal virtual void OnAfterClone(BarManagerClonedEventArgs args)
	{
		if (this.AfterClone != null)
		{
			this.AfterClone(this, args);
		}
	}

	protected BarManager(SerializationInfo info, StreamingContext context)
		: this()
	{
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			SerializationEntry current = enumerator.Current;
			switch (current.Name)
			{
			case "ShowItemsInCustomizationDialog":
				if (current.Value is string)
				{
					ShowItemsInCustomizationDialog = (bool)Convert.ChangeType(current.Value, typeof(bool));
				}
				else
				{
					ShowItemsInCustomizationDialog = (bool)current.Value;
				}
				break;
			case "PartialMenusResetDelay":
				if (current.Value is string)
				{
					PartialMenusResetDelay = (int)Convert.ChangeType(current.Value, typeof(int));
				}
				else
				{
					PartialMenusResetDelay = (int)current.Value;
				}
				break;
			case "UsePartialMenus":
				if (current.Value is string)
				{
					UsePartialMenus = (bool)Convert.ChangeType(current.Value, typeof(bool));
				}
				else
				{
					UsePartialMenus = (bool)current.Value;
				}
				break;
			case "EnableCustomizing":
				if (current.Value is string)
				{
					EnableCustomizing = (bool)Convert.ChangeType(current.Value, typeof(bool));
				}
				else
				{
					EnableCustomizing = (bool)current.Value;
				}
				break;
			case "ExpandPartialMenusAfterDelay":
				if (current.Value is string)
				{
					ExpandPartialMenusAfterDelay = (bool)Convert.ChangeType(current.Value, typeof(bool));
				}
				else
				{
					ExpandPartialMenusAfterDelay = (bool)current.Value;
				}
				break;
			case "FormName":
				FormName = (string)current.Value;
				break;
			case "LargeIcons":
				if (current.Value is string)
				{
					LargeIcons = (bool)Convert.ChangeType(current.Value, typeof(bool));
				}
				else
				{
					LargeIcons = (bool)current.Value;
				}
				break;
			case "Style":
				Style = (VisualStyle)current.Value;
				break;
			case "Categories":
			{
				ArrayList arrayList2 = (ArrayList)current.Value;
				foreach (string item in arrayList2)
				{
					Categories.Add(item);
				}
				break;
			}
			case "CategoriesToIgnoreInCustDialog":
			{
				ArrayList arrayList = (ArrayList)current.Value;
				foreach (int item2 in arrayList)
				{
					CategoriesToIgnoreInCustDialog.Add(item2);
				}
				break;
			}
			case "ImageList":
				ImageList = new ImageList(components);
				ImageList.ImageStream = (ImageListStreamer)current.Value;
				break;
			case "ImageListAdv":
				ImageListAdv = current.Value as ImageListAdv;
				break;
			case "LargeImageList":
				LargeImageList = new ImageList(components);
				LargeImageList.ImageStream = (ImageListStreamer)current.Value;
				break;
			case "LargeImageListAdv":
				LargeImageListAdv = current.Value as ImageListAdv;
				break;
			case "Items":
				deserializedItems = current.Value as ArrayList;
				break;
			case "Bars":
				deserializedBars = (ArrayList)current.Value;
				break;
			}
		}
	}

	void IDeserializationCallback.OnDeserialization(object sender)
	{
		foreach (BarItem deserializedItem in deserializedItems)
		{
			Items.Add(deserializedItem);
		}
		foreach (Bar deserializedBar in deserializedBars)
		{
			Bars.Add(deserializedBar);
		}
	}

	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("ShowItemsInCustomizationDialog", ShowItemsInCustomizationDialog);
		info.AddValue("PartialMenusResetDelay", PartialMenusResetDelay);
		info.AddValue("UsePartialMenus", UsePartialMenus);
		info.AddValue("EnableCustomizing", EnableCustomizing);
		info.AddValue("ExpandPartialMenusAfterDelay", ExpandPartialMenusAfterDelay);
		info.AddValue("FormName", FormName);
		info.AddValue("LargeIcons", LargeIcons);
		info.AddValue("Style", style);
		info.AddValue("Categories", Categories);
		ArrayList value = new ArrayList(CategoriesToIgnoreInCustDialog);
		info.AddValue("CategoriesToIgnoreInCustDialog", value);
		if (ImageList != null)
		{
			info.AddValue("ImageList", ImageList.ImageStream);
		}
		else
		{
			info.AddValue("ImageList", null);
		}
		info.AddValue("ImageListAdv", ImageListAdv);
		if (LargeImageList != null)
		{
			info.AddValue("LargeImageList", LargeImageList.ImageStream);
		}
		else
		{
			info.AddValue("LargeImageList", null);
		}
		info.AddValue("LargeImageListAdv", LargeImageListAdv);
		value = new ArrayList(Items);
		info.AddValue("Items", value);
		value = new ArrayList(Bars);
		info.AddValue("Bars", value);
	}

	public virtual void CopyTo(BarManager barManager)
	{
		preventCopyingItemsInContainers = true;
		barManager.ShowItemsInCustomizationDialog = ShowItemsInCustomizationDialog;
		barManager.PartialMenusResetDelay = PartialMenusResetDelay;
		barManager.UsePartialMenus = UsePartialMenus;
		barManager.EnableCustomizing = EnableCustomizing;
		barManager.ExpandPartialMenusAfterDelay = ExpandPartialMenusAfterDelay;
		barManager.FormName = FormName;
		barManager.LargeIcons = LargeIcons;
		barManager.Style = style;
		foreach (string category in Categories)
		{
			barManager.Categories.Add(category);
		}
		foreach (int item in CategoriesToIgnoreInCustDialog)
		{
			barManager.CategoriesToIgnoreInCustDialog.Add(item);
		}
		if (ImageList != null)
		{
			barManager.ImageList = new ImageList();
			barManager.ImageList.ImageStream = ImageList.ImageStream;
			barManager.components.Add(barManager.ImageList);
		}
		if (ImageListAdv != null)
		{
			barManager.ImageListAdv = (ImageListAdv)ImageListAdv.Clone();
			barManager.components.Add(barManager.ImageListAdv);
		}
		if (LargeImageList != null)
		{
			barManager.LargeImageList = new ImageList();
			barManager.LargeImageList.ImageStream = LargeImageList.ImageStream;
			barManager.components.Add(barManager.LargeImageList);
		}
		if (LargeImageListAdv != null)
		{
			barManager.LargeImageListAdv = (ImageListAdv)LargeImageListAdv.Clone();
			barManager.components.Add(barManager.LargeImageListAdv);
		}
		foreach (BarItem item2 in Items)
		{
			if (!(item2 is NewMenuItem))
			{
				barManager.Items.Add(item2.Clone() as BarItem);
			}
		}
		int num2 = -1;
		foreach (BarItem item3 in Items)
		{
			num2++;
			if (!(item3 is ParentBarItem))
			{
				continue;
			}
			ParentBarItem parentBarItem = barManager.Items[num2] as ParentBarItem;
			ParentBarItem parentBarItem2 = (ParentBarItem)item3;
			foreach (BarItem item4 in parentBarItem2.Items)
			{
				BarItem barItem4 = barManager.Items.FindItem(item4.ID);
				parentBarItem.Items.Add(barItem4);
				if (parentBarItem2.IsGroupBeginning(item4))
				{
					parentBarItem.BeginGroupAt(barItem4);
				}
			}
		}
		foreach (Bar bar3 in Bars)
		{
			Bar bar2 = bar3.Clone() as Bar;
			foreach (BarItem item5 in bar3.Items)
			{
				BarItem barItem6 = barManager.Items.FindItem(item5.ID);
				bar2.Items.Add(barItem6);
				if (bar3.IsGroupBeginning(item5))
				{
					bar2.BeginGroupAt(barItem6);
				}
			}
			barManager.Bars.Add(bar2);
		}
		preventCopyingItemsInContainers = false;
	}

	internal static void OnStartingMenuNavigation(Form form, Control menuControl)
	{
		if (!navigatingMenus)
		{
			navigatingMenus = true;
			FireMenuStart(form);
		}
	}

	internal static void OnStoppingMenuNavigation(Form form, Control menuControl)
	{
		if (navigatingMenus)
		{
			navigatingMenus = false;
			FireMenuComplete(form);
		}
	}

	private static void FireMenuStart(Form form)
	{
		if (form != null)
		{
			MethodInfo method = typeof(Form).GetMethod("OnMenuStart", BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.InvokeMethod);
			if (method != null)
			{
				method.Invoke(form, new object[1]
				{
					new MenuNavigationEventArgs()
				});
			}
		}
	}

	private static void FireMenuComplete(Form form)
	{
		Control control = Control.FromHandle(Syncfusion.Runtime.InteropServices.NativeMethods.GetFocus());
		if (control != null && control.AccessibilityObject is Control.ControlAccessibleObject controlAccessibleObject)
		{
			controlAccessibleObject.NotifyClients(AccessibleEvents.Focus);
		}
		MethodInfo method = typeof(Form).GetMethod("OnMenuComplete", BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.InvokeMethod);
		if (method != null)
		{
			method.Invoke(form, new object[1]
			{
				new MenuNavigationEventArgs()
			});
		}
	}

	private void Form_Deactivate(object sender, EventArgs e)
	{
		if (PopupManager.ActivePopupClient != null)
		{
			if (PopupManager.ActivePopupClient is PopupControlContainer)
			{
				((PopupControlContainer)PopupManager.ActivePopupClient).ConfirmDeactivate();
			}
			else if (!(PopupManager.ActivePopupClient is MenuGrid { IsMouseDownProcessing: not false }))
			{
				PopupManager.ActivePopupClient.HidePopup(PopupCloseType.Deactivated);
			}
		}
	}

	protected Bar GetBarFromBarItem(BarItem item, ref Queue pbiQueue)
	{
		Bar result = null;
		foreach (Bar bar in Bars)
		{
			if (FindBarItemInItems(bar.Items, item, ref pbiQueue))
			{
				result = bar;
				break;
			}
		}
		return result;
	}

	protected bool FindBarItemInItems(BarItems items, BarItem item, ref Queue pbiQueue)
	{
		bool flag = false;
		foreach (BarItem item2 in items)
		{
			if (item2 == item)
			{
				flag = true;
				break;
			}
			if (item2 is ParentBarItem parentBarItem)
			{
				pbiQueue.Enqueue(parentBarItem);
				flag = FindBarItemInItems(parentBarItem.Items, item, ref pbiQueue);
				if (flag)
				{
					break;
				}
				pbiQueue.Dequeue();
			}
		}
		return flag;
	}

	protected BarRenderer GetBarRendererFromBar(Bar bar)
	{
		BarRenderer result = null;
		if (commandBarManager != null)
		{
			CommandBarExt commandBarFromBar = commandBarManager.GetCommandBarFromBar(bar);
			if (commandBarFromBar != null)
			{
				result = commandBarFromBar.BarControl.barRenderer;
			}
		}
		return result;
	}

	public void ShowPopup(ParentBarItem item)
	{
		Queue pbiQueue = new Queue();
		workingBar = GetBarFromBarItem(item, ref pbiQueue);
		BarRenderer barRendererFromBar = GetBarRendererFromBar(workingBar);
		if (barRendererFromBar != null)
		{
			if (pbiQueue.Count > 0)
			{
				pbiQueue.Enqueue(item);
				item = pbiQueue.Dequeue() as ParentBarItem;
			}
			barRendererFromBar.SetCurrentTrackItem(workingBar.Items.IndexOf(item), forceDropDown: true, setDefaultSelection: true, pbiQueue);
		}
	}

	public void HidePopup()
	{
		if (workingBar != null)
		{
			GetBarRendererFromBar(workingBar)?.SetCurrentTrackItem(-1, forceDropDown: false, setDefaultSelection: false);
			workingBar = null;
		}
	}

	protected void MenuActivationControl_AppDeactivate(object sender, EventArgs e)
	{
		XPMenuActive = false;
		PopupManager.ActivePopupClient?.HidePopup(PopupCloseType.Deactivated);
	}

	protected void MenuActivationControl_AppActivate(object sender, EventArgs e)
	{
		XPMenuActive = true;
	}

	public BarItem GetBarItemFromShortcut(Keys key)
	{
		return shortcuts[(int)key] as BarItem;
	}
}
