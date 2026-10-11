#define TRACE
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.Grid.Design.Actions;
using Syncfusion.Windows.Forms.InternalMenus;

namespace Syncfusion.Windows.Forms.Grid.Design;

internal class GridFrame : Form
{
	private bool bModified;

	private bool bInitialized;

	private GridControl grid1;

	private GridModel model;

	public StatusBar statusBar = new StatusBar();

	public StatusBarPanel statusBarPanel = new StatusBarPanel();

	private StatusBarPanel statusBarPanel1 = new StatusBarPanel();

	private StatusBarPanel statusBarPanel2 = new StatusBarPanel();

	private MenuFactory menuFactory;

	private Panel propertyPanel;

	internal PropertyGrid pgrpropertyGrid1;

	private Splitter splitter1;

	private Splitter splitter2;

	private Splitter splitter3;

	private PropertyGrid cellRangePropertyGrid;

	private Label CurrentRangeLabel;

	private GridSynchronizer sync;

	private TabControl tabControl1;

	private TabPage tabPage1;

	private TabPage tabPage2;

	private Panel infoPanel;

	private Label infoLabel;

	private ActionInfoCollection registeredActions;

	private GridControl orginalGrid;

	private GridRangeInfoList selectedRanges;

	private GridStyleInfo _selectedRangeStyle;

	internal bool Modified
	{
		get
		{
			return bModified;
		}
		set
		{
			bModified = value;
		}
	}

	public GridControl Grid => grid1;

	public GridSynchronizer Syncronizer
	{
		get
		{
			return sync;
		}
		set
		{
			sync = value;
		}
	}

	private GridStyleInfo selectedRangeStyle
	{
		get
		{
			return _selectedRangeStyle;
		}
		set
		{
			if (!object.ReferenceEquals(value, _selectedRangeStyle))
			{
				if (_selectedRangeStyle != null)
				{
					_selectedRangeStyle.Changed += _selectedRangeStyle_Changed;
				}
				_selectedRangeStyle = value;
				if (_selectedRangeStyle != null)
				{
					_selectedRangeStyle.Changed += _selectedRangeStyle_Changed;
				}
			}
		}
	}

	public GridFrame()
		: this(null)
	{
	}

	private GridModel CreateNewModel()
	{
		GridModel gridModel = new GridModel();
		gridModel.CommandStack.Enabled = true;
		gridModel.BaseStylesMap.RegisterStandardStyles();
		GridStyleInfo styleInfo = gridModel.BaseStylesMap["Standard"].StyleInfo;
		GridStyleInfo styleInfo2 = gridModel.BaseStylesMap["Header"].StyleInfo;
		GridStyleInfo styleInfo3 = gridModel.BaseStylesMap["Row Header"].StyleInfo;
		_ = gridModel.BaseStylesMap["Column Header"].StyleInfo;
		GridFontInfo gridFontInfo = new GridFontInfo();
		gridFontInfo.Bold = true;
		gridFontInfo.Size = 8f;
		gridFontInfo.Facename = "Verdana";
		styleInfo2.Interior = new BrushInfo(GradientStyle.Vertical, Color.FromArgb(203, 199, 184), Color.FromArgb(238, 234, 216));
		styleInfo3.Interior = new BrushInfo(GradientStyle.Horizontal, Color.FromArgb(203, 199, 184), Color.FromArgb(238, 234, 216));
		styleInfo.Font.Facename = "Tahoma";
		gridModel.BaseStylesMap.Modified = false;
		return gridModel;
	}

	public void AttachModel(GridModel gridModel)
	{
		model = gridModel;
		if (grid1 == null)
		{
			grid1 = new GridDesignerPreviewGrid(model, this);
		}
		else
		{
			grid1.Model = gridModel;
		}
	}

	internal void OnPreviewGridModelChanged(object sender, EventArgs e)
	{
		sync.InitializeGridSyncProperties(grid1);
		InitializePropertyGrid();
		pgrpropertyGrid1.Invalidate();
		cellRangePropertyGrid.Invalidate();
	}

	public GridFrame(GridControl grid)
	{
		orginalGrid = grid;
		registeredActions = new ActionInfoCollection();
		AttachModel(CreateNewModel());
		if (sync != null)
		{
			sync.Dispose();
		}
		sync = new GridSynchronizer(orginalGrid, grid1);
		sync.MainWindow = this;
		bInitialized = true;
		InitializeComponent();
		PropertyGridContextMenu propertyGridContextMenu = new PropertyGridContextMenu(pgrpropertyGrid1);
		propertyGridContextMenu.MenuItems.RemoveAt(2);
		propertyGridContextMenu.MenuItems.RemoveAt(1);
		propertyGridContextMenu = new PropertyGridContextMenu(cellRangePropertyGrid);
		propertyGridContextMenu.MenuItems.RemoveAt(2);
		propertyGridContextMenu.MenuItems.RemoveAt(1);
		InitializeGrid();
		InitializeMenu();
		InitializePropertyGrid();
		grid1.CausesValidation = false;
		pgrpropertyGrid1.CausesValidation = false;
		propertyPanel.CausesValidation = false;
		CurrentRangeLabel.CausesValidation = false;
		tabControl1.CausesValidation = false;
		tabPage1.CausesValidation = false;
		tabPage2.CausesValidation = false;
		statusBarPanel.BorderStyle = StatusBarPanelBorderStyle.None;
		statusBarPanel.Width = 500;
		statusBarPanel.AutoSize = StatusBarPanelAutoSize.Spring;
		statusBarPanel1.BorderStyle = StatusBarPanelBorderStyle.Sunken;
		statusBarPanel1.Width = 50;
		statusBarPanel1.AutoSize = StatusBarPanelAutoSize.None;
		statusBarPanel2.BorderStyle = StatusBarPanelBorderStyle.Sunken;
		statusBarPanel2.Width = 50;
		statusBarPanel2.AutoSize = StatusBarPanelAutoSize.None;
		statusBar.ShowPanels = true;
		statusBar.Panels.Add(statusBarPanel);
		statusBar.Panels.Add(statusBarPanel1);
		statusBar.Panels.Add(statusBarPanel2);
		base.Controls.Add(statusBar);
	}

	private bool InitializeMenu()
	{
		try
		{
			string text = GridDesignerMain.manifestNamespace + "MainToolbarItems.xml";
			_ = GridDesignerMain.manifestNamespace + "FormattingToolbarItems.xml";
			string text2 = GridDesignerMain.manifestNamespace + "DefaultMenuItems.xml";
			FactoryType defaultFactoryType = FactoryType.WhidbeyMenuFactory;
			menuFactory = MenuLoader.CreateFactory(defaultFactoryType, GridDesignerMain.menuNamespace, new string[1] { text }, new string[1] { text2 }, GridDesignerMain.IconResources, this);
			if (menuFactory.ToolBars != null)
			{
				base.Controls.AddRange(menuFactory.ToolBars as Control[]);
			}
			if (menuFactory.Menus != null)
			{
				if (typeof(Menu).IsInstanceOfType(menuFactory.Menus[0]))
				{
					base.Menu = menuFactory.Menus[0] as MainMenu;
				}
				else
				{
					base.Controls.Add(menuFactory.Menus[0] as Control);
				}
			}
		}
		catch (Exception ex)
		{
			Trace.WriteLine("Unable to create menu factory due to the following error:");
			Trace.WriteLine(ex.ToString());
			return false;
		}
		return true;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			selectedRangeStyle = null;
			pgrpropertyGrid1.PropertyValueChanged -= pgrpropertyGrid1_PropertyValueChanged;
			sync.Dispose();
		}
		base.Dispose(disposing);
	}

	internal void InitializePropertyGrid()
	{
		pgrpropertyGrid1.SelectedObject = GridDesignerMain.syncProps;
		TypeDescriptor.Refresh(GridDesignerMain.syncProps);
	}

	private void infoPanel_Paint(object sender, PaintEventArgs e)
	{
		e.Graphics.DrawImage(Image.FromStream(GridWindowsAssembly.Assembly.GetManifestResourceStream(GridWindowsAssembly.RootNamespace + ".Resources.info.png")), new Rectangle(new Point(3, 3), new Size(30, 30)));
	}

	private void InitializeGrid()
	{
		grid1.SuspendLayout();
		grid1.Dock = DockStyle.Fill;
		grid1.Location = new Point(0, 0);
		grid1.Size = base.ClientSize;
		grid1.TabIndex = 1;
		grid1.ResumeLayout();
		base.Controls.Add(grid1);
		grid1.Initialize();
		grid1.BringToFront();
		grid1.CurrentCell.MoveTo(1, 1);
	}

	private void InitializeComponent()
	{
		this.propertyPanel = new System.Windows.Forms.Panel();
		this.tabControl1 = new System.Windows.Forms.TabControl();
		this.tabPage1 = new System.Windows.Forms.TabPage();
		this.cellRangePropertyGrid = new System.Windows.Forms.PropertyGrid();
		this.CurrentRangeLabel = new System.Windows.Forms.Label();
		this.tabPage2 = new System.Windows.Forms.TabPage();
		this.pgrpropertyGrid1 = new System.Windows.Forms.PropertyGrid();
		this.splitter2 = new System.Windows.Forms.Splitter();
		this.splitter1 = new System.Windows.Forms.Splitter();
		this.infoPanel = new System.Windows.Forms.Panel();
		this.infoLabel = new System.Windows.Forms.Label();
		this.splitter3 = new System.Windows.Forms.Splitter();
		this.propertyPanel.SuspendLayout();
		this.tabControl1.SuspendLayout();
		this.tabPage1.SuspendLayout();
		this.tabPage2.SuspendLayout();
		base.SuspendLayout();
		this.propertyPanel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
		this.propertyPanel.Controls.Add(this.tabControl1);
		this.propertyPanel.Controls.Add(this.splitter2);
		this.propertyPanel.Dock = System.Windows.Forms.DockStyle.Right;
		this.propertyPanel.Location = new System.Drawing.Point(536, 0);
		this.propertyPanel.Name = "propertyPanel";
		this.propertyPanel.Size = new System.Drawing.Size(256, 566);
		this.propertyPanel.TabIndex = 0;
		this.tabControl1.Controls.Add(this.tabPage1);
		this.tabControl1.Controls.Add(this.tabPage2);
		this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
		this.tabControl1.Location = new System.Drawing.Point(0, 3);
		this.tabControl1.Name = "tabControl1";
		this.tabControl1.SelectedIndex = 0;
		this.tabControl1.Size = new System.Drawing.Size(252, 559);
		this.tabControl1.TabIndex = 3;
		this.tabControl1.SelectedIndexChanged += new System.EventHandler(tabControl1_SelectedIndexChanged);
		this.tabPage1.Controls.Add(this.pgrpropertyGrid1);
		this.tabPage1.Location = new System.Drawing.Point(4, 22);
		this.tabPage1.Name = "tabPage1";
		this.tabPage1.Size = new System.Drawing.Size(244, 533);
		this.tabPage1.TabIndex = 0;
		this.tabPage1.Text = "Grid Properties";
		this.cellRangePropertyGrid.CommandsVisibleIfAvailable = true;
		this.cellRangePropertyGrid.Cursor = System.Windows.Forms.Cursors.HSplit;
		this.cellRangePropertyGrid.Dock = System.Windows.Forms.DockStyle.Fill;
		this.cellRangePropertyGrid.HelpVisible = false;
		this.cellRangePropertyGrid.LargeButtons = false;
		this.cellRangePropertyGrid.LineColor = System.Drawing.SystemColors.ScrollBar;
		this.cellRangePropertyGrid.Location = new System.Drawing.Point(0, 32);
		this.cellRangePropertyGrid.Name = "cellRangePropertyGrid";
		this.cellRangePropertyGrid.Size = new System.Drawing.Size(244, 501);
		this.cellRangePropertyGrid.TabIndex = 1;
		this.cellRangePropertyGrid.Text = "propertyGrid1";
		this.cellRangePropertyGrid.ViewBackColor = System.Drawing.SystemColors.Window;
		this.cellRangePropertyGrid.ViewForeColor = System.Drawing.SystemColors.WindowText;
		this.cellRangePropertyGrid.SelectedGridItemChanged += new System.Windows.Forms.SelectedGridItemChangedEventHandler(cellRangePropertyGrid_SelectedGridItemChanged);
		this.CurrentRangeLabel.Dock = System.Windows.Forms.DockStyle.Top;
		this.CurrentRangeLabel.Location = new System.Drawing.Point(0, 0);
		this.CurrentRangeLabel.Name = "CurrentRangeLabel";
		this.CurrentRangeLabel.Size = new System.Drawing.Size(244, 32);
		this.CurrentRangeLabel.TabIndex = 2;
		this.tabPage2.Controls.Add(this.cellRangePropertyGrid);
		this.tabPage2.Controls.Add(this.CurrentRangeLabel);
		this.tabPage2.Location = new System.Drawing.Point(4, 22);
		this.tabPage2.Name = "tabPage2";
		this.tabPage2.Size = new System.Drawing.Size(244, 533);
		this.tabPage2.TabIndex = 1;
		this.tabPage2.Text = "Selected Range";
		this.pgrpropertyGrid1.CommandsVisibleIfAvailable = true;
		this.pgrpropertyGrid1.Dock = System.Windows.Forms.DockStyle.Fill;
		this.pgrpropertyGrid1.HelpVisible = false;
		this.pgrpropertyGrid1.LargeButtons = false;
		this.pgrpropertyGrid1.LineColor = System.Drawing.SystemColors.ScrollBar;
		this.pgrpropertyGrid1.Location = new System.Drawing.Point(0, 0);
		this.pgrpropertyGrid1.Name = "pgrpropertyGrid1";
		this.pgrpropertyGrid1.Size = new System.Drawing.Size(244, 533);
		this.pgrpropertyGrid1.TabIndex = 0;
		this.pgrpropertyGrid1.Text = "propertyGrid1";
		this.pgrpropertyGrid1.ToolbarVisible = false;
		this.pgrpropertyGrid1.ViewBackColor = System.Drawing.SystemColors.Window;
		this.pgrpropertyGrid1.ViewForeColor = System.Drawing.SystemColors.WindowText;
		this.pgrpropertyGrid1.PropertyValueChanged += new System.Windows.Forms.PropertyValueChangedEventHandler(pgrpropertyGrid1_PropertyValueChanged);
		this.pgrpropertyGrid1.SelectedGridItemChanged += new System.Windows.Forms.SelectedGridItemChangedEventHandler(pgrpropertyGrid1_SelectedGridItemChanged);
		this.infoPanel.BackColor = System.Drawing.SystemColors.Info;
		this.infoPanel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this.infoPanel.Controls.Add(this.infoLabel);
		this.infoPanel.Dock = System.Windows.Forms.DockStyle.Bottom;
		this.infoPanel.Location = new System.Drawing.Point(0, 476);
		this.infoPanel.Name = "infoPanel";
		this.infoPanel.Size = new System.Drawing.Size(792, 90);
		this.infoPanel.TabIndex = 4;
		this.infoPanel.Paint += new System.Windows.Forms.PaintEventHandler(infoPanel_Paint);
		this.infoLabel.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
		this.infoLabel.Location = new System.Drawing.Point(32, 24);
		this.infoLabel.Name = "infoLabel";
		this.infoLabel.Size = new System.Drawing.Size(720, 50);
		this.infoLabel.TabIndex = 0;
		this.splitter3.Dock = System.Windows.Forms.DockStyle.Bottom;
		this.splitter3.Location = new System.Drawing.Point(0, 473);
		this.splitter3.MinSize = 90;
		this.splitter3.Name = "splitter3";
		this.splitter3.Size = new System.Drawing.Size(792, 3);
		this.splitter3.TabIndex = 3;
		this.splitter3.TabStop = false;
		this.splitter2.Dock = System.Windows.Forms.DockStyle.Top;
		this.splitter2.Location = new System.Drawing.Point(0, 0);
		this.splitter2.Name = "splitter2";
		this.splitter2.Size = new System.Drawing.Size(252, 3);
		this.splitter2.TabIndex = 2;
		this.splitter2.TabStop = false;
		this.splitter1.Dock = System.Windows.Forms.DockStyle.Right;
		this.splitter1.Location = new System.Drawing.Point(533, 0);
		this.splitter1.Name = "splitter1";
		this.splitter1.Size = new System.Drawing.Size(3, 566);
		this.splitter1.TabIndex = 1;
		this.splitter1.TabStop = false;
		this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
		base.CausesValidation = false;
		base.ClientSize = new System.Drawing.Size(792, 566);
		base.Controls.Add(this.splitter1);
		base.Controls.Add(this.propertyPanel);
		base.Controls.Add(this.splitter3);
		base.Controls.Add(this.infoPanel);
		base.Name = "GridFrame";
		base.Icon = new System.Drawing.Icon(Syncfusion.GridWindowsAssembly.Assembly.GetManifestResourceStream(Syncfusion.GridWindowsAssembly.RootNamespace + ".Resources.sfgrid.ico"));
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
		this.Text = "GridControl Designer";
		this.propertyPanel.ResumeLayout(false);
		this.tabControl1.ResumeLayout(false);
		this.tabPage1.ResumeLayout(false);
		this.tabPage2.ResumeLayout(false);
		base.ResumeLayout(false);
	}

	internal void OnPreviewGridMouseDown(object sender, MouseEventArgs e)
	{
		if (e.Clicks == 2)
		{
			grid1.PointToRowCol(new Point(e.X, e.Y), out var rowIndex, out var colIndex);
			if (rowIndex == 0 || colIndex == 0)
			{
				grid1.Selections.Clear();
				grid1.Selections.Add(GridRangeInfo.Cell(rowIndex, colIndex));
			}
		}
	}

	private void _selectedRangeStyle_Changed(object sender, StyleChangedEventArgs e)
	{
		try
		{
			for (int i = 0; i < selectedRanges.Count; i++)
			{
				GridRangeInfo range = selectedRanges[i];
				grid1.ChangeCells(range, selectedRangeStyle);
			}
		}
		catch (Exception ex)
		{
			Trace.WriteLine(ex.ToString());
		}
		grid1.Refresh();
	}

	internal void OnPreviewGridSelectionChanged(object sender, GridSelectionChangedEventArgs e)
	{
		selectedRangeStyle = null;
		selectedRanges = null;
		grid1.Selections.GetSelectedRanges(out selectedRanges, considerCurrentCell: false);
		CurrentRangeLabel.Text = selectedRanges.Info;
		selectedRangeStyle = grid1.Model.GetCombinedStyle(selectedRanges);
		if (selectedRangeStyle != null)
		{
			cellRangePropertyGrid.SelectedObject = selectedRangeStyle;
		}
		UpdateMenus();
	}

	internal void OnPreviewGridCurrentCellActivated(object sender, EventArgs e)
	{
		grid1.Selections.GetSelectedRanges(out selectedRanges, considerCurrentCell: true);
		if (!grid1.ExcelLikeCurrentCell && selectedRanges.Count == 1 && grid1.CurrentCell != null)
		{
			if (grid1.CurrentCell.ColIndex == 0 && grid1.CurrentCell.RowIndex == 0)
			{
				CurrentRangeLabel.Text = "Table Style";
				cellRangePropertyGrid.SelectedObject = grid1.TableStyle;
				return;
			}
			CurrentRangeLabel.Text = "R" + grid1.CurrentCell.RowIndex + "C" + grid1.CurrentCell.ColIndex;
			selectedRangeStyle = grid1[grid1.CurrentCell.RowIndex, grid1.CurrentCell.ColIndex];
			if (selectedRangeStyle != null)
			{
				cellRangePropertyGrid.SelectedObject = selectedRangeStyle;
			}
		}
		UpdateMenus();
	}

	internal void OnPreviewGridColsRemoved(object sender, GridRangeRemovedEventArgs e)
	{
		GridDesignerMain.syncProps.ColCount = grid1.ColCount;
		pgrpropertyGrid1.Refresh();
	}

	internal void OnPreviewGridColsInserted(object sender, GridRangeInsertedEventArgs e)
	{
		GridDesignerMain.syncProps.ColCount = grid1.ColCount;
		pgrpropertyGrid1.Refresh();
	}

	internal void OnPreviewGridRowsRemoved(object sender, GridRangeRemovedEventArgs e)
	{
		GridDesignerMain.syncProps.RowCount = grid1.RowCount;
		pgrpropertyGrid1.Refresh();
	}

	internal void OnPreviewGridRowsInserted(object sender, GridRangeInsertedEventArgs e)
	{
		GridDesignerMain.syncProps.RowCount = grid1.RowCount;
		pgrpropertyGrid1.Refresh();
	}

	internal void MarkDirty(bool dirty)
	{
		bModified = dirty;
		if (bModified)
		{
			if (!Text.EndsWith("*"))
			{
				Text += "*";
			}
		}
		else if (Text.EndsWith("*"))
		{
			Text = Text.TrimEnd('*');
		}
		grid1.Invalidate();
	}

	internal void OnGridSynchronizerPropertiesChanged(object sender, PropertyChangedEventArgs e)
	{
		if (bInitialized)
		{
			MarkDirty(dirty: true);
		}
	}

	internal void OnPreviewGridColWidthsChanged(object sender, GridRowColSizeChangedEventArgs e)
	{
		if (bInitialized)
		{
			MarkDirty(dirty: true);
		}
	}

	internal void OnPreviewGridRowHeightsChanged(object sender, GridRowColSizeChangedEventArgs e)
	{
		if (bInitialized)
		{
			MarkDirty(dirty: true);
		}
	}

	internal void OnPreviewGridCellsChanged(object sender, GridCellsChangedEventArgs e)
	{
		if (bInitialized)
		{
			MarkDirty(dirty: true);
		}
	}

	internal void OnPreviewGridPropertiesChanged(object sender, EventArgs e)
	{
		if (bInitialized)
		{
			MarkDirty(dirty: true);
		}
	}

	private void SetPropertyInfo(GridItem newSelection)
	{
		if (newSelection == null)
		{
			return;
		}
		if (newSelection.GridItemType == GridItemType.Property)
		{
			Type type = typeof(GridControl);
			PropertyInfo property;
			if (newSelection.PropertyDescriptor.ComponentType.Equals(typeof(GridStyleInfo)))
			{
				type = newSelection.PropertyDescriptor.ComponentType;
				property = type.GetProperty(newSelection.PropertyDescriptor.Name);
			}
			else
			{
				property = type.GetProperty(newSelection.PropertyDescriptor.Name);
			}
			if (property != null)
			{
				DescriptionAttribute descriptionAttribute = (DescriptionAttribute)Attribute.GetCustomAttribute(type.GetProperty(newSelection.PropertyDescriptor.Name), typeof(DescriptionAttribute), inherit: false);
				infoLabel.Text = property.ToString() + "\n\n";
				if (descriptionAttribute != null)
				{
					infoLabel.Text += descriptionAttribute.Description;
				}
			}
			else
			{
				infoLabel.Text = newSelection.PropertyDescriptor.PropertyType.FullName + " ";
				Label label = infoLabel;
				label.Text = label.Text + newSelection.Label + "\n\n" + newSelection.PropertyDescriptor.Description;
			}
		}
		else
		{
			infoLabel.Text = newSelection.GridItemType.ToString() + ": " + newSelection.Label;
		}
	}

	private void pgrpropertyGrid1_PropertyValueChanged(object s, PropertyValueChangedEventArgs e)
	{
		if (bInitialized)
		{
			MarkDirty(dirty: true);
		}
	}

	private void pgrpropertyGrid1_SelectedGridItemChanged(object sender, SelectedGridItemChangedEventArgs e)
	{
		SetPropertyInfo(e.NewSelection);
	}

	private void cellRangePropertyGrid_SelectedGridItemChanged(object sender, SelectedGridItemChangedEventArgs e)
	{
		SetPropertyInfo(e.NewSelection);
	}

	private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
	{
		if (tabControl1.SelectedIndex == 1)
		{
			SetPropertyInfo(cellRangePropertyGrid.SelectedGridItem);
		}
		else
		{
			SetPropertyInfo(pgrpropertyGrid1.SelectedGridItem);
		}
	}

	internal void OnPreviewGridPrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)
	{
		if (e.ColIndex == 0 || e.RowIndex == 0)
		{
			e.Style.CellTipText = "Double Click to move current cell to header cell. Then change text or appearance properties in 'Selected Range' property grid.";
		}
		if (e.Style.BackgroundImageID != null && e.Style.BackgroundImageID != string.Empty)
		{
			bool flag = bInitialized;
			bInitialized = false;
			string backgroundImageID = e.Style.BackgroundImageID;
			grid1[e.RowIndex, e.ColIndex].BackgroundImageID = string.Empty;
			backgroundImageID = GridDesignerMain.syncProps.StoredImages.GetValueForName(backgroundImageID);
			Bitmap imageFromBytes = GridSyncProperties.GetImageFromBytes(Convert.FromBase64String(backgroundImageID));
			grid1[e.RowIndex, e.ColIndex].BackgroundImage = imageFromBytes;
			bInitialized = flag;
		}
	}

	internal void OnPreviewGridPrepareGraphics(object sender, GraphicsEventArgs e)
	{
		if (grid1.BackgroundImageID != null && grid1.BackgroundImageID != string.Empty)
		{
			bool flag = bInitialized;
			bInitialized = false;
			string backgroundImageID = grid1.BackgroundImageID;
			grid1.BackgroundImageID = string.Empty;
			backgroundImageID = GridDesignerMain.syncProps.StoredImages.GetValueForName(backgroundImageID);
			Bitmap imageFromBytes = GridSyncProperties.GetImageFromBytes(Convert.FromBase64String(backgroundImageID));
			grid1.BackgroundImage = imageFromBytes;
			GridDesignerMain.syncProps.BackgroundImage = imageFromBytes;
			pgrpropertyGrid1.Refresh();
			bInitialized = flag;
		}
	}

	public void RegisterAction(ActionInfo actionInfo)
	{
		registeredActions.Add(actionInfo);
	}

	private void UpdateMenus()
	{
		UpdateCoveredRange();
		UpdateBanneredRange();
		UpdateFontInfo();
		UpdateAlignment();
	}

	private void UpdateCoveredRange()
	{
		bool selected = false;
		if (grid1.CurrentCell != null)
		{
			GridRangeInfo gridRangeInfo = Grid.CoveredRanges.FindRange(grid1.CurrentCell.RowIndex, grid1.CurrentCell.ColIndex);
			if (gridRangeInfo != GridRangeInfo.Empty)
			{
				selected = true;
			}
		}
		foreach (ActionInfo registeredAction in registeredActions)
		{
			if (registeredAction.ActionName.Trim().ToLower().EndsWith("togglecovercell"))
			{
				((GridDesignerBasicAction)registeredAction.Action).SetState(selected, registeredAction.SourceObject);
			}
		}
	}

	private void UpdateBanneredRange()
	{
		bool selected = false;
		if (grid1.CurrentCell != null)
		{
			GridRangeInfo gridRangeInfo = Grid.BanneredRanges.FindRange(grid1.CurrentCell.RowIndex, grid1.CurrentCell.ColIndex);
			if (gridRangeInfo != GridRangeInfo.Empty)
			{
				selected = true;
			}
		}
		foreach (ActionInfo registeredAction in registeredActions)
		{
			if (registeredAction.ActionName.Trim().ToLower().EndsWith("togglebanneredrange"))
			{
				((GridDesignerBasicAction)registeredAction.Action).SetState(selected, registeredAction.SourceObject);
			}
		}
	}

	private void UpdateFontInfo()
	{
		try
		{
			if (selectedRangeStyle == null)
			{
				return;
			}
			foreach (ActionInfo registeredAction in registeredActions)
			{
				if (registeredAction.ActionName.Trim().ToLower().EndsWith("togglebold"))
				{
					((GridDesignerBasicAction)registeredAction.Action).SetState(selectedRangeStyle.Font.Bold, registeredAction.SourceObject);
				}
				if (registeredAction.ActionName.Trim().ToLower().EndsWith("toggleitalic"))
				{
					((GridDesignerBasicAction)registeredAction.Action).SetState(selectedRangeStyle.Font.Italic, registeredAction.SourceObject);
				}
				if (registeredAction.ActionName.Trim().ToLower().EndsWith("toggleunderline"))
				{
					((GridDesignerBasicAction)registeredAction.Action).SetState(selectedRangeStyle.Font.Underline, registeredAction.SourceObject);
				}
			}
		}
		catch (Exception ex)
		{
			Trace.WriteLine(ex.ToString());
		}
	}

	internal void SetAlignLeftState()
	{
		foreach (ActionInfo registeredAction in registeredActions)
		{
			if (registeredAction.ActionName.Trim().ToLower().EndsWith("toggleleft"))
			{
				((GridDesignerBasicAction)registeredAction.Action).SetState(selected: true, registeredAction.SourceObject);
			}
			if (registeredAction.ActionName.Trim().ToLower().EndsWith("toggleright"))
			{
				((GridDesignerBasicAction)registeredAction.Action).SetState(selected: false, registeredAction.SourceObject);
			}
			if (registeredAction.ActionName.Trim().ToLower().EndsWith("togglecenter"))
			{
				((GridDesignerBasicAction)registeredAction.Action).SetState(selected: false, registeredAction.SourceObject);
			}
		}
	}

	internal void SetAlignCenterState()
	{
		foreach (ActionInfo registeredAction in registeredActions)
		{
			if (registeredAction.ActionName.Trim().ToLower().EndsWith("toggleleft"))
			{
				((GridDesignerBasicAction)registeredAction.Action).SetState(selected: false, registeredAction.SourceObject);
			}
			if (registeredAction.ActionName.Trim().ToLower().EndsWith("toggleright"))
			{
				((GridDesignerBasicAction)registeredAction.Action).SetState(selected: false, registeredAction.SourceObject);
			}
			if (registeredAction.ActionName.Trim().ToLower().EndsWith("togglecenter"))
			{
				((GridDesignerBasicAction)registeredAction.Action).SetState(selected: true, registeredAction.SourceObject);
			}
		}
	}

	internal void SetAlignRightState()
	{
		foreach (ActionInfo registeredAction in registeredActions)
		{
			if (registeredAction.ActionName.Trim().ToLower().EndsWith("toggleleft"))
			{
				((GridDesignerBasicAction)registeredAction.Action).SetState(selected: false, registeredAction.SourceObject);
			}
			if (registeredAction.ActionName.Trim().ToLower().EndsWith("toggleright"))
			{
				((GridDesignerBasicAction)registeredAction.Action).SetState(selected: true, registeredAction.SourceObject);
			}
			if (registeredAction.ActionName.Trim().ToLower().EndsWith("togglecenter"))
			{
				((GridDesignerBasicAction)registeredAction.Action).SetState(selected: false, registeredAction.SourceObject);
			}
		}
	}

	private void UpdateAlignment()
	{
		try
		{
			if (selectedRangeStyle == null)
			{
				return;
			}
			foreach (ActionInfo registeredAction in registeredActions)
			{
				if (registeredAction.ActionName.Trim().ToLower().EndsWith("toggleleft"))
				{
					((GridDesignerBasicAction)registeredAction.Action).SetState(selectedRangeStyle.HorizontalAlignment.CompareTo(GridHorizontalAlignment.Left) == 0, registeredAction.SourceObject);
				}
				if (registeredAction.ActionName.Trim().ToLower().EndsWith("toggleright"))
				{
					((GridDesignerBasicAction)registeredAction.Action).SetState(selectedRangeStyle.HorizontalAlignment.CompareTo(GridHorizontalAlignment.Right) == 0, registeredAction.SourceObject);
				}
				if (registeredAction.ActionName.Trim().ToLower().EndsWith("togglecenter"))
				{
					((GridDesignerBasicAction)registeredAction.Action).SetState(selectedRangeStyle.HorizontalAlignment.CompareTo(GridHorizontalAlignment.Center) == 0, registeredAction.SourceObject);
				}
			}
		}
		catch (Exception ex)
		{
			Trace.WriteLine(ex.ToString());
		}
	}

	protected override void OnClosing(CancelEventArgs e)
	{
		if (Modified)
		{
			Cursor.Current = Cursors.WaitCursor;
			SetGrid.PerformAction(this);
			Cursor.Current = Cursors.Default;
		}
		base.OnClosing(e);
	}
}
