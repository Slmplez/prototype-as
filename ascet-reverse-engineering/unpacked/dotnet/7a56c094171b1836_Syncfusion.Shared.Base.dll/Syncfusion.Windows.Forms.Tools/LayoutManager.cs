using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Localization;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ProvideProperty("PreferredSize", typeof(Control))]
[ProvideProperty("MinimumSize", typeof(Control))]
[Designer(typeof(LMDesigner), typeof(IDesigner))]
public abstract class LayoutManager : Component, IExtenderProvider, ILayoutManager, ISupportInitialize
{
	[DocumentationExclude]
	protected bool initializing;

	private bool autoLayout = true;

	[DocumentationExclude]
	protected Hashtable preferredSizes;

	[DocumentationExclude]
	protected Hashtable minimumSizes;

	private Control container;

	private ArrayList controlList;

	private bool useControlCollectionPosition;

	private IDesignerHost designerHost;

	private IDesigner componentDesigner;

	private Rectangle customLayoutBounds = Rectangle.Empty;

	private int horzNearMargin;

	private int topMargin;

	private int horzFarMargin;

	private int bottomMargin;

	[DocumentationExclude]
	protected bool LoadingDocument
	{
		get
		{
			if (designerHost != null)
			{
				return designerHost.Loading;
			}
			return false;
		}
	}

	[DocumentationExclude]
	protected bool DesignerInTransaction
	{
		get
		{
			if (designerHost != null)
			{
				return designerHost.InTransaction;
			}
			return false;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DocumentationExclude]
	public IDesignerHost DesignerHost
	{
		get
		{
			return designerHost;
		}
		set
		{
			designerHost = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	[Browsable(false)]
	public IDesigner ComponentDesigner
	{
		get
		{
			return componentDesigner;
		}
		set
		{
			componentDesigner = value;
		}
	}

	[Category("Behavior")]
	[Description("Specifies the container control that this manager will lay out.")]
	[DefaultValue(null)]
	public Control ContainerControl
	{
		get
		{
			return container;
		}
		set
		{
			if (container != value)
			{
				if (container != null)
				{
					ResetLayoutInfo();
				}
				container = value;
				if (container != null)
				{
					container.Layout += OnLayoutEvent;
					container.ControlAdded += OnControlAdded;
					container.ControlRemoved += OnControlRemoved;
					container.RightToLeftChanged += OnRTLChanged;
				}
				OnContainerControlChanged(EventArgs.Empty);
			}
		}
	}

	[Localizable(true)]
	[SRCategory("CategoryBehavior")]
	[Description("Specifies the custom layout bounds, if any, to be used for layout calculation instead of the container control's ClientRectangle.")]
	public Rectangle CustomLayoutBounds
	{
		get
		{
			return customLayoutBounds;
		}
		set
		{
			if (customLayoutBounds != value)
			{
				customLayoutBounds = value;
				if (ContainerControl != null)
				{
					ContainerControl.PerformLayout();
				}
				MakeDirty();
			}
		}
	}

	[Description("Specifies whether the container control's child ControlCollection (gotten from the controls property) should be used as the order for laying out the child controls.")]
	[DefaultValue(true)]
	[Browsable(false)]
	public bool UseControlCollectionPosition
	{
		get
		{
			return useControlCollectionPosition;
		}
		set
		{
			useControlCollectionPosition = value;
		}
	}

	[Description("Specifies the list of child components participating in layout.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ArrayList LayoutControls => controlList;

	[SRCategory("CategoryBehavior")]
	[DefaultValue(true)]
	[Description("Specifies whether the manger should layout automatically on Layout event.")]
	public bool AutoLayout
	{
		get
		{
			return autoLayout;
		}
		set
		{
			if (autoLayout != value)
			{
				autoLayout = value;
				MakeDirty();
			}
		}
	}

	[Obsolete("This method has been replaced by HorzNearMargin. Please use that instead.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int LeftMargin
	{
		get
		{
			return HorzNearMargin;
		}
		set
		{
			HorzNearMargin = value;
		}
	}

	[DefaultValue(0)]
	[Description("Indicates the left margin between the client rectangle and the layout rectangle.")]
	[Category("Appearance")]
	public int HorzNearMargin
	{
		get
		{
			return horzNearMargin;
		}
		set
		{
			if (horzNearMargin != value)
			{
				horzNearMargin = value;
				if (ContainerControl != null)
				{
					ContainerControl.PerformLayout();
				}
				MakeDirty();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Obsolete("This method has been replaced by HorzFarMargin. Please use that instead.")]
	[Browsable(false)]
	public int RightMargin
	{
		get
		{
			return HorzFarMargin;
		}
		set
		{
			HorzFarMargin = value;
		}
	}

	[DefaultValue(0)]
	[Description("Indicates the right margin between the client rectangle and the layout rectangle.")]
	[Category("Appearance")]
	public int HorzFarMargin
	{
		get
		{
			return horzFarMargin;
		}
		set
		{
			if (horzFarMargin != value)
			{
				horzFarMargin = value;
				if (ContainerControl != null)
				{
					ContainerControl.PerformLayout();
				}
				MakeDirty();
			}
		}
	}

	[DefaultValue(0)]
	[Category("Appearance")]
	[Description("Indicates the top margin between the client rectangle and the layout rectangle.")]
	public int TopMargin
	{
		get
		{
			return topMargin;
		}
		set
		{
			if (topMargin != value)
			{
				topMargin = value;
				if (ContainerControl != null)
				{
					ContainerControl.PerformLayout();
				}
				MakeDirty();
			}
		}
	}

	[DefaultValue(0)]
	[Description("Indicates the bottom margin between the client rectangle and the layout rectangle.")]
	[Category("Appearance")]
	public int BottomMargin
	{
		get
		{
			return bottomMargin;
		}
		set
		{
			if (bottomMargin != value)
			{
				bottomMargin = value;
				if (ContainerControl != null)
				{
					ContainerControl.PerformLayout();
				}
				MakeDirty();
			}
		}
	}

	[Description("Occurs when the ContainerControl property is changed.")]
	public event EventHandler ContainerControlChanged;

	[Description("This event is triggered to obtain preferred size information for a child control.")]
	public event ProvideLayoutInformationEventHandler ProvideLayoutInformation;

	[DocumentationExclude]
	protected void MakeDirty()
	{
		if (componentDesigner != null && componentDesigner is IAllowMakeDirty)
		{
			IAllowMakeDirty allowMakeDirty = componentDesigner as IAllowMakeDirty;
			allowMakeDirty.SetDirty();
		}
	}

	protected virtual void OnContainerControlChanged(EventArgs e)
	{
		if (ContainerControl == null)
		{
			controlList.Clear();
		}
		if (this.ContainerControlChanged != null)
		{
			this.ContainerControlChanged(this, EventArgs.Empty);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual void ResetCustomLayoutBounds()
	{
		CustomLayoutBounds = Rectangle.Empty;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual bool ShouldSerializeCustomLayoutBounds()
	{
		if (CustomLayoutBounds == Rectangle.Empty)
		{
			return false;
		}
		return true;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			ArrayList arrayList = new ArrayList();
			foreach (Control control in controlList)
			{
				arrayList.Add(control);
			}
			foreach (Control item in arrayList)
			{
				RemoveLayoutComponent(item);
			}
			arrayList.Clear();
			ResetLayoutInfo();
			container = null;
		}
		base.Dispose(disposing);
	}

	protected LayoutManager()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(LayoutManager));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		BeginInit();
		preferredSizes = new Hashtable();
		minimumSizes = new Hashtable();
		controlList = new ArrayList();
		useControlCollectionPosition = true;
		horzNearMargin = (horzFarMargin = (bottomMargin = (topMargin = 0)));
		EndInit();
	}

	public virtual void BeginInit()
	{
		initializing = true;
	}

	public virtual void EndInit()
	{
		if (ContainerControl != null && base.DesignMode && ContainerControl is UserControl)
		{
			ContainerControl.PerformLayout();
		}
		initializing = false;
	}

	[DocumentationExclude]
	bool IExtenderProvider.CanExtend(object target)
	{
		return CanExtend(target);
	}

	[DocumentationExclude]
	protected virtual bool CanExtend(object target)
	{
		if (target is Control && ((Control)target).Parent != null && ((Control)target).Parent == ContainerControl && !(target is AutoLabel))
		{
			return true;
		}
		return false;
	}

	[Localizable(true)]
	[Category("Layout Manager")]
	public virtual Size GetPreferredSize(Control control)
	{
		Size size = Size.Empty;
		if (GetDynamicSize(control, LayoutInformationType.PreferredSize, ref size))
		{
			return size;
		}
		return GetStaticPreferredSize(control);
	}

	protected virtual Size GetStaticPreferredSize(Control control)
	{
		if (preferredSizes[control] == null)
		{
			SetPreferredSize(control, control.Size);
		}
		return (Size)preferredSizes[control];
	}

	public virtual void SetPreferredSize(Control control, Size value)
	{
		if (preferredSizes[control] == null || !((Size)preferredSizes[control]/*cast due to .constrained prefix*/).Equals(value))
		{
			preferredSizes[control] = value;
			if (ContainerControl != null)
			{
				ContainerControl.PerformLayout();
			}
		}
	}

	protected void ForcePreferredAndMinimumsSize()
	{
		if (ContainerControl != null)
		{
			ContainerControl.SuspendLayout();
		}
		foreach (Control control in GetControls())
		{
			if (!(control is AutoLabel))
			{
				if (!ShouldSerializePreferredSize(control))
				{
					SetPreferredSize(control, control.Size);
				}
				if (!ShouldSerializeMinimumSize(control))
				{
					SetMinimumSize(control, control.Size);
				}
			}
		}
		if (ContainerControl != null)
		{
			ContainerControl.ResumeLayout();
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual bool ShouldSerializePreferredSize(Control control)
	{
		return preferredSizes[control] != null;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void ResetPreferredSize(Control control)
	{
		preferredSizes[control] = null;
	}

	[Category("Layout Manager")]
	[Localizable(true)]
	public virtual Size GetMinimumSize(Control control)
	{
		Size size = Size.Empty;
		if (GetDynamicSize(control, LayoutInformationType.MinimumSize, ref size))
		{
			return size;
		}
		return GetStaticMinimumSize(control);
	}

	protected virtual Size GetStaticMinimumSize(Control control)
	{
		if (minimumSizes[control] == null)
		{
			SetMinimumSize(control, control.Size);
		}
		return (Size)minimumSizes[control];
	}

	public virtual void SetMinimumSize(Control control, Size value)
	{
		if (minimumSizes[control] == null || !((Size)minimumSizes[control]/*cast due to .constrained prefix*/).Equals(value))
		{
			minimumSizes[control] = value;
			if (ContainerControl != null)
			{
				ContainerControl.PerformLayout();
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual bool ShouldSerializeMinimumSize(Control control)
	{
		return minimumSizes[control] != null;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void ResetMinimumSize(Control control)
	{
		minimumSizes[control] = null;
	}

	protected virtual bool GetDynamicSize(Control control, LayoutInformationType type, ref Size size)
	{
		if (control is IProvideLayoutInformation)
		{
			switch (type)
			{
			case LayoutInformationType.MinimumSize:
				size = ((IProvideLayoutInformation)control).MinimumSize;
				break;
			case LayoutInformationType.PreferredSize:
				size = ((IProvideLayoutInformation)control).PreferredSize;
				break;
			}
			return true;
		}
		ProvideLayoutInformationEventArgs e = new ProvideLayoutInformationEventArgs(control, type);
		OnProvideLayoutInformation(e);
		if (e.Handled)
		{
			size = e.Size;
		}
		return e.Handled;
	}

	protected virtual void OnProvideLayoutInformation(ProvideLayoutInformationEventArgs args)
	{
		if (this.ProvideLayoutInformation != null)
		{
			this.ProvideLayoutInformation(this, args);
		}
	}

	private void OnLayoutEvent(object sender, LayoutEventArgs e)
	{
		if (AutoLayout)
		{
			LayoutContainer();
		}
	}

	private void OnRTLChanged(object sender, EventArgs e)
	{
		if (!AutoLayout)
		{
			return;
		}
		ContainerControl.SuspendLayout();
		foreach (Control control in ContainerControl.Controls)
		{
			if (control is AutoLabel)
			{
				AutoLabel autoLabel = control as AutoLabel;
				autoLabel.UpdatePosition();
			}
		}
		ContainerControl.ResumeLayout(performLayout: false);
		LayoutContainer();
	}

	protected virtual void OnControlAdded(object sender, ControlEventArgs e)
	{
		OnDockStyleChanged(e.Control, EventArgs.Empty);
	}

	protected virtual void OnControlRemoved(object sender, ControlEventArgs e)
	{
		RemoveLayoutComponent(e.Control);
	}

	public virtual void AddLayoutComponent(Control childControl, object constraints)
	{
		if (childControl is LayoutItemPlaceHolderControl)
		{
			LayoutItemPlaceHolderControl layoutItemPlaceHolderControl = (LayoutItemPlaceHolderControl)childControl;
			layoutItemPlaceHolderControl.LayoutManager = this;
		}
		if (controlList.IndexOf(childControl) == -1)
		{
			childControl.DockChanged += OnDockStyleChanged;
			OnDockStyleChanged(childControl, EventArgs.Empty);
			controlList.Add(childControl);
			if (ContainerControl != null)
			{
				ContainerControl.PerformLayout();
			}
		}
	}

	public virtual void RemoveLayoutComponent(Control childControl)
	{
		if (controlList.Contains(childControl))
		{
			if (childControl is LayoutItemPlaceHolderControl)
			{
				LayoutItemPlaceHolderControl layoutItemPlaceHolderControl = (LayoutItemPlaceHolderControl)childControl;
				layoutItemPlaceHolderControl.LayoutManager = null;
			}
			controlList.Remove(childControl);
			childControl.DockChanged -= OnDockStyleChanged;
			if (ContainerControl != null)
			{
				ContainerControl.PerformLayout();
			}
		}
	}

	[DocumentationExclude]
	protected virtual void OnDockStyleChanged(object sender, EventArgs e)
	{
		if (sender is Control control && !(control is MdiClient) && control.Dock != DockStyle.None && controlList.IndexOf(control) != -1)
		{
			control.Dock = DockStyle.None;
			if (base.DesignMode)
			{
				MessageBox.Show("Controls managed by the LayoutManager cannot have a DockStyle. Resetting Control's DockStyle to DockStyle.None", "LayoutManager Warning");
			}
		}
	}

	protected virtual void ResetLayoutInfo()
	{
		if (container != null)
		{
			container.Layout -= OnLayoutEvent;
			container.ControlAdded -= OnControlAdded;
			container.ControlRemoved -= OnControlRemoved;
			container.RightToLeftChanged -= OnRTLChanged;
		}
		controlList.Clear();
	}

	public abstract Size MinimumLayoutSize();

	public abstract Size PreferredLayoutSize();

	public abstract void LayoutContainer();

	public virtual IList GetControls()
	{
		if (!UseControlCollectionPosition)
		{
			return (ArrayList)controlList.Clone();
		}
		ArrayList arrayList = new ArrayList();
		if (ContainerControl != null)
		{
			foreach (Control control3 in ContainerControl.Controls)
			{
				if (controlList.IndexOf(control3) > -1 && !(control3 is MdiClient))
				{
					arrayList.Add(control3);
				}
			}
			if (arrayList.Count != controlList.Count)
			{
				foreach (Control control4 in controlList)
				{
					if (!ContainerControl.Contains(control4))
					{
						arrayList.Add(control4);
					}
				}
			}
		}
		return arrayList;
	}

	protected virtual Rectangle GetBounds()
	{
		Rectangle empty = Rectangle.Empty;
		if (!customLayoutBounds.IsEmpty)
		{
			empty = customLayoutBounds;
		}
		else
		{
			empty = ContainerControl.ClientRectangle;
			if (ContainerControl is ScrollableControl)
			{
				empty.Offset((ContainerControl as ScrollableControl).AutoScrollPosition);
			}
		}
		empty.X += horzNearMargin;
		empty.Width -= horzNearMargin;
		empty.Width -= horzFarMargin;
		empty.Y += topMargin;
		empty.Height -= topMargin;
		empty.Height -= bottomMargin;
		return empty;
	}

	[DocumentationExclude]
	protected int AdjustHeightForMargins(int height)
	{
		height += topMargin;
		height += bottomMargin;
		return height;
	}

	[DocumentationExclude]
	protected int AdjustWidthForMargins(int width)
	{
		width += horzNearMargin;
		width += horzFarMargin;
		return width;
	}

	protected bool IsVisible(Control control)
	{
		if (control is LayoutItemPlaceHolderControl)
		{
			return ((LayoutItemPlaceHolderControl)control).Visible;
		}
		return control.Visible;
	}

	protected virtual bool IsInit()
	{
		if (ContainerControl != null && (controlList.Count > 0 || ContainerControl.Controls.Count > 0))
		{
			return true;
		}
		return false;
	}

	internal ControlBounds GetChildControlBounds(Control c)
	{
		return GetChildControlBounds(c, c.Size);
	}

	internal ControlBounds GetChildControlBounds(Control c, Size prefSize)
	{
		if (ContainerControl.RightToLeft == RightToLeft.No)
		{
			return new ControlBounds(new Rectangle(c.Location, prefSize), c);
		}
		if (ContainerControl is ScrollableControl)
		{
			return new ControlBounds(new Rectangle(c.Location, prefSize), c);
		}
		Rectangle bounds = GetBounds();
		ControlBounds controlBounds = new ControlBounds(c.Bounds, c, new RTLMatrix(bounds.Left, HorzFarMargin, bounds.Width));
		Rectangle onlyInternalBounds = new Rectangle(new Point(controlBounds.Bounds.X, controlBounds.Bounds.Y), prefSize);
		controlBounds.SetOnlyInternalBounds(onlyInternalBounds);
		return controlBounds;
	}

	[DocumentationExclude]
	protected AutoLabel GetAutoLabel(Control c)
	{
		if (AutoLabel.AutoLabelMap.Contains(c))
		{
			AutoLabel autoLabel = AutoLabel.AutoLabelMap[c] as AutoLabel;
			if (autoLabel.Parent == c.Parent)
			{
				return autoLabel;
			}
		}
		return null;
	}

	[DocumentationExclude]
	protected virtual bool ShouldLayoutAutoLabel(AutoLabel autoLabel)
	{
		if (autoLabel.LabeledControl == null)
		{
			return true;
		}
		if (autoLabel.LabeledControl.Parent != autoLabel.Parent)
		{
			return true;
		}
		return false;
	}
}
