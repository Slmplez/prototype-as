using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItemFilter("System.Windows.Forms")]
[ProvideProperty("CardName", typeof(Control))]
[Description("Represents the layout manager that lays out the children as Cards.")]
[ProvideProperty("MaintainAspectRatio", typeof(Control))]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.CardLayout.bmp")]
[Designer(typeof(CardLayoutDesigner), typeof(IDesigner))]
public class CardLayout : LayoutManager
{
	public delegate void RestoreChildPositionEventHandler(object sender, CancelEventArgs e);

	private Hashtable cardNameVsControls;

	private Hashtable controlsVsCardNames;

	private Hashtable maintainAspectRatios;

	private CardLayoutMode cardLayoutMode;

	protected string CardNameBase = "Card";

	private Control selectedControl;

	private string cachedSelectedCardSetting = string.Empty;

	[DefaultValue(CardLayoutMode.Default)]
	[Category("Behavior")]
	[Description("Indicates the layout mode.")]
	[Localizable(true)]
	public CardLayoutMode LayoutMode
	{
		get
		{
			return cardLayoutMode;
		}
		set
		{
			if (cardLayoutMode != value)
			{
				cardLayoutMode = value;
				if (base.ContainerControl != null)
				{
					base.ContainerControl.PerformLayout();
				}
				MakeDirty();
			}
		}
	}

	internal Control SelectedControl
	{
		get
		{
			return selectedControl;
		}
		set
		{
			if (selectedControl != value)
			{
				if (selectedControl != null)
				{
					selectedControl.Visible = false;
				}
				selectedControl = value;
				if (selectedControl != null)
				{
					selectedControl.Visible = true;
				}
			}
		}
	}

	[Description("Indicated the index of the next card that will be shown when the Next method gets called.")]
	public int NextCardIndex
	{
		get
		{
			if (!IsInit())
			{
				return -1;
			}
			IList controls = GetControls();
			int num = ((selectedControl == null) ? (-1) : controls.IndexOf(selectedControl));
			return (num + 1 < controls.Count) ? (num + 1) : 0;
		}
	}

	[Description("Indicates the index of the previous card that will be shown when the Previous method gets called.")]
	public int PreviousCardIndex
	{
		get
		{
			if (!IsInit())
			{
				return -1;
			}
			IList controls = GetControls();
			int num = ((selectedControl == null) ? (-1) : controls.IndexOf(selectedControl));
			return (num == 0) ? (controls.Count - 1) : (num - 1);
		}
	}

	[Description("Specifies the current Card's name.")]
	[Category("Appearance")]
	[TypeConverter(typeof(SelectedCardConverter))]
	[Localizable(true)]
	[DefaultValue("")]
	public string SelectedCard
	{
		get
		{
			if (selectedControl == null)
			{
				return string.Empty;
			}
			return (string)controlsVsCardNames[selectedControl];
		}
		set
		{
			if (initializing && cardNameVsControls[value] == null)
			{
				cachedSelectedCardSetting = value;
				return;
			}
			Control control = cardNameVsControls[value] as Control;
			if (selectedControl == control || (value.Length != 0 && control == null))
			{
				return;
			}
			if (base.ContainerControl != null)
			{
				base.ContainerControl.SuspendLayout();
			}
			if (selectedControl != null)
			{
				selectedControl.Visible = false;
			}
			selectedControl = control;
			ValidateHiddenStates();
			if (base.ContainerControl != null)
			{
				base.ContainerControl.ResumeLayout(performLayout: false);
				if (selectedControl != null)
				{
					base.ContainerControl.PerformLayout(selectedControl, "Visible");
				}
				MakeDirty();
			}
		}
	}

	[Category("CardLayout Events")]
	[Description("This event is fired in LayoutContainer method.")]
	public event RestoreChildPositionEventHandler RestoreChildPosition;

	public CardLayout()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(CardLayout));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		cardNameVsControls = new Hashtable();
		controlsVsCardNames = new Hashtable();
		maintainAspectRatios = new Hashtable();
	}

	public CardLayout(IContainer container)
		: this()
	{
		container?.Add(this);
	}

	public CardLayout(Control container)
		: this()
	{
		base.ContainerControl = container;
	}

	public override void EndInit()
	{
		if (cachedSelectedCardSetting.Length > 0)
		{
			SelectedCard = cachedSelectedCardSetting;
		}
		cachedSelectedCardSetting = string.Empty;
		ValidateHiddenStates();
		base.EndInit();
	}

	[Localizable(true)]
	[MergableProperty(false)]
	[Category("Layout Manager")]
	public string GetCardName(Control control)
	{
		if (controlsVsCardNames[control] == null)
		{
			return string.Empty;
		}
		return (string)controlsVsCardNames[control];
	}

	[MergableProperty(false)]
	public void SetCardName(Control control, string value)
	{
		if (!base.DesignMode || !base.LoadingDocument || !base.DesignerInTransaction || base.ContainerControl == null || base.ContainerControl.Contains(control))
		{
			if (value == null || value.Length == 0)
			{
				RemoveLayoutComponent(control);
			}
			else
			{
				AddLayoutComponent(control, value);
			}
		}
	}

	[Category("Layout Manager")]
	[MergableProperty(false)]
	[DefaultValue(false)]
	public virtual bool GetMaintainAspectRatio(Control control)
	{
		if (maintainAspectRatios[control] == null)
		{
			SetMaintainAspectRatio(control, value: false);
		}
		return (bool)maintainAspectRatios[control];
	}

	public virtual void SetMaintainAspectRatio(Control control, bool value)
	{
		if (maintainAspectRatios[control] == null || !((bool)maintainAspectRatios[control]).Equals(value))
		{
			maintainAspectRatios[control] = value;
			if (base.ContainerControl != null)
			{
				base.ContainerControl.PerformLayout();
			}
		}
	}

	protected override void OnControlAdded(object sender, ControlEventArgs e)
	{
		Control control = e.Control;
		if (controlsVsCardNames[control] == null)
		{
			string newCardName = GetNewCardName();
			SetCardName(control, newCardName);
		}
		base.OnControlAdded(sender, e);
	}

	public virtual string GetNewCardName()
	{
		ArrayList cardNames = GetCardNames();
		string text = string.Empty;
		int num = controlsVsCardNames.Count;
		while (text.Length == 0 || cardNames.Contains(text))
		{
			num++;
			text = CardNameBase + num;
		}
		return text;
	}

	protected override void OnContainerControlChanged(EventArgs e)
	{
		base.OnContainerControlChanged(e);
		if (base.ContainerControl == null || base.LoadingDocument)
		{
			return;
		}
		foreach (Control control in base.ContainerControl.Controls)
		{
			if (controlsVsCardNames[control] == null)
			{
				string value = CardNameBase + (controlsVsCardNames.Count + 1);
				SetCardName(control, value);
			}
		}
	}

	public override void AddLayoutComponent(Control childControl, object constraints)
	{
		if (constraints == null || ((string)constraints).Length == 0)
		{
			throw new ArgumentException("Constraints cannot be NULL or an empty string when calling AddLayoutComponent", "constraints");
		}
		if (constraints is string)
		{
			if (base.ContainerControl != null)
			{
				base.ContainerControl.SuspendLayout();
			}
			bool flag = selectedControl == childControl;
			string text = (string)constraints;
			if (!initializing && cardNameVsControls[text] != null && cardNameVsControls[text] != childControl)
			{
				text = ((controlsVsCardNames[childControl] == null) ? GetNewCardName() : ((string)controlsVsCardNames[childControl]));
			}
			RemoveLayoutComponent(childControl);
			if (cardNameVsControls.Count > 1)
			{
				childControl.Visible = false;
			}
			cardNameVsControls[text] = childControl;
			controlsVsCardNames[childControl] = text;
			base.AddLayoutComponent(childControl, constraints);
			if (flag)
			{
				SelectedControl = childControl;
			}
			if (base.ContainerControl != null)
			{
				base.ContainerControl.ResumeLayout(performLayout: false);
				base.ContainerControl.PerformLayout(childControl, "Bounds");
			}
		}
	}

	public override void RemoveLayoutComponent(Control childControl)
	{
		if (childControl == null || childControl.IsDisposed)
		{
			return;
		}
		IEnumerator enumerator = cardNameVsControls.Values.GetEnumerator();
		IEnumerator enumerator2 = cardNameVsControls.Keys.GetEnumerator();
		while (enumerator.MoveNext())
		{
			enumerator2.MoveNext();
			Control control = (Control)enumerator.Current;
			if (control == childControl)
			{
				cardNameVsControls.Remove(enumerator2.Current);
				break;
			}
		}
		controlsVsCardNames.Remove(childControl);
		childControl.Visible = true;
		if (selectedControl == childControl)
		{
			Next();
			if (selectedControl == childControl)
			{
				SelectedCard = string.Empty;
			}
		}
		base.RemoveLayoutComponent(childControl);
	}

	protected override void ResetLayoutInfo()
	{
		if (base.ContainerControl != null)
		{
			base.ContainerControl.SuspendLayout();
		}
		foreach (Control control in GetControls())
		{
			control.Visible = true;
		}
		if (base.ContainerControl != null)
		{
			base.ContainerControl.ResumeLayout(performLayout: false);
		}
		base.ResetLayoutInfo();
		cardNameVsControls.Clear();
		controlsVsCardNames.Clear();
		selectedControl = null;
	}

	public override Size PreferredLayoutSize()
	{
		Monitor.Enter(this);
		IList controls = GetControls();
		int count = controls.Count;
		int num = 0;
		int num2 = 0;
		for (int i = 0; i < count; i++)
		{
			Control control = controls[i] as Control;
			Size preferredSize = GetPreferredSize(control);
			if (preferredSize.Width > num)
			{
				num = preferredSize.Width;
			}
			if (preferredSize.Height > num2)
			{
				num2 = preferredSize.Height;
			}
		}
		Monitor.Exit(this);
		return new Size(AdjustWidthForMargins(num), AdjustHeightForMargins(num2));
	}

	public override Size MinimumLayoutSize()
	{
		Monitor.Enter(this);
		IList controls = GetControls();
		int count = controls.Count;
		int num = 0;
		int num2 = 0;
		for (int i = 0; i < count; i++)
		{
			Control control = controls[i] as Control;
			Size minimumSize = GetMinimumSize(control);
			if (minimumSize.Width > num)
			{
				num = minimumSize.Width;
			}
			if (minimumSize.Height > num2)
			{
				num2 = minimumSize.Height;
			}
		}
		Monitor.Exit(this);
		return new Size(num, num2);
	}

	[DocumentationExclude]
	public void ValidateHiddenStates()
	{
		IList controls = GetControls();
		foreach (Control item in controls)
		{
			if (item != selectedControl)
			{
				item.Visible = false;
			}
		}
		if (selectedControl != null)
		{
			selectedControl.Visible = true;
		}
	}

	public override void LayoutContainer()
	{
		if (!IsInit())
		{
			return;
		}
		Monitor.Enter(this);
		if (base.ContainerControl != null)
		{
			base.ContainerControl.SuspendLayout();
		}
		IList controls = GetControls();
		if (SelectedCard != null && SelectedCard.Length == 0 && controls.Count > 0)
		{
			SelectedCard = (string)controlsVsCardNames[controls[0]];
		}
		int count = controls.Count;
		for (int i = 0; i < count; i++)
		{
			Control control = controls[i] as Control;
			Rectangle bounds = GetBounds();
			Rectangle rectangle = new Rectangle(bounds.Top, bounds.Left, 0, 0);
			Size size = new Size(bounds.Width, bounds.Height);
			if (LayoutMode == CardLayoutMode.Default)
			{
				Size preferredSize = GetPreferredSize(control);
				Size minimumSize = GetMinimumSize(control);
				float num = (float)preferredSize.Width / (float)preferredSize.Height;
				if (size.Width >= preferredSize.Width)
				{
					rectangle.X += (size.Width - preferredSize.Width) / 2;
					rectangle.Width = preferredSize.Width;
				}
				else if (size.Width < preferredSize.Width && size.Width > minimumSize.Width)
				{
					rectangle.Width = size.Width;
				}
				else
				{
					rectangle.Width = minimumSize.Width;
				}
				if (size.Height >= preferredSize.Height)
				{
					rectangle.Y += (size.Height - preferredSize.Height) / 2;
					rectangle.Height = preferredSize.Height;
				}
				else if (size.Height < preferredSize.Height && size.Height > minimumSize.Height)
				{
					rectangle.Height = size.Height;
				}
				else
				{
					rectangle.Height = minimumSize.Height;
				}
				if (GetMaintainAspectRatio(control))
				{
					float num2 = rectangle.Width;
					float num3 = rectangle.Height;
					float num4 = num2 / num;
					float num5 = num3 * num;
					if (num4 < num3)
					{
						rectangle.Height = (int)num4;
						rectangle.Y = (size.Height - (int)num4) / 2;
					}
					else if (num5 < num2)
					{
						rectangle.Width = (int)num5;
						rectangle.X = (size.Width - (int)num5) / 2;
					}
				}
			}
			else
			{
				rectangle.Width = size.Width;
				rectangle.Height = size.Height;
			}
			CancelEventArgs e = new CancelEventArgs();
			OnRestoreChildPosition(e);
			if (!e.Cancel && control.Bounds != rectangle)
			{
				control.Bounds = rectangle;
				control.PerformLayout();
			}
		}
		if (base.ContainerControl != null)
		{
			base.ContainerControl.ResumeLayout(performLayout: true);
		}
		Monitor.Exit(this);
	}

	protected virtual void OnRestoreChildPosition(CancelEventArgs e)
	{
		if (this.RestoreChildPosition != null)
		{
			this.RestoreChildPosition(this, e);
		}
	}

	protected Control GetCurrentVisibleChild()
	{
		IList controls = GetControls();
		int count = controls.Count;
		for (int i = 0; i < count; i++)
		{
			Control control = controls[i] as Control;
			if (IsVisible(control))
			{
				return control;
			}
		}
		return null;
	}

	public void First()
	{
		if (!IsInit())
		{
			return;
		}
		Monitor.Enter(this);
		IList controls = GetControls();
		if (controls.Count == 0)
		{
			SelectedCard = string.Empty;
		}
		else
		{
			Control control = GetControls()[0] as Control;
			if (selectedControl != control)
			{
				SelectedCard = (string)controlsVsCardNames[control];
			}
		}
		Monitor.Exit(this);
	}

	public void Next()
	{
		if (!IsInit())
		{
			return;
		}
		Monitor.Enter(this);
		int nextCardIndex = NextCardIndex;
		IList controls = GetControls();
		if (nextCardIndex >= controls.Count)
		{
			SelectedCard = string.Empty;
		}
		else
		{
			Control control = controls[nextCardIndex] as Control;
			if (selectedControl != control)
			{
				SelectedCard = (string)controlsVsCardNames[control];
			}
		}
		Monitor.Exit(this);
	}

	public void Previous()
	{
		if (!IsInit())
		{
			return;
		}
		Monitor.Enter(this);
		int previousCardIndex = PreviousCardIndex;
		IList controls = GetControls();
		if (previousCardIndex >= controls.Count)
		{
			SelectedCard = string.Empty;
		}
		else
		{
			Control control = controls[previousCardIndex] as Control;
			if (selectedControl != control)
			{
				SelectedCard = (string)controlsVsCardNames[control];
			}
		}
		Monitor.Exit(this);
	}

	public void Last()
	{
		if (!IsInit())
		{
			return;
		}
		Monitor.Enter(this);
		IList controls = GetControls();
		if (controls.Count == 0)
		{
			SelectedCard = string.Empty;
		}
		else
		{
			Control control = controls[controls.Count - 1] as Control;
			if (selectedControl != control)
			{
				SelectedCard = (string)controlsVsCardNames[control];
			}
		}
		Monitor.Exit(this);
	}

	public void Show(string cardName)
	{
		if (IsInit())
		{
			SelectedCard = cardName;
		}
	}

	public ArrayList GetCardNames()
	{
		ArrayList arrayList = new ArrayList();
		IList controls = GetControls();
		foreach (Control item in controls)
		{
			arrayList.Add((string)controlsVsCardNames[item]);
		}
		return arrayList;
	}

	public Control GetComponentFromName(string cardName)
	{
		return cardNameVsControls[cardName] as Control;
	}
}
