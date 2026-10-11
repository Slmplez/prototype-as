using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public abstract class BarRenderer : IBarRenderer, IPopupChild, INeedKeyboardMessages, INeedMouseMoveMessages, IPopupParent, IPopupItem, IDndTrackingControl, IMouseHookHLProcClient, IKeyboardProcHookClient, IDisposable, IMessageFilter
{
	[DocumentationExclude]
	internal class EfficientMenuTracker : IDisposable
	{
		private BarRenderer barRenderer;

		private PopupCloseType popupCloseType;

		private IDropDownItem dropDownItem;

		private bool callPostChildClosing;

		private bool traking;

		public bool Tracking
		{
			get
			{
				return traking;
			}
			set
			{
				if (traking != value)
				{
					traking = value;
					if (!traking)
					{
						PostSetCurrentTrackItem();
					}
				}
			}
		}

		internal EfficientMenuTracker(BarRenderer br)
		{
			barRenderer = br;
		}

		public void SetDelayedPostChildClosingArgs(PopupCloseType popupCloseType, IDropDownItem dropDownItem)
		{
			callPostChildClosing = true;
			this.popupCloseType = popupCloseType;
			this.dropDownItem = dropDownItem;
		}

		private void PostSetCurrentTrackItem()
		{
			if (callPostChildClosing)
			{
				callPostChildClosing = false;
				barRenderer.PostChildClosing(popupCloseType, dropDownItem);
			}
		}

		public virtual void Dispose()
		{
			Dispose(disposing: true);
			GC.SuppressFinalize(this);
		}

		protected virtual void Dispose(bool disposing)
		{
			barRenderer = null;
			dropDownItem = null;
		}
	}

	private const float DEF_EPS = 1E-08f;

	private const int DEF_HIDE_DROPDOWN_INTERVAL = 1000;

	private bool m_bNeedDropDown;

	private bool m_bIsKeyboardNavigation;

	private bool m_bActivateOnExit;

	private bool m_bNeedStop = true;

	private CustomizingPopupMenu customizationPopup;

	internal CustomizationDndHelper dndHelper;

	protected ArrayList barItemRenderers;

	private bool needLayout;

	protected RectangleF tdbounds;

	protected ToolTip tooltip;

	protected IBarControl parent;

	private Bar bar;

	protected CommandBarDockState barAlignment;

	protected bool ignoreMouseMove;

	protected int ignoreMouseMoveTick = int.MinValue;

	private bool ignoreMouseUp;

	internal IntPtr lastActiveWindow = IntPtr.Zero;

	protected int currentDndDropDown = -1;

	private BarItems invisibleBarItems;

	private MouseProcHookerUtil mouseHooker;

	private EfficientMenuTracker efficentTracker;

	private Point mouseDownPoint = Point.Empty;

	private bool themesEnabeld;

	private BarItem delayedPerformClickBarItem;

	private bool hintViaHotKeyPrefix;

	private bool m_bKeyboardNavigationStartedByMouse;

	private VisualStyle style = VisualStyle.OfficeXP;

	private bool m_bDragging;

	protected float padX = 2f;

	protected float padY = 2f;

	protected float separatorAreaX = 6f;

	private bool m_bSuppressIsMenuClickingChange;

	protected int currentHotTrackItem = -1;

	protected int currentTooltipItem = -1;

	private int customizingItemIndex = -1;

	protected int mouseDownItem = -1;

	private Timer ignoreMouseUpDownTimer;

	protected bool m_bXPMenuActive = true;

	private Timer m_hideDropDownTimer;

	private DropDownBarItemRenderer m_rendererToHide;

	private bool m_bIsMouseMoveProcessing;

	protected int selIndexOnDragStart = -1;

	protected bool internalDragging;

	private bool m_bActivateFormFromBar;

	private bool m_bShouldChangeSelectedItem = true;

	private bool IgnoreMouseUpDown
	{
		get
		{
			if (ignoreMouseUpDownTimer != null)
			{
				return true;
			}
			return false;
		}
		set
		{
			if (value)
			{
				if (ignoreMouseUpDownTimer == null)
				{
					ignoreMouseUpDownTimer = new Timer();
				}
				ignoreMouseUpDownTimer.Interval = 300;
				ignoreMouseUpDownTimer.Stop();
				ignoreMouseUpDownTimer.Enabled = true;
				ignoreMouseUpDownTimer.Tick += IgnoreMouseUpDownTimer_Tick;
			}
			else if (ignoreMouseUpDownTimer != null)
			{
				ignoreMouseUpDownTimer.Stop();
				ignoreMouseUpDownTimer.Dispose();
				ignoreMouseUpDownTimer = null;
			}
		}
	}

	public bool HintViaHotKeyPrefix
	{
		get
		{
			GetMainManager();
			bool result = SystemInformationExt.KeyboardCuesAlwaysOn || hintViaHotKeyPrefix || (!m_bKeyboardNavigationStartedByMouse && (IsKeyboardNavigationOn() || IsShowingDropdown())) || Customizing;
			foreach (BarItemRenderer barItemRenderer in barItemRenderers)
			{
				barItemRenderer.BarItem.HintViaHotKeyPrefix = result;
			}
			return result;
		}
		set
		{
			if (hintViaHotKeyPrefix != value)
			{
				hintViaHotKeyPrefix = value;
				if (parent != null)
				{
					parent.GetControl().Invalidate();
				}
			}
		}
	}

	[DocumentationExclude]
	internal BarItem CurrentHotTrackItem
	{
		get
		{
			if (currentHotTrackItem == -1)
			{
				return null;
			}
			IBarItemRenderer barItemRenderer = (IBarItemRenderer)barItemRenderers[currentHotTrackItem];
			return barItemRenderer.BarItem;
		}
	}

	protected internal bool NeedDropDown
	{
		get
		{
			return m_bNeedDropDown;
		}
		set
		{
			if (value != m_bNeedDropDown)
			{
				m_bNeedDropDown = value;
			}
		}
	}

	internal int CustomizingItemIndex
	{
		get
		{
			return customizingItemIndex;
		}
		set
		{
			if (Customizing && customizingItemIndex != value)
			{
				int num = customizingItemIndex;
				customizingItemIndex = value;
				InvalidateBarItems(new int[2] { num, customizingItemIndex });
				OnCustomizingItemIndexChanged(EventArgs.Empty);
			}
		}
	}

	public BarItem DelayedPerformClickOnBarItem
	{
		get
		{
			return delayedPerformClickBarItem;
		}
		set
		{
			delayedPerformClickBarItem = value;
		}
	}

	public bool NeedLayout => needLayout;

	public RectangleF Bounds
	{
		get
		{
			return ApplyDrawingTransform(tdbounds, apply: false);
		}
		set
		{
			bool flag = false;
			if (bar == null)
			{
				if (tdbounds != value)
				{
					tdbounds = value;
					flag = true;
				}
			}
			else
			{
				RectangleF rectangleF = ApplyDrawingTransform(value, apply: true);
				if (tdbounds != rectangleF)
				{
					tdbounds = rectangleF;
					flag = true;
				}
			}
			if (flag)
			{
				GraphicsProvider graphicsProvider = new GraphicsProvider(parent.GetControl());
				Layout(graphicsProvider);
				graphicsProvider.Dispose();
			}
		}
	}

	public VisualStyle Style
	{
		get
		{
			return style;
		}
		set
		{
			if (style == value)
			{
				return;
			}
			style = value;
			foreach (IBarItemRenderer barItemRenderer in barItemRenderers)
			{
				barItemRenderer.Style = value;
				if (barItemRenderer.BarItem is ParentBarItem parentBarItem)
				{
					parentBarItem.Style = value;
				}
			}
			parent.Style = value;
			OnBoundsAffected();
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			return themesEnabeld;
		}
		set
		{
			if (themesEnabeld == value)
			{
				return;
			}
			themesEnabeld = value;
			foreach (IBarItemRenderer barItemRenderer in barItemRenderers)
			{
				barItemRenderer.ThemesEnabled = value;
			}
			parent.ThemesEnabled = value;
			OnBoundsAffected();
		}
	}

	public bool LargeIcons => parent.LargeIcons;

	bool IPopupParent.IsRightToLeft => parent.IsRightToLeft;

	internal bool ActivateFormFromBar
	{
		get
		{
			return m_bActivateFormFromBar;
		}
		set
		{
			m_bActivateFormFromBar = value;
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
			if (m_bXPMenuActive != value)
			{
				m_bXPMenuActive = value;
			}
		}
	}

	protected virtual CustomizingPopupMenu CustomizationPopup
	{
		get
		{
			if (customizationPopup == null)
			{
				customizationPopup = CreateCustomizationPopup();
			}
			return customizationPopup;
		}
	}

	public BarItems InvisibleBarItems => invisibleBarItems;

	private MouseProcHookerUtil MouseHooker
	{
		get
		{
			if (mouseHooker != null)
			{
				mouseHooker = new MouseProcHookerUtil(parent.GetControl().Handle, this);
			}
			return mouseHooker;
		}
		set
		{
			mouseHooker = value;
		}
	}

	public CommandBarDockState Alignment
	{
		get
		{
			return barAlignment;
		}
		set
		{
			if (barAlignment != value)
			{
				barAlignment = value;
				OnBoundsAffected();
			}
		}
	}

	public bool IsVerticallyAligned
	{
		get
		{
			if (Alignment != CommandBarDockState.Left)
			{
				return Alignment == CommandBarDockState.Right;
			}
			return true;
		}
	}

	public bool Customizing
	{
		get
		{
			bool result = false;
			if (bar != null && bar.Manager != null)
			{
				result = bar.Manager.Customizing;
			}
			else if (parent != null)
			{
				result = parent.DesignMode;
			}
			return result;
		}
	}

	public bool DndCustomizing
	{
		get
		{
			if (bar != null && bar.Manager != null)
			{
				return bar.Manager.DndCustomizing;
			}
			return parent.DesignMode;
		}
	}

	public Bar Bar
	{
		get
		{
			return bar;
		}
		set
		{
			if (bar == value)
			{
				return;
			}
			if (bar != null)
			{
				Detach();
			}
			bar = value;
			if (bar == null)
			{
				return;
			}
			if (!DesignMode)
			{
				if (bar.manager != null)
				{
					MessageFilterEntryHelper.AddMessageFilter(this, ontop: false, bar.manager.Form);
				}
				else
				{
					MessageFilterEntryHelper.AddMessageFilter(this, ontop: false);
				}
			}
			bar.PropertyChanged += Bar_PropertyChanged;
			if (bar.Items != null)
			{
				bar.Items.CollectionChanged += BarItems_CollectionChanged;
				bar.Items.ItemPropertyChanged += Bar_PropertyChanged;
			}
			if (bar.Manager != null)
			{
				bar.Manager.CustomizingItemChanged += CustomizingItem_Changed;
				bar.Manager.PropertyChanged += Property_Changed;
				bar.Manager.CustomizationDone += CustomizationDone;
				bar.Manager.CustomizationBegin += CustomizationBegin;
				MainFrameBarManager mainFrameBarManager = bar.Manager.MainFrameBarManager;
				if (mainFrameBarManager != null)
				{
					mainFrameBarManager.CustomizationDone += CustomizationDone;
					mainFrameBarManager.CustomizationBegin += CustomizationBegin;
					ThemesEnabled = mainFrameBarManager.ThemesEnabled;
					Style = mainFrameBarManager.Style;
				}
				if (bar.Manager.DesignMode)
				{
					CustomizationPopup.dummyManager.SetUseHooksForMenus(useHooks: true);
				}
				else if (customizationPopup != null)
				{
					customizationPopup.dummyManager.SetUseHooksForMenus(useHooks: false);
				}
			}
			if (bar.Items != null)
			{
				OnBarItemsCollectionChanged();
			}
		}
	}

	public IPopupParent PopupParent
	{
		get
		{
			if (parent == null)
			{
				return null;
			}
			return parent.PopupParent;
		}
	}

	public BarItem SelectedItem
	{
		get
		{
			if (currentHotTrackItem == -1)
			{
				return null;
			}
			return Bar.Items[currentHotTrackItem];
		}
	}

	protected bool IsMainMenu => (bar.BarStyle & BarStyle.IsMainMenu) != 0;

	private bool IsFloating
	{
		get
		{
			if (bar != null && bar.Manager != null && bar.Manager.MainFrameBarManager != null && GetBarControl().GetControl() != null)
			{
				return bar.Manager.MainFrameBarManager.Form != GetBarControl().GetControl().FindForm();
			}
			return false;
		}
	}

	public bool DesignMode
	{
		get
		{
			bool flag = false;
			if (parent != null)
			{
				flag = parent.DesignMode;
				if (!flag && parent is BarControlInternal { Bar: not null } barControlInternal)
				{
					flag = barControlInternal.Bar.DesignMode;
				}
			}
			if (bar != null)
			{
				BarManager manager = bar.Manager;
				if (manager != null)
				{
					flag = manager.DesignMode;
				}
			}
			return flag;
		}
	}

	internal bool SuppressIsMenuClickingChange
	{
		get
		{
			return m_bSuppressIsMenuClickingChange;
		}
		private set
		{
			m_bSuppressIsMenuClickingChange = value;
		}
	}

	internal event EventHandler CustomizingItemIndexChanged;

	public abstract void GetPreferredSize(IGraphicsProvider gp, ref SizeF preferredSize);

	public virtual void InvalidateCachedTextSizes()
	{
		foreach (IBarItemRenderer barItemRenderer in barItemRenderers)
		{
			barItemRenderer.InvalidateCachedTextSizes();
		}
	}

	public abstract void ComputeBarItemPositions(IGraphicsProvider gp);

	public bool IsKeyboardNavigationOn()
	{
		if (bar != null)
		{
			return m_bIsKeyboardNavigation;
		}
		return false;
	}

	public bool CanStartKeyboardNavigation()
	{
		int i;
		for (i = 0; i < barItemRenderers.Count && (!((IBarItemRenderer)barItemRenderers[i]).Visible || !bar.Items[i].Enabled || bar.Items[i] is StaticBarItem); i++)
		{
		}
		if (i < barItemRenderers.Count)
		{
			return true;
		}
		return false;
	}

	public void StartKeyboardNavigation()
	{
		m_bNeedStop = false;
		m_bIsKeyboardNavigation = true;
		PopupManager.SetCurrentPopupClient(this, active: true, callKillFocusOnFocused: false);
		if (currentHotTrackItem == -1)
		{
			MoveSelection(MoveHint.moveFirst);
		}
		HintViaHotKeyPrefix = false;
		parent.GetControl().Invalidate();
		Form form = parent.GetControl().FindForm();
		if (form != null)
		{
			BarManager.OnStartingMenuNavigation(form, parent.GetControl());
		}
		m_bNeedStop = true;
	}

	public void StopKeyboardNavigation()
	{
		if (!m_bNeedStop)
		{
			return;
		}
		m_bIsKeyboardNavigation = false;
		PopupManager.SetCurrentPopupClient(this, active: false, callKillFocusOnFocused: false);
		SetCurrentTrackItem(-1, forceDropDown: false, setDefaultSelection: false);
		if (parent != null)
		{
			parent.GetControl().Invalidate();
			Form form = parent.GetControl().FindForm();
			if (form != null)
			{
				BarManager.OnStoppingMenuNavigation(form, parent.GetControl());
			}
		}
		m_bKeyboardNavigationStartedByMouse = false;
	}

	public void OnFormDeactivated()
	{
		if (!IsShowingDropdown())
		{
			StopKeyboardNavigation();
		}
	}

	private void IgnoreMouseUpDownTimer_Tick(object sender, EventArgs e)
	{
		IgnoreMouseUpDown = false;
	}

	protected virtual bool ShouldDrawVisible(BarItem item, bool excludeControlBasedItems)
	{
		if (excludeControlBasedItems && item is IRequiresControl && (Alignment == CommandBarDockState.Left || Alignment == CommandBarDockState.Right))
		{
			return false;
		}
		if (bar.Manager != null)
		{
			MainFrameBarManager mainFrameBarManager = bar.Manager.MainFrameBarManager;
			if (mainFrameBarManager != null)
			{
				return bar.ShouldDrawVisible(item);
			}
		}
		return item.Visible | Customizing;
	}

	public virtual Rectangle GetBarItemBounds(int index)
	{
		if (index < 0 || index >= barItemRenderers.Count)
		{
			return Rectangle.Empty;
		}
		IBarItemRenderer barItemRenderer = (IBarItemRenderer)barItemRenderers[index];
		return GetBoundsOf(barItemRenderer.BarItem);
	}

	protected void OnCustomizingItemIndexChanged(EventArgs e)
	{
		if (this.CustomizingItemIndexChanged != null)
		{
			this.CustomizingItemIndexChanged(this, e);
		}
	}

	protected void SetNeedLayout(bool needLayout)
	{
		this.needLayout = needLayout;
		if (this.needLayout && parent != null)
		{
			parent.GetControl().Invalidate();
		}
	}

	public virtual void Layout(IGraphicsProvider gp)
	{
		if (NeedLayout)
		{
			SetNeedLayout(needLayout: false);
		}
		ComputeBarItemPositions(gp);
	}

	protected virtual RectangleF ApplyDrawingTransform(RectangleF rect, bool apply)
	{
		using Graphics g = parent.GetGraphics();
		return ApplyTransform(g, Alignment, rect, apply);
	}

	protected virtual PointF ApplyDrawingTransform(PointF point, bool apply)
	{
		RectangleF rect = new RectangleF(point.X, point.Y, 0f, 0f);
		rect = ApplyDrawingTransform(rect, apply);
		return new PointF(rect.Left, rect.Top);
	}

	[Obsolete("Use RectangleF ApplyTransform( Graphics g, CommandBarDockState align, RectangleF rect, bool apply ) instead.")]
	public static RectangleF ApplyTransform(Graphics g, CommandBarDockState align, BarStyle barStyle, RectangleF rect, bool apply)
	{
		return ApplyTransform(g, align, rect, apply);
	}

	public static RectangleF ApplyTransform(Graphics g, CommandBarDockState align, RectangleF rect, bool apply)
	{
		if (align != CommandBarDockState.Left && align != CommandBarDockState.Right)
		{
			return rect;
		}
		PointF[] array = new PointF[2];
		Matrix matrix = null;
		if (apply)
		{
			g.RotateTransform(270f);
			array[0].X = rect.Right - 1f;
			array[0].Y = rect.Top;
			array[1].X = rect.Left;
			array[1].Y = rect.Bottom - 1f;
		}
		else
		{
			g.RotateTransform(-270f);
			array[0].X = rect.Left;
			array[0].Y = rect.Bottom - 1f;
			array[1].X = rect.Right - 1f;
			array[1].Y = rect.Top;
		}
		matrix = g.Transform;
		g.ResetTransform();
		matrix.TransformPoints(array);
		ref PointF reference = ref array[0];
		reference = Point.Round(array[0]);
		ref PointF reference2 = ref array[1];
		reference2 = Point.Round(array[1]);
		return new RectangleF(array[0].X, array[0].Y, array[1].X - array[0].X + 1f, array[1].Y - array[0].Y + 1f);
	}

	public BarRenderer(IBarControl parent)
	{
		this.parent = parent;
		barItemRenderers = new ArrayList();
		CreateToolTip();
		Control control = parent.GetControl();
		control.ParentChanged += ctlParent_ParentChanged;
		if (control.Parent != null && !DesignMode)
		{
			if (bar != null && bar.manager != null)
			{
				MessageFilterEntryHelper.AddMessageFilter(this, ontop: false, bar.manager.Form);
			}
			else
			{
				MessageFilterEntryHelper.AddMessageFilter(this, ontop: false);
			}
		}
		invisibleBarItems = new BarItems();
		efficentTracker = new EfficientMenuTracker(this);
		InitDropDownTimer();
	}

	protected void CreateToolTip()
	{
		DisposeTooltip();
		tooltip = new ToolTip();
		tooltip.StripAmpersands = true;
		tooltip.ShowAlways = true;
		tooltip.AutomaticDelay = 0;
		tooltip.AutoPopDelay = 0;
		tooltip.ReshowDelay = 0;
		tooltip.InitialDelay = 0;
	}

	protected virtual CustomizingPopupMenu CreateCustomizationPopup()
	{
		return new CustomizingPopupMenu();
	}

	public virtual void Detach()
	{
		CloseDropdowns();
		ResetDragging();
		ResetHotTracking();
		if (customizationPopup != null)
		{
			customizationPopup.Dispose();
			customizationPopup = null;
		}
		if (bar == null)
		{
			return;
		}
		if (dndHelper != null)
		{
			dndHelper.ParentItem = null;
		}
		bar.PropertyChanged -= Bar_PropertyChanged;
		if (bar.Items != null)
		{
			bar.Items.CollectionChanged -= BarItems_CollectionChanged;
			bar.Items.ItemPropertyChanged -= Bar_PropertyChanged;
		}
		if (bar.Manager != null)
		{
			bar.Manager.CustomizingItemChanged -= CustomizingItem_Changed;
			bar.Manager.PropertyChanged -= Property_Changed;
			bar.Manager.CustomizationDone -= CustomizationDone;
			bar.Manager.CustomizationBegin -= CustomizationBegin;
			MainFrameBarManager mainFrameBarManager = bar.Manager.MainFrameBarManager;
			if (mainFrameBarManager != null)
			{
				mainFrameBarManager.CustomizationDone -= CustomizationDone;
				mainFrameBarManager.CustomizationBegin -= CustomizationBegin;
			}
		}
		RemoveBarItemRenderers(forceRemove: true);
		Control control = parent.GetControl();
		Form form = control.FindForm();
		if (control != null)
		{
			control.ParentChanged -= ctlParent_ParentChanged;
		}
		if (form != null)
		{
			form.ParentChanged -= frmParent_ParentChanged;
		}
		if (!DesignMode)
		{
			MessageFilterEntryHelper.RemoveMessageFilter(this);
		}
	}

	~BarRenderer()
	{
		Dispose(disposing: false);
	}

	public void Dispose()
	{
		IgnoreMouseUpDown = false;
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	protected virtual void Dispose(bool disposing)
	{
		if (disposing)
		{
			DisposeTooltip();
			Detach();
			if (mouseHooker != null)
			{
				mouseHooker.HookMessages = false;
				mouseHooker.Dispose();
				mouseHooker = null;
			}
			efficentTracker.Dispose();
			efficentTracker = null;
			invisibleBarItems.Clear();
			invisibleBarItems = null;
			Control control = parent.GetControl();
			control.ParentChanged -= ctlParent_ParentChanged;
			barItemRenderers.Clear();
			barItemRenderers = null;
			parent = null;
			bar = null;
		}
	}

	protected void DisposeTooltip()
	{
		if (tooltip != null)
		{
			tooltip.Dispose();
			tooltip = null;
		}
	}

	public bool IsShowingDropdown()
	{
		if (currentHotTrackItem != -1 && currentHotTrackItem < barItemRenderers.Count)
		{
			return ((BarItemRenderer)barItemRenderers[currentHotTrackItem]).ShowingDropDown;
		}
		return false;
	}

	private MainFrameBarManager GetMainManager()
	{
		MainFrameBarManager mainFrameBarManager = Bar.Manager as MainFrameBarManager;
		if (mainFrameBarManager != null)
		{
			return mainFrameBarManager;
		}
		if (Bar.Manager is ChildFrameBarManager childFrameBarManager)
		{
			mainFrameBarManager = childFrameBarManager.MainFrameBarManager;
		}
		return mainFrameBarManager;
	}

	public virtual void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		MainFrameBarManager mainManager = GetMainManager();
		if (mainManager != null)
		{
			mainManager.ShouldHidePopup = false;
		}
		IDropDownItem dropDownItem = null;
		if (childUI is MenuGrid menuGrid)
		{
			m_bNeedDropDown = !menuGrid.IsEscapeKeyPressed;
		}
		if (currentDndDropDown != -1)
		{
			dropDownItem = barItemRenderers[currentDndDropDown] as IDropDownItem;
			currentDndDropDown = -1;
		}
		else if (currentHotTrackItem != -1 && currentHotTrackItem < barItemRenderers.Count)
		{
			dropDownItem = barItemRenderers[currentHotTrackItem] as IDropDownItem;
		}
		if (dropDownItem != null)
		{
			if (!efficentTracker.Tracking)
			{
				mouseDownItem = -1;
			}
			dropDownItem.ChildClosing(childUI, popupCloseType);
		}
		if (efficentTracker.Tracking)
		{
			efficentTracker.SetDelayedPostChildClosingArgs(popupCloseType, dropDownItem);
		}
		else
		{
			PostChildClosing(popupCloseType, dropDownItem);
		}
	}

	private void PostChildClosing(PopupCloseType popupCloseType, IDropDownItem dropDownItem)
	{
		if (!IsShowingDropdown())
		{
			MainFrameBarManager mainManager = GetMainManager();
			if (popupCloseType != PopupCloseType.Canceled)
			{
				StopKeyboardNavigation();
			}
			else if (mainManager != null && mainManager.bNeedStartKeyboardNavigation)
			{
				StartKeyboardNavigation();
			}
		}
		dropDownItem?.AfterChildClosing();
	}

	protected IDropDownItem GetCurrentRenderer()
	{
		IDropDownItem result = null;
		if (Customizing && currentDndDropDown != -1)
		{
			result = barItemRenderers[currentDndDropDown] as IDropDownItem;
		}
		else if (currentHotTrackItem != -1)
		{
			result = barItemRenderers[currentHotTrackItem] as IDropDownItem;
		}
		return result;
	}

	public virtual Point GetLocationForPopupAlignment(PopupRelativeAlignment prevAlign, out PopupRelativeAlignment newAlign)
	{
		IDropDownItem currentRenderer = GetCurrentRenderer();
		if (currentRenderer != null)
		{
			return currentRenderer.GetLocationForPopupAlignment(prevAlign, out newAlign);
		}
		newAlign = PopupRelativeAlignment.Default;
		return Point.Empty;
	}

	public virtual Point[] GetBorderOverlapCue(PopupRelativeAlignment rAlign)
	{
		IDropDownItem dropDownItem = null;
		if (Customizing && currentDndDropDown != -1)
		{
			dropDownItem = barItemRenderers[currentDndDropDown] as IDropDownItem;
		}
		else if (currentHotTrackItem != -1)
		{
			dropDownItem = barItemRenderers[currentHotTrackItem] as IDropDownItem;
		}
		return dropDownItem?.GetBorderOverlapCue(rAlign);
	}

	public virtual Control GetPopupParentControl()
	{
		Control control = null;
		IDropDownItem dropDownItem = null;
		if (Customizing && currentDndDropDown >= 0)
		{
			dropDownItem = barItemRenderers[currentDndDropDown] as IDropDownItem;
		}
		else if (currentHotTrackItem >= 0)
		{
			dropDownItem = barItemRenderers[currentHotTrackItem] as IDropDownItem;
		}
		if (dropDownItem != null)
		{
			control = dropDownItem.GetPopupParentControl();
		}
		if (control == null && parent != null)
		{
			control = parent.GetControl();
		}
		return control;
	}

	public virtual bool IsRelatedControl(Control control, bool askPopupParent)
	{
		IDropDownItem dropDownItem = null;
		if (Customizing && currentDndDropDown != -1)
		{
			dropDownItem = barItemRenderers[currentDndDropDown] as IDropDownItem;
		}
		else if (currentHotTrackItem != -1)
		{
			dropDownItem = barItemRenderers[currentHotTrackItem] as IDropDownItem;
		}
		Control control2 = null;
		if (dropDownItem != null)
		{
			control2 = dropDownItem.GetPopupParentControl();
		}
		bool flag = control2 != null && control == control2;
		if (!flag && parent != null)
		{
			flag = control == parent.GetControl();
		}
		if (!flag && dropDownItem != null)
		{
			flag = dropDownItem.IsRelatedControl(control);
		}
		return flag;
	}

	public virtual void HidePopup(PopupCloseType popupCloseType)
	{
		bool flag = IsShowingDropdown();
		if (flag)
		{
			IDropDownItem dropDownItem = barItemRenderers[currentHotTrackItem] as IDropDownItem;
			BarItemRenderer barItemRenderer = barItemRenderers[currentHotTrackItem] as BarItemRenderer;
			if (dropDownItem != null)
			{
				barItemRenderer.Active = false;
				barItemRenderer.DropDown(show: false, setDefaultSelection: false, null);
			}
		}
		if (flag)
		{
			StopKeyboardNavigation();
		}
	}

	public virtual bool IsShowing()
	{
		if (bar != null)
		{
			return PopupManager.ActivePopupClient == this;
		}
		return false;
	}

	private bool ProcessMouseMessage(Control destination, int msg)
	{
		if (msg == 512 || msg == 675 || msg == 673 || msg == 160 || msg == 674 || msg == 672)
		{
			if (destination != null && parent != null)
			{
				if (destination != parent.GetControl())
				{
					return IsRelatedControl(destination, askPopupParent: true);
				}
				return false;
			}
			return false;
		}
		VeryifyMouseBasedDeactivation(destination, msg);
		return false;
	}

	public virtual bool MouseMessage(ref Message m)
	{
		Control destination = Control.FromHandle(m.HWnd);
		return ProcessMouseMessage(destination, m.Msg);
	}

	bool IMouseHookHLProcClient.MouseHookProc(int msg, Point point, IntPtr hwnd, int wHitTestCode, int dwExtraInfo)
	{
		if (!DesignMode)
		{
			Control control = Control.FromHandle(hwnd);
			if ((parent != null && control == parent.GetControl()) || !IsRelatedControl(control, askPopupParent: true))
			{
				return ProcessMouseMessage(control, msg);
			}
		}
		return false;
	}

	public virtual bool KeyboardMessage(ref Message m)
	{
		Keys key = (Keys)m.WParam.ToInt32();
		if (Customizing)
		{
			return false;
		}
		return GetBarControl()?.NeedKey(key) ?? false;
	}

	bool IKeyboardProcHookClient.KeyboardHookProc(int wParam, int lParam)
	{
		bool flag = false;
		if (IsKeyboardNavigationOn())
		{
			if (wParam != 18)
			{
				if ((lParam & 0x80000000u) == 0)
				{
					flag = ProcessKeyDown((Keys)wParam);
				}
				if (!flag && !Customizing && (lParam & 0x80000000u) == 0)
				{
					PostProcessKeyDown(lParam, (Keys)wParam);
				}
				return flag;
			}
			if (Customizing)
			{
				flag = false;
			}
			else
			{
				IBarControl barControl = GetBarControl();
				if (barControl != null)
				{
					flag = barControl.NeedKey((Keys)wParam);
				}
			}
		}
		return flag;
	}

	private void PostProcessKeyDown(int lParam, Keys key)
	{
		if ((key == Keys.Menu || key == Keys.F10) && (lParam & 0x40000000) == 0 && bar != null && bar.Manager != null && bar.Manager.MainFrameBarManager != null)
		{
			if (currentHotTrackItem != -1)
			{
				OnHitEscape();
			}
			bool ignoreNextAltKeyUp = key == Keys.F10 && !IsShowingDropdown();
			bar.Manager.MainFrameBarManager.ignoreNextAltKeyUp = ignoreNextAltKeyUp;
		}
	}

	protected virtual void VeryifyMouseBasedDeactivation(Control destinationControl, int msg)
	{
		switch (msg)
		{
		case 33:
		case 513:
		case 516:
		case 519:
			if (IsRelatedControl(destinationControl, askPopupParent: true) || destinationControl is MenuGrid)
			{
				break;
			}
			goto case 161;
		case 161:
		case 164:
		case 167:
		case 522:
			if (!IsRelatedControl(destinationControl, askPopupParent: false) && !(destinationControl is MenuGrid))
			{
				if (msg == 522 && CurrentHotTrackItem != null)
				{
					SetCurrentTrackItem(-1, forceDropDown: false, setDefaultSelection: false);
				}
				HidePopup(PopupCloseType.Deactivated);
			}
			break;
		}
	}

	protected virtual IBarItemRenderer CreateNewRenderer(BarItem barItem)
	{
		IBarItemRenderer barItemRenderer = null;
		if (barItem is DropDownBarItem || barItem is ParentBarItem)
		{
			barItemRenderer = new DropDownBarItemRenderer(this);
		}
		else if (!(barItem is ComboBoxBarItem))
		{
			barItemRenderer = ((barItem is StaticBarItem) ? new StaticBarItemRenderer(this) : ((!(barItem is TextBoxBarItem)) ? new BarItemRenderer(this) : new TextBoxBarItemRenderer(this)));
		}
		else
		{
			ComboBoxBarItem comboBoxBarItem = barItem as ComboBoxBarItem;
			barItemRenderer = ((!comboBoxBarItem.Editable) ? new ComboBoxItemRenderer(this) : new EditableComboRenderer(this));
		}
		if (barItemRenderer != null)
		{
			barItemRenderer.BarItem = barItem;
			barItemRenderer.ThemesEnabled = ThemesEnabled;
			barItemRenderer.Style = Style;
		}
		return barItemRenderer;
	}

	private void BarItems_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		OnBarItemsCollectionChanged();
	}

	protected virtual void RemoveBarItemRenderers(bool forceRemove)
	{
		for (int num = barItemRenderers.Count - 1; num >= 0; num--)
		{
			IBarItemRenderer barItemRenderer = (IBarItemRenderer)barItemRenderers[num];
			if (forceRemove || bar.Items.IndexOf(barItemRenderer.BarItem) == -1)
			{
				RemoveRenderer(barItemRenderer, num);
			}
		}
	}

	void IBarRenderer.RemoveRenderer(IBarItemRenderer renderer)
	{
		int num = barItemRenderers.IndexOf(renderer);
		if (num != -1)
		{
			RemoveRenderer(renderer, num);
		}
	}

	void IBarRenderer.UpdateRenderers()
	{
		OnBarItemsCollectionChanged();
	}

	protected virtual void RemoveRenderer(IBarItemRenderer renderer, int curPos)
	{
		if (renderer != null)
		{
			BarItem barItem = renderer.BarItem;
			if (barItem != null)
			{
				barItem.PropertyChanged -= BarItem_PropertyChanged;
			}
			renderer.Active = false;
			renderer.DropDown(show: false, setDefaultSelection: false, null);
			barItemRenderers.RemoveAt(curPos);
			renderer.Dispose();
		}
	}

	protected virtual void OnBarItemsCollectionChanged()
	{
		CloseDropdowns();
		ResetHotTracking();
		currentTooltipItem = -1;
		if (Customizing)
		{
			SetCustomizingItemIndex();
		}
		int num = 0;
		BarItems items = bar.Items;
		if (items.Count < barItemRenderers.Count)
		{
			RemoveBarItemRenderers(forceRemove: false);
		}
		if (parent.GetControl().Parent != null && parent.GetControl().Parent is CommandBar { cdbParent: not null } commandBar)
		{
			commandBar.bRedockNeededInternal = true;
		}
		foreach (BarItem item in items)
		{
			bool flag = false;
			if (barItemRenderers.Count > num)
			{
				BarItem barItem2 = ((IBarItemRenderer)barItemRenderers[num]).BarItem;
				if (barItem2 != item)
				{
					RemoveRenderer((IBarItemRenderer)barItemRenderers[num], num);
					flag = true;
				}
			}
			else
			{
				flag = true;
			}
			if (flag)
			{
				IBarItemRenderer barItemRenderer = CreateNewRenderer(item);
				if (barItemRenderer != null)
				{
					barItemRenderers.Insert(num, barItemRenderer);
				}
				item.PropertyChanged += BarItem_PropertyChanged;
			}
			num++;
		}
		OnBoundsAffected();
		SetNeedLayout(needLayout: true);
	}

	protected virtual void OnBoundsAffected()
	{
		if (parent != null)
		{
			parent.OnBarBoundsAffected();
		}
	}

	protected virtual void CustomizationDone(object sender, EventArgs e)
	{
		if (sender == bar.Manager && sender != null)
		{
			CloseDropdowns();
		}
		CustomizingItemIndex = -1;
		OnBoundsAffected();
		parent.GetControl().Invalidate();
	}

	protected virtual void CustomizationBegin(object sender, EventArgs e)
	{
		OnBoundsAffected();
		parent.GetControl().Invalidate();
	}

	private void CustomizingItem_Changed(object sender, EventArgs e)
	{
		SetCustomizingItemIndex();
	}

	private void Property_Changed(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "ThemesEnabled")
		{
			ThemesEnabled = (bool)e.NewValue;
		}
		else if (e.PropertyName == "Style")
		{
			Style = (VisualStyle)e.NewValue;
		}
		OnBoundsAffected();
	}

	protected virtual void Bar_PropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "Visible" && parent != null && parent.GetControl().Parent is CommandBar { cdbParent: not null } commandBar)
		{
			commandBar.bRedockNeededInternal = true;
		}
		OnBoundsAffected();
	}

	private void SetCustomizingItemIndex()
	{
		if (bar.Manager != null)
		{
			BarItem customizingItem = bar.Manager.CustomizingItem;
			if (customizingItem != null)
			{
				int num = bar.Items.IndexOf(customizingItem);
				CustomizingItemIndex = num;
			}
			else
			{
				CustomizingItemIndex = -1;
			}
		}
		else
		{
			CustomizingItemIndex = -1;
		}
	}

	protected virtual void InvalidateBarItems(int[] barItemIndices)
	{
		if (!parent.GetControl().Visible || !parent.GetControl().IsHandleCreated)
		{
			return;
		}
		foreach (int num in barItemIndices)
		{
			RectangleF empty = RectangleF.Empty;
			if (num != -1 && num < barItemRenderers.Count)
			{
				empty = ((IBarItemRenderer)barItemRenderers[num]).Bounds;
				RectangleF rect = new RectangleF((float)Math.Floor(empty.Left), (float)Math.Floor(empty.Top), (float)Math.Ceiling(empty.Right) - (float)Math.Floor(empty.Left) + 1f, (float)Math.Ceiling(empty.Bottom) - (float)Math.Floor(empty.Top) + 1f);
				parent.OnRepaint(ApplyDrawingTransform(rect, apply: false));
			}
		}
	}

	protected virtual void BarItem_PropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "SeparatorIndices")
		{
			return;
		}
		BarItem value = (BarItem)sender;
		int num = bar.Items.IndexOf(value);
		if (barItemRenderers.Count > num)
		{
			((IBarItemRenderer)barItemRenderers[num]).BarItemPropertyChanged(e);
			if (e.PropertyChangeEffect == PropertyChangeEffect.NeedLayout)
			{
				OnBoundsAffected();
			}
			if (parent.GetControl().IsHandleCreated && parent.GetControl().Visible)
			{
				RectangleF bounds = ((IBarItemRenderer)barItemRenderers[num]).Bounds;
				parent.OnRepaint(ApplyDrawingTransform(bounds, apply: false));
			}
		}
	}

	public bool PreFilterMessage(ref Message m)
	{
		if (m.Msg >= 256 && m.Msg <= 264 && m.Msg != 258 && ((IKeyboardProcHookClient)this).KeyboardHookProc((int)m.WParam.ToInt64(), (int)m.LParam.ToInt64()))
		{
			return true;
		}
		if (parent is XPToolBar { TopLevelControl: not null } xPToolBar && xPToolBar.TopLevelControl.Focused)
		{
			if (m.Msg == 260)
			{
				if ((int)m.WParam == 18)
				{
					HintViaHotKeyPrefix = true;
				}
			}
			else if (m.Msg == 261 && (int)m.WParam == 18)
			{
				HintViaHotKeyPrefix = false;
				Control control = parent.BarHost as Control;
				Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(control.Handle, 261, 0, 0);
			}
		}
		return false;
	}

	public virtual void OnPaint(Graphics g, Rectangle clipRect)
	{
		if (NeedLayout)
		{
			GraphicsProvider graphicsProvider = new GraphicsProvider(g);
			Layout(graphicsProvider);
			graphicsProvider.Dispose();
		}
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled && parent.ShouldDelegateBGDrawingToParentWhenThemed())
		{
			IntPtr hdc = g.GetHdc();
			try
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.RECT prc = new Syncfusion.Runtime.InteropServices.NativeMethods.RECT(clipRect);
				Syncfusion.Runtime.InteropServices.NativeMethods.DrawThemeParentBackground(GetControl().Handle, hdc, ref prc);
			}
			finally
			{
				g.ReleaseHdc(hdc);
			}
		}
		if (barItemRenderers.Count > 0)
		{
			Region clip = g.Clip;
			Region region = new Region(Bounds);
			g.SetClip(region, CombineMode.Intersect);
			foreach (IBarItemRenderer barItemRenderer in barItemRenderers)
			{
				barItemRenderer.OnPaint(g, clipRect);
			}
			DrawAdornments(g);
			g.SetClip(clip, CombineMode.Replace);
			region.Dispose();
		}
		if (dndHelper != null)
		{
			dndHelper.PaintCueCursor(g);
		}
	}

	protected virtual void DrawAdornments(Graphics g)
	{
		bool flag = false;
		bool flag2 = false;
		foreach (IBarItemRenderer barItemRenderer3 in barItemRenderers)
		{
			bool flag3 = barItemRenderer3.Visible && ShouldDrawVisible(barItemRenderer3.BarItem, excludeControlBasedItems: false);
			if (bar.IsGroupBeginning(barItemRenderer3.BarItem) && !flag && flag2 && (flag3 || barItemRenderer3.BarItem.Manager == null || barItemRenderer3.BarItem.Manager is MainFrameBarManager))
			{
				flag = true;
				barItemRenderer3.DrawSeparator(g);
			}
			if (flag3)
			{
				flag = false;
				flag2 = true;
			}
		}
		if (Customizing && CustomizingItemIndex != -1 && (bar.Manager == null || bar.Items.Contains(bar.Manager.CustomizingItem)))
		{
			IBarItemRenderer barItemRenderer2 = barItemRenderers[CustomizingItemIndex] as IBarItemRenderer;
			RectangleF bounds = barItemRenderer2.Bounds;
			bounds = ApplyDrawingTransform(bounds, apply: false);
			bounds.Width -= 2f;
			if (barItemRenderer2 is ComboBoxItemRenderer renderer)
			{
				bounds = CorrectComboSelectionBounds(renderer, bounds);
			}
			bounds.Height -= 2f;
			bounds.Offset(1f, 1f);
			g.DrawRectangle(new Pen(SystemColors.ControlText, 2f), Rectangle.Round(bounds));
		}
	}

	public static bool IsInteger(float value)
	{
		float num = (float)Math.Round(value, 0);
		return Math.Abs(num - value) < 1E-08f;
	}

	private RectangleF CorrectComboSelectionBounds(ComboBoxItemRenderer renderer, RectangleF bounds)
	{
		if (renderer == null)
		{
			throw new ArgumentNullException("renderer ");
		}
		RectangleF result = bounds;
		result.Offset(3f, 0f);
		result.Width -= 5f;
		return result;
	}

	protected virtual void OnStartDragging()
	{
		if (Bar != null && Bar.Manager != null)
		{
			Bar.Manager.CustomDrag = true;
		}
		m_bDragging = true;
		CloseDropdowns();
	}

	protected virtual void OnEndDragging()
	{
		ResetDragging();
		CloseDropdowns();
		m_bDragging = false;
	}

	protected virtual void CloseDropdowns()
	{
		foreach (IBarItemRenderer barItemRenderer in barItemRenderers)
		{
			barItemRenderer.Active = false;
			barItemRenderer.DropDown(show: false, setDefaultSelection: false, null);
		}
	}

	public virtual void OnMouseMove(MouseEventArgs e)
	{
		bool flag = false;
		if (Environment.TickCount < ignoreMouseMoveTick)
		{
			return;
		}
		if (ignoreMouseMove)
		{
			ignoreMouseMove = false;
		}
		else
		{
			if (mouseDownPoint != Point.Empty && mouseDownPoint == new Point(e.X, e.Y))
			{
				return;
			}
			mouseDownPoint = Point.Empty;
			if (parent.RequiresActiveFormForMouseTrack())
			{
				if (bar.Manager != null && bar.Manager.MainFrameBarManager != null)
				{
					flag = bar.Manager.MainFrameBarManager.BarItemActiveFormCheckOverride;
					if (!bar.Manager.DesignMode)
					{
						if (ActivateFormFromBar)
						{
							if (Form.ActiveForm != bar.Manager.MainFrameBarManager.Form && (!bar.Manager.IsCustomizationDialogCreated || Form.ActiveForm != bar.Manager.CustomizationDialog) && !flag)
							{
								return;
							}
						}
						else
						{
							BarControlInternal barControlInternal = (BarControlInternal)parent;
							if (barControlInternal != null && ((bar.Manager.IsCustomizationDialogCreated && Form.ActiveForm == null) || !barControlInternal.XPMenuActive))
							{
								return;
							}
						}
					}
				}
				else
				{
					Form form = null;
					Form activeForm = Form.ActiveForm;
					if (activeForm != null)
					{
						form = activeForm.ActiveMdiChild;
					}
					Form form2 = GetControl().FindForm();
					if (activeForm != form2 && form != form2 && form2 != null && form2.Owner != activeForm)
					{
						Control control = form2;
						while (control != null && control != activeForm)
						{
							control = control.Parent;
						}
						if (control == null)
						{
							return;
						}
					}
				}
			}
			IPopupChild activePopupClient = PopupManager.ActivePopupClient;
			if (activePopupClient != null && activePopupClient != this && (activePopupClient.GetPopupParentControl() == null || WinFormsUtils.IsParent(activePopupClient.GetPopupParentControl(), GetControl())))
			{
				IPopupParent popupParent = activePopupClient.PopupParent;
				while (popupParent != null && popupParent != this)
				{
					popupParent = ((!(popupParent is IPopupChild)) ? null : ((IPopupChild)popupParent).PopupParent);
				}
				if (popupParent == null)
				{
					return;
				}
			}
			if (barItemRenderers.Count <= 0)
			{
				return;
			}
			Point point = new Point(e.X, e.Y);
			if ((bar.AllowCustomizing || DesignMode) && Customizing && e.Button == MouseButtons.Left && customizingItemIndex != -1 && mouseDownItem == customizingItemIndex)
			{
				BarItem barItem = bar.Items[customizingItemIndex];
				BarManager manager = bar.Manager;
				if (manager == null || !manager.CanStartDragging(barItem))
				{
					return;
				}
				OnStartDragging();
				ValidateDndHelper();
				dndHelper.Dragging = true;
				BarItemDndData data = new BarItemDndData(barItem, bar);
				DragDropEffects dragDropEffects = DragDropEffects.None;
				try
				{
					dragDropEffects = GetControl().DoDragDrop(new DataObject(typeof(BarItem).FullName, data), GetAllowedDragEffects());
				}
				catch (Exception)
				{
				}
				if (bar.Manager.MainFrameBarManager != null)
				{
					bar.Manager.MainFrameBarManager.EndDragAndDropCustomizing();
				}
				OnEndDragging();
				if (dndHelper.Dragging)
				{
					if (dragDropEffects == DragDropEffects.Move)
					{
						dndHelper.RemoveItem(barItem);
						CustomizingItemIndex = -1;
					}
					dndHelper.Dragging = false;
				}
			}
			else
			{
				if (Customizing)
				{
					return;
				}
				RectangleF rectangleF = ApplyDrawingTransform(new RectangleF(point, new SizeF(0f, 0f)), apply: true);
				point = new Point((int)Math.Round(rectangleF.Left), (int)Math.Round(rectangleF.Top));
				if (currentHotTrackItem != -1)
				{
					IBarItemRenderer barItemRenderer = (IBarItemRenderer)barItemRenderers[currentHotTrackItem];
					if (barItemRenderer.Active && !barItemRenderer.ShowingDropDown && barItemRenderer.Bounds.Contains(point))
					{
						barItemRenderer.OnMouseMove(point);
						return;
					}
				}
				int num = -1;
				if (tdbounds.Contains(point))
				{
					num = HitTestBarItems(point);
				}
				if ((!IsKeyboardNavigationOn() && !IsShowingDropdown()) || (num >= 0 && (mouseDownItem < 0 || m_bNeedDropDown)))
				{
					m_bIsMouseMoveProcessing = !IsMainMenu;
					bool suppressIsMenuClickingChange = SuppressIsMenuClickingChange;
					SuppressIsMenuClickingChange = true;
					SetCurrentTrackItem(num, forceDropDown: false, setDefaultSelection: false);
					SuppressIsMenuClickingChange = suppressIsMenuClickingChange;
					m_bIsMouseMoveProcessing = false;
				}
				if (num == currentTooltipItem)
				{
					return;
				}
				currentTooltipItem = num;
				bool flag2 = false;
				string text = string.Empty;
				BarItem barItem2 = null;
				if (num != -1)
				{
					barItem2 = bar.Items[num];
					bool flag3 = true;
					if (barItem2 is ParentBarItem)
					{
						object obj = barItemRenderers[num];
						BarItemRenderer barItemRenderer2 = obj as BarItemRenderer;
						flag3 = !barItemRenderer2.ShowingDropDown;
					}
					if (flag3 && barItem2.ShowTooltip)
					{
						if (barItem2.Tooltip != string.Empty)
						{
							text = barItem2.Tooltip;
						}
						else if (!(barItem2 is StaticBarItem))
						{
							text = barItem2.Text;
							if (barItem2.Shortcut != Shortcut.None)
							{
								text += " (";
								text += barItem2.ShortcutText;
								text += ")";
							}
						}
						flag2 = true;
					}
				}
				Control control2 = parent.GetControl();
				Form form3 = control2.FindForm();
				bool flag4 = false;
				if (form3 != null)
				{
					Control control3 = form3.Parent;
					if (control3 != null)
					{
						DockHost dockHost = control3 as DockHost;
						flag4 = null != dockHost;
					}
				}
				XPToolBar xPToolBar = null;
				if (parent.BarHost is XPToolBar)
				{
					xPToolBar = parent.BarHost as XPToolBar;
					flag = xPToolBar.BarItemActiveFormCheckOverride;
				}
				if (flag4 || form3 == Form.ActiveForm || (Form.ActiveForm != null && form3 == Form.ActiveForm.ActiveMdiChild) || IsFloating || flag)
				{
					if (parent != null)
					{
						CreateToolTip();
					}
					if (flag)
					{
						tooltip.SetToolTip(control2, string.Empty);
					}
					tooltip.Active = false;
					tooltip.SetToolTip(control2, flag2 ? text : string.Empty);
					tooltip.Active = true;
					SuperToolTip.SetToolTips(control2, barItem2);
				}
			}
		}
	}

	public void SetHotTrack(BarItemRenderer renderer, bool hotTrack)
	{
		if (hotTrack)
		{
			SetCurrentTrackItem(barItemRenderers.IndexOf(renderer), forceDropDown: false, setDefaultSelection: false);
		}
		else if (barItemRenderers.IndexOf(renderer) == currentHotTrackItem)
		{
			ResetHotTracking();
		}
	}

	private void InitDropDownTimer()
	{
		m_hideDropDownTimer = new Timer();
		m_hideDropDownTimer.Interval = 1000;
		m_hideDropDownTimer.Tick += m_hideDropDownTimer_Tick;
	}

	private void m_hideDropDownTimer_Tick(object sender, EventArgs e)
	{
		m_hideDropDownTimer.Stop();
		if (m_rendererToHide != null)
		{
			PerformHidingDropDown();
		}
	}

	private bool StartHidingDropDown(IBarItemRenderer renderer)
	{
		bool result = false;
		DropDownBarItemRenderer dropDownBarItemRenderer = renderer as DropDownBarItemRenderer;
		if (!IsMainMenu)
		{
			if (m_bIsMouseMoveProcessing)
			{
				if (!m_hideDropDownTimer.Enabled && dropDownBarItemRenderer != null && dropDownBarItemRenderer.IsShowing())
				{
					MainFrameBarManager mainManager = GetMainManager();
					if (mainManager != null && mainManager.PopupCloseTimer > 0)
					{
						m_hideDropDownTimer.Interval = mainManager.PopupCloseTimer;
						m_rendererToHide = dropDownBarItemRenderer;
						m_hideDropDownTimer.Start();
						result = true;
					}
				}
			}
			else if (m_hideDropDownTimer.Enabled)
			{
				StopHidingDropDown();
			}
		}
		return result;
	}

	protected internal void CancelHidingDropDown()
	{
		if (!IsMainMenu && m_hideDropDownTimer.Enabled)
		{
			BarItemRenderer barItemRenderer = ((CurrentHotTrackItem == null) ? null : (barItemRenderers[currentHotTrackItem] as BarItemRenderer));
			if (m_rendererToHide != null && barItemRenderer != null && barItemRenderer != m_rendererToHide)
			{
				barItemRenderer.HotTrack = false;
				barItemRenderer.BarItem.PerformUnselected();
			}
			if (m_rendererToHide != null && m_rendererToHide.ShowingDropDown)
			{
				m_hideDropDownTimer.Stop();
				currentHotTrackItem = barItemRenderers.IndexOf(m_rendererToHide);
				m_rendererToHide = null;
			}
		}
	}

	private void StopHidingDropDown()
	{
		if (m_rendererToHide != null)
		{
			m_rendererToHide.HotTrack = false;
			m_rendererToHide.BarItem.PerformUnselected();
			m_rendererToHide = null;
		}
		m_hideDropDownTimer.Stop();
	}

	private void PerformHidingDropDown()
	{
		BarItemRenderer barItemRenderer = ((CurrentHotTrackItem == null) ? null : (barItemRenderers[currentHotTrackItem] as BarItemRenderer));
		if (m_rendererToHide == barItemRenderer)
		{
			return;
		}
		if (m_rendererToHide != null && m_rendererToHide != barItemRenderer)
		{
			m_rendererToHide.HotTrack = false;
			m_rendererToHide.BarItem.PerformUnselected();
		}
		if (barItemRenderer != null)
		{
			if (barItemRenderer is DropDownBarItemRenderer)
			{
				ignoreMouseMove = true;
				ignoreMouseMoveTick = Environment.TickCount + 100;
				barItemRenderer.DropDown(show: true, setDefaultSelection: false, null);
			}
			else
			{
				m_bNeedDropDown = false;
				StopKeyboardNavigation();
			}
		}
	}

	internal void SetCurrentTrackItem(int newHitBarItem, bool forceDropDown, bool setDefaultSelection, Queue pbiQueue)
	{
		if (barItemRenderers == null)
		{
			return;
		}
		if (newHitBarItem >= barItemRenderers.Count)
		{
			newHitBarItem = -1;
		}
		if (newHitBarItem == -1)
		{
			m_bNeedDropDown = false;
		}
		if (newHitBarItem != currentHotTrackItem)
		{
			efficentTracker.Tracking = true;
			bool flag = forceDropDown;
			if (currentHotTrackItem != -1)
			{
				IBarItemRenderer barItemRenderer = (IBarItemRenderer)barItemRenderers[currentHotTrackItem];
				parent.OnRepaint(Rectangle.Ceiling(ApplyDrawingTransform(Rectangle.Ceiling(barItemRenderer.Bounds), apply: false)));
				if (StartHidingDropDown(barItemRenderer))
				{
					flag = false;
				}
				else if (m_rendererToHide != barItemRenderer || (m_rendererToHide != null && !m_rendererToHide.IsShowing()))
				{
					flag |= m_bNeedDropDown;
					barItemRenderer.HotTrack = false;
					barItemRenderer.BarItem.PerformUnselected();
				}
			}
			currentHotTrackItem = newHitBarItem;
			if (newHitBarItem != -1 && !Customizing)
			{
				IBarItemRenderer barItemRenderer2 = barItemRenderers[newHitBarItem] as IBarItemRenderer;
				barItemRenderer2.HotTrack = true;
				if (barItemRenderer2.BarItem.Enabled)
				{
					barItemRenderer2.BarItem.PerformSelected();
					BarItemsContainerAccessibleObject barItemsContainerAccessibleObject = parent.GetControl().AccessibilityObject as BarItemsContainerAccessibleObject;
					int accessibleObjectIndexFromBarItem = barItemsContainerAccessibleObject.GetAccessibleObjectIndexFromBarItem(barItemRenderer2.BarItem);
					if (accessibleObjectIndexFromBarItem != -1)
					{
						barItemsContainerAccessibleObject.NotifyClients(AccessibleEvents.Focus, accessibleObjectIndexFromBarItem);
					}
				}
				if (flag && !m_hideDropDownTimer.Enabled)
				{
					ignoreMouseMove = true;
					ignoreMouseMoveTick = Environment.TickCount + 100;
					barItemRenderer2.DropDown(flag, setDefaultSelection, pbiQueue);
				}
			}
			efficentTracker.Tracking = false;
			if (m_bShouldChangeSelectedItem)
			{
				MainFrameBarManager mainManager = GetMainManager();
				if (mainManager != null)
				{
					mainManager.SelectedItem = CurrentHotTrackItem;
				}
			}
		}
		else if (forceDropDown)
		{
			((IBarItemRenderer)barItemRenderers[newHitBarItem]).DropDown(show: true, setDefaultSelection, pbiQueue);
		}
	}

	public void SetCurrentTrackItem(int newHitBarItem, bool forceDropDown, bool setDefaultSelection)
	{
		SetCurrentTrackItem(newHitBarItem, forceDropDown, setDefaultSelection, null);
	}

	public int HitTestBarItems(PointF mousePosition)
	{
		int num = 0;
		int result = -1;
		foreach (IBarItemRenderer barItemRenderer in barItemRenderers)
		{
			if (barItemRenderer.Visible && barItemRenderer.HitTest(mousePosition))
			{
				result = num;
				break;
			}
			num++;
		}
		return result;
	}

	public virtual void OnMouseLeave(EventArgs e)
	{
		bool flag = true;
		if (currentHotTrackItem >= 0 && barItemRenderers[currentHotTrackItem] is EditableComboRenderer editableComboRenderer)
		{
			flag = !editableComboRenderer.HitTestInternal();
		}
		if (!IsShowingDropdown())
		{
			StopKeyboardNavigation();
		}
		if (currentHotTrackItem != -1 && !((IBarItemRenderer)barItemRenderers[currentHotTrackItem]).Active && !IsKeyboardNavigationOn() && !IsShowingDropdown() && flag)
		{
			ResetHotTracking();
		}
		if (parent.GetControl().FindForm() == Form.ActiveForm || (Form.ActiveForm != null && parent.GetControl().FindForm() == Form.ActiveForm.ActiveMdiChild) || IsFloating)
		{
			tooltip.SetToolTip(parent.GetControl(), "");
		}
		currentTooltipItem = -1;
	}

	protected virtual bool MoveSelection(MoveHint hint)
	{
		bool result = false;
		if (barItemRenderers != null)
		{
			switch (hint)
			{
			case MoveHint.moveFirst:
			{
				int j;
				for (j = 0; j < barItemRenderers.Count && (!((IBarItemRenderer)barItemRenderers[j]).Visible || !bar.Items[j].Enabled || bar.Items[j] is StaticBarItem); j++)
				{
				}
				if (j < barItemRenderers.Count)
				{
					SetCurrentTrackItem(j, forceDropDown: false, setDefaultSelection: true);
					result = true;
				}
				break;
			}
			case MoveHint.moveLast:
			{
				int num2 = barItemRenderers.Count - 1;
				while (num2 >= 0 && (!((IBarItemRenderer)barItemRenderers[num2]).Visible || !bar.Items[num2].Enabled || bar.Items[num2] is StaticBarItem))
				{
					num2--;
				}
				if (num2 >= 0)
				{
					SetCurrentTrackItem(num2, forceDropDown: false, setDefaultSelection: true);
					result = true;
				}
				break;
			}
			case MoveHint.moveNext:
			{
				if (currentHotTrackItem == -1)
				{
					result = MoveSelection(MoveHint.moveFirst);
					break;
				}
				int i;
				for (i = currentHotTrackItem + 1; i < barItemRenderers.Count && (!((IBarItemRenderer)barItemRenderers[i]).Visible || !bar.Items[i].Enabled || bar.Items[i] is StaticBarItem); i++)
				{
				}
				if (i < barItemRenderers.Count)
				{
					SetCurrentTrackItem(i, forceDropDown: false, setDefaultSelection: true);
					result = true;
				}
				else
				{
					result = MoveSelection(MoveHint.moveFirst);
				}
				break;
			}
			case MoveHint.movePrevious:
			{
				if (currentHotTrackItem == -1)
				{
					result = MoveSelection(MoveHint.moveLast);
					break;
				}
				int num = currentHotTrackItem - 1;
				while (num >= 0 && (!((IBarItemRenderer)barItemRenderers[num]).Visible || !bar.Items[num].Enabled || bar.Items[num] is StaticBarItem))
				{
					num--;
				}
				if (num >= 0)
				{
					SetCurrentTrackItem(num, forceDropDown: false, setDefaultSelection: true);
					result = true;
				}
				else
				{
					result = MoveSelection(MoveHint.moveLast);
				}
				break;
			}
			}
		}
		return result;
	}

	protected virtual void OnRightMouseDown(MouseEventArgs e)
	{
		Point point = new Point(e.X, e.Y);
		RectangleF rectangleF = ApplyDrawingTransform(new RectangleF(point, new SizeF(0f, 0f)), apply: true);
		point = new Point((int)Math.Round(rectangleF.Left), (int)Math.Round(rectangleF.Top));
		int num = HitTestBarItems(point);
		if (num == -1)
		{
			return;
		}
		if (customizingItemIndex != num)
		{
			OnMouseDown(new MouseEventArgs(MouseButtons.Left, e.Clicks, e.X, e.Y, e.Delta));
		}
		if (customizingItemIndex != -1 && num == customizingItemIndex)
		{
			CloseDropdowns();
			ValidateDndHelper();
			CustomizingPopupMenu customizingPopupMenu = CustomizationPopup;
			if (customizingPopupMenu != null && bar.Manager != null)
			{
				customizingPopupMenu.Show(parent.GetControl(), new Point(e.X, e.Y), bar.Items[customizingItemIndex], bar, dndHelper);
			}
		}
	}

	public virtual bool OnMouseDown(MouseEventArgs e)
	{
		CancelHidingDropDown();
		if (barItemRenderers.Count <= 0 || IgnoreMouseUpDown)
		{
			return false;
		}
		if (m_bActivateFormFromBar && bar.manager != null && bar.manager.Form != null && !bar.manager.Form.Focused)
		{
			bar.manager.Form.Activate();
		}
		bool customizing = Customizing;
		bool flag = IsShowingDropdown();
		int num = currentHotTrackItem;
		IntPtr focus = Syncfusion.Runtime.InteropServices.NativeMethods.GetFocus();
		Control control = Control.FromHandle(focus);
		if (control is IToolbarControl)
		{
			((IToolbarControl)control).OnMouseDownOutside();
		}
		Point point = new Point(e.X, e.Y);
		RectangleF rectangleF = ApplyDrawingTransform(new RectangleF(point, new SizeF(0f, 0f)), apply: true);
		point = new Point((int)Math.Round(rectangleF.Left), (int)Math.Round(rectangleF.Top));
		int num2 = (mouseDownItem = HitTestBarItems(point));
		if ((Control.ModifierKeys == Keys.Alt || Control.ModifierKeys == (Keys.Control | Keys.Alt)) && e.Button == MouseButtons.Left && (bar.AllowCustomizing || DesignMode) && bar.Manager != null && bar.Manager.MainFrameBarManager != null)
		{
			if (num2 != -1)
			{
				BarItem item = Bar.Items[num2];
				if (!bar.Manager.MainFrameBarManager.IsItemCustomizable(item))
				{
					return false;
				}
			}
			bar.Manager.MainFrameBarManager.StartDragAndDropCustomizing(this);
			customizing = Customizing;
		}
		if (e.Button == MouseButtons.Right)
		{
			if (customizing && (bar.AllowCustomizing || DesignMode))
			{
				OnRightMouseDown(e);
				if (bar.Manager != null && bar.Manager.MainFrameBarManager != null)
				{
					bar.Manager.MainFrameBarManager.EndDragAndDropCustomizing();
				}
				return true;
			}
			return false;
		}
		if (currentHotTrackItem == -1 || currentHotTrackItem != num2)
		{
			ResetHotTracking();
		}
		if (customizing && (bar.AllowCustomizing || DesignMode) && num2 != -1)
		{
			CustomizingItemIndex = num2;
			if (bar.Manager != null)
			{
				if (customizingItemIndex != -1)
				{
					bar.Manager.CustomizingItem = bar.Items[customizingItemIndex];
				}
				else
				{
					bar.Manager.CustomizingItem = null;
				}
			}
		}
		if (num2 != -1)
		{
			ignoreMouseMove = true;
			ignoreMouseMoveTick = Environment.TickCount + 100;
			SetCurrentTrackItem(num2, forceDropDown: false, setDefaultSelection: false);
			if (!customizing && !IsShowingDropdown())
			{
				if (IsKeyboardNavigationOn())
				{
					m_bKeyboardNavigationStartedByMouse = false;
				}
				else
				{
					m_bKeyboardNavigationStartedByMouse = true;
					StartKeyboardNavigation();
				}
			}
			if (!customizing || bar.AllowCustomizing || DesignMode)
			{
				((IBarItemRenderer)barItemRenderers[num2]).OnMouseDown(point);
			}
		}
		else
		{
			StopKeyboardNavigation();
		}
		if (!customizing)
		{
			SetCurrentTrackItem(num2, forceDropDown: false, setDefaultSelection: false);
		}
		if ((!flag && IsShowingDropdown()) || (IsShowingDropdown() && num != currentHotTrackItem))
		{
			mouseDownPoint = new Point(e.X, e.Y);
			m_bNeedDropDown = true;
			IgnoreMouseUpDown = true;
			ignoreMouseUp = true;
		}
		BarManager manager = Bar.Manager;
		if (manager != null && manager.MainFrameBarManager != null && ((m_bXPMenuActive && ActivateFormFromBar) || num2 < 0))
		{
			manager.MainFrameBarManager.Form.Activate();
		}
		return false;
	}

	public virtual void OnMouseUp(MouseEventArgs e)
	{
		m_bShouldChangeSelectedItem = false;
		if (m_bDragging && CustomizingItemIndex != -1 && bar.Manager != null && bar.Manager.MainFrameBarManager != null && bar.Manager.MainFrameBarManager.DndCustomizing)
		{
			bar.Manager.MainFrameBarManager.EndDragAndDropCustomizing();
			OnEndDragging();
		}
		if (IgnoreMouseUpDown || ignoreMouseUp)
		{
			ignoreMouseUp = false;
			return;
		}
		IBarItemRenderer barItemRenderer = null;
		if (currentHotTrackItem >= 0 || mouseDownItem >= 0)
		{
			int num = mouseDownItem;
			if (num < 0)
			{
				num = currentHotTrackItem;
			}
			if (num >= 0)
			{
				barItemRenderer = (IBarItemRenderer)barItemRenderers[num];
				Point point = new Point(e.X, e.Y);
				RectangleF rectangleF = ApplyDrawingTransform(new RectangleF(point, new SizeF(0f, 0f)), apply: true);
				point = new Point((int)Math.Round(rectangleF.Left), (int)Math.Round(rectangleF.Top));
				barItemRenderer.OnMouseUp(point);
			}
		}
		if (DelayedPerformClickOnBarItem != null)
		{
			m_bShouldChangeSelectedItem = false;
		}
		if (!IsShowingDropdown())
		{
			StopKeyboardNavigation();
		}
		parent.GetControl().Capture = true;
		parent.GetControl().Capture = false;
		if (DelayedPerformClickOnBarItem != null)
		{
			BarItem delayedPerformClickOnBarItem = DelayedPerformClickOnBarItem;
			DelayedPerformClickOnBarItem = null;
			delayedPerformClickOnBarItem.PerformClick();
		}
		ignoreMouseMove = false;
		ignoreMouseMoveTick = int.MinValue;
		m_bShouldChangeSelectedItem = true;
	}

	public virtual void OnMouseDoubleClick(MouseEventArgs e)
	{
		CurrentHotTrackItem?.PerformDoubleClick();
	}

	public virtual void OnMouseWheel(MouseEventArgs e)
	{
		if (currentHotTrackItem >= 0 && barItemRenderers.Count > currentHotTrackItem)
		{
			IBarItemRenderer barItemRenderer = (IBarItemRenderer)barItemRenderers[currentHotTrackItem];
			ComboBoxItemRenderer comboBoxItemRenderer = barItemRenderer as ComboBoxItemRenderer;
			bool flag = true;
			if (comboBoxItemRenderer != null)
			{
				flag = !comboBoxItemRenderer.IgnoreExternalMouseMessages;
			}
			if (flag)
			{
				barItemRenderer.OnMouseWheel(e.Delta > 0);
			}
		}
	}

	public virtual bool ProcessShortcut(char c)
	{
		bool result = false;
		if (bar != null)
		{
			char hotkey = char.ToLower(c);
			BarItem itemFromHotKey = bar.Items.GetItemFromHotKey(hotkey);
			if (itemFromHotKey != null && itemFromHotKey.Visible && itemFromHotKey.Enabled)
			{
				int num = bar.Items.IndexOf(itemFromHotKey);
				IBarItemRenderer barItemRenderer = barItemRenderers[num] as IBarItemRenderer;
				if (barItemRenderer.ShouldDrawText())
				{
					if (barItemRenderer is DropDownBarItemRenderer)
					{
						StartKeyboardNavigation();
						SetCurrentTrackItem(num, forceDropDown: true, setDefaultSelection: true);
						parent.GetControl().Update();
					}
					else
					{
						itemFromHotKey.PerformClick();
					}
				}
				result = true;
			}
		}
		return result;
	}

	public virtual bool ProcessMnemonic(char charCode)
	{
		if (!IsKeyboardNavigationOn())
		{
			if (!IsShowingDropdown() && !Customizing && (Control.ModifierKeys & Keys.Alt) != Keys.None)
			{
				return ProcessShortcut(charCode);
			}
			return false;
		}
		if (!IsShowingDropdown() && !Customizing)
		{
			if (Control.ModifierKeys == Keys.None)
			{
				BarItem itemFromHotKey = bar.Items.GetItemFromHotKey(char.ToLower(charCode));
				if (itemFromHotKey != null)
				{
					int newHitBarItem = bar.Items.IndexOf(itemFromHotKey);
					SetCurrentTrackItem(newHitBarItem, forceDropDown: true, setDefaultSelection: true);
					parent.GetControl().Update();
					return true;
				}
			}
			else if ((Control.ModifierKeys & Keys.Alt) != Keys.None)
			{
				return ProcessShortcut(charCode);
			}
		}
		return false;
	}

	private IPopupControlContainer GetParentPopupContainer(Control control)
	{
		if (control == null)
		{
			throw new ArgumentNullException("control");
		}
		IPopupControlContainer popupControlContainer = null;
		while (control != null)
		{
			popupControlContainer = control.Parent as IPopupControlContainer;
			if (popupControlContainer != null)
			{
				break;
			}
			control = control.Parent;
		}
		return popupControlContainer;
	}

	protected virtual bool ProcessKeyDown(Keys key)
	{
		bool flag = false;
		Control control = Control.FromHandle(Syncfusion.Runtime.InteropServices.NativeMethods.GetFocus());
		if (control != null)
		{
			IPopupControlContainer parentPopupContainer = GetParentPopupContainer(control);
			if (parentPopupContainer != null && (parentPopupContainer.PopupHost != null || parentPopupContainer is MenuGrid))
			{
				return false;
			}
		}
		if (currentHotTrackItem >= 0 && currentHotTrackItem < barItemRenderers.Count && barItemRenderers[currentHotTrackItem] is IBarItemRenderer barItemRenderer)
		{
			if (barItemRenderer is EditableComboRenderer editableComboRenderer && editableComboRenderer.TextBox.Focused)
			{
				return false;
			}
			flag = barItemRenderer.ProcessKeyDown(key);
			if (!flag && barItemRenderer is DropDownBarItemRenderer dropDownBarItemRenderer && dropDownBarItemRenderer.IsShowing() && dropDownBarItemRenderer.BarItem is DropDownBarItem { PopupControlContainer: var popupControlContainer })
			{
				Form form = parent.GetControl().FindForm();
				Control control2 = null;
				if (form != null)
				{
					control2 = ((form.ActiveControl != null) ? form.ActiveControl : popupControlContainer.Controls[0]);
				}
				if (control2 == null || control2 is Form)
				{
					control2 = Control.FromHandle(Syncfusion.Runtime.InteropServices.NativeMethods.GetActiveWindow());
				}
				if (control2 is PopupHost { PopupControlContainer: not null } popupHost)
				{
					control2 = popupHost.PopupControlContainer as Control;
				}
				while (control2 != null && popupControlContainer != control2)
				{
					control2 = control2.Parent;
				}
				if (popupControlContainer == control2)
				{
					return false;
				}
			}
			if (flag)
			{
				return true;
			}
		}
		if (!Customizing)
		{
			if (CurrentHotTrackItem != null && !CurrentHotTrackItem.Enabled)
			{
				return flag;
			}
			bool flag2 = (Control.ModifierKeys & Keys.Shift) != 0;
			bool flag3 = (Control.ModifierKeys & Keys.Control) != 0;
			bool flag4 = parent != null && parent.IsRightToLeft;
			if (key == Keys.Tab && flag3 && GetBarControl().ShouldPreProcessTab())
			{
				if (flag2)
				{
					parent.BarHost.MoveMenuNavigation(forward: false);
				}
				else
				{
					parent.BarHost.MoveMenuNavigation(forward: true);
				}
			}
			else if (key == Keys.Left)
			{
				m_bNeedDropDown = IsShowingDropdown();
				SetIgnoreAltKeyUp(bIgnore: true);
				flag = (flag4 ? MoveSelection(MoveHint.moveNext) : MoveSelection(MoveHint.movePrevious));
			}
			else if (key == Keys.Right)
			{
				m_bNeedDropDown = IsShowingDropdown();
				SetIgnoreAltKeyUp(bIgnore: true);
				flag = (flag4 ? MoveSelection(MoveHint.movePrevious) : MoveSelection(MoveHint.moveNext));
			}
			else if (key == Keys.Tab && GetBarControl().ShouldPreProcessTab())
			{
				m_bNeedDropDown = IsShowingDropdown();
				SetIgnoreAltKeyUp(bIgnore: true);
				flag = (flag2 ? MoveSelection(MoveHint.movePrevious) : MoveSelection(MoveHint.moveNext));
			}
			else
			{
				switch (key)
				{
				case Keys.Home:
					SetIgnoreAltKeyUp(bIgnore: true);
					flag = MoveSelection(MoveHint.moveFirst);
					break;
				case Keys.End:
					SetIgnoreAltKeyUp(bIgnore: true);
					flag = MoveSelection(MoveHint.moveLast);
					break;
				case Keys.Return:
				case Keys.Down:
				{
					SetIgnoreAltKeyUp(bIgnore: true);
					if (currentHotTrackItem == -1)
					{
						break;
					}
					ignoreMouseMove = true;
					ignoreMouseMoveTick = Environment.TickCount + 100;
					BarItemRenderer barItemRenderer2 = (BarItemRenderer)barItemRenderers[currentHotTrackItem];
					if (!(barItemRenderer2 is IDropDownItem))
					{
						if (key == Keys.Return)
						{
							BarItem barItem = barItemRenderer2.BarItem;
							if (!m_bKeyboardNavigationStartedByMouse)
							{
								StopKeyboardNavigation();
							}
							parent.GetControl().Capture = false;
							if (barItem.Enabled)
							{
								barItem.PerformClick();
								flag = true;
							}
						}
					}
					else if (!barItemRenderer2.ShowingDropDown)
					{
						m_bNeedDropDown = true;
						barItemRenderer2.DropDown(show: true, setDefaultSelection: true, null);
						flag = true;
					}
					else if (key == Keys.Return)
					{
						barItemRenderer2.ShowingDropDown = false;
						flag = true;
					}
					break;
				}
				case Keys.Escape:
					OnHitEscape();
					flag = true;
					break;
				}
			}
			if (!flag && key >= Keys.D0 && key <= Keys.Z)
			{
				ProcessMnemonic((char)key);
				flag = IsKeyboardNavigationOn();
			}
			if (!flag && IsKeyboardNavigationOn() && ((key & Keys.Oem8) != Keys.None || key == Keys.Space) && (key < Keys.F1 || key > Keys.F12))
			{
				flag = !flag2;
			}
		}
		return flag;
	}

	private void SetIgnoreAltKeyUp(bool bIgnore)
	{
		if (Bar != null && Bar.manager is MainFrameBarManager mainFrameBarManager)
		{
			mainFrameBarManager.ignoreNextAltKeyUp = bIgnore;
		}
	}

	private void OnHitEscape()
	{
		m_bActivateOnExit = IsShowingDropdown();
		ResetHotTracking();
		StopKeyboardNavigation();
		if (m_bActivateOnExit)
		{
			StartKeyboardNavigation();
			SetIgnoreAltKeyUp(bIgnore: true);
		}
		else
		{
			SetIgnoreAltKeyUp(bIgnore: false);
		}
	}

	public virtual bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		bool result = false;
		if (IsKeyboardNavigationOn())
		{
			result = ProcessKeyDown(keyData);
		}
		else if (IsShowingDropdown() && keyData == Keys.Escape)
		{
			OnHitEscape();
		}
		return result;
	}

	protected void ResetHotTracking()
	{
		if (currentHotTrackItem != -1)
		{
			int num = currentHotTrackItem;
			currentHotTrackItem = -1;
			if (num < barItemRenderers.Count)
			{
				((IBarItemRenderer)barItemRenderers[num]).HotTrack = false;
				((IBarItemRenderer)barItemRenderers[num]).Active = false;
				((IBarItemRenderer)barItemRenderers[num]).BarItem.PerformUnselected();
			}
			MainFrameBarManager mainManager = GetMainManager();
			if (mainManager != null)
			{
				mainManager.SelectedItem = null;
			}
		}
	}

	protected virtual void ResetDragging()
	{
		mouseDownItem = -1;
	}

	protected internal virtual void ValidateDndHelper()
	{
		if (dndHelper == null)
		{
			dndHelper = new CustomizationDndHelper(this);
		}
		dndHelper.ParentItem = bar;
	}

	protected virtual DragDropEffects GetAllowedDragEffects()
	{
		return DragDropEffects.Copy | DragDropEffects.Move;
	}

	public virtual void OnDragOver(DragEventArgs drgevent)
	{
		if (!Customizing || (!bar.AllowCustomizing && !DesignMode))
		{
			return;
		}
		ValidateDndHelper();
		dndHelper.OnDragOver(drgevent);
		PointF point = parent.GetControl().PointToClient(new Point(drgevent.X, drgevent.Y));
		point = ApplyDrawingTransform(point, apply: true);
		int num = HitTestBarItems(point);
		if (num != currentDndDropDown && currentDndDropDown != -1)
		{
			IBarItemRenderer barItemRenderer = barItemRenderers[currentDndDropDown] as IBarItemRenderer;
			barItemRenderer.DropDown(show: false, setDefaultSelection: false, null);
		}
		if (currentHotTrackItem != num && currentHotTrackItem != -1)
		{
			IBarItemRenderer barItemRenderer2 = barItemRenderers[currentHotTrackItem] as IBarItemRenderer;
			barItemRenderer2.DropDown(show: false, setDefaultSelection: false, null);
		}
		if (num != -1 && (!dndHelper.Dragging || currentHotTrackItem != num))
		{
			IBarItemRenderer barItemRenderer3 = barItemRenderers[num] as IBarItemRenderer;
			currentDndDropDown = num;
			barItemRenderer3.DropDown(show: true, setDefaultSelection: false, null);
			if (!barItemRenderer3.ShowingDropDown)
			{
				currentDndDropDown = -1;
			}
		}
		if (currentDndDropDown == -1 && PopupManager.ActivePopupClient != null)
		{
			PopupManager.ActivePopupClient.HidePopup(PopupCloseType.Deactivated);
		}
	}

	public virtual void OnDragDrop(DragEventArgs e)
	{
		if (bar.AllowCustomizing || DesignMode)
		{
			ValidateDndHelper();
			dndHelper.OnDragDrop(e);
			if (bar.Manager != null)
			{
				CustomizingItemIndex = bar.Items.IndexOf(bar.Manager.CustomizingItem);
			}
			dndHelper.Dragging = false;
			ResetHotTracking();
			CloseDropdowns();
		}
	}

	public virtual void OnDragLeave(EventArgs e)
	{
		if (bar.AllowCustomizing || DesignMode)
		{
			ValidateDndHelper();
			if (dndHelper != null)
			{
				dndHelper.Reset();
			}
		}
	}

	public virtual void OnGiveFeedback(GiveFeedbackEventArgs gfbevent)
	{
		switch (gfbevent.Effect)
		{
		case DragDropEffects.Copy:
			Cursor.Current = DragCursors.CopyCursor;
			gfbevent.UseDefaultCursors = false;
			break;
		case DragDropEffects.Move:
			Cursor.Current = DragCursors.DragCursor;
			gfbevent.UseDefaultCursors = false;
			break;
		case DragDropEffects.None:
			Cursor.Current = DragCursors.NodropCursor;
			gfbevent.UseDefaultCursors = false;
			break;
		}
	}

	public Control GetControl()
	{
		return parent.GetControl();
	}

	public bool CanDropItem(BarItem item)
	{
		if (item is ListBarItem)
		{
			return false;
		}
		return true;
	}

	public BarItem HitTestBarItem(Point mousePosition, ref bool beforeOrAfter)
	{
		RectangleF rectangleF = ApplyDrawingTransform(new RectangleF(mousePosition, new SizeF(0f, 0f)), apply: true);
		Point point = new Point((int)Math.Round(rectangleF.Left), (int)Math.Round(rectangleF.Top));
		int num = HitTestBarItems(point);
		if (num >= 0)
		{
			BarItemRenderer barItemRenderer = (BarItemRenderer)barItemRenderers[num];
			BarItem barItem = barItemRenderer.BarItem;
			Rectangle rectangle = Rectangle.Ceiling(ApplyDrawingTransform(Rectangle.Ceiling(barItemRenderer.Bounds), apply: false));
			if (Alignment == CommandBarDockState.Left || Alignment == CommandBarDockState.Right)
			{
				if (mousePosition.Y - rectangle.Top > rectangle.Bottom - mousePosition.Y)
				{
					beforeOrAfter = false;
				}
				else
				{
					beforeOrAfter = true;
				}
			}
			else if (mousePosition.X - rectangle.Left > rectangle.Right - mousePosition.X)
			{
				beforeOrAfter = false;
			}
			else
			{
				beforeOrAfter = true;
			}
			return barItem;
		}
		if (bar.Items.Count > 0)
		{
			if (bar.IsGroupBeginning(bar.Items[0]) && ShouldDrawVisible(bar.Items[0], excludeControlBasedItems: true))
			{
				BarItemRenderer barItemRenderer2 = barItemRenderers[0] as BarItemRenderer;
				Rectangle rectangle2 = Rectangle.Ceiling(ApplyDrawingTransform(Rectangle.Ceiling(barItemRenderer2.Bounds), apply: false));
				Rectangle empty = Rectangle.Empty;
				if (((Alignment == CommandBarDockState.Left || Alignment == CommandBarDockState.Right) ? new Rectangle(rectangle2.Left, rectangle2.Top - 3, rectangle2.Width, 3) : new Rectangle(rectangle2.Left - 3, rectangle2.Top, 3, rectangle2.Height)).Contains(mousePosition))
				{
					beforeOrAfter = true;
				}
			}
		}
		else
		{
			beforeOrAfter = true;
		}
		if (!beforeOrAfter)
		{
			bool flag = false;
			foreach (BarItemRenderer barItemRenderer3 in barItemRenderers)
			{
				if (barItemRenderer3.Bounds.Width > 0f)
				{
					flag = ShouldDrawVisible(barItemRenderer3.BarItem, excludeControlBasedItems: true);
					break;
				}
			}
			if (!flag)
			{
				beforeOrAfter = true;
			}
		}
		return null;
	}

	public Rectangle GetBoundsOf(BarItem item)
	{
		if (ShouldDrawVisible(item, excludeControlBasedItems: true))
		{
			int num = bar.Items.IndexOf(item);
			if (num != -1)
			{
				BarItemRenderer barItemRenderer = barItemRenderers[num] as BarItemRenderer;
				return Rectangle.Ceiling(ApplyDrawingTransform(barItemRenderer.Bounds, apply: false));
			}
		}
		return Rectangle.Empty;
	}

	public virtual PopupRelativeAlignment GetFirstPopupAlignPreference()
	{
		bool flag = parent != null && parent.IsRightToLeft;
		PopupRelativeAlignment popupRelativeAlignment = (flag ? PopupRelativeAlignment.BottomRight : PopupRelativeAlignment.BottomLeft);
		switch (Alignment)
		{
		default:
			_ = 32;
			goto case CommandBarDockState.Top;
		case CommandBarDockState.Top:
		case (CommandBarDockState)3:
			return flag ? PopupRelativeAlignment.BottomRight : PopupRelativeAlignment.BottomLeft;
		case CommandBarDockState.Left:
			return flag ? PopupRelativeAlignment.LeftBottom : PopupRelativeAlignment.RightBottom;
		case CommandBarDockState.Bottom:
			return (!flag) ? PopupRelativeAlignment.TopRight : PopupRelativeAlignment.TopLeft;
		case CommandBarDockState.Right:
			return flag ? PopupRelativeAlignment.RightBottom : PopupRelativeAlignment.LeftBottom;
		}
	}

	public IBarControl GetBarControl()
	{
		return parent;
	}

	public Rectangle GetCueRect(BarItem barItem, bool beforeOrAfter)
	{
		if (barItem == null && beforeOrAfter)
		{
			Rectangle empty = Rectangle.Empty;
			if (bar.Items.Count > 0)
			{
				Rectangle boundsOf = GetBoundsOf(bar.Items[0]);
				if (boundsOf.Width > 0 && boundsOf.Height > 0)
				{
					boundsOf.Offset(-5, 0);
					boundsOf.Width = 7;
					empty = boundsOf;
				}
				else
				{
					Rectangle rectangle = Rectangle.Ceiling(Bounds);
					empty = new Rectangle(rectangle.Left, rectangle.Top, 7, rectangle.Height);
				}
			}
			else
			{
				Rectangle rectangle2 = Rectangle.Ceiling(tdbounds);
				rectangle2.Width = 7;
				empty = rectangle2;
			}
			return Rectangle.Ceiling(ApplyDrawingTransform(empty, apply: false));
		}
		Rectangle boundsOf2 = GetBoundsOf(barItem);
		if (beforeOrAfter)
		{
			if (Alignment == CommandBarDockState.Left || Alignment == CommandBarDockState.Right)
			{
				return new Rectangle(boundsOf2.Left, boundsOf2.Top, boundsOf2.Width, 7);
			}
			return new Rectangle(boundsOf2.Left, boundsOf2.Top, 7, boundsOf2.Height);
		}
		if (Alignment == CommandBarDockState.Left || Alignment == CommandBarDockState.Right)
		{
			return new Rectangle(boundsOf2.Left, boundsOf2.Bottom - 8, boundsOf2.Width, 7);
		}
		return new Rectangle(boundsOf2.Right - 8, boundsOf2.Top, 7, boundsOf2.Height);
	}

	private void frmParent_ParentChanged(object sender, EventArgs e)
	{
		CreateToolTip();
	}

	private void ctlParent_ParentChanged(object sender, EventArgs e)
	{
		Control control = parent.GetControl();
		Form form = control.FindForm();
		if (!DesignMode)
		{
			if (control == null)
			{
				MessageFilterEntryHelper.RemoveMessageFilter(this);
			}
			else if (bar != null && bar.manager != null)
			{
				MessageFilterEntryHelper.AddMessageFilter(this, ontop: false, bar.manager.Form);
			}
			else
			{
				MessageFilterEntryHelper.AddMessageFilter(this, ontop: false);
			}
		}
		if (form != null)
		{
			form.ParentChanged += frmParent_ParentChanged;
		}
	}
}
