using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Resources;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItem(false)]
[DocumentationExclude]
public class CustomizationPanel : UserControl
{
	private const int c_nTEXT_COLUMN_WIDTH = 84;

	private const int c_nTEXT_WITH_ICON_WIDTH = 86;

	private const int c_nBORDERS = 5;

	private BarManager localBarManager;

	private BarManager customizingBarManager;

	private BarCustomizationDialog custDlg;

	private IDesignerHost designerHost;

	private IContainer components;

	private MenuGridControlCustomizable menuGridBase;

	private PopupMenu barItemModifyMenu;

	private PopupMenu catModifyMenu;

	protected TabControl tabControl;

	protected TabPage tabPage1;

	protected TabPage tabPage2;

	protected TabPage tabPage3;

	protected Label label1;

	protected Button newButton;

	protected Button deleteButton;

	protected Button resetButton;

	protected internal Button closeButton;

	protected Label label2;

	protected Label label3;

	protected Button cmdModify;

	protected CheckedListBox toolbarList;

	protected TreeView catView;

	protected Button catMoveDown;

	protected Button catMoveUp;

	protected Panel gridHostPanel;

	protected CheckBox alwaysFullMenus;

	protected Label label4;

	protected CheckBox expandAfterDelay;

	protected Label label5;

	protected CheckBox largeIcons;

	protected ToolTip catViewTooltip;

	protected Button resetPartialMenusBtn;

	protected Label label6;

	protected Label label7;

	protected Button resetCustomizationButton;

	private ImageList imageList1;

	protected HScrollBar hScrollBar1;

	protected Panel panel1;

	protected Splitter splitter1;

	private ArrayList barsList;

	public virtual IDesignerHost DesignerHost
	{
		set
		{
			if (designerHost != value)
			{
				if (designerHost != null)
				{
					SetupSelectionListenerHandlers(listen: false);
				}
				designerHost = value;
				if (designerHost != null)
				{
					SetupSelectionListenerHandlers(listen: true);
				}
				if (designerHost == null)
				{
					catMoveDown.Hide();
					catMoveUp.Hide();
					cmdModify.Hide();
				}
				else
				{
					catMoveDown.Show();
					catMoveUp.Show();
					cmdModify.Show();
				}
			}
		}
	}

	public CustomizationPanel()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(CustomizationPanel));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		InitializeComponent();
		label5.AutoSize = true;
		barsList = new ArrayList();
		alwaysFullMenus.Click += AlwaysFullMenus_Clicked;
		largeIcons.Click += LargeIcons_Clicked;
		expandAfterDelay.Click += ExpandAfterDelay_Clicked;
		catView.Scrollable = true;
		catView.BringToFront();
		catMoveDown.Hide();
		catMoveUp.Hide();
		cmdModify.Hide();
	}

	public virtual void InitCustomizationPanel(BarCustomizationDialog dlg, BarManager customizingManager)
	{
		custDlg = dlg;
		customizingBarManager = customizingManager;
		customizingBarManager.PropertyChanged += customizingBarManager_PropertyChanged;
		customizingBarManager.Bars.ItemPropertyChanged += BarPropertyChanged;
		if (customizingBarManager.DesignMode)
		{
			catView.CheckBoxes = true;
			catViewTooltip = new ToolTip();
			catViewTooltip.SetToolTip(catView, "Checked nodes indicate that the Category will appear in the User Customization dialog.");
		}
		else
		{
			catView.CheckBoxes = false;
		}
		InitPopups();
	}

	public virtual void OnDialogClosing()
	{
		if (menuGridBase.ParentItem != null)
		{
			menuGridBase.ParentItem.Items.CollectionChanged -= BarItemsCollectionChanged;
		}
	}

	private void ItemPropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "CategoryIndex")
		{
			int selectedIndex = menuGridBase.SelectedIndex;
			menuGridBase.SelectedIndex = -1;
			RefreshBarItemsList();
			if (selectedIndex < menuGridBase.ParentItem.Items.Count)
			{
				menuGridBase.SelectedIndex = selectedIndex;
				customizingBarManager.CustomizingItem = menuGridBase.SelectedItem;
			}
		}
	}

	private void InitPopups()
	{
		menuGridBase = new MenuGridControlCustomizable(customizingBarManager.DesignMode);
		menuGridBase.DragDrop += OnMenuGridDragDrop;
		menuGridBase.fixedWidth = true;
		menuGridBase.TextColumnWidth += menuGridBase.IconColumnWidth;
		menuGridBase.dndHelper.AllowRecord = false;
		menuGridBase.Parent = gridHostPanel;
		menuGridBase.Dock = DockStyle.Top;
		gridHostPanel.BackColor = menuGridBase.BackColor;
		menuGridBase.MouseUp += MenuGrid_MouseUp;
		catView.MouseUp += CatView_MouseUp;
		catView.MouseDown += CatView_MouseDown;
		catView.AfterCheck += CatView_AfterCheck;
		localBarManager = new BarManager();
		localBarManager.ImageList = imageList1;
		catModifyMenu = new PopupMenu();
		barItemModifyMenu = new PopupMenu();
		catModifyMenu.ParentBarItem = new ParentBarItem();
		barItemModifyMenu.ParentBarItem = new ParentBarItem();
		catModifyMenu.ParentBarItem.Manager = localBarManager;
		barItemModifyMenu.ParentBarItem.Manager = localBarManager;
		localBarManager.SetUseHooksForMenus(useHooks: true);
		catModifyMenu.ParentBarItem.Popup += CatModifyMenu_Popup;
		barItemModifyMenu.ParentBarItem.Popup += BarItemModifyMenu_Popup;
		catModifyMenu.ParentBarItem.Items.Add(new BarItem(SR.GetString("Add"), OnCatAdd));
		catModifyMenu.ParentBarItem.Items[0].ImageIndex = 3;
		localBarManager.Items.Add(catModifyMenu.ParentBarItem.Items[0]);
		catModifyMenu.ParentBarItem.Items.Add(new BarItem(SR.GetString("Delete"), OnCatDelete));
		catModifyMenu.ParentBarItem.Items[1].ImageIndex = 2;
		localBarManager.Items.Add(catModifyMenu.ParentBarItem.Items[1]);
		catModifyMenu.ParentBarItem.Items.Add(new BarItem(SR.GetString("Rename"), OnCatRename));
		localBarManager.Items.Add(catModifyMenu.ParentBarItem.Items[2]);
		barItemModifyMenu.ParentBarItem.Items.Add(new BarItem(SR.GetString("Add"), OnItemAdd));
		barItemModifyMenu.ParentBarItem.Items[0].ImageIndex = 3;
		localBarManager.Items.Add(barItemModifyMenu.ParentBarItem.Items[0]);
		barItemModifyMenu.ParentBarItem.Items.Add(new BarItem(SR.GetString("Delete"), OnItemDelete));
		barItemModifyMenu.ParentBarItem.Items[1].ImageIndex = 2;
		localBarManager.Items.Add(barItemModifyMenu.ParentBarItem.Items[1]);
		barItemModifyMenu.ParentBarItem.Items.Add(new BarItem(SR.GetString("DeleteAll"), OnDeleteItems));
		localBarManager.Items.Add(barItemModifyMenu.ParentBarItem.Items[2]);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (components != null)
			{
				components.Dispose();
			}
			if (customizingBarManager != null)
			{
				customizingBarManager.PropertyChanged -= customizingBarManager_PropertyChanged;
				customizingBarManager.Items.ItemPropertyChanged -= ItemPropertyChanged;
				customizingBarManager.Bars.ItemPropertyChanged -= BarPropertyChanged;
				customizingBarManager = null;
			}
			if (catModifyMenu != null)
			{
				catModifyMenu.ParentBarItem.Items.Clear();
				catModifyMenu.ParentBarItem = null;
				catModifyMenu.Dispose();
				catModifyMenu = null;
			}
			if (barItemModifyMenu != null)
			{
				barItemModifyMenu.ParentBarItem.Items.Clear();
				barItemModifyMenu.ParentBarItem = null;
				barItemModifyMenu.Dispose();
				barItemModifyMenu = null;
			}
			if (localBarManager != null)
			{
				localBarManager.Items.Clear();
				localBarManager.Dispose();
				localBarManager = null;
			}
			if (menuGridBase != null)
			{
				menuGridBase.Dispose();
				menuGridBase = null;
			}
			if (designerHost != null)
			{
				DesignerHost = null;
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		System.Resources.ResourceManager resourceManager = new System.Resources.ResourceManager(typeof(Syncfusion.Windows.Forms.Tools.XPMenus.CustomizationPanel));
		this.toolbarList = new System.Windows.Forms.CheckedListBox();
		this.tabControl = new System.Windows.Forms.TabControl();
		this.tabPage1 = new System.Windows.Forms.TabPage();
		this.resetButton = new System.Windows.Forms.Button();
		this.deleteButton = new System.Windows.Forms.Button();
		this.newButton = new System.Windows.Forms.Button();
		this.label1 = new System.Windows.Forms.Label();
		this.tabPage2 = new System.Windows.Forms.TabPage();
		this.panel1 = new System.Windows.Forms.Panel();
		this.splitter1 = new System.Windows.Forms.Splitter();
		this.catView = new System.Windows.Forms.TreeView();
		this.gridHostPanel = new System.Windows.Forms.Panel();
		this.catMoveUp = new System.Windows.Forms.Button();
		this.imageList1 = new System.Windows.Forms.ImageList(this.components);
		this.catMoveDown = new System.Windows.Forms.Button();
		this.cmdModify = new System.Windows.Forms.Button();
		this.label3 = new System.Windows.Forms.Label();
		this.label2 = new System.Windows.Forms.Label();
		this.tabPage3 = new System.Windows.Forms.TabPage();
		this.resetCustomizationButton = new System.Windows.Forms.Button();
		this.label7 = new System.Windows.Forms.Label();
		this.label6 = new System.Windows.Forms.Label();
		this.resetPartialMenusBtn = new System.Windows.Forms.Button();
		this.largeIcons = new System.Windows.Forms.CheckBox();
		this.label5 = new System.Windows.Forms.Label();
		this.expandAfterDelay = new System.Windows.Forms.CheckBox();
		this.label4 = new System.Windows.Forms.Label();
		this.alwaysFullMenus = new System.Windows.Forms.CheckBox();
		this.closeButton = new System.Windows.Forms.Button();
		this.hScrollBar1 = new System.Windows.Forms.HScrollBar();
		this.tabControl.SuspendLayout();
		this.tabPage1.SuspendLayout();
		this.tabPage2.SuspendLayout();
		this.panel1.SuspendLayout();
		this.tabPage3.SuspendLayout();
		base.SuspendLayout();
		this.toolbarList.AccessibleDescription = resourceManager.GetString("toolbarList.AccessibleDescription");
		this.toolbarList.AccessibleName = resourceManager.GetString("toolbarList.AccessibleName");
		this.toolbarList.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("toolbarList.Anchor");
		this.toolbarList.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("toolbarList.BackgroundImage");
		this.toolbarList.ColumnWidth = (int)resourceManager.GetObject("toolbarList.ColumnWidth");
		this.toolbarList.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("toolbarList.Dock");
		this.toolbarList.Enabled = (bool)resourceManager.GetObject("toolbarList.Enabled");
		this.toolbarList.Font = (System.Drawing.Font)resourceManager.GetObject("toolbarList.Font");
		this.toolbarList.HorizontalExtent = (int)resourceManager.GetObject("toolbarList.HorizontalExtent");
		this.toolbarList.HorizontalScrollbar = (bool)resourceManager.GetObject("toolbarList.HorizontalScrollbar");
		this.toolbarList.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("toolbarList.ImeMode");
		this.toolbarList.IntegralHeight = (bool)resourceManager.GetObject("toolbarList.IntegralHeight");
		this.toolbarList.Location = (System.Drawing.Point)resourceManager.GetObject("toolbarList.Location");
		this.toolbarList.Name = "toolbarList";
		this.toolbarList.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("toolbarList.RightToLeft");
		this.toolbarList.ScrollAlwaysVisible = (bool)resourceManager.GetObject("toolbarList.ScrollAlwaysVisible");
		this.toolbarList.Size = (System.Drawing.Size)resourceManager.GetObject("toolbarList.Size");
		this.toolbarList.TabIndex = (int)resourceManager.GetObject("toolbarList.TabIndex");
		this.toolbarList.ThreeDCheckBoxes = true;
		this.toolbarList.Visible = (bool)resourceManager.GetObject("toolbarList.Visible");
		this.toolbarList.SelectedIndexChanged += new System.EventHandler(toolbarList_SelectedIndexChanged);
		this.toolbarList.ItemCheck += new System.Windows.Forms.ItemCheckEventHandler(toolbarList_ItemCheck);
		this.tabControl.AccessibleDescription = resourceManager.GetString("tabControl.AccessibleDescription");
		this.tabControl.AccessibleName = resourceManager.GetString("tabControl.AccessibleName");
		this.tabControl.Alignment = (System.Windows.Forms.TabAlignment)resourceManager.GetObject("tabControl.Alignment");
		this.tabControl.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("tabControl.Anchor");
		this.tabControl.Appearance = (System.Windows.Forms.TabAppearance)resourceManager.GetObject("tabControl.Appearance");
		this.tabControl.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("tabControl.BackgroundImage");
		this.tabControl.Controls.Add(this.tabPage1);
		this.tabControl.Controls.Add(this.tabPage2);
		this.tabControl.Controls.Add(this.tabPage3);
		this.tabControl.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("tabControl.Dock");
		this.tabControl.Enabled = (bool)resourceManager.GetObject("tabControl.Enabled");
		this.tabControl.Font = (System.Drawing.Font)resourceManager.GetObject("tabControl.Font");
		this.tabControl.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("tabControl.ImeMode");
		this.tabControl.ItemSize = (System.Drawing.Size)resourceManager.GetObject("tabControl.ItemSize");
		this.tabControl.Location = (System.Drawing.Point)resourceManager.GetObject("tabControl.Location");
		this.tabControl.Name = "tabControl";
		this.tabControl.Padding = (System.Drawing.Point)resourceManager.GetObject("tabControl.Padding");
		this.tabControl.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("tabControl.RightToLeft");
		this.tabControl.SelectedIndex = 0;
		this.tabControl.ShowToolTips = (bool)resourceManager.GetObject("tabControl.ShowToolTips");
		this.tabControl.Size = (System.Drawing.Size)resourceManager.GetObject("tabControl.Size");
		this.tabControl.TabIndex = (int)resourceManager.GetObject("tabControl.TabIndex");
		this.tabControl.Text = resourceManager.GetString("tabControl.Text");
		this.tabControl.Visible = (bool)resourceManager.GetObject("tabControl.Visible");
		this.tabControl.SelectedIndexChanged += new System.EventHandler(tabControl_SelectedIndexChanged);
		this.tabPage1.AccessibleDescription = resourceManager.GetString("tabPage1.AccessibleDescription");
		this.tabPage1.AccessibleName = resourceManager.GetString("tabPage1.AccessibleName");
		this.tabPage1.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("tabPage1.Anchor");
		this.tabPage1.AutoScroll = (bool)resourceManager.GetObject("tabPage1.AutoScroll");
		this.tabPage1.AutoScrollMargin = (System.Drawing.Size)resourceManager.GetObject("tabPage1.AutoScrollMargin");
		this.tabPage1.AutoScrollMinSize = (System.Drawing.Size)resourceManager.GetObject("tabPage1.AutoScrollMinSize");
		this.tabPage1.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("tabPage1.BackgroundImage");
		this.tabPage1.Controls.Add(this.resetButton);
		this.tabPage1.Controls.Add(this.deleteButton);
		this.tabPage1.Controls.Add(this.newButton);
		this.tabPage1.Controls.Add(this.label1);
		this.tabPage1.Controls.Add(this.toolbarList);
		this.tabPage1.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("tabPage1.Dock");
		this.tabPage1.Enabled = (bool)resourceManager.GetObject("tabPage1.Enabled");
		this.tabPage1.Font = (System.Drawing.Font)resourceManager.GetObject("tabPage1.Font");
		this.tabPage1.ImageIndex = (int)resourceManager.GetObject("tabPage1.ImageIndex");
		this.tabPage1.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("tabPage1.ImeMode");
		this.tabPage1.Location = (System.Drawing.Point)resourceManager.GetObject("tabPage1.Location");
		this.tabPage1.Name = "tabPage1";
		this.tabPage1.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("tabPage1.RightToLeft");
		this.tabPage1.Size = (System.Drawing.Size)resourceManager.GetObject("tabPage1.Size");
		this.tabPage1.TabIndex = (int)resourceManager.GetObject("tabPage1.TabIndex");
		this.tabPage1.Text = resourceManager.GetString("tabPage1.Text");
		this.tabPage1.ToolTipText = resourceManager.GetString("tabPage1.ToolTipText");
		this.tabPage1.Visible = (bool)resourceManager.GetObject("tabPage1.Visible");
		this.resetButton.AccessibleDescription = resourceManager.GetString("resetButton.AccessibleDescription");
		this.resetButton.AccessibleName = resourceManager.GetString("resetButton.AccessibleName");
		this.resetButton.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("resetButton.Anchor");
		this.resetButton.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("resetButton.BackgroundImage");
		this.resetButton.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("resetButton.Dock");
		this.resetButton.Enabled = (bool)resourceManager.GetObject("resetButton.Enabled");
		this.resetButton.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("resetButton.FlatStyle");
		this.resetButton.Font = (System.Drawing.Font)resourceManager.GetObject("resetButton.Font");
		this.resetButton.Image = (System.Drawing.Image)resourceManager.GetObject("resetButton.Image");
		this.resetButton.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("resetButton.ImageAlign");
		this.resetButton.ImageIndex = (int)resourceManager.GetObject("resetButton.ImageIndex");
		this.resetButton.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("resetButton.ImeMode");
		this.resetButton.Location = (System.Drawing.Point)resourceManager.GetObject("resetButton.Location");
		this.resetButton.Name = "resetButton";
		this.resetButton.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("resetButton.RightToLeft");
		this.resetButton.Size = (System.Drawing.Size)resourceManager.GetObject("resetButton.Size");
		this.resetButton.TabIndex = (int)resourceManager.GetObject("resetButton.TabIndex");
		this.resetButton.Text = resourceManager.GetString("resetButton.Text");
		this.resetButton.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("resetButton.TextAlign");
		this.resetButton.Visible = (bool)resourceManager.GetObject("resetButton.Visible");
		this.resetButton.Click += new System.EventHandler(resetButton_Click);
		this.deleteButton.AccessibleDescription = resourceManager.GetString("deleteButton.AccessibleDescription");
		this.deleteButton.AccessibleName = resourceManager.GetString("deleteButton.AccessibleName");
		this.deleteButton.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("deleteButton.Anchor");
		this.deleteButton.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("deleteButton.BackgroundImage");
		this.deleteButton.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("deleteButton.Dock");
		this.deleteButton.Enabled = (bool)resourceManager.GetObject("deleteButton.Enabled");
		this.deleteButton.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("deleteButton.FlatStyle");
		this.deleteButton.Font = (System.Drawing.Font)resourceManager.GetObject("deleteButton.Font");
		this.deleteButton.Image = (System.Drawing.Image)resourceManager.GetObject("deleteButton.Image");
		this.deleteButton.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("deleteButton.ImageAlign");
		this.deleteButton.ImageIndex = (int)resourceManager.GetObject("deleteButton.ImageIndex");
		this.deleteButton.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("deleteButton.ImeMode");
		this.deleteButton.Location = (System.Drawing.Point)resourceManager.GetObject("deleteButton.Location");
		this.deleteButton.Name = "deleteButton";
		this.deleteButton.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("deleteButton.RightToLeft");
		this.deleteButton.Size = (System.Drawing.Size)resourceManager.GetObject("deleteButton.Size");
		this.deleteButton.TabIndex = (int)resourceManager.GetObject("deleteButton.TabIndex");
		this.deleteButton.Text = resourceManager.GetString("deleteButton.Text");
		this.deleteButton.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("deleteButton.TextAlign");
		this.deleteButton.Visible = (bool)resourceManager.GetObject("deleteButton.Visible");
		this.deleteButton.Click += new System.EventHandler(deleteButton_Click);
		this.newButton.AccessibleDescription = resourceManager.GetString("newButton.AccessibleDescription");
		this.newButton.AccessibleName = resourceManager.GetString("newButton.AccessibleName");
		this.newButton.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("newButton.Anchor");
		this.newButton.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("newButton.BackgroundImage");
		this.newButton.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("newButton.Dock");
		this.newButton.Enabled = (bool)resourceManager.GetObject("newButton.Enabled");
		this.newButton.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("newButton.FlatStyle");
		this.newButton.Font = (System.Drawing.Font)resourceManager.GetObject("newButton.Font");
		this.newButton.Image = (System.Drawing.Image)resourceManager.GetObject("newButton.Image");
		this.newButton.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("newButton.ImageAlign");
		this.newButton.ImageIndex = (int)resourceManager.GetObject("newButton.ImageIndex");
		this.newButton.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("newButton.ImeMode");
		this.newButton.Location = (System.Drawing.Point)resourceManager.GetObject("newButton.Location");
		this.newButton.Name = "newButton";
		this.newButton.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("newButton.RightToLeft");
		this.newButton.Size = (System.Drawing.Size)resourceManager.GetObject("newButton.Size");
		this.newButton.TabIndex = (int)resourceManager.GetObject("newButton.TabIndex");
		this.newButton.Text = resourceManager.GetString("newButton.Text");
		this.newButton.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("newButton.TextAlign");
		this.newButton.Visible = (bool)resourceManager.GetObject("newButton.Visible");
		this.newButton.Click += new System.EventHandler(newButton_Click);
		this.label1.AccessibleDescription = resourceManager.GetString("label1.AccessibleDescription");
		this.label1.AccessibleName = resourceManager.GetString("label1.AccessibleName");
		this.label1.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("label1.Anchor");
		this.label1.AutoSize = (bool)resourceManager.GetObject("label1.AutoSize");
		this.label1.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("label1.Dock");
		this.label1.Enabled = (bool)resourceManager.GetObject("label1.Enabled");
		this.label1.Font = (System.Drawing.Font)resourceManager.GetObject("label1.Font");
		this.label1.Image = (System.Drawing.Image)resourceManager.GetObject("label1.Image");
		this.label1.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label1.ImageAlign");
		this.label1.ImageIndex = (int)resourceManager.GetObject("label1.ImageIndex");
		this.label1.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("label1.ImeMode");
		this.label1.Location = (System.Drawing.Point)resourceManager.GetObject("label1.Location");
		this.label1.Name = "label1";
		this.label1.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("label1.RightToLeft");
		this.label1.Size = (System.Drawing.Size)resourceManager.GetObject("label1.Size");
		this.label1.TabIndex = (int)resourceManager.GetObject("label1.TabIndex");
		this.label1.Text = resourceManager.GetString("label1.Text");
		this.label1.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label1.TextAlign");
		this.label1.Visible = (bool)resourceManager.GetObject("label1.Visible");
		this.tabPage2.AccessibleDescription = resourceManager.GetString("tabPage2.AccessibleDescription");
		this.tabPage2.AccessibleName = resourceManager.GetString("tabPage2.AccessibleName");
		this.tabPage2.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("tabPage2.Anchor");
		this.tabPage2.AutoScroll = (bool)resourceManager.GetObject("tabPage2.AutoScroll");
		this.tabPage2.AutoScrollMargin = (System.Drawing.Size)resourceManager.GetObject("tabPage2.AutoScrollMargin");
		this.tabPage2.AutoScrollMinSize = (System.Drawing.Size)resourceManager.GetObject("tabPage2.AutoScrollMinSize");
		this.tabPage2.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("tabPage2.BackgroundImage");
		this.tabPage2.Controls.Add(this.panel1);
		this.tabPage2.Controls.Add(this.catMoveUp);
		this.tabPage2.Controls.Add(this.catMoveDown);
		this.tabPage2.Controls.Add(this.cmdModify);
		this.tabPage2.Controls.Add(this.label3);
		this.tabPage2.Controls.Add(this.label2);
		this.tabPage2.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("tabPage2.Dock");
		this.tabPage2.Enabled = (bool)resourceManager.GetObject("tabPage2.Enabled");
		this.tabPage2.Font = (System.Drawing.Font)resourceManager.GetObject("tabPage2.Font");
		this.tabPage2.ImageIndex = (int)resourceManager.GetObject("tabPage2.ImageIndex");
		this.tabPage2.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("tabPage2.ImeMode");
		this.tabPage2.Location = (System.Drawing.Point)resourceManager.GetObject("tabPage2.Location");
		this.tabPage2.Name = "tabPage2";
		this.tabPage2.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("tabPage2.RightToLeft");
		this.tabPage2.Size = (System.Drawing.Size)resourceManager.GetObject("tabPage2.Size");
		this.tabPage2.TabIndex = (int)resourceManager.GetObject("tabPage2.TabIndex");
		this.tabPage2.Text = resourceManager.GetString("tabPage2.Text");
		this.tabPage2.ToolTipText = resourceManager.GetString("tabPage2.ToolTipText");
		this.tabPage2.Visible = (bool)resourceManager.GetObject("tabPage2.Visible");
		this.panel1.AccessibleDescription = resourceManager.GetString("panel1.AccessibleDescription");
		this.panel1.AccessibleName = resourceManager.GetString("panel1.AccessibleName");
		this.panel1.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("panel1.Anchor");
		this.panel1.AutoScroll = (bool)resourceManager.GetObject("panel1.AutoScroll");
		this.panel1.AutoScrollMargin = (System.Drawing.Size)resourceManager.GetObject("panel1.AutoScrollMargin");
		this.panel1.AutoScrollMinSize = (System.Drawing.Size)resourceManager.GetObject("panel1.AutoScrollMinSize");
		this.panel1.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("panel1.BackgroundImage");
		this.panel1.Controls.Add(this.splitter1);
		this.panel1.Controls.Add(this.catView);
		this.panel1.Controls.Add(this.gridHostPanel);
		this.panel1.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("panel1.Dock");
		this.panel1.Enabled = (bool)resourceManager.GetObject("panel1.Enabled");
		this.panel1.Font = (System.Drawing.Font)resourceManager.GetObject("panel1.Font");
		this.panel1.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("panel1.ImeMode");
		this.panel1.Location = (System.Drawing.Point)resourceManager.GetObject("panel1.Location");
		this.panel1.Name = "panel1";
		this.panel1.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("panel1.RightToLeft");
		this.panel1.Size = (System.Drawing.Size)resourceManager.GetObject("panel1.Size");
		this.panel1.TabIndex = (int)resourceManager.GetObject("panel1.TabIndex");
		this.panel1.Text = resourceManager.GetString("panel1.Text");
		this.panel1.Visible = (bool)resourceManager.GetObject("panel1.Visible");
		this.splitter1.AccessibleDescription = resourceManager.GetString("splitter1.AccessibleDescription");
		this.splitter1.AccessibleName = resourceManager.GetString("splitter1.AccessibleName");
		this.splitter1.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("splitter1.Anchor");
		this.splitter1.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("splitter1.BackgroundImage");
		this.splitter1.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("splitter1.Dock");
		this.splitter1.Enabled = (bool)resourceManager.GetObject("splitter1.Enabled");
		this.splitter1.Font = (System.Drawing.Font)resourceManager.GetObject("splitter1.Font");
		this.splitter1.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("splitter1.ImeMode");
		this.splitter1.Location = (System.Drawing.Point)resourceManager.GetObject("splitter1.Location");
		this.splitter1.MinExtra = (int)resourceManager.GetObject("splitter1.MinExtra");
		this.splitter1.MinSize = (int)resourceManager.GetObject("splitter1.MinSize");
		this.splitter1.Name = "splitter1";
		this.splitter1.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("splitter1.RightToLeft");
		this.splitter1.Size = (System.Drawing.Size)resourceManager.GetObject("splitter1.Size");
		this.splitter1.TabIndex = (int)resourceManager.GetObject("splitter1.TabIndex");
		this.splitter1.TabStop = false;
		this.splitter1.Visible = (bool)resourceManager.GetObject("splitter1.Visible");
		this.catView.AccessibleDescription = resourceManager.GetString("catView.AccessibleDescription");
		this.catView.AccessibleName = resourceManager.GetString("catView.AccessibleName");
		this.catView.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("catView.Anchor");
		this.catView.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("catView.BackgroundImage");
		this.catView.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("catView.Dock");
		this.catView.Enabled = (bool)resourceManager.GetObject("catView.Enabled");
		this.catView.Font = (System.Drawing.Font)resourceManager.GetObject("catView.Font");
		this.catView.HideSelection = false;
		this.catView.ImageIndex = (int)resourceManager.GetObject("catView.ImageIndex");
		this.catView.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("catView.ImeMode");
		this.catView.Indent = (int)resourceManager.GetObject("catView.Indent");
		this.catView.ItemHeight = (int)resourceManager.GetObject("catView.ItemHeight");
		this.catView.Location = (System.Drawing.Point)resourceManager.GetObject("catView.Location");
		this.catView.Name = "catView";
		this.catView.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("catView.RightToLeft");
		this.catView.Scrollable = false;
		this.catView.SelectedImageIndex = (int)resourceManager.GetObject("catView.SelectedImageIndex");
		this.catView.Size = (System.Drawing.Size)resourceManager.GetObject("catView.Size");
		this.catView.TabIndex = (int)resourceManager.GetObject("catView.TabIndex");
		this.catView.Text = resourceManager.GetString("catView.Text");
		this.catView.Visible = (bool)resourceManager.GetObject("catView.Visible");
		this.catView.AfterSelect += new System.Windows.Forms.TreeViewEventHandler(catView_SelectionChanged);
		this.gridHostPanel.AccessibleDescription = resourceManager.GetString("gridHostPanel.AccessibleDescription");
		this.gridHostPanel.AccessibleName = resourceManager.GetString("gridHostPanel.AccessibleName");
		this.gridHostPanel.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("gridHostPanel.Anchor");
		this.gridHostPanel.AutoScroll = (bool)resourceManager.GetObject("gridHostPanel.AutoScroll");
		this.gridHostPanel.AutoScrollMargin = (System.Drawing.Size)resourceManager.GetObject("gridHostPanel.AutoScrollMargin");
		this.gridHostPanel.AutoScrollMinSize = (System.Drawing.Size)resourceManager.GetObject("gridHostPanel.AutoScrollMinSize");
		this.gridHostPanel.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("gridHostPanel.BackgroundImage");
		this.gridHostPanel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
		this.gridHostPanel.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("gridHostPanel.Dock");
		this.gridHostPanel.Enabled = (bool)resourceManager.GetObject("gridHostPanel.Enabled");
		this.gridHostPanel.Font = (System.Drawing.Font)resourceManager.GetObject("gridHostPanel.Font");
		this.gridHostPanel.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("gridHostPanel.ImeMode");
		this.gridHostPanel.Location = (System.Drawing.Point)resourceManager.GetObject("gridHostPanel.Location");
		this.gridHostPanel.Name = "gridHostPanel";
		this.gridHostPanel.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("gridHostPanel.RightToLeft");
		this.gridHostPanel.Size = (System.Drawing.Size)resourceManager.GetObject("gridHostPanel.Size");
		this.gridHostPanel.TabIndex = (int)resourceManager.GetObject("gridHostPanel.TabIndex");
		this.gridHostPanel.Text = resourceManager.GetString("gridHostPanel.Text");
		this.gridHostPanel.Visible = (bool)resourceManager.GetObject("gridHostPanel.Visible");
		this.gridHostPanel.SizeChanged += new System.EventHandler(gridHostPanel_SizeChanged);
		this.gridHostPanel.MouseUp += new System.Windows.Forms.MouseEventHandler(gridHostPanel_MouseUp);
		this.catMoveUp.AccessibleDescription = resourceManager.GetString("catMoveUp.AccessibleDescription");
		this.catMoveUp.AccessibleName = resourceManager.GetString("catMoveUp.AccessibleName");
		this.catMoveUp.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("catMoveUp.Anchor");
		this.catMoveUp.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("catMoveUp.BackgroundImage");
		this.catMoveUp.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("catMoveUp.Dock");
		this.catMoveUp.Enabled = (bool)resourceManager.GetObject("catMoveUp.Enabled");
		this.catMoveUp.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("catMoveUp.FlatStyle");
		this.catMoveUp.Font = (System.Drawing.Font)resourceManager.GetObject("catMoveUp.Font");
		this.catMoveUp.Image = (System.Drawing.Image)resourceManager.GetObject("catMoveUp.Image");
		this.catMoveUp.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("catMoveUp.ImageAlign");
		this.catMoveUp.ImageIndex = (int)resourceManager.GetObject("catMoveUp.ImageIndex");
		this.catMoveUp.ImageList = this.imageList1;
		this.catMoveUp.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("catMoveUp.ImeMode");
		this.catMoveUp.Location = (System.Drawing.Point)resourceManager.GetObject("catMoveUp.Location");
		this.catMoveUp.Name = "catMoveUp";
		this.catMoveUp.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("catMoveUp.RightToLeft");
		this.catMoveUp.Size = (System.Drawing.Size)resourceManager.GetObject("catMoveUp.Size");
		this.catMoveUp.TabIndex = (int)resourceManager.GetObject("catMoveUp.TabIndex");
		this.catMoveUp.Text = resourceManager.GetString("catMoveUp.Text");
		this.catMoveUp.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("catMoveUp.TextAlign");
		this.catMoveUp.Visible = (bool)resourceManager.GetObject("catMoveUp.Visible");
		this.catMoveUp.Click += new System.EventHandler(OnCatMoveUp);
		this.imageList1.ImageSize = (System.Drawing.Size)resourceManager.GetObject("imageList1.ImageSize");
		this.imageList1.ImageStream = (System.Windows.Forms.ImageListStreamer)resourceManager.GetObject("imageList1.ImageStream");
		this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
		this.catMoveDown.AccessibleDescription = resourceManager.GetString("catMoveDown.AccessibleDescription");
		this.catMoveDown.AccessibleName = resourceManager.GetString("catMoveDown.AccessibleName");
		this.catMoveDown.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("catMoveDown.Anchor");
		this.catMoveDown.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("catMoveDown.BackgroundImage");
		this.catMoveDown.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("catMoveDown.Dock");
		this.catMoveDown.Enabled = (bool)resourceManager.GetObject("catMoveDown.Enabled");
		this.catMoveDown.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("catMoveDown.FlatStyle");
		this.catMoveDown.Font = (System.Drawing.Font)resourceManager.GetObject("catMoveDown.Font");
		this.catMoveDown.Image = (System.Drawing.Image)resourceManager.GetObject("catMoveDown.Image");
		this.catMoveDown.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("catMoveDown.ImageAlign");
		this.catMoveDown.ImageIndex = (int)resourceManager.GetObject("catMoveDown.ImageIndex");
		this.catMoveDown.ImageList = this.imageList1;
		this.catMoveDown.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("catMoveDown.ImeMode");
		this.catMoveDown.Location = (System.Drawing.Point)resourceManager.GetObject("catMoveDown.Location");
		this.catMoveDown.Name = "catMoveDown";
		this.catMoveDown.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("catMoveDown.RightToLeft");
		this.catMoveDown.Size = (System.Drawing.Size)resourceManager.GetObject("catMoveDown.Size");
		this.catMoveDown.TabIndex = (int)resourceManager.GetObject("catMoveDown.TabIndex");
		this.catMoveDown.Text = resourceManager.GetString("catMoveDown.Text");
		this.catMoveDown.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("catMoveDown.TextAlign");
		this.catMoveDown.Visible = (bool)resourceManager.GetObject("catMoveDown.Visible");
		this.catMoveDown.Click += new System.EventHandler(OnCatMoveDown);
		this.cmdModify.AccessibleDescription = resourceManager.GetString("cmdModify.AccessibleDescription");
		this.cmdModify.AccessibleName = resourceManager.GetString("cmdModify.AccessibleName");
		this.cmdModify.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("cmdModify.Anchor");
		this.cmdModify.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("cmdModify.BackgroundImage");
		this.cmdModify.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("cmdModify.Dock");
		this.cmdModify.Enabled = (bool)resourceManager.GetObject("cmdModify.Enabled");
		this.cmdModify.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("cmdModify.FlatStyle");
		this.cmdModify.Font = (System.Drawing.Font)resourceManager.GetObject("cmdModify.Font");
		this.cmdModify.Image = (System.Drawing.Image)resourceManager.GetObject("cmdModify.Image");
		this.cmdModify.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("cmdModify.ImageAlign");
		this.cmdModify.ImageIndex = (int)resourceManager.GetObject("cmdModify.ImageIndex");
		this.cmdModify.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("cmdModify.ImeMode");
		this.cmdModify.Location = (System.Drawing.Point)resourceManager.GetObject("cmdModify.Location");
		this.cmdModify.Name = "cmdModify";
		this.cmdModify.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("cmdModify.RightToLeft");
		this.cmdModify.Size = (System.Drawing.Size)resourceManager.GetObject("cmdModify.Size");
		this.cmdModify.TabIndex = (int)resourceManager.GetObject("cmdModify.TabIndex");
		this.cmdModify.Text = resourceManager.GetString("cmdModify.Text");
		this.cmdModify.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("cmdModify.TextAlign");
		this.cmdModify.Visible = (bool)resourceManager.GetObject("cmdModify.Visible");
		this.cmdModify.Click += new System.EventHandler(cmdModify_Click);
		this.label3.AccessibleDescription = resourceManager.GetString("label3.AccessibleDescription");
		this.label3.AccessibleName = resourceManager.GetString("label3.AccessibleName");
		this.label3.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("label3.Anchor");
		this.label3.AutoSize = (bool)resourceManager.GetObject("label3.AutoSize");
		this.label3.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("label3.Dock");
		this.label3.Enabled = (bool)resourceManager.GetObject("label3.Enabled");
		this.label3.Font = (System.Drawing.Font)resourceManager.GetObject("label3.Font");
		this.label3.Image = (System.Drawing.Image)resourceManager.GetObject("label3.Image");
		this.label3.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label3.ImageAlign");
		this.label3.ImageIndex = (int)resourceManager.GetObject("label3.ImageIndex");
		this.label3.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("label3.ImeMode");
		this.label3.Location = (System.Drawing.Point)resourceManager.GetObject("label3.Location");
		this.label3.Name = "label3";
		this.label3.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("label3.RightToLeft");
		this.label3.Size = (System.Drawing.Size)resourceManager.GetObject("label3.Size");
		this.label3.TabIndex = (int)resourceManager.GetObject("label3.TabIndex");
		this.label3.Text = resourceManager.GetString("label3.Text");
		this.label3.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label3.TextAlign");
		this.label3.Visible = (bool)resourceManager.GetObject("label3.Visible");
		this.label2.AccessibleDescription = resourceManager.GetString("label2.AccessibleDescription");
		this.label2.AccessibleName = resourceManager.GetString("label2.AccessibleName");
		this.label2.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("label2.Anchor");
		this.label2.AutoSize = (bool)resourceManager.GetObject("label2.AutoSize");
		this.label2.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("label2.Dock");
		this.label2.Enabled = (bool)resourceManager.GetObject("label2.Enabled");
		this.label2.Font = (System.Drawing.Font)resourceManager.GetObject("label2.Font");
		this.label2.Image = (System.Drawing.Image)resourceManager.GetObject("label2.Image");
		this.label2.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label2.ImageAlign");
		this.label2.ImageIndex = (int)resourceManager.GetObject("label2.ImageIndex");
		this.label2.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("label2.ImeMode");
		this.label2.Location = (System.Drawing.Point)resourceManager.GetObject("label2.Location");
		this.label2.Name = "label2";
		this.label2.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("label2.RightToLeft");
		this.label2.Size = (System.Drawing.Size)resourceManager.GetObject("label2.Size");
		this.label2.TabIndex = (int)resourceManager.GetObject("label2.TabIndex");
		this.label2.Text = resourceManager.GetString("label2.Text");
		this.label2.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label2.TextAlign");
		this.label2.Visible = (bool)resourceManager.GetObject("label2.Visible");
		this.tabPage3.AccessibleDescription = resourceManager.GetString("tabPage3.AccessibleDescription");
		this.tabPage3.AccessibleName = resourceManager.GetString("tabPage3.AccessibleName");
		this.tabPage3.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("tabPage3.Anchor");
		this.tabPage3.AutoScroll = (bool)resourceManager.GetObject("tabPage3.AutoScroll");
		this.tabPage3.AutoScrollMargin = (System.Drawing.Size)resourceManager.GetObject("tabPage3.AutoScrollMargin");
		this.tabPage3.AutoScrollMinSize = (System.Drawing.Size)resourceManager.GetObject("tabPage3.AutoScrollMinSize");
		this.tabPage3.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("tabPage3.BackgroundImage");
		this.tabPage3.Controls.Add(this.resetCustomizationButton);
		this.tabPage3.Controls.Add(this.label7);
		this.tabPage3.Controls.Add(this.label6);
		this.tabPage3.Controls.Add(this.resetPartialMenusBtn);
		this.tabPage3.Controls.Add(this.largeIcons);
		this.tabPage3.Controls.Add(this.label5);
		this.tabPage3.Controls.Add(this.expandAfterDelay);
		this.tabPage3.Controls.Add(this.label4);
		this.tabPage3.Controls.Add(this.alwaysFullMenus);
		this.tabPage3.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("tabPage3.Dock");
		this.tabPage3.Enabled = (bool)resourceManager.GetObject("tabPage3.Enabled");
		this.tabPage3.Font = (System.Drawing.Font)resourceManager.GetObject("tabPage3.Font");
		this.tabPage3.ImageIndex = (int)resourceManager.GetObject("tabPage3.ImageIndex");
		this.tabPage3.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("tabPage3.ImeMode");
		this.tabPage3.Location = (System.Drawing.Point)resourceManager.GetObject("tabPage3.Location");
		this.tabPage3.Name = "tabPage3";
		this.tabPage3.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("tabPage3.RightToLeft");
		this.tabPage3.Size = (System.Drawing.Size)resourceManager.GetObject("tabPage3.Size");
		this.tabPage3.TabIndex = (int)resourceManager.GetObject("tabPage3.TabIndex");
		this.tabPage3.Text = resourceManager.GetString("tabPage3.Text");
		this.tabPage3.ToolTipText = resourceManager.GetString("tabPage3.ToolTipText");
		this.tabPage3.Visible = (bool)resourceManager.GetObject("tabPage3.Visible");
		this.resetCustomizationButton.AccessibleDescription = resourceManager.GetString("resetCustomizationButton.AccessibleDescription");
		this.resetCustomizationButton.AccessibleName = resourceManager.GetString("resetCustomizationButton.AccessibleName");
		this.resetCustomizationButton.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("resetCustomizationButton.Anchor");
		this.resetCustomizationButton.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("resetCustomizationButton.BackgroundImage");
		this.resetCustomizationButton.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("resetCustomizationButton.Dock");
		this.resetCustomizationButton.Enabled = (bool)resourceManager.GetObject("resetCustomizationButton.Enabled");
		this.resetCustomizationButton.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("resetCustomizationButton.FlatStyle");
		this.resetCustomizationButton.Font = (System.Drawing.Font)resourceManager.GetObject("resetCustomizationButton.Font");
		this.resetCustomizationButton.Image = (System.Drawing.Image)resourceManager.GetObject("resetCustomizationButton.Image");
		this.resetCustomizationButton.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("resetCustomizationButton.ImageAlign");
		this.resetCustomizationButton.ImageIndex = (int)resourceManager.GetObject("resetCustomizationButton.ImageIndex");
		this.resetCustomizationButton.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("resetCustomizationButton.ImeMode");
		this.resetCustomizationButton.Location = (System.Drawing.Point)resourceManager.GetObject("resetCustomizationButton.Location");
		this.resetCustomizationButton.Name = "resetCustomizationButton";
		this.resetCustomizationButton.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("resetCustomizationButton.RightToLeft");
		this.resetCustomizationButton.Size = (System.Drawing.Size)resourceManager.GetObject("resetCustomizationButton.Size");
		this.resetCustomizationButton.TabIndex = (int)resourceManager.GetObject("resetCustomizationButton.TabIndex");
		this.resetCustomizationButton.Text = resourceManager.GetString("resetCustomizationButton.Text");
		this.resetCustomizationButton.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("resetCustomizationButton.TextAlign");
		this.resetCustomizationButton.Visible = (bool)resourceManager.GetObject("resetCustomizationButton.Visible");
		this.resetCustomizationButton.Click += new System.EventHandler(resetCustomizationButton_Click);
		this.label7.AccessibleDescription = resourceManager.GetString("label7.AccessibleDescription");
		this.label7.AccessibleName = resourceManager.GetString("label7.AccessibleName");
		this.label7.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("label7.Anchor");
		this.label7.AutoSize = (bool)resourceManager.GetObject("label7.AutoSize");
		this.label7.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
		this.label7.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("label7.Dock");
		this.label7.Enabled = (bool)resourceManager.GetObject("label7.Enabled");
		this.label7.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.label7.Font = (System.Drawing.Font)resourceManager.GetObject("label7.Font");
		this.label7.Image = (System.Drawing.Image)resourceManager.GetObject("label7.Image");
		this.label7.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label7.ImageAlign");
		this.label7.ImageIndex = (int)resourceManager.GetObject("label7.ImageIndex");
		this.label7.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("label7.ImeMode");
		this.label7.Location = (System.Drawing.Point)resourceManager.GetObject("label7.Location");
		this.label7.Name = "label7";
		this.label7.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("label7.RightToLeft");
		this.label7.Size = (System.Drawing.Size)resourceManager.GetObject("label7.Size");
		this.label7.TabIndex = (int)resourceManager.GetObject("label7.TabIndex");
		this.label7.Text = resourceManager.GetString("label7.Text");
		this.label7.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label7.TextAlign");
		this.label7.Visible = (bool)resourceManager.GetObject("label7.Visible");
		this.label6.AccessibleDescription = resourceManager.GetString("label6.AccessibleDescription");
		this.label6.AccessibleName = resourceManager.GetString("label6.AccessibleName");
		this.label6.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("label6.Anchor");
		this.label6.AutoSize = (bool)resourceManager.GetObject("label6.AutoSize");
		this.label6.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
		this.label6.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("label6.Dock");
		this.label6.Enabled = (bool)resourceManager.GetObject("label6.Enabled");
		this.label6.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.label6.Font = (System.Drawing.Font)resourceManager.GetObject("label6.Font");
		this.label6.Image = (System.Drawing.Image)resourceManager.GetObject("label6.Image");
		this.label6.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label6.ImageAlign");
		this.label6.ImageIndex = (int)resourceManager.GetObject("label6.ImageIndex");
		this.label6.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("label6.ImeMode");
		this.label6.Location = (System.Drawing.Point)resourceManager.GetObject("label6.Location");
		this.label6.Name = "label6";
		this.label6.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("label6.RightToLeft");
		this.label6.Size = (System.Drawing.Size)resourceManager.GetObject("label6.Size");
		this.label6.TabIndex = (int)resourceManager.GetObject("label6.TabIndex");
		this.label6.Text = resourceManager.GetString("label6.Text");
		this.label6.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label6.TextAlign");
		this.label6.Visible = (bool)resourceManager.GetObject("label6.Visible");
		this.resetPartialMenusBtn.AccessibleDescription = resourceManager.GetString("resetPartialMenusBtn.AccessibleDescription");
		this.resetPartialMenusBtn.AccessibleName = resourceManager.GetString("resetPartialMenusBtn.AccessibleName");
		this.resetPartialMenusBtn.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("resetPartialMenusBtn.Anchor");
		this.resetPartialMenusBtn.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("resetPartialMenusBtn.BackgroundImage");
		this.resetPartialMenusBtn.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("resetPartialMenusBtn.Dock");
		this.resetPartialMenusBtn.Enabled = (bool)resourceManager.GetObject("resetPartialMenusBtn.Enabled");
		this.resetPartialMenusBtn.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("resetPartialMenusBtn.FlatStyle");
		this.resetPartialMenusBtn.Font = (System.Drawing.Font)resourceManager.GetObject("resetPartialMenusBtn.Font");
		this.resetPartialMenusBtn.Image = (System.Drawing.Image)resourceManager.GetObject("resetPartialMenusBtn.Image");
		this.resetPartialMenusBtn.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("resetPartialMenusBtn.ImageAlign");
		this.resetPartialMenusBtn.ImageIndex = (int)resourceManager.GetObject("resetPartialMenusBtn.ImageIndex");
		this.resetPartialMenusBtn.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("resetPartialMenusBtn.ImeMode");
		this.resetPartialMenusBtn.Location = (System.Drawing.Point)resourceManager.GetObject("resetPartialMenusBtn.Location");
		this.resetPartialMenusBtn.Name = "resetPartialMenusBtn";
		this.resetPartialMenusBtn.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("resetPartialMenusBtn.RightToLeft");
		this.resetPartialMenusBtn.Size = (System.Drawing.Size)resourceManager.GetObject("resetPartialMenusBtn.Size");
		this.resetPartialMenusBtn.TabIndex = (int)resourceManager.GetObject("resetPartialMenusBtn.TabIndex");
		this.resetPartialMenusBtn.Text = resourceManager.GetString("resetPartialMenusBtn.Text");
		this.resetPartialMenusBtn.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("resetPartialMenusBtn.TextAlign");
		this.resetPartialMenusBtn.Visible = (bool)resourceManager.GetObject("resetPartialMenusBtn.Visible");
		this.resetPartialMenusBtn.Click += new System.EventHandler(resetPartialMenusBtn_Click);
		this.largeIcons.AccessibleDescription = resourceManager.GetString("largeIcons.AccessibleDescription");
		this.largeIcons.AccessibleName = resourceManager.GetString("largeIcons.AccessibleName");
		this.largeIcons.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("largeIcons.Anchor");
		this.largeIcons.Appearance = (System.Windows.Forms.Appearance)resourceManager.GetObject("largeIcons.Appearance");
		this.largeIcons.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("largeIcons.BackgroundImage");
		this.largeIcons.CheckAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("largeIcons.CheckAlign");
		this.largeIcons.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("largeIcons.Dock");
		this.largeIcons.Enabled = (bool)resourceManager.GetObject("largeIcons.Enabled");
		this.largeIcons.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("largeIcons.FlatStyle");
		this.largeIcons.Font = (System.Drawing.Font)resourceManager.GetObject("largeIcons.Font");
		this.largeIcons.Image = (System.Drawing.Image)resourceManager.GetObject("largeIcons.Image");
		this.largeIcons.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("largeIcons.ImageAlign");
		this.largeIcons.ImageIndex = (int)resourceManager.GetObject("largeIcons.ImageIndex");
		this.largeIcons.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("largeIcons.ImeMode");
		this.largeIcons.Location = (System.Drawing.Point)resourceManager.GetObject("largeIcons.Location");
		this.largeIcons.Name = "largeIcons";
		this.largeIcons.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("largeIcons.RightToLeft");
		this.largeIcons.Size = (System.Drawing.Size)resourceManager.GetObject("largeIcons.Size");
		this.largeIcons.TabIndex = (int)resourceManager.GetObject("largeIcons.TabIndex");
		this.largeIcons.Text = resourceManager.GetString("largeIcons.Text");
		this.largeIcons.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("largeIcons.TextAlign");
		this.largeIcons.Visible = (bool)resourceManager.GetObject("largeIcons.Visible");
		this.label5.AccessibleDescription = resourceManager.GetString("label5.AccessibleDescription");
		this.label5.AccessibleName = resourceManager.GetString("label5.AccessibleName");
		this.label5.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("label5.Anchor");
		this.label5.AutoSize = (bool)resourceManager.GetObject("label5.AutoSize");
		this.label5.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("label5.Dock");
		this.label5.Enabled = (bool)resourceManager.GetObject("label5.Enabled");
		this.label5.Font = (System.Drawing.Font)resourceManager.GetObject("label5.Font");
		this.label5.Image = (System.Drawing.Image)resourceManager.GetObject("label5.Image");
		this.label5.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label5.ImageAlign");
		this.label5.ImageIndex = (int)resourceManager.GetObject("label5.ImageIndex");
		this.label5.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("label5.ImeMode");
		this.label5.Location = (System.Drawing.Point)resourceManager.GetObject("label5.Location");
		this.label5.Name = "label5";
		this.label5.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("label5.RightToLeft");
		this.label5.Size = (System.Drawing.Size)resourceManager.GetObject("label5.Size");
		this.label5.TabIndex = (int)resourceManager.GetObject("label5.TabIndex");
		this.label5.Text = resourceManager.GetString("label5.Text");
		this.label5.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label5.TextAlign");
		this.label5.Visible = (bool)resourceManager.GetObject("label5.Visible");
		this.expandAfterDelay.AccessibleDescription = resourceManager.GetString("expandAfterDelay.AccessibleDescription");
		this.expandAfterDelay.AccessibleName = resourceManager.GetString("expandAfterDelay.AccessibleName");
		this.expandAfterDelay.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("expandAfterDelay.Anchor");
		this.expandAfterDelay.Appearance = (System.Windows.Forms.Appearance)resourceManager.GetObject("expandAfterDelay.Appearance");
		this.expandAfterDelay.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("expandAfterDelay.BackgroundImage");
		this.expandAfterDelay.CheckAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("expandAfterDelay.CheckAlign");
		this.expandAfterDelay.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("expandAfterDelay.Dock");
		this.expandAfterDelay.Enabled = (bool)resourceManager.GetObject("expandAfterDelay.Enabled");
		this.expandAfterDelay.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("expandAfterDelay.FlatStyle");
		this.expandAfterDelay.Font = (System.Drawing.Font)resourceManager.GetObject("expandAfterDelay.Font");
		this.expandAfterDelay.Image = (System.Drawing.Image)resourceManager.GetObject("expandAfterDelay.Image");
		this.expandAfterDelay.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("expandAfterDelay.ImageAlign");
		this.expandAfterDelay.ImageIndex = (int)resourceManager.GetObject("expandAfterDelay.ImageIndex");
		this.expandAfterDelay.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("expandAfterDelay.ImeMode");
		this.expandAfterDelay.Location = (System.Drawing.Point)resourceManager.GetObject("expandAfterDelay.Location");
		this.expandAfterDelay.Name = "expandAfterDelay";
		this.expandAfterDelay.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("expandAfterDelay.RightToLeft");
		this.expandAfterDelay.Size = (System.Drawing.Size)resourceManager.GetObject("expandAfterDelay.Size");
		this.expandAfterDelay.TabIndex = (int)resourceManager.GetObject("expandAfterDelay.TabIndex");
		this.expandAfterDelay.Text = resourceManager.GetString("expandAfterDelay.Text");
		this.expandAfterDelay.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("expandAfterDelay.TextAlign");
		this.expandAfterDelay.Visible = (bool)resourceManager.GetObject("expandAfterDelay.Visible");
		this.label4.AccessibleDescription = resourceManager.GetString("label4.AccessibleDescription");
		this.label4.AccessibleName = resourceManager.GetString("label4.AccessibleName");
		this.label4.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("label4.Anchor");
		this.label4.AutoSize = (bool)resourceManager.GetObject("label4.AutoSize");
		this.label4.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("label4.Dock");
		this.label4.Enabled = (bool)resourceManager.GetObject("label4.Enabled");
		this.label4.Font = (System.Drawing.Font)resourceManager.GetObject("label4.Font");
		this.label4.Image = (System.Drawing.Image)resourceManager.GetObject("label4.Image");
		this.label4.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label4.ImageAlign");
		this.label4.ImageIndex = (int)resourceManager.GetObject("label4.ImageIndex");
		this.label4.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("label4.ImeMode");
		this.label4.Location = (System.Drawing.Point)resourceManager.GetObject("label4.Location");
		this.label4.Name = "label4";
		this.label4.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("label4.RightToLeft");
		this.label4.Size = (System.Drawing.Size)resourceManager.GetObject("label4.Size");
		this.label4.TabIndex = (int)resourceManager.GetObject("label4.TabIndex");
		this.label4.Text = resourceManager.GetString("label4.Text");
		this.label4.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label4.TextAlign");
		this.label4.Visible = (bool)resourceManager.GetObject("label4.Visible");
		this.alwaysFullMenus.AccessibleDescription = resourceManager.GetString("alwaysFullMenus.AccessibleDescription");
		this.alwaysFullMenus.AccessibleName = resourceManager.GetString("alwaysFullMenus.AccessibleName");
		this.alwaysFullMenus.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("alwaysFullMenus.Anchor");
		this.alwaysFullMenus.Appearance = (System.Windows.Forms.Appearance)resourceManager.GetObject("alwaysFullMenus.Appearance");
		this.alwaysFullMenus.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("alwaysFullMenus.BackgroundImage");
		this.alwaysFullMenus.CheckAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("alwaysFullMenus.CheckAlign");
		this.alwaysFullMenus.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("alwaysFullMenus.Dock");
		this.alwaysFullMenus.Enabled = (bool)resourceManager.GetObject("alwaysFullMenus.Enabled");
		this.alwaysFullMenus.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("alwaysFullMenus.FlatStyle");
		this.alwaysFullMenus.Font = (System.Drawing.Font)resourceManager.GetObject("alwaysFullMenus.Font");
		this.alwaysFullMenus.Image = (System.Drawing.Image)resourceManager.GetObject("alwaysFullMenus.Image");
		this.alwaysFullMenus.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("alwaysFullMenus.ImageAlign");
		this.alwaysFullMenus.ImageIndex = (int)resourceManager.GetObject("alwaysFullMenus.ImageIndex");
		this.alwaysFullMenus.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("alwaysFullMenus.ImeMode");
		this.alwaysFullMenus.Location = (System.Drawing.Point)resourceManager.GetObject("alwaysFullMenus.Location");
		this.alwaysFullMenus.Name = "alwaysFullMenus";
		this.alwaysFullMenus.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("alwaysFullMenus.RightToLeft");
		this.alwaysFullMenus.Size = (System.Drawing.Size)resourceManager.GetObject("alwaysFullMenus.Size");
		this.alwaysFullMenus.TabIndex = (int)resourceManager.GetObject("alwaysFullMenus.TabIndex");
		this.alwaysFullMenus.Text = resourceManager.GetString("alwaysFullMenus.Text");
		this.alwaysFullMenus.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("alwaysFullMenus.TextAlign");
		this.alwaysFullMenus.Visible = (bool)resourceManager.GetObject("alwaysFullMenus.Visible");
		this.closeButton.AccessibleDescription = resourceManager.GetString("closeButton.AccessibleDescription");
		this.closeButton.AccessibleName = resourceManager.GetString("closeButton.AccessibleName");
		this.closeButton.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("closeButton.Anchor");
		this.closeButton.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("closeButton.BackgroundImage");
		this.closeButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.closeButton.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("closeButton.Dock");
		this.closeButton.Enabled = (bool)resourceManager.GetObject("closeButton.Enabled");
		this.closeButton.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("closeButton.FlatStyle");
		this.closeButton.Font = (System.Drawing.Font)resourceManager.GetObject("closeButton.Font");
		this.closeButton.Image = (System.Drawing.Image)resourceManager.GetObject("closeButton.Image");
		this.closeButton.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("closeButton.ImageAlign");
		this.closeButton.ImageIndex = (int)resourceManager.GetObject("closeButton.ImageIndex");
		this.closeButton.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("closeButton.ImeMode");
		this.closeButton.Location = (System.Drawing.Point)resourceManager.GetObject("closeButton.Location");
		this.closeButton.Name = "closeButton";
		this.closeButton.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("closeButton.RightToLeft");
		this.closeButton.Size = (System.Drawing.Size)resourceManager.GetObject("closeButton.Size");
		this.closeButton.TabIndex = (int)resourceManager.GetObject("closeButton.TabIndex");
		this.closeButton.Text = resourceManager.GetString("closeButton.Text");
		this.closeButton.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("closeButton.TextAlign");
		this.closeButton.Visible = (bool)resourceManager.GetObject("closeButton.Visible");
		this.closeButton.Click += new System.EventHandler(closeButton_Click);
		this.hScrollBar1.AccessibleDescription = resourceManager.GetString("hScrollBar1.AccessibleDescription");
		this.hScrollBar1.AccessibleName = resourceManager.GetString("hScrollBar1.AccessibleName");
		this.hScrollBar1.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("hScrollBar1.Anchor");
		this.hScrollBar1.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("hScrollBar1.BackgroundImage");
		this.hScrollBar1.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("hScrollBar1.Dock");
		this.hScrollBar1.Enabled = (bool)resourceManager.GetObject("hScrollBar1.Enabled");
		this.hScrollBar1.Font = (System.Drawing.Font)resourceManager.GetObject("hScrollBar1.Font");
		this.hScrollBar1.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("hScrollBar1.ImeMode");
		this.hScrollBar1.Location = (System.Drawing.Point)resourceManager.GetObject("hScrollBar1.Location");
		this.hScrollBar1.Name = "hScrollBar1";
		this.hScrollBar1.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("hScrollBar1.RightToLeft");
		this.hScrollBar1.Size = (System.Drawing.Size)resourceManager.GetObject("hScrollBar1.Size");
		this.hScrollBar1.TabIndex = (int)resourceManager.GetObject("hScrollBar1.TabIndex");
		this.hScrollBar1.Visible = (bool)resourceManager.GetObject("hScrollBar1.Visible");
		base.AccessibleDescription = resourceManager.GetString("$this.AccessibleDescription");
		base.AccessibleName = resourceManager.GetString("$this.AccessibleName");
		this.AutoScroll = (bool)resourceManager.GetObject("$this.AutoScroll");
		base.AutoScrollMargin = (System.Drawing.Size)resourceManager.GetObject("$this.AutoScrollMargin");
		base.AutoScrollMinSize = (System.Drawing.Size)resourceManager.GetObject("$this.AutoScrollMinSize");
		this.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("$this.BackgroundImage");
		base.Controls.Add(this.hScrollBar1);
		base.Controls.Add(this.tabControl);
		base.Controls.Add(this.closeButton);
		base.Enabled = (bool)resourceManager.GetObject("$this.Enabled");
		this.Font = (System.Drawing.Font)resourceManager.GetObject("$this.Font");
		base.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("$this.ImeMode");
		base.Location = (System.Drawing.Point)resourceManager.GetObject("$this.Location");
		base.Name = "CustomizationPanel";
		this.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("$this.RightToLeft");
		base.Size = (System.Drawing.Size)resourceManager.GetObject("$this.Size");
		this.tabControl.ResumeLayout(false);
		this.tabPage1.ResumeLayout(false);
		this.tabPage2.ResumeLayout(false);
		this.panel1.ResumeLayout(false);
		this.tabPage3.ResumeLayout(false);
		base.ResumeLayout(false);
	}

	protected internal virtual void OnDialogLoad()
	{
		if (customizingBarManager.DesignMode)
		{
			tabControl.Controls.Remove(tabPage3);
		}
	}

	protected internal virtual void OnDialogVisibiltyChanged()
	{
		if (custDlg.Visible)
		{
			RefreshToolbarList();
			RefreshCategoryList();
			RefreshOptionsTab();
			customizingBarManager.CustomizingItemChanged += CustomizingItemChanged;
			tabControl_SelectedIndexChanged(tabControl, EventArgs.Empty);
			if (!customizingBarManager.DesignMode)
			{
				label3.Left = gridHostPanel.Left;
			}
		}
		else
		{
			customizingBarManager.CustomizingItemChanged -= CustomizingItemChanged;
			customizingBarManager.commandBarManager.SetDesigntimeSelectedBar(null);
		}
	}

	private bool IsBarVisible(Bar bar)
	{
		if (customizingBarManager.DesignMode)
		{
			return (bar.BarStyle & BarStyle.Visible) > BarStyle.None;
		}
		return customizingBarManager.commandBarManager.IsBarVisible(bar);
	}

	private void BarPropertyChanged(object sender, SyncfusionPropertyChangedEventArgs args)
	{
		if (base.Visible && args.PropertyName == "BarName")
		{
			RefreshToolbarList();
		}
	}

	private void RefreshToolbarList()
	{
		int selectedIndex = toolbarList.SelectedIndex;
		toolbarList.Items.Clear();
		barsList.Clear();
		toolbarList.ItemCheck -= toolbarList_ItemCheck;
		foreach (Bar bar3 in customizingBarManager.Bars)
		{
			barsList.Add(bar3);
			string item = ((bar3.Caption == null) ? bar3.BarName : bar3.Caption);
			int index = toolbarList.Items.Add(item, IsBarVisible(bar3));
			if (!bar3.AllowHiding && !customizingBarManager.DesignMode)
			{
				toolbarList.SetItemCheckState(index, CheckState.Indeterminate);
			}
		}
		if (!customizingBarManager.DesignMode)
		{
			ArrayList childManagers = ((MainFrameBarManager)customizingBarManager).ChildManagers;
			foreach (BarManager item2 in childManagers)
			{
				foreach (Bar bar4 in item2.Bars)
				{
					bool isChecked = IsBarVisible(bar4);
					if ((bar4.BarStyle & BarStyle.IsMainMenu) == 0)
					{
						barsList.Add(bar4);
						int index2 = toolbarList.Items.Add(bar4.BarName, isChecked);
						if (!bar4.AllowHiding)
						{
							toolbarList.SetItemCheckState(index2, CheckState.Indeterminate);
						}
					}
				}
			}
		}
		toolbarList.ItemCheck += toolbarList_ItemCheck;
		if (selectedIndex != -1 && selectedIndex < toolbarList.Items.Count)
		{
			toolbarList.SelectedIndex = selectedIndex;
		}
	}

	private void AddToolbar(string toolbarName)
	{
		if (toolbarName == string.Empty)
		{
			return;
		}
		foreach (Bar bar3 in customizingBarManager.Bars)
		{
			if (bar3.BarName == toolbarName)
			{
				MessageBox.Show(SR.GetString("DuplicateNameWarning", toolbarName));
				return;
			}
		}
		if (customizingBarManager.DesignMode)
		{
			Bar bar2 = (Bar)designerHost.CreateComponent(typeof(Bar));
			bar2.Manager = customizingBarManager;
			bar2.BarName = toolbarName;
			customizingBarManager.Bars.Add(bar2);
		}
		else
		{
			customizingBarManager.MainFrameBarManager.RecordAddCustomBar(toolbarName);
		}
		RefreshToolbarList();
	}

	private void DeleteSelectedToolbar()
	{
		if (toolbarList.SelectedIndex == -1)
		{
			return;
		}
		if (customizingBarManager.DesignMode)
		{
			Bar component = barsList[toolbarList.SelectedIndex] as Bar;
			if (designerHost != null)
			{
				designerHost.DestroyComponent(component);
			}
		}
		else
		{
			customizingBarManager.MainFrameBarManager.RemoveCustomBar((Bar)barsList[toolbarList.SelectedIndex]);
			RefreshToolbarList();
		}
	}

	private void newButton_Click(object sender, EventArgs e)
	{
		customizingBarManager.HidePopups();
		GenericNewDlg genericNewDlg = new GenericNewDlg();
		genericNewDlg.Text = SR.GetString("ToolbarNameEntryDialogCaption");
		genericNewDlg.NameLabel = SR.GetString("NewToolbarName");
		genericNewDlg.OKButtonLabel = SR.GetString("GenericOKButtonText");
		genericNewDlg.CancelButtonLabel = SR.GetString("GenericCancelButtonText");
		if (genericNewDlg.ShowDialog() == DialogResult.OK)
		{
			AddToolbar(genericNewDlg.NewName);
		}
	}

	private void toolbarList_ItemCheck(object sender, ItemCheckEventArgs e)
	{
		Bar bar = barsList[e.Index] as Bar;
		if (!bar.AllowHiding && !customizingBarManager.DesignMode)
		{
			e.NewValue = CheckState.Indeterminate;
		}
		else if (e.NewValue == CheckState.Unchecked)
		{
			customizingBarManager.commandBarManager.SetBarVisibility(bar, visible: false);
		}
		else
		{
			customizingBarManager.commandBarManager.SetBarVisibility(bar, visible: true);
		}
	}

	private void toolbarList_SelectedIndexChanged(object sender, EventArgs e)
	{
		customizingBarManager.HidePopups();
		if (toolbarList.SelectedIndex != -1 && designerHost != null)
		{
			SelectComponentInDesigner(barsList[toolbarList.SelectedIndex]);
		}
		if (!customizingBarManager.DesignMode)
		{
			if (toolbarList.SelectedIndex == -1 || !customizingBarManager.MainFrameBarManager.IsBarUserDeletable(barsList[toolbarList.SelectedIndex] as Bar))
			{
				deleteButton.Enabled = false;
			}
			else
			{
				deleteButton.Enabled = true;
			}
			if (toolbarList.SelectedIndex == -1)
			{
				resetButton.Enabled = false;
			}
			else
			{
				resetButton.Enabled = true;
			}
		}
		else
		{
			deleteButton.Enabled = true;
			resetButton.Enabled = false;
			if (toolbarList.SelectedIndex != -1)
			{
				customizingBarManager.commandBarManager.SetDesigntimeSelectedBar(barsList[toolbarList.SelectedIndex] as Bar);
			}
			else
			{
				customizingBarManager.commandBarManager.SetDesigntimeSelectedBar(null);
			}
		}
	}

	private void deleteButton_Click(object sender, EventArgs e)
	{
		if (toolbarList.SelectedIndex == -1)
		{
			MessageBox.Show(SR.GetString("InvalidToolbarDeleteWarning"));
		}
		else if (MessageBox.Show(SR.GetString("ToolbarDeleteConfirmation"), SR.GetString("DeleteConfirmDlgCaption"), MessageBoxButtons.YesNo) == DialogResult.Yes)
		{
			DeleteSelectedToolbar();
		}
	}

	private void resetButton_Click(object sender, EventArgs e)
	{
		if (customizingBarManager is MainFrameBarManager && !customizingBarManager.DesignMode && toolbarList.SelectedIndex != -1)
		{
			Bar container = barsList[toolbarList.SelectedIndex] as Bar;
			customizingBarManager.MainFrameBarManager.ResetContainer(container);
			MessageBox.Show(SR.GetString("SuccesfulToolbarResetMessage"), SR.GetString("SuccesfulResetMessageBoxTitle"));
		}
	}

	private void OnToolbarsPageActivated()
	{
	}

	private void catView_SelectionChanged(object sender, TreeViewEventArgs e)
	{
		RefreshBarItemsList();
		int categoryIndex = -1;
		BarManager manager = null;
		GetSelectedCategoryInTree(ref manager, ref categoryIndex);
		catMoveUp.Enabled = true;
		catMoveDown.Enabled = true;
		if (categoryIndex == -1)
		{
			catMoveUp.Enabled = false;
			catMoveDown.Enabled = false;
		}
		if (categoryIndex == 0)
		{
			catMoveUp.Enabled = false;
		}
		else if (categoryIndex == manager.Categories.Count - 1)
		{
			catMoveDown.Enabled = false;
		}
	}

	private void GetSelectedCategoryInTree(ref BarManager manager, ref int categoryIndex)
	{
		TreeNode selectedNode = catView.SelectedNode;
		if (selectedNode == null)
		{
			return;
		}
		if (selectedNode.Tag is BarManager)
		{
			manager = selectedNode.Tag as BarManager;
			categoryIndex = -1;
			return;
		}
		TreeNode treeNode = selectedNode.Parent;
		manager = treeNode.Tag as BarManager;
		if (selectedNode.Tag is int)
		{
			categoryIndex = (int)selectedNode.Tag;
		}
		else
		{
			categoryIndex = treeNode.Nodes.IndexOf(selectedNode);
		}
	}

	private void SelectLastCategory()
	{
		TreeNode treeNode = catView.Nodes[0];
		if (treeNode.Nodes.Count > 0)
		{
			catView.SelectedNode = treeNode.Nodes[treeNode.Nodes.Count - 1];
		}
	}

	private void SelectACategory()
	{
		if (catView.SelectedNode != null && !(catView.SelectedNode.Tag is BarManager))
		{
			return;
		}
		TreeNode selectedNode = catView.SelectedNode;
		if (selectedNode != null)
		{
			return;
		}
		int num = 0;
		while (catView.SelectedNode == null && num < catView.Nodes.Count)
		{
			selectedNode = catView.Nodes[num];
			if (selectedNode.Nodes.Count > 0)
			{
				catView.SelectedNode = selectedNode.Nodes[0];
			}
			num++;
		}
	}

	private void SelectCategoryIndex(int catIndex)
	{
		TreeNode treeNode = catView.Nodes[0];
		if (treeNode.Nodes.Count > catIndex && catIndex >= 0)
		{
			catView.SelectedNode = treeNode.Nodes[catIndex];
		}
	}

	private void AlwaysFullMenus_Clicked(object sender, EventArgs e)
	{
		customizingBarManager.UsePartialMenus = !alwaysFullMenus.Checked;
		RefreshOptionsTab();
	}

	private void ExpandAfterDelay_Clicked(object sender, EventArgs e)
	{
		if (customizingBarManager is MainFrameBarManager)
		{
			((MainFrameBarManager)customizingBarManager).ExpandPartialMenusAfterDelay = expandAfterDelay.Checked;
		}
	}

	private void LargeIcons_Clicked(object sender, EventArgs e)
	{
		if (customizingBarManager is MainFrameBarManager)
		{
			((MainFrameBarManager)customizingBarManager).LargeIcons = largeIcons.Checked;
		}
	}

	private void RefreshOptionsTab()
	{
		if (customizingBarManager is MainFrameBarManager)
		{
			alwaysFullMenus.Checked = !customizingBarManager.UsePartialMenus;
		}
		else
		{
			alwaysFullMenus.Enabled = false;
		}
		if (customizingBarManager is MainFrameBarManager && !alwaysFullMenus.Checked)
		{
			expandAfterDelay.Enabled = true;
			expandAfterDelay.Checked = ((MainFrameBarManager)customizingBarManager).ExpandPartialMenusAfterDelay;
		}
		else
		{
			expandAfterDelay.Enabled = false;
		}
		if (customizingBarManager is MainFrameBarManager)
		{
			largeIcons.Enabled = true;
			largeIcons.Checked = ((MainFrameBarManager)customizingBarManager).LargeIcons;
		}
		else
		{
			largeIcons.Enabled = false;
		}
		if (!largeIcons.Enabled)
		{
			return;
		}
		bool flag = customizingBarManager.LargeImageList != null || customizingBarManager.LargeImageListAdv != null;
		if (!flag && customizingBarManager is MainFrameBarManager)
		{
			ArrayList childManagers = ((MainFrameBarManager)customizingBarManager).ChildManagers;
			foreach (BarManager item in childManagers)
			{
				if (item.LargeImageList != null || item.LargeImageListAdv != null)
				{
					flag = true;
					break;
				}
			}
		}
		largeIcons.Enabled = flag;
	}

	private void RefreshCategoryList()
	{
		if (customizingBarManager.DesignMode)
		{
			int categoryIndex = -1;
			BarManager manager = null;
			GetSelectedCategoryInTree(ref manager, ref categoryIndex);
			catView.Nodes.Clear();
			TreeNode treeNode = AddCategoryNodeFrom(customizingBarManager);
			if (categoryIndex != -1 && categoryIndex < treeNode.Nodes.Count)
			{
				catView.SelectedNode = treeNode.Nodes[categoryIndex];
			}
			return;
		}
		catView.Nodes.Clear();
		AddCategoryNodeFrom(customizingBarManager);
		ArrayList childManagers = ((MainFrameBarManager)customizingBarManager).ChildManagers;
		foreach (BarManager item in childManagers)
		{
			AddCategoryNodeFrom(item);
		}
	}

	private TreeNode AddCategoryNodeFrom(BarManager manager)
	{
		if (!manager.DesignMode && !manager.ShowItemsInCustomizationDialog)
		{
			return null;
		}
		TreeNode treeNode = new TreeNode(manager.FormName);
		treeNode.Tag = manager;
		if (manager.DesignMode)
		{
			treeNode.Text += " (Right Click to Add Categories)";
			treeNode.Checked = manager.ShowItemsInCustomizationDialog;
		}
		int num = -1;
		foreach (string category in manager.Categories)
		{
			num++;
			TreeNode treeNode2 = new TreeNode(category);
			if (customizingBarManager.DesignMode)
			{
				if (manager.CategoriesToIgnoreInCustDialog.IndexOf(num) == -1)
				{
					treeNode2.Checked = true;
				}
				else
				{
					treeNode2.Checked = false;
				}
				treeNode.Nodes.Add(treeNode2);
			}
			else if (manager.CategoriesToIgnoreInCustDialog.IndexOf(num) == -1)
			{
				treeNode.Nodes.Add(treeNode2);
				treeNode2.Tag = num;
			}
		}
		catView.Nodes.Add(treeNode);
		return treeNode;
	}

	private void RefreshBarItemsList()
	{
		menuGridBase.BeginUpdate();
		menuGridBase.Model.BeginInit();
		menuGridBase.HidePopup(PopupCloseType.Canceled);
		if (menuGridBase.ParentItem != null)
		{
			menuGridBase.ParentItem.Items.CollectionChanged -= BarItemsCollectionChanged;
		}
		int categoryIndex = -1;
		BarManager manager = null;
		GetSelectedCategoryInTree(ref manager, ref categoryIndex);
		StandAloneParentBarItem standAloneParentBarItem = new StandAloneParentBarItem();
		standAloneParentBarItem.Manager = manager;
		if (manager.Categories.Count > 0)
		{
			SelectACategory();
			GetSelectedCategoryInTree(ref manager, ref categoryIndex);
			if (categoryIndex > -1)
			{
				foreach (BarItem item in manager.Items)
				{
					if (item.CategoryIndex == categoryIndex && (manager.DesignMode || item.Customizable))
					{
						standAloneParentBarItem.Items.Add(item);
					}
				}
			}
		}
		standAloneParentBarItem.Items.CollectionChanged += BarItemsCollectionChanged;
		menuGridBase.Model.EndInit();
		menuGridBase.EndUpdate(update: false);
		menuGridBase.Show(standAloneParentBarItem, new Point(0, 0), null, setDefaultSelection: false);
		menuGridBase.Height = menuGridBase.GetVScrollPixelHeight();
		MenuGridSizeRefresh(menuGridBase);
		menuGridBase.Refresh();
	}

	private void AddCategory(string catName)
	{
		if (catName == string.Empty)
		{
			return;
		}
		foreach (string category in customizingBarManager.Categories)
		{
			if (category == catName)
			{
				MessageBox.Show(SR.GetString("DuplicateNameWarning", catName));
				return;
			}
		}
		customizingBarManager.Categories.Add(catName);
		RaiseBarManagerChanged(TypeDescriptor.GetProperties(customizingBarManager)["Categories"]);
		RefreshCategoryList();
		SelectLastCategory();
	}

	private void RaiseBarManagerChanged(MemberDescriptor memberDescriptor)
	{
		if (designerHost != null)
		{
			((IComponentChangeService)designerHost.GetService(typeof(IComponentChangeService)))?.OnComponentChanged(customizingBarManager, memberDescriptor, null, null);
		}
	}

	private void SelectComponentInDesigner(object component)
	{
		if (designerHost != null && designerHost.GetService(typeof(ISelectionService)) is ISelectionService selectionService)
		{
			selectionService.SetSelectedComponents(new object[1] { component }, SelectionTypes.Replace);
		}
	}

	private void SetupSelectionListenerHandlers(bool listen)
	{
		if (designerHost != null && designerHost.GetService(typeof(ISelectionService)) is ISelectionService selectionService)
		{
			if (listen)
			{
				selectionService.SelectionChanged += DesigntimeSelectionChanged;
			}
			else
			{
				selectionService.SelectionChanged -= DesigntimeSelectionChanged;
			}
		}
	}

	private void DesigntimeSelectionChanged(object sender, EventArgs e)
	{
		if (designerHost == null || !(designerHost.GetService(typeof(ISelectionService)) is ISelectionService selectionService))
		{
			return;
		}
		if (!(selectionService.PrimarySelection is Bar value))
		{
			toolbarList.SelectedIndex = -1;
		}
		else
		{
			if (!base.ParentForm.Visible)
			{
				customizingBarManager.Customize(designerHost);
			}
			if (tabControl.SelectedIndex != 0)
			{
				tabControl.SelectedIndex = 0;
			}
			toolbarList.SelectedIndex = barsList.IndexOf(value);
		}
		if (!(selectionService.PrimarySelection is BarItem barItem))
		{
			menuGridBase.SelectedIndex = -1;
		}
		else if (customizingBarManager.Items.Contains(barItem))
		{
			if (!base.ParentForm.Visible)
			{
				customizingBarManager.Customize(designerHost);
			}
			if (tabControl.SelectedIndex != 1)
			{
				tabControl.SelectedIndex = 1;
			}
			SelectCategoryIndex(barItem.CategoryIndex);
			menuGridBase.SelectedItem = barItem;
		}
	}

	private void MoveCategory(bool up)
	{
		int categoryIndex = -1;
		BarManager manager = null;
		GetSelectedCategoryInTree(ref manager, ref categoryIndex);
		if (categoryIndex != -1 && (!up || categoryIndex != 0) && (up || categoryIndex != manager.Categories.Count - 1))
		{
			menuGridBase.BeginUpdate();
			object value = manager.Categories[categoryIndex];
			manager.Categories.RemoveAt(categoryIndex);
			int num = -1;
			num = ((!up) ? (categoryIndex + 1) : (categoryIndex - 1));
			manager.Categories.Insert(num, value);
			AdjustCategoryIDs(categoryIndex, num);
			RefreshCategoryList();
			SelectCategoryIndex(num);
			menuGridBase.EndUpdate(update: true);
		}
	}

	private void AdjustCategoryIDs(int moveFrom, int moveTo)
	{
		int count = customizingBarManager.Categories.Count;
		int num = customizingBarManager.Categories.Count + 1;
		customizingBarManager.Categories.Add("Dummy Cat 1");
		customizingBarManager.Categories.Add("Dummy Cat 2");
		foreach (BarItem item in customizingBarManager.Items)
		{
			if (item.CategoryIndex == moveFrom)
			{
				item.CategoryIndex = num;
			}
			else if (item.CategoryIndex == moveTo)
			{
				item.CategoryIndex = count;
			}
		}
		foreach (BarItem item2 in customizingBarManager.Items)
		{
			if (item2.CategoryIndex == count)
			{
				item2.CategoryIndex = moveFrom;
			}
			else if (item2.CategoryIndex == num)
			{
				item2.CategoryIndex = moveTo;
			}
		}
		customizingBarManager.Categories.RemoveAt(count);
		customizingBarManager.Categories.RemoveAt(count);
	}

	private void DeleteSelectedCategory()
	{
		int categoryIndex = -1;
		BarManager manager = null;
		GetSelectedCategoryInTree(ref manager, ref categoryIndex);
		if (categoryIndex == -1)
		{
			return;
		}
		if (menuGridBase.ParentItem.Items.Count > 0)
		{
			MessageBox.Show("Please delete all the Command Items in this category before deleting this category.");
			return;
		}
		foreach (BarItem item in customizingBarManager.Items)
		{
			if (item.CategoryIndex > categoryIndex)
			{
				item.CategoryIndex--;
			}
		}
		manager.Categories.RemoveAt(categoryIndex);
		RaiseBarManagerChanged(TypeDescriptor.GetProperties(manager)["Categories"]);
		RefreshCategoryList();
	}

	private void closeButton_Click(object sender, EventArgs e)
	{
		custDlg.Close();
	}

	private void cmdModify_Click(object sender, EventArgs e)
	{
		barItemModifyMenu.Show(cmdModify, new Point(0, cmdModify.Height));
	}

	private void OnCatAdd(object sender, EventArgs e)
	{
		GenericNewDlg genericNewDlg = new GenericNewDlg();
		genericNewDlg.Text = "Category Name Entry Dialog";
		genericNewDlg.NameLabel = "New Category Name:";
		if (genericNewDlg.ShowDialog() == DialogResult.OK)
		{
			AddCategory(genericNewDlg.NewName);
		}
	}

	private void CatModifyMenu_Popup(object sender, EventArgs e)
	{
		int categoryIndex = -1;
		BarManager manager = null;
		GetSelectedCategoryInTree(ref manager, ref categoryIndex);
		bool flag = categoryIndex != -1;
		foreach (BarItem item in catModifyMenu.ParentBarItem.Items)
		{
			if (item.Text != SR.GetString("Add"))
			{
				if (flag)
				{
					item.Enabled = true;
				}
				else
				{
					item.Enabled = false;
				}
			}
		}
	}

	private void BarItemModifyMenu_Popup(object sender, EventArgs e)
	{
		bool flag = menuGridBase.SelectedIndex != -1;
		foreach (BarItem item in catModifyMenu.ParentBarItem.Items)
		{
			if (item.Text != SR.GetString("Add"))
			{
				if (flag)
				{
					item.Enabled = true;
				}
				else
				{
					item.Enabled = false;
				}
			}
		}
	}

	private void BarItemModifyMenu(object sender, EventArgs e)
	{
	}

	private void OnCatRename(object sender, EventArgs e)
	{
		GenericNewDlg genericNewDlg = new GenericNewDlg();
		genericNewDlg.Text = "Category Rename Entry Dialog";
		genericNewDlg.NameLabel = "New Category Name:";
		genericNewDlg.Validating += NewDialog_Validating;
		if (genericNewDlg.ShowDialog() == DialogResult.OK)
		{
			BarManager manager = null;
			int categoryIndex = -1;
			GetSelectedCategoryInTree(ref manager, ref categoryIndex);
			manager.Categories[categoryIndex] = genericNewDlg.NewName;
			RaiseBarManagerChanged(TypeDescriptor.GetProperties(customizingBarManager)["Categories"]);
			RefreshCategoryList();
		}
	}

	private void NewDialog_Validating(object sender, CancelEventArgs e)
	{
		GenericNewDlg genericNewDlg = (GenericNewDlg)sender;
		string newName = genericNewDlg.NewName;
		foreach (string category in customizingBarManager.Categories)
		{
			if (category == newName)
			{
				MessageBox.Show(SR.GetString("DuplicateNameWarning", newName));
				e.Cancel = true;
				break;
			}
		}
	}

	private void OnCatDelete(object sender, EventArgs e)
	{
		DeleteSelectedCategory();
	}

	private void OnCatMoveUp(object sender, EventArgs e)
	{
		MoveCategory(up: true);
	}

	private void OnCatMoveDown(object sender, EventArgs e)
	{
		MoveCategory(up: false);
	}

	private void OnItemAdd(object sender, EventArgs e)
	{
		if (customizingBarManager.Categories.Count == 0)
		{
			MessageBox.Show("There should be atleast 1 Category in the BarManager before you can add a BarItem. Add a category by right-mouse-clicking in the Categories view.");
			return;
		}
		NewBarItemDialog newBarItemDialog = new NewBarItemDialog();
		if (customizingBarManager is MainFrameBarManager)
		{
			newBarItemDialog.typeBox.Items.Add(new TypeBoxItem("MdiListBarItem", ItemType.MdiListBarItem));
			newBarItemDialog.typeBox.Items.Add(new TypeBoxItem("ToolbarListBarItem", ItemType.ToolbarListBarItem));
		}
		newBarItemDialog.typeBox.Items.Add(new TypeBoxItem("TextBoxBarItem", ItemType.TextBoxBarItem));
		if (newBarItemDialog.ShowDialog() == DialogResult.OK)
		{
			AddBarItem(newBarItemDialog.NewName, newBarItemDialog.Type);
		}
	}

	[DocumentationExclude]
	public virtual void RemoveReferencesToItem(Bar bar)
	{
		customizingBarManager.Bars.Remove(bar);
		RefreshToolbarList();
	}

	[DocumentationExclude]
	public virtual void RemoveReferencesToItem(BarItem item)
	{
		int num = menuGridBase.SelectedIndex;
		if (num != -1 && menuGridBase.ParentItem.Items[num] != item)
		{
			num = -1;
		}
		customizingBarManager.RemoveReferencesToBarItem(item);
		if (!base.Visible)
		{
			return;
		}
		RefreshBarItemsList();
		if (num != -1)
		{
			if (num >= menuGridBase.ParentItem.Items.Count)
			{
				num = menuGridBase.ParentItem.Items.Count - 1;
			}
			if (num >= 0)
			{
				menuGridBase.SelectedIndex = num;
				customizingBarManager.CustomizingItem = menuGridBase.SelectedItem;
			}
		}
	}

	private void OnItemDelete(object sender, EventArgs e)
	{
		int selectedIndex = menuGridBase.SelectedIndex;
		if (selectedIndex != -1)
		{
			BarItem component = menuGridBase.ParentItem.Items[selectedIndex];
			if (designerHost != null)
			{
				designerHost.DestroyComponent(component);
			}
		}
	}

	private void OnDeleteItems(object sender, EventArgs e)
	{
		if (MessageBox.Show("Are you sure you want to delete all Command Items in this category?", "CustomizableCommandBars", MessageBoxButtons.YesNo) != DialogResult.Yes)
		{
			return;
		}
		int categoryIndex = -1;
		BarManager manager = null;
		GetSelectedCategoryInTree(ref manager, ref categoryIndex);
		for (int num = manager.Items.Count - 1; num >= 0; num--)
		{
			BarItem barItem = manager.Items[num];
			if (barItem.CategoryIndex == categoryIndex)
			{
				manager.Items.RemoveAt(num);
				if (designerHost != null)
				{
					designerHost.DestroyComponent(barItem);
				}
			}
		}
		RefreshBarItemsList();
	}

	private void AddBarItem(string newName, int type)
	{
		BarItem barItem = null;
		if (designerHost != null)
		{
			int categoryIndex = -1;
			BarManager manager = null;
			GetSelectedCategoryInTree(ref manager, ref categoryIndex);
			switch (type)
			{
			case 0:
				barItem = (BarItem)designerHost.CreateComponent(typeof(BarItem));
				break;
			case 1:
				barItem = (BarItem)designerHost.CreateComponent(typeof(ParentBarItem));
				break;
			case 2:
				barItem = (BarItem)designerHost.CreateComponent(typeof(DropDownBarItem));
				break;
			case 3:
				barItem = (BarItem)designerHost.CreateComponent(typeof(ComboBoxBarItem));
				break;
			case 4:
				barItem = (BarItem)designerHost.CreateComponent(typeof(ListBarItem));
				break;
			case 5:
				barItem = (BarItem)designerHost.CreateComponent(typeof(StaticBarItem));
				break;
			case 6:
				barItem = (BarItem)designerHost.CreateComponent(typeof(MdiListBarItem));
				break;
			case 7:
				barItem = (BarItem)designerHost.CreateComponent(typeof(ToolbarListBarItem));
				break;
			case 8:
				barItem = (BarItem)designerHost.CreateComponent(typeof(TextBoxBarItem));
				break;
			}
			barItem.CategoryIndex = categoryIndex;
			barItem.Text = newName;
			customizingBarManager.Items.Add(barItem);
			RefreshBarItemsList();
			menuGridBase.SelectedIndex = menuGridBase.ParentItem.Items.Count - 1;
			if (menuGridBase.SelectedIndex > -1)
			{
				customizingBarManager.CustomizingItem = menuGridBase.SelectedItem;
			}
		}
	}

	private void OnCommandsPageActivated()
	{
		int categoryIndex = -1;
		BarManager manager = null;
		GetSelectedCategoryInTree(ref manager, ref categoryIndex);
		if (categoryIndex == -1)
		{
			SelectACategory();
		}
		if (!base.DesignMode)
		{
			menuGridBase.TopRowIndex = 1;
		}
		catView.Scrollable = true;
	}

	private void MenuGrid_MouseUp(object sender, MouseEventArgs e)
	{
		if (designerHost != null && e.Button == MouseButtons.Right)
		{
			barItemModifyMenu.Show(menuGridBase, new Point(e.X, e.Y));
		}
	}

	private void CatView_MouseDown(object sender, MouseEventArgs e)
	{
		TreeNode nodeAt = catView.GetNodeAt(e.X, e.Y);
		if (nodeAt != null)
		{
			catView.SelectedNode = nodeAt;
		}
	}

	private void CatView_MouseUp(object sender, MouseEventArgs e)
	{
		if (designerHost != null && e.Button == MouseButtons.Right)
		{
			catModifyMenu.Show(catView, new Point(e.X, e.Y));
		}
	}

	private void CatView_AfterCheck(object sender, TreeViewEventArgs args)
	{
		BarManager manager = null;
		int categoryIndex = -1;
		GetSelectedCategoryInTree(ref manager, ref categoryIndex);
		if (categoryIndex != -1)
		{
			if (args.Node.Checked)
			{
				manager.CategoriesToIgnoreInCustDialog.Remove(categoryIndex);
			}
			else if (manager.CategoriesToIgnoreInCustDialog.IndexOf(categoryIndex) == -1)
			{
				manager.CategoriesToIgnoreInCustDialog.Add(categoryIndex);
			}
		}
		else
		{
			manager.ShowItemsInCustomizationDialog = args.Node.Checked;
		}
		RaiseBarManagerChanged(TypeDescriptor.GetProperties(customizingBarManager)["CategoriesToIgnoreInCustDialog"]);
	}

	private void tabControl_SelectedIndexChanged(object sender, EventArgs e)
	{
		switch (tabControl.SelectedIndex)
		{
		case 1:
			OnCommandsPageActivated();
			break;
		case 0:
			OnToolbarsPageActivated();
			break;
		}
	}

	[DocumentationExclude]
	protected internal virtual void OnDialogActivated()
	{
		customizingBarManager.Items.ItemPropertyChanged += ItemPropertyChanged;
	}

	[DocumentationExclude]
	protected internal virtual void OnDialogDeactivated()
	{
		customizingBarManager.Items.ItemPropertyChanged -= ItemPropertyChanged;
		_ = Form.ActiveForm;
		if (Form.ActiveForm != customizingBarManager.Form && !(Form.ActiveForm is MenuGridHost) && custDlg != Form.ActiveForm)
		{
			customizingBarManager.HidePopups();
		}
	}

	private void BarItemsCollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		BarItem selectedItem = menuGridBase.SelectedItem;
		BarItems items = menuGridBase.ParentItem.Items;
		for (int num = items.Count - 1; num >= 0; num--)
		{
			int num2 = customizingBarManager.Items.IndexOf(items[num]);
			customizingBarManager.Items.Move(num2, num, 1);
		}
		RaiseBarManagerChanged(TypeDescriptor.GetProperties(customizingBarManager)["Items"]);
		RefreshBarItemsList();
		menuGridBase.SelectedItem = selectedItem;
	}

	private void CustomizingItemChanged(object sender, EventArgs e)
	{
		if (customizingBarManager.DesignMode && menuGridBase.SelectedItem != customizingBarManager.CustomizingItem)
		{
			menuGridBase.SelectedItem = null;
		}
	}

	private void resetPartialMenusBtn_Click(object sender, EventArgs e)
	{
		if (customizingBarManager.MainFrameBarManager != null && MessageBox.Show(SR.GetString("RecentlyUsedItemsResetConfirm"), SR.GetString("RecentlyUsedItemsResetConfirmTitle"), MessageBoxButtons.YesNo) == DialogResult.Yes)
		{
			customizingBarManager.MainFrameBarManager.ResetRecentlyUsedItemsList();
			MessageBox.Show(SR.GetString("NotifyRecentlyUsedItemsReset"));
		}
	}

	private void resetCustomizationButton_Click(object sender, EventArgs e)
	{
		if (customizingBarManager.MainFrameBarManager != null && MessageBox.Show(SR.GetString("CustomizationResetConfirm"), SR.GetString("CustomizationResetConfirmTitle"), MessageBoxButtons.YesNo) == DialogResult.Yes)
		{
			customizingBarManager.MainFrameBarManager.ResetCustomization = true;
			MessageBox.Show(SR.GetString("NotifyCustomizationReset"), SR.GetString("NotifyCustomizationResetTitle"), MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
		}
	}

	private void MenuGridSizeRefresh(MenuGridControlCustomizable menuGrid)
	{
		if (menuGrid != null)
		{
			int num = menuGrid.Width;
			int iconColumnWidth = menuGrid.IconColumnWidth;
			int arrowColumnWidth = menuGrid.ArrowColumnWidth;
			int shortcutColumnWidth = menuGrid.ShortcutColumnWidth;
			int num2 = num - iconColumnWidth - arrowColumnWidth - shortcutColumnWidth;
			if (num2 < 86)
			{
				menuGrid.TextColumnWidth = 84;
			}
			else
			{
				menuGrid.TextColumnWidth = num2;
			}
			menuGrid.ResizeColumns();
		}
	}

	private void gridHostPanel_SizeChanged(object sender, EventArgs e)
	{
		Panel panel = sender as Panel;
		if (panel.Controls.Count > 0)
		{
			ControlCollection controls = panel.Controls;
			Control control = controls[0];
			MenuGridSizeRefresh((MenuGridControlCustomizable)control);
		}
	}

	private void OnMenuGridDragDrop(object sender, DragEventArgs e)
	{
		if (customizingBarManager != null)
		{
			customizingBarManager.CustomDrag = false;
		}
	}

	private void gridHostPanel_MouseUp(object sender, MouseEventArgs e)
	{
		if (designerHost != null && e.Button == MouseButtons.Right)
		{
			barItemModifyMenu.Show(menuGridBase, new Point(e.X, e.Y));
		}
	}

	private void customizingBarManager_PropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		BarManager barManager = customizingBarManager;
		if ("Style" == e.PropertyName || (barManager.Style == VisualStyle.Office2007 && "Office2007Theme" == e.PropertyName))
		{
			menuGridBase.Refresh();
		}
	}
}
