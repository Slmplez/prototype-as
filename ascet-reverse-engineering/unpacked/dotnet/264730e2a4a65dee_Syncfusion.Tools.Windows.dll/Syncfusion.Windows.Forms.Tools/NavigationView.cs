using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Text;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Navigation;
using Syncfusion.Windows.Forms.Tools.Navigation.Design;
using Syncfusion.Windows.Forms.Tools.Navigation.Layouting;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(NavigationView), "ToolboxIcons.NavigationView.bmp")]
[DefaultProperty("Bars")]
[Designer(typeof(NavigationViewDesigner))]
[TypeDescriptionProvider(typeof(NavigationViewTypeDescriptionProvider))]
[DefaultEvent("BarSelectionChanged")]
public class NavigationView : Control, ISupportOffice2007Theme, ISuppportHistory, ISupportInitialize, IMessageFilter, IContainBars
{
	private delegate void ProcessBarItem(BarItem bi);

	public class HistoryDropDownInfo
	{
		public Syncfusion.Windows.Forms.Tools.Navigation.Bar Bar;

		public int Index;

		public HistoryDropDownInfo(Syncfusion.Windows.Forms.Tools.Navigation.Bar bar, int index)
		{
			Bar = bar;
			Index = index;
		}
	}

	public class Command : ICommand, IDisposable
	{
		private Syncfusion.Windows.Forms.Tools.Navigation.Bar _bar;

		private Syncfusion.Windows.Forms.Tools.Navigation.Bar _prevBar;

		private NavigationView _nv;

		public Syncfusion.Windows.Forms.Tools.Navigation.Bar Bar => _bar;

		public Syncfusion.Windows.Forms.Tools.Navigation.Bar PrevBar => _prevBar;

		public Command(NavigationView nv, Syncfusion.Windows.Forms.Tools.Navigation.Bar bar, Syncfusion.Windows.Forms.Tools.Navigation.Bar prevBar)
		{
			_bar = bar;
			_prevBar = prevBar;
			_nv = nv;
		}

		public void Execute()
		{
			if (_bar != null)
			{
				_nv.SelectedBar = _bar;
			}
		}

		public void Reverse()
		{
			Syncfusion.Windows.Forms.Tools.Navigation.Bar bar = _bar;
			_bar = _prevBar;
			_prevBar = bar;
		}

		public void Dispose()
		{
			_nv = null;
			_bar = null;
		}
	}

	[ToolboxItem(false)]
	public class PopupMenu : Syncfusion.Windows.Forms.Tools.XPMenus.PopupMenu
	{
		private bool _forcedVistaStyle;

		public bool ForcedVistaStyle
		{
			set
			{
				_forcedVistaStyle = value;
			}
		}

		protected override MenuGrid MenuGrid
		{
			get
			{
				MenuGrid menuGrid = base.MenuGrid;
				menuGrid.ForcedVistaStyle = _forcedVistaStyle;
				menuGrid.ThemesEnabled = _forcedVistaStyle;
				return menuGrid;
			}
		}

		public PopupMenu(IContainer container)
			: base(container)
		{
		}

		public override bool IsRelatedControl(Control control, bool askParent)
		{
			if (control != GetParentControl())
			{
				return base.IsRelatedControl(control, askParent);
			}
			return true;
		}

		public override void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
		{
			base.ChildClosing(childUI, popupCloseType);
			if (GetParentControl() is NavigationView navigationView)
			{
				navigationView.OnPopupMenuClosed(this, EventArgs.Empty);
			}
		}
	}

	public class PopupHost : Syncfusion.Windows.Forms.PopupHost
	{
		protected override void WndProc(ref Message m)
		{
			if (m.Msg == 33)
			{
				m.Result = (IntPtr)3;
			}
			else
			{
				base.WndProc(ref m);
			}
		}
	}

	public class BarInfo
	{
		public string Path;

		public int ImageIndex;

		public BarInfo(string path, Syncfusion.Windows.Forms.Tools.Navigation.Bar bar)
		{
			Path = path;
			ImageIndex = bar.ImageIndex;
		}
	}

	public const int DefaultHeight = 22;

	public const string DefaultPathSeparator = "\\";

	private BarCollection _bars;

	private CustomButtonCollection _customButtons;

	private VisualStyles _visualStyle;

	private Office2007Theme _office2007Theme = Office2007Theme.Managed;

	private Syncfusion.Windows.Forms.Tools.Navigation.Bar _selectedBar;

	private List<Syncfusion.Windows.Forms.Tools.Navigation.Bar> _path;

	private HistoryManager _historyMan;

	private bool _historyEnabled;

	private bool _editingMode;

	private ImageList _imageList;

	private ImageList _disabledImageList;

	private bool _showHistoryButtons;

	private Visualizer _visualizer;

	private int _initializing;

	private Size _popupDropDownSize;

	private PopupHost _popupHost;

	private bool _showBorder;

	private Color _borderColor = Color.Navy;

	private bool _showRootBarText;

	private bool allowEdit = true;

	private IContainer components;

	private PopupMenu _popupMenu;

	private ParentBarItem _parentBarItem;

	private TextBoxExt _textBox;

	private AutoComplete _autoComplete;

	private PopupControlContainer _popupContainer;

	private ListView _recentList;

	private ColumnHeader _columnHeader;

	private ScrollersFrame _scrollersFrame;

	private AutoCompleteDataColumnInfo autoCompleteDataColumnInfo1;

	private AutoCompleteDataColumnInfo autoCompleteDataColumnInfo2;

	[Category("Behavior")]
	[Editor(typeof(BarCollectionEditor), typeof(UITypeEditor))]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Gets the collection of Bars.")]
	public BarCollection Bars
	{
		get
		{
			if (_bars == null)
			{
				_bars = new BarCollection();
				_bars.CollectionChanged += OnBarsCollectionChanged;
				_bars.ItemPropertyChanged += OnBarPropertyChanged;
			}
			return _bars;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public BarCollection VisibleBars
	{
		get
		{
			BarCollection barCollection = new BarCollection();
			foreach (Syncfusion.Windows.Forms.Tools.Navigation.Bar bar in Bars)
			{
				if (bar.Visible)
				{
					barCollection.Add(bar);
				}
			}
			return barCollection;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Gets the collection of NavigationButtons.")]
	[Category("Appearance")]
	public CustomButtonCollection CustomButtons
	{
		get
		{
			if (_customButtons == null)
			{
				_customButtons = new CustomButtonCollection();
				AdwiseCustomButtons();
			}
			return _customButtons;
		}
	}

	[Description("Gets or sets the visual style.")]
	[RefreshProperties(RefreshProperties.All)]
	[DefaultValue(VisualStyles.Office2007)]
	[Category("Appearance")]
	public VisualStyles VisualStyle
	{
		get
		{
			return _visualStyle;
		}
		set
		{
			if (_visualStyle != value)
			{
				_visualStyle = value;
				OnVisualStyleChanged();
			}
		}
	}

	[Editor(typeof(SelectedBarEditor), typeof(UITypeEditor))]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[DefaultValue(null)]
	[Category("Behavior")]
	[Description("Current selected bar.")]
	public Syncfusion.Windows.Forms.Tools.Navigation.Bar SelectedBar
	{
		get
		{
			return _selectedBar;
		}
		set
		{
			if (SelectedBar != value)
			{
				if (HistoryEnabled && HistoryManager != null)
				{
					Command cmd = new Command(this, value, SelectedBar);
					HistoryManager.Do(cmd);
				}
				SelectBar(value);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public List<Syncfusion.Windows.Forms.Tools.Navigation.Bar> SelectedBars => Path;

	protected List<Syncfusion.Windows.Forms.Tools.Navigation.Bar> Path
	{
		get
		{
			if (_path == null)
			{
				_path = new List<Syncfusion.Windows.Forms.Tools.Navigation.Bar>();
			}
			return _path;
		}
		set
		{
			if (value == null || _path == value)
			{
				return;
			}
			int i = 0;
			for (int count = value.Count; i < count; i++)
			{
				Syncfusion.Windows.Forms.Tools.Navigation.Bar bar = value[i];
				if (!bar.Visible)
				{
					throw new ArgumentException("Collection can't contain hidden bar.");
				}
				if (i > 0)
				{
					Syncfusion.Windows.Forms.Tools.Navigation.Bar bar2 = value[i - 1];
					if (!bar2.Bars.Contains(bar))
					{
						throw new ArgumentException("Collection doesn't contain valid hierarchy.");
					}
				}
				else if (!IsValidBar(bar))
				{
					throw new ArgumentException("Collection contains bar that doesn't belong to the control.");
				}
			}
			_path = value;
		}
	}

	[Browsable(false)]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool InEditingMode
	{
		get
		{
			return _editingMode;
		}
		set
		{
			if (_editingMode != value)
			{
				_editingMode = value;
				OnEditingModeChanged();
			}
		}
	}

	[DefaultValue(true)]
	[Description("Gets or sets whether the bar should go into edit mode.")]
	public bool AllowEditMode
	{
		get
		{
			return allowEdit;
		}
		set
		{
			if (allowEdit != value)
			{
				allowEdit = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Image list for bars.")]
	[DefaultValue(null)]
	public ImageList ImageList
	{
		get
		{
			return _imageList;
		}
		set
		{
			if (_imageList != value)
			{
				_imageList = value;
				_recentList.SmallImageList = value;
				OnImageListChanged();
			}
		}
	}

	[DefaultValue(null)]
	[Category("Appearance")]
	[Description("Disabled image list for bars.")]
	public ImageList DisabledImageList
	{
		get
		{
			return _disabledImageList;
		}
		set
		{
			if (_disabledImageList != value)
			{
				_disabledImageList = value;
				OnDisabledImageListChanged();
			}
		}
	}

	[Description("Indicates whether to show history buttons.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool ShowHistoryButtons
	{
		get
		{
			return _showHistoryButtons;
		}
		set
		{
			if (_showHistoryButtons != value)
			{
				_showHistoryButtons = value;
				OnShowHistoryButtonsChanged();
			}
		}
	}

	[Browsable(false)]
	public bool Initializing => _initializing > 0;

	protected internal TextBoxExt TextBox => _textBox;

	[Category("Behavior")]
	[Description("Size of the recently visited popup drop-down.")]
	public Size PopupDropDownSize
	{
		get
		{
			return _popupDropDownSize;
		}
		set
		{
			_popupDropDownSize = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string[] RecentlyVisitedPaths
	{
		get
		{
			int num = 0;
			string[] array = new string[_recentList.Items.Count];
			foreach (ListViewItem item in _recentList.Items)
			{
				array[num++] = item.Text;
			}
			return array;
		}
		set
		{
			foreach (string path in value)
			{
				Syncfusion.Windows.Forms.Tools.Navigation.Bar availableBarFromPath = GetAvailableBarFromPath(path, "\\");
				AddBarToRecentList(availableBarFromPath);
			}
		}
	}

	[Description("Indicates whether to show bars' area border.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool ShowBorder
	{
		get
		{
			return _showBorder;
		}
		set
		{
			if (_showBorder != value)
			{
				_showBorder = value;
				_visualizer.UpdateLayout();
			}
		}
	}

	[DefaultValue(typeof(Color), "Navy")]
	[Category("Appearance")]
	[Description("Color of the bars' area border.")]
	public Color BorderColor
	{
		get
		{
			return _borderColor;
		}
		set
		{
			if (_borderColor != value)
			{
				_borderColor = value;
				Invalidate();
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public override Image BackgroundImage
	{
		get
		{
			return base.BackgroundImage;
		}
		set
		{
			base.BackgroundImage = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public override ImageLayout BackgroundImageLayout
	{
		get
		{
			return base.BackgroundImageLayout;
		}
		set
		{
			base.BackgroundImageLayout = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			base.BackColor = value;
		}
	}

	[DefaultValue(false)]
	[Description("Indicates whether to show text of root Bars")]
	[Category("Appearance")]
	public bool ShowRootBarText
	{
		get
		{
			return _showRootBarText;
		}
		set
		{
			if (_showRootBarText != value)
			{
				_showRootBarText = value;
				_visualizer.UpdateLayout();
			}
		}
	}

	private string SelectedPath => GetSelectedPath("\\");

	protected override Size DefaultSize => new Size(base.DefaultSize.Width, 22);

	[DefaultValue(Office2007Theme.Managed)]
	[Category("Appearance")]
	[Description("Specifies Office2007Theme to use.")]
	public Office2007Theme Office2007ColorTheme
	{
		get
		{
			return _office2007Theme;
		}
		set
		{
			if (_office2007Theme != value)
			{
				_office2007Theme = value;
				if (VisualStyle == VisualStyles.Office2007)
				{
					_visualizer.UpdateLayout(invalidate: true);
				}
			}
		}
	}

	[TypeConverter(typeof(ReferenceConverter))]
	[Category("Behavior")]
	[DefaultValue(null)]
	[Description("Gets or sets the history manager to use.")]
	public HistoryManager HistoryManager
	{
		get
		{
			return _historyMan;
		}
		set
		{
			if (_historyMan != value)
			{
				_historyMan = value;
				UpdateHistoryButtonsState();
			}
		}
	}

	[Category("Behavior")]
	[Description("Indicates whether registered items are in history list.")]
	[DefaultValue(false)]
	public bool HistoryEnabled
	{
		get
		{
			return _historyEnabled;
		}
		set
		{
			if (_historyEnabled != value)
			{
				if (HistoryManager == null)
				{
					throw new InvalidOperationException("HistoryManager is not set.");
				}
				_historyEnabled = value;
				UpdateHistoryButtonsState();
			}
		}
	}

	[Description("Occurs when SelectedBar property is changed.")]
	public event EventHandler<BarSelectionChangedEventArgs> BarSelectionChanged;

	[Description("Occurs when SelectedBar property is changing.")]
	public event EventHandler<BarSelectionChangingEventArgs> BarSelectionChanging;

	[Description("Occurs when bar is added to NavigationView.Bars collection.")]
	public event CollectionChangeEventHandler BarAdded;

	[Description("Occurs when bar is removed from NavigationView.Bars collection.")]
	public event CollectionChangeEventHandler BarRemoved;

	[Description("Occurs when when the recently visited popup is shown.")]
	public event EventHandler PopupShown;

	[Description("Occurs when when the recently visited popup is closed.")]
	public event EventHandler PopupClosed;

	internal event PropertyChangedEventHandler BarPropertyChanged;

	[Description("Occurs when the drop down is popped up.")]
	public event EventHandler<BarPopupEventArgs> BarPopup;

	public NavigationView()
	{
		InitializeComponent();
		SetupComponents();
		SetupControl();
	}

	private void SetupComponents()
	{
		_visualizer = new Visualizer(this, VisualStyle);
		_popupHost = new PopupHost();
		_recentList.Parent = _popupContainer;
		_popupContainer.Parent = this;
		_popupContainer.ParentControl = this;
		_popupContainer.PopupHost = _popupHost;
		AdwiseRecentListPopup();
		RegisterComponents();
	}

	private void RegisterComponents()
	{
		components.Add(_popupContainer);
		components.Add(_recentList);
		components.Add(_popupHost);
		components.Add(_visualizer);
	}

	private void SetupControl()
	{
		SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer | ControlStyles.OptimizedDoubleBuffer, value: true);
		SetStyle(ControlStyles.Selectable, value: false);
	}

	private void SelectBar(Syncfusion.Windows.Forms.Tools.Navigation.Bar bar)
	{
		List<Syncfusion.Windows.Forms.Tools.Navigation.Bar> path = new List<Syncfusion.Windows.Forms.Tools.Navigation.Bar>();
		if (bar != null)
		{
			if (!bar.Visible)
			{
				throw new InvalidOperationException("Hidden bar can't be selected.");
			}
			if (!bar.Enabled)
			{
				throw new InvalidOperationException("Disabled bar can't be selected.");
			}
		}
		if (bar == null || IsValidBar(bar, _bars, path))
		{
			if (OnSelectedBarChanging(bar, cancel: false))
			{
				Syncfusion.Windows.Forms.Tools.Navigation.Bar selectedBar = _selectedBar;
				_selectedBar = bar;
				OnSelectedBarChanged(path, selectedBar);
			}
			return;
		}
		throw new ArgumentException("Selected bar doesn't belong to the control.");
	}

	private bool ShouldSerializePopupDropDownSize()
	{
		return !PopupDropDownSize.IsEmpty;
	}

	private void ResetPopupDropDownSize()
	{
		PopupDropDownSize = Size.Empty;
	}

	private void OnVisualStyleChanged()
	{
		_visualizer.Style = _visualStyle;
	}

	private bool OnSelectedBarChanging(Syncfusion.Windows.Forms.Tools.Navigation.Bar bar, bool cancel)
	{
		if (this.BarSelectionChanging != null)
		{
			BarSelectionChangingEventArgs e = new BarSelectionChangingEventArgs(cancel, bar);
			this.BarSelectionChanging(this, e);
			cancel = e.Cancel;
		}
		return !cancel;
	}

	private void OnSelectedBarChanged(List<Syncfusion.Windows.Forms.Tools.Navigation.Bar> path, Syncfusion.Windows.Forms.Tools.Navigation.Bar prevBar)
	{
		_path = path;
		_visualizer.UpdateLayout();
		FireBarSelectionChangedEvent();
	}

	private void FireBarSelectionChangedEvent()
	{
		if (this.BarSelectionChanged != null)
		{
			BarSelectionChangedEventArgs e = new BarSelectionChangedEventArgs(SelectedBar);
			this.BarSelectionChanged(this, e);
		}
	}

	private void OnImageListChanged()
	{
		_autoComplete.ImageList = ImageList;
		_visualizer.UpdateLayout();
	}

	private void OnDisabledImageListChanged()
	{
	}

	private void OnBarsCollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		CollectionChangeEventHandler collectionChangeEventHandler = null;
		Syncfusion.Windows.Forms.Tools.Navigation.Bar bar = (Syncfusion.Windows.Forms.Tools.Navigation.Bar)e.Element;
		switch (e.Action)
		{
		case CollectionChangeAction.Add:
			AdwiseBar(bar);
			collectionChangeEventHandler = this.BarAdded;
			break;
		case CollectionChangeAction.Remove:
			UnadwiseBar(bar);
			collectionChangeEventHandler = this.BarRemoved;
			break;
		}
		collectionChangeEventHandler?.Invoke(this, e);
	}

	private void AdwiseBar(Syncfusion.Windows.Forms.Tools.Navigation.Bar bar)
	{
		BarCollection bars = bar.Bars;
		bar.PropertyChanged += OnBarPropertyChanged;
		bars.CollectionChanged += OnBarsCollectionChanged;
		foreach (Syncfusion.Windows.Forms.Tools.Navigation.Bar item in bars)
		{
			AdwiseBar(item);
		}
	}

	private void UnadwiseBar(Syncfusion.Windows.Forms.Tools.Navigation.Bar bar)
	{
		BarCollection bars = bar.Bars;
		bar.PropertyChanged -= OnBarPropertyChanged;
		bars.CollectionChanged -= OnBarsCollectionChanged;
		foreach (Syncfusion.Windows.Forms.Tools.Navigation.Bar item in bars)
		{
			UnadwiseBar(item);
		}
	}

	private void OnBarPropertyChanged(object sender, PropertyChangedEventArgs e)
	{
		if (this.BarPropertyChanged != null)
		{
			this.BarPropertyChanged(sender, e);
		}
		switch (Syncfusion.Windows.Forms.Tools.Navigation.Bar.Helper.ParsePropertyEnumString(e.PropertyName))
		{
		case Syncfusion.Windows.Forms.Tools.Navigation.Bar.Properties.AutoExpand:
		{
			Point pt = PointToClient(Cursor.Position);
			if (base.ClientRectangle.Contains(pt))
			{
				MouseEventArgs e2 = new MouseEventArgs(MouseButtons.None, 0, pt.X, pt.Y, 0);
				HandleMouse(e2, AreaStates.Hot);
			}
			return;
		}
		case Syncfusion.Windows.Forms.Tools.Navigation.Bar.Properties.Visible:
		case Syncfusion.Windows.Forms.Tools.Navigation.Bar.Properties.Enabled:
			if (sender is Syncfusion.Windows.Forms.Tools.Navigation.Bar bar && bar.IsSelected(this))
			{
				if (!bar.Enabled)
				{
					bar.Enabled = true;
					throw new InvalidOperationException("Selected bar can't be disabled.");
				}
				if (!bar.Visible)
				{
					bar.Visible = true;
					throw new InvalidOperationException("Selected bar can't be hidden.");
				}
			}
			break;
		}
		_visualizer.UpdateLayout();
	}

	private void OnShowHistoryButtonsChanged()
	{
		_visualizer.UpdateLayout(invalidate: false);
		base.Height = 0;
		UpdateHistoryButtonsState();
	}

	private void UpdateHistoryButtonsState()
	{
		_visualizer.UpdateHistoryButtonsState(invalidate: true);
	}

	private void OnLayoutChanged()
	{
		_visualizer.UpdateLayout();
		UpdateTextBoxLayout();
	}

	private void Invalidate(List<LayoutInfo> areas)
	{
		foreach (LayoutInfo area in areas)
		{
			Rectangle bounds = area.Bounds;
			if (area.Area == HitTestAreas.BarImage)
			{
				bounds.Inflate(1, 1);
			}
			Invalidate(bounds);
		}
	}

	private void HandleMouse(MouseEventArgs e, AreaStates normal, AreaStates leftButton)
	{
		List<LayoutInfo> list = _visualizer.States.ClearAreaStates();
		_visualizer.UpdateHistoryButtonsState(invalidate: false);
		Point point = new Point(e.X, e.Y);
		LayoutInfo li = _visualizer.HitTest(point);
		if (li != null)
		{
			AreaStates areaStates = ((e.Button != MouseButtons.Left) ? normal : leftButton);
			if (li.Area == HitTestAreas.Bar)
			{
				list.Add(li);
				HandleMouseOverBarArea(e, point, ref li, ref areaStates);
			}
			else if (_parentBarItem.Tag != null && _popupMenu.IsShowing())
			{
				_popupMenu.Hide();
			}
			AreaStates areaState = _visualizer.States.GetAreaState(li);
			if (areaState != AreaStates.Disabled && areaStates != areaState)
			{
				_visualizer.States.SetAreaState(li, areaStates);
				list.Add(li);
			}
		}
		Invalidate(list);
	}

	private void HandleMouseOverBarArea(MouseEventArgs e, Point pt, ref LayoutInfo li, ref AreaStates state)
	{
		BarLayoutInfo barLayoutInfo = (BarLayoutInfo)li;
		Syncfusion.Windows.Forms.Tools.Navigation.Bar bar = SelectedBars[barLayoutInfo.Index];
		if (state != AreaStates.Disabled && _parentBarItem.Tag != null && _popupMenu.IsShowing() && bar.AutoExpand)
		{
			state = AreaStates.Pressed;
			if (_parentBarItem.Tag != barLayoutInfo)
			{
				pt = barLayoutInfo.DropDown.Bounds.Location;
				e = new MouseEventArgs(e.Button, e.Clicks, pt.X, pt.Y, e.Delta);
				_popupMenu.Hide();
				HandleMouseClick(e);
			}
		}
		AreaStates areaState = _visualizer.States.GetAreaState(barLayoutInfo);
		li = barLayoutInfo.HitTest(pt);
		if (li.Area == HitTestAreas.BarDropDown && state == AreaStates.Hot)
		{
			_visualizer.States.SetAreaState(barLayoutInfo, _popupMenu.IsShowing() ? state : AreaStates.Active);
		}
		else if (areaState != AreaStates.Disabled && areaState != state)
		{
			_visualizer.States.SetAreaState(barLayoutInfo, state);
		}
	}

	private void HandleMouse(MouseEventArgs e, AreaStates normal)
	{
		HandleMouse(e, normal, normal);
	}

	private void HandleMouseClick(MouseEventArgs e)
	{
		Point point = new Point(e.X, e.Y);
		LayoutInfo layoutInfo = _visualizer.HitTest(point);
		if (layoutInfo == null)
		{
			return;
		}
		AreaStates areaState = _visualizer.States.GetAreaState(layoutInfo);
		if (areaState == AreaStates.Disabled)
		{
			return;
		}
		switch (layoutInfo.Area)
		{
		case HitTestAreas.HistoryBackButton:
			HistoryBack();
			break;
		case HitTestAreas.HistoryForwardButton:
			HistoryForward();
			break;
		case HitTestAreas.HistoryDropDownButton:
			ShowHistoryDropDown();
			break;
		case HitTestAreas.BarImage:
		case HitTestAreas.Space:
			if (AllowEditMode)
			{
				InEditingMode = true;
			}
			break;
		case HitTestAreas.DropDownButton:
			if (AllowEditMode)
			{
				InEditingMode = true;
				ShowRecentlyVisitedDropDown();
			}
			break;
		case HitTestAreas.Bar:
			HandleMouseClickOnBarArea(point, layoutInfo);
			break;
		case HitTestAreas.TextBox:
		case HitTestAreas.CustomButtons:
			break;
		}
	}

	private void HandleMouseClickOnBarArea(Point pt, LayoutInfo li)
	{
		BarLayoutInfo barLayoutInfo = (BarLayoutInfo)li;
		LayoutInfo layoutInfo = barLayoutInfo.HitTest(pt);
		Syncfusion.Windows.Forms.Tools.Navigation.Bar bar = SelectedBars[barLayoutInfo.Index];
		switch (layoutInfo.Area)
		{
		case HitTestAreas.BarDropDown:
			PopulateAndShowPopup(bar, barLayoutInfo);
			break;
		case HitTestAreas.BarImage:
		case HitTestAreas.BarText:
			SelectedBar = bar;
			break;
		}
	}

	private void PopulateAndShowPopup(Syncfusion.Windows.Forms.Tools.Navigation.Bar bar, BarLayoutInfo barLayout)
	{
		BarItems items = _parentBarItem.Items;
		BarCollection barCollection = new BarCollection();
		bool showShevron = barLayout.ShowShevron;
		int num = -1;
		items.SuspendEvents();
		bool flag = showShevron || (!ShowRootBarText && bar == _visualizer.Layouter.RootLayoutBar);
		if (flag)
		{
			for (int i = 0; i <= barLayout.Index; i++)
			{
				barCollection.Insert(0, SelectedBars[i]);
			}
			PopulateSubBarsPopup(barCollection, clearItems: true);
			num = items.Count;
		}
		PopulateSubBarsPopup(bar.Bars, !flag);
		if (flag && num < items.Count)
		{
			BarItem barItem = items[num];
			barItem = items[num];
			_parentBarItem.BeginGroupAt(barItem);
		}
		items.ResumeEvents(throwEvent: true);
		BarPopupEventArgs e = new BarPopupEventArgs(bar);
		OnBarPopup(e);
		if (!e.Cancel)
		{
			_parentBarItem.MaximumItemsToDisplay = e.MaximumItemsToDisplay;
			ShowBarPopup(barLayout);
		}
	}

	private void PopulateSubBarsPopup(BarCollection subBars, bool clearItems)
	{
		if (clearItems)
		{
			ClearPopup();
		}
		BarItems items = _parentBarItem.Items;
		Syncfusion.Windows.Forms.Tools.Navigation.Bar subBar;
		foreach (Syncfusion.Windows.Forms.Tools.Navigation.Bar subBar2 in subBars)
		{
			subBar = subBar2;
			PopulateSubBar(subBar, items, OnPopupMenuItemClick, delegate(BarItem bi)
			{
				bi.Tag = subBar;
				if (SelectedBars.Contains(subBar))
				{
					BoldBarItem(bi);
				}
			});
		}
	}

	private BarItem PopulateSubBar(Syncfusion.Windows.Forms.Tools.Navigation.Bar subBar, BarItems items, EventHandler eventHandler, ProcessBarItem processBarItem)
	{
		BarItem barItem = null;
		if (subBar.Visible)
		{
			barItem = new BarItem(subBar.Text);
			barItem.Image = ((subBar.Image != null) ? ((ImageExt)(Bitmap)subBar.Image) : null);
			barItem.DisabledImage = ((subBar.DisabledImage != null) ? ((ImageExt)(Bitmap)subBar.DisabledImage) : null);
			barItem.ImageIndex = subBar.ImageIndex;
			barItem.DisabledImageIndex = subBar.DisabledImageIndex;
			barItem.ImageList = ImageList;
			barItem.DisabledImageList = DisabledImageList;
			barItem.Enabled = subBar.Enabled;
			barItem.Click += eventHandler;
			barItem.CustomTextFont = Font;
			processBarItem?.Invoke(barItem);
			items.Add(barItem);
		}
		return barItem;
	}

	private void BoldBarItem(BarItem bi)
	{
		Font customTextFont = new Font(bi.CustomTextFont, FontStyle.Bold);
		bi.CustomTextFont = customTextFont;
	}

	private void ClearPopup()
	{
		BarItems items = _parentBarItem.Items;
		foreach (BarItem item in items)
		{
			item.Dispose();
		}
		items.Clear();
	}

	protected virtual void OnBarPopup(BarPopupEventArgs e)
	{
		if (this.BarPopup != null)
		{
			this.BarPopup(this, e);
		}
	}

	private void ShowBarPopup(BarLayoutInfo barLayout)
	{
		if (_parentBarItem.Items.Count > 0)
		{
			switch (VisualStyle)
			{
			case VisualStyles.Office2007:
				_parentBarItem.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;
				_parentBarItem.Office2007Theme = Office2007ColorTheme;
				_popupMenu.ForcedVistaStyle = false;
				break;
			case VisualStyles.Vista:
				_popupMenu.ForcedVistaStyle = true;
				break;
			}
			Rectangle bounds = barLayout.DropDown.Bounds;
			int num = bounds.Width / 2 + 1;
			Point pos = ((RightToLeft.Yes == RightToLeft) ? new Point(bounds.Right + num, bounds.Bottom) : new Point(bounds.Left - num, bounds.Bottom));
			_parentBarItem.Tag = barLayout;
			_popupMenu.Show(this, pos);
		}
		else
		{
			_popupMenu.Hide();
		}
	}

	private void OnPopupMenuItemClick(object sender, EventArgs e)
	{
		BarItem barItem = (BarItem)sender;
		if (barItem.Tag is Syncfusion.Windows.Forms.Tools.Navigation.Bar { Enabled: not false } bar)
		{
			SelectedBar = bar;
		}
	}

	private void OnPopupMenuClosed(object sender, EventArgs e)
	{
		List<LayoutInfo> areas = _visualizer.States.ClearAreaStates();
		_parentBarItem.Tag = null;
		_visualizer.UpdateLayout();
		Invalidate(areas);
	}

	private void HistoryBack()
	{
		try
		{
			InEditingMode = false;
			HistoryEnabled = false;
			HistoryManager.Undo();
		}
		finally
		{
			HistoryEnabled = true;
			UpdateHistoryButtonsState();
		}
	}

	private void HistoryForward()
	{
		try
		{
			InEditingMode = false;
			HistoryEnabled = false;
			HistoryManager.Redo();
		}
		finally
		{
			HistoryEnabled = true;
			UpdateHistoryButtonsState();
		}
	}

	private void ShowHistoryDropDown()
	{
		PopulateHistoryDropDown();
		if (_parentBarItem.Items.Count > 0)
		{
			Rectangle bounds = _visualizer.Layouter.GetLayout(HitTestAreas.HistoryDropDownButton).Bounds;
			Point pos = new Point(bounds.Left, base.ClientRectangle.Bottom);
			_popupMenu.Show(this, pos);
		}
	}

	private void PopulateHistoryDropDown()
	{
		if (HistoryManager is Syncfusion.Windows.Forms.Tools.Navigation.HistoryManager historyManager)
		{
			ClearPopup();
			BarItems items = _parentBarItem.Items;
			items.SuspendEvents();
			List<ICommand> list = new List<ICommand>(historyManager.Undoes);
			list.Reverse();
			PopulateHistoryCommands(items, list);
			BarItem barItem = PopulateSubBar(SelectedBar, items, null, null);
			if (barItem != null)
			{
				BoldBarItem(barItem);
			}
			PopulateHistoryCommands(items, historyManager.Redoes);
			items.ResumeEvents(throwEvent: true);
		}
	}

	private void PopulateHistoryCommands(BarItems items, IList<ICommand> undo)
	{
		Command cmd;
		foreach (Command item in undo)
		{
			cmd = item;
			PopulateSubBar(cmd.Bar, items, OnHistoryDropDownItemClick, delegate(BarItem bi)
			{
				bi.Tag = new HistoryDropDownInfo(cmd.Bar, items.Count);
			});
		}
	}

	private void OnHistoryDropDownItemClick(object sender, EventArgs e)
	{
		BarItem barItem = (BarItem)sender;
		HistoryDropDownInfo historyDropDownInfo = barItem.Tag as HistoryDropDownInfo;
		Syncfusion.Windows.Forms.Tools.Navigation.HistoryManager historyManager = HistoryManager as Syncfusion.Windows.Forms.Tools.Navigation.HistoryManager;
		if (historyDropDownInfo == null || historyManager == null)
		{
			return;
		}
		Syncfusion.Windows.Forms.Tools.Navigation.Bar bar = historyDropDownInfo.Bar;
		if (bar == null || bar == SelectedBar || !bar.Enabled)
		{
			return;
		}
		int index = historyDropDownInfo.Index;
		int count = historyManager.Undoes.Count;
		int num = Math.Abs(index - count);
		try
		{
			HistoryEnabled = false;
			if (index < count)
			{
				while (--num >= 0)
				{
					historyManager.Undo();
				}
			}
			else
			{
				while (--num >= 0)
				{
					historyManager.Redo();
				}
			}
		}
		finally
		{
			HistoryEnabled = true;
		}
	}

	private void AdwiseCustomButtons()
	{
		_customButtons.CollectionChanged += OnCustomButtonsCollectionChanged;
	}

	private void UnadwiseCustomButtons()
	{
		_customButtons.CollectionChanged -= OnCustomButtonsCollectionChanged;
	}

	private void OnCustomButtonsCollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		CustomButton customButton = e.Element as CustomButton;
		switch (e.Action)
		{
		case CollectionChangeAction.Add:
			base.Controls.Add(customButton);
			customButton.Layout += OnCustomButtonLayout;
			break;
		case CollectionChangeAction.Remove:
			customButton.Layout -= OnCustomButtonLayout;
			base.Controls.Remove(customButton);
			break;
		}
		_visualizer.UpdateLayout();
	}

	public void OnCustomButtonLayout(object sender, LayoutEventArgs e)
	{
		_visualizer.UpdateLayout();
	}

	private void OnEditingModeChanged()
	{
		_visualizer.UpdateLayout();
		if (AllowEditMode && InEditingMode)
		{
			if (TextBox.Parent != this)
			{
				TextBox.Parent = this;
			}
			UpdateTextBoxLayout();
			TextBox.Text = SelectedPath;
			TextBox.SelectAll();
			UpdateAutocompleteItems("\\");
			TextBox.Visible = true;
			TextBox.Focus();
		}
		else
		{
			TextBox.Visible = false;
		}
	}

	private void UpdateTextBoxLayout()
	{
		LayoutInfo layout = _visualizer.Layouter.GetLayout(HitTestAreas.TextBox);
		if (layout != null)
		{
			TextBox.Bounds = layout.Bounds;
		}
	}

	private void UpdateAutocompleteItems(string separator)
	{
		foreach (Syncfusion.Windows.Forms.Tools.Navigation.Bar bar in Bars)
		{
			IEnumerator<BarInfo> enumerator2 = GetAllPaths(bar, separator, string.Empty).GetEnumerator();
			while (enumerator2.MoveNext())
			{
				BarInfo current2 = enumerator2.Current;
				if (current2.Path != "\\")
				{
					_autoComplete.AddHistoryItem(current2.Path, current2.ImageIndex);
				}
			}
		}
	}

	private IEnumerable<BarInfo> GetAllPaths(Syncfusion.Windows.Forms.Tools.Navigation.Bar bar, string separator, string parentPath)
	{
		string path = (string.IsNullOrEmpty(parentPath) ? bar.Text : (parentPath + bar.Text));
		yield return new BarInfo(path, bar);
		foreach (Syncfusion.Windows.Forms.Tools.Navigation.Bar b in bar.Bars)
		{
			if (b.Enabled && b.Visible)
			{
				IEnumerator<BarInfo> enumerator2 = GetAllPaths(b, separator, path + separator).GetEnumerator();
				while (enumerator2.MoveNext())
				{
					yield return enumerator2.Current;
				}
			}
		}
	}

	private string GetSelectedPath(string separator)
	{
		return GetBarPath(null, separator);
	}

	private string GetBarPath(Syncfusion.Windows.Forms.Tools.Navigation.Bar bar, string separator)
	{
		List<Syncfusion.Windows.Forms.Tools.Navigation.Bar> selectedBars = SelectedBars;
		StringBuilder stringBuilder = new StringBuilder();
		foreach (Syncfusion.Windows.Forms.Tools.Navigation.Bar item in selectedBars)
		{
			stringBuilder.Append(item.Text);
			stringBuilder.Append(separator);
			if (bar == item)
			{
				break;
			}
		}
		int length = stringBuilder.Length;
		int length2 = separator.Length;
		if (length > length2)
		{
			stringBuilder.Remove(length - length2, length2);
		}
		return stringBuilder.ToString();
	}

	private void OnTextBoxLostFocus(object sender, EventArgs e)
	{
		InEditingMode = false;
	}

	private void OnTextBoxKeyDown(object sender, KeyEventArgs e)
	{
		e.Handled = true;
		switch (e.KeyCode)
		{
		case Keys.Escape:
			if (!_autoComplete.IsDropDownShowing())
			{
				InEditingMode = false;
			}
			break;
		case Keys.Return:
			if (!_autoComplete.IsDropDownShowing())
			{
				SelectPath(TextBox.Text);
			}
			break;
		case Keys.Down:
			if ((e.Modifiers & Keys.Alt) != Keys.None)
			{
				ShowRecentlyVisitedDropDown();
				break;
			}
			_autoComplete.AutoCompletePopup.RightToLeft = RightToLeft;
			_autoComplete.AutoCompletePopup.ShowPopup(GetPopupLocation());
			break;
		default:
			e.Handled = false;
			break;
		}
	}

	private Syncfusion.Windows.Forms.Tools.Navigation.Bar GetAvailableBarFromPath(string path, string separator)
	{
		Syncfusion.Windows.Forms.Tools.Navigation.Bar bar = null;
		string[] array = path.Split(new string[1] { separator }, StringSplitOptions.None);
		BarCollection bars = Bars;
		IEnumerator enumerator = array.GetEnumerator();
		while (enumerator.MoveNext())
		{
			string text = (string)enumerator.Current;
			if (text != separator)
			{
				int num = bars.FindByText(text);
				if (num < 0)
				{
					break;
				}
				bar = bars[num];
				bars = bar.Bars;
			}
		}
		return bar;
	}

	private void SelectPath(string path)
	{
		InEditingMode = false;
		Syncfusion.Windows.Forms.Tools.Navigation.Bar bar = (SelectedBar = GetAvailableBarFromPath(path, "\\"));
		AddBarToRecentList(bar);
	}

	private void OnAutoCompleteItemSelected(object sender, AutoCompleteItemEventArgs args)
	{
		SelectPath(args.SelectedValue);
	}

	private void OnAutoCompleteDropDownClosed(object sender, PopupClosedEventArgs e)
	{
		if (this.PopupClosed != null)
		{
			this.PopupClosed(this, EventArgs.Empty);
		}
	}

	private void OnAutoCompleteDropDownDisplayed(object sender, EventArgs e)
	{
		if (this.PopupShown != null)
		{
			this.PopupShown(this, EventArgs.Empty);
		}
	}

	private Point GetPopupLocation()
	{
		LayoutInfo layout = _visualizer.Layouter.GetLayout(HitTestAreas.Space);
		Point p = new Point(0, layout.Bounds.Bottom);
		if (RightToLeft.Yes != RightToLeft)
		{
			if (ShowHistoryButtons)
			{
				LayoutInfo layout2 = _visualizer.Layouter.GetLayout(HitTestAreas.HistoryDropDownButton);
				p.X = layout2.Bounds.Right;
			}
		}
		else
		{
			LayoutInfo layout3 = _visualizer.Layouter.GetLayout(HitTestAreas.DropDownButton);
			p.X = layout3.Bounds.Right;
		}
		return PointToScreen(p);
	}

	private void ShowRecentlyVisitedDropDown()
	{
		if (_recentList.Items.Count <= 0)
		{
			return;
		}
		LayoutInfo layout = _visualizer.Layouter.GetLayout(HitTestAreas.DropDownButton);
		Size size = PopupDropDownSize;
		if (size.IsEmpty)
		{
			bool flag = RightToLeft != RightToLeft.Yes;
			int num = -1;
			num += (flag ? (layout.Bounds.Left - base.ClientRectangle.Left) : (base.ClientRectangle.Width - layout.Bounds.Right));
			if (ShowHistoryButtons)
			{
				LayoutInfo layout2 = _visualizer.Layouter.GetLayout(HitTestAreas.HistoryDropDownButton);
				num -= (flag ? layout2.Bounds.Right : (base.ClientRectangle.Width - layout2.Bounds.Left));
			}
			Screen screen = Screen.FromControl(this);
			size = new Size(num, num * screen.Bounds.Height / screen.Bounds.Width);
			int num2 = 0;
			foreach (ListViewItem item in _recentList.Items)
			{
				int num3 = _recentList.GetItemRect(item.Index).Height;
				if (num2 + num3 <= size.Height)
				{
					num2 += num3;
					continue;
				}
				break;
			}
			size.Height = num2;
			_popupContainer.ClientSize = new Size(size.Width, size.Height);
		}
		else
		{
			_popupContainer.Width = size.Width;
			_popupContainer.Height = size.Height;
		}
		_popupContainer.RightToLeft = RightToLeft;
		_recentList.RightToLeftLayout = RightToLeft == RightToLeft.Yes;
		switch (VisualStyle)
		{
		case VisualStyles.Office2007:
			_scrollersFrame.OfficeColorScheme = (Office2007ColorScheme)Office2007ColorTheme;
			break;
		case VisualStyles.Vista:
			_scrollersFrame.OfficeColorScheme = Office2007ColorScheme.Managed;
			break;
		}
		_popupContainer.ShowPopup(GetPopupLocation());
		_columnHeader.Width = _recentList.Width;
	}

	private void OnRecentItemClicked(object sender, EventArgs e)
	{
		_popupContainer.HidePopup();
		InEditingMode = false;
		string path = _recentList.FocusedItem.Text;
		SelectPath(path);
	}

	private void AddBarToRecentList(Syncfusion.Windows.Forms.Tools.Navigation.Bar bar)
	{
		string barPath = GetBarPath(bar, "\\");
		if (barPath.Length > 0)
		{
			_recentList.Items.RemoveByKey(barPath);
			_recentList.Items.Insert(0, barPath, barPath, bar.ImageIndex);
		}
	}

	private void AdwiseRecentListPopup()
	{
		_popupContainer.Popup += OnRecentListPopupShown;
		_popupContainer.CloseUp += OnRecentListPopupClosed;
	}

	private void UnadwiseRecentListPopup()
	{
		_popupContainer.Popup -= OnRecentListPopupShown;
		_popupContainer.CloseUp -= OnRecentListPopupClosed;
	}

	private void OnRecentListPopupShown(object sender, EventArgs e)
	{
		Application.AddMessageFilter(this);
	}

	private void OnRecentListPopupClosed(object sender, EventArgs e)
	{
		Application.RemoveMessageFilter(this);
	}

	public bool IsValidBar(Syncfusion.Windows.Forms.Tools.Navigation.Bar bar)
	{
		return IsValidBar(bar, _bars, null);
	}

	protected bool IsValidBar(Syncfusion.Windows.Forms.Tools.Navigation.Bar bar, BarCollection bars, List<Syncfusion.Windows.Forms.Tools.Navigation.Bar> path)
	{
		bool flag = bars.Contains(bar);
		if (!flag)
		{
			foreach (Syncfusion.Windows.Forms.Tools.Navigation.Bar bar2 in bars)
			{
				if (IsValidBar(bar, bar2.Bars, path))
				{
					flag = true;
					path?.Insert(0, bar2);
					break;
				}
			}
		}
		else
		{
			path?.Add(bar);
		}
		return flag;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			UnadwiseRecentListPopup();
			if (_customButtons != null)
			{
				UnadwiseCustomButtons();
				_customButtons.Clear();
			}
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	protected override void OnPaint(PaintEventArgs pe)
	{
		base.OnPaint(pe);
		_visualizer.RenderControl(pe.Graphics);
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		_visualizer.UpdateLayout();
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		base.OnLayout(levent);
		OnLayoutChanged();
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		base.OnRightToLeftChanged(e);
		_visualizer.States.ClearAreaStates();
		_visualizer.UpdateLayout();
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		HandleMouse(e, AreaStates.Hot, AreaStates.Pressed);
	}

	protected override void OnMouseClick(MouseEventArgs e)
	{
		base.OnMouseClick(e);
		HandleMouseClick(e);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		HandleMouse(e, AreaStates.Pressed);
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		HandleMouse(e, AreaStates.Default);
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		if (_parentBarItem.Tag == null || !_popupMenu.IsShowing())
		{
			List<LayoutInfo> areas = _visualizer.States.ClearAreaStates();
			_visualizer.UpdateHistoryButtonsState(invalidate: false);
			Invalidate(areas);
		}
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		if (e.Control is CustomButton item && !CustomButtons.Contains(item))
		{
			CustomButtons.Add(item);
		}
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		base.OnControlRemoved(e);
		if (e.Control is CustomButton item && CustomButtons.Contains(item))
		{
			CustomButtons.Remove(item);
		}
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		LayoutInfo layout = _visualizer.Layouter.GetLayout(HitTestAreas.DropDownButton);
		if (layout != null)
		{
			height = layout.Bounds.Height;
			if (ShowHistoryButtons)
			{
				LayoutInfo layout2 = _visualizer.Layouter.GetLayout(HitTestAreas.HistoryBackButton);
				int num = layout2.Bounds.Height;
				if (layout2 != null && height < num)
				{
					height = num;
				}
			}
		}
		base.SetBoundsCore(x, y, width, height, specified);
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		SetBounds(0, 0, 0, 0, BoundsSpecified.Height);
	}

	void ISupportOffice2007Theme.EnableOffice2007Style()
	{
		VisualStyle = VisualStyles.Office2007;
	}

	public void BeginInit()
	{
		_initializing++;
	}

	public void EndInit()
	{
		if (_initializing > 0)
		{
			_initializing--;
		}
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		Point position = Cursor.Position;
		if (_popupHost.IsShowing() && 512 <= m.Msg && m.Msg <= 522 && _popupHost.Bounds.Contains(position))
		{
			position = _recentList.PointToClient(position);
			ListViewItem itemAt = _recentList.GetItemAt(position.X, position.Y);
			if (itemAt != null)
			{
				_recentList.SelectedItems.Clear();
				itemAt.Selected = true;
			}
		}
		return false;
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		this._textBox = new Syncfusion.Windows.Forms.Tools.TextBoxExt();
		this._popupMenu = new Syncfusion.Windows.Forms.Tools.NavigationView.PopupMenu(this.components);
		this._parentBarItem = new Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem();
		this._autoComplete = new Syncfusion.Windows.Forms.Tools.AutoComplete(this.components);
		this._popupContainer = new Syncfusion.Windows.Forms.PopupControlContainer();
		this._recentList = new System.Windows.Forms.ListView();
		this._columnHeader = new System.Windows.Forms.ColumnHeader();
		this._scrollersFrame = new Syncfusion.Windows.Forms.ScrollersFrame(this.components);
		this.autoCompleteDataColumnInfo1 = new Syncfusion.Windows.Forms.Tools.AutoCompleteDataColumnInfo("Column0", 100, true);
		this.autoCompleteDataColumnInfo2 = new Syncfusion.Windows.Forms.Tools.AutoCompleteDataColumnInfo("Column1", 100, true);
		((System.ComponentModel.ISupportInitialize)this._autoComplete).BeginInit();
		base.SuspendLayout();
		this._textBox.AcceptsReturn = true;
		this._textBox.Anchor = System.Windows.Forms.AnchorStyles.None;
		this._autoComplete.SetAutoComplete(this._textBox, Syncfusion.Windows.Forms.Tools.AutoCompleteModes.AutoSuggest);
		this._textBox.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this._textBox.Location = new System.Drawing.Point(0, 0);
		this._textBox.Name = "_textBox";
		this._textBox.OverflowIndicatorToolTipText = null;
		this._textBox.ShortcutsEnabled = false;
		this._textBox.Size = new System.Drawing.Size(100, 13);
		this._textBox.TabIndex = 0;
		this._textBox.Visible = false;
		this._textBox.WordWrap = false;
		this._textBox.KeyDown += new System.Windows.Forms.KeyEventHandler(OnTextBoxKeyDown);
		this._textBox.Leave += new System.EventHandler(OnTextBoxLostFocus);
		this._popupMenu.ParentBarItem = this._parentBarItem;
		this._popupMenu.Collapse += new System.EventHandler(OnPopupMenuClosed);
		this._autoComplete.AccessibleDescription = null;
		this._autoComplete.AccessibleName = null;
		this._autoComplete.AccessibleRole = System.Windows.Forms.AccessibleRole.None;
		this._autoComplete.AdjustHeightToItemCount = true;
		this._autoComplete.AutoAddItem = false;
		this._autoComplete.AutoSerialize = false;
		this._autoComplete.BorderType = Syncfusion.Windows.Forms.Tools.AutoCompleteBorderTypes.Fixed;
		this._autoComplete.CategoryName = string.Empty;
		this._autoComplete.Columns.Add(this.autoCompleteDataColumnInfo1);
		this._autoComplete.Columns.Add(this.autoCompleteDataColumnInfo2);
		this._autoComplete.PreferredHeight = 200;
		this._autoComplete.SelectedIndex = -1;
		this._autoComplete.SelectedValue = string.Empty;
		this._autoComplete.ShowCloseButton = true;
		this._autoComplete.ShowGripper = true;
		this._autoComplete.DropDownDisplayed += new System.EventHandler(OnAutoCompleteDropDownDisplayed);
		this._autoComplete.DropDownClosed += new Syncfusion.Windows.Forms.PopupClosedEventHandler(OnAutoCompleteDropDownClosed);
		this._autoComplete.AutoCompleteItemSelected += new Syncfusion.Windows.Forms.Tools.AutoCompleteItemEventHandler(OnAutoCompleteItemSelected);
		this._popupContainer.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this._popupContainer.Location = new System.Drawing.Point(0, 0);
		this._popupContainer.Name = "_popupContainer";
		this._popupContainer.Size = new System.Drawing.Size(200, 100);
		this._popupContainer.TabIndex = 0;
		this._popupContainer.Visible = false;
		this._recentList.Activation = System.Windows.Forms.ItemActivation.OneClick;
		this._recentList.AutoArrange = false;
		this._recentList.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this._recentList.Columns.AddRange(new System.Windows.Forms.ColumnHeader[1] { this._columnHeader });
		this._recentList.Dock = System.Windows.Forms.DockStyle.Fill;
		this._recentList.FullRowSelect = true;
		this._recentList.HeaderStyle = System.Windows.Forms.ColumnHeaderStyle.None;
		this._recentList.HideSelection = false;
		this._recentList.HoverSelection = true;
		this._recentList.Location = new System.Drawing.Point(0, 0);
		this._recentList.Name = "_recentList";
		this._recentList.ShowGroups = false;
		this._recentList.Size = new System.Drawing.Size(121, 97);
		this._recentList.TabIndex = 0;
		this._recentList.UseCompatibleStateImageBehavior = false;
		this._recentList.View = System.Windows.Forms.View.Details;
		this._recentList.ItemActivate += new System.EventHandler(OnRecentItemClicked);
		this._scrollersFrame.AttachedTo = this._recentList;
		this._scrollersFrame.SizeGripperVisibility = Syncfusion.Windows.Forms.SizeGripperVisibility.Hidden;
		this._scrollersFrame.VisualStyle = Syncfusion.Windows.Forms.ScrollBarCustomDrawStyles.Office2007;
		this.autoCompleteDataColumnInfo1.ColumnHeaderText = "Column0";
		this.autoCompleteDataColumnInfo1.ImageColumn = false;
		this.autoCompleteDataColumnInfo1.MatchingColumn = false;
		this.autoCompleteDataColumnInfo1.Visible = true;
		this.autoCompleteDataColumnInfo2.ColumnHeaderText = string.Empty;
		this.autoCompleteDataColumnInfo2.ImageColumn = true;
		this.autoCompleteDataColumnInfo2.MatchingColumn = false;
		this.autoCompleteDataColumnInfo2.Visible = true;
		((System.ComponentModel.ISupportInitialize)this._autoComplete).EndInit();
		base.ResumeLayout(false);
	}
}
