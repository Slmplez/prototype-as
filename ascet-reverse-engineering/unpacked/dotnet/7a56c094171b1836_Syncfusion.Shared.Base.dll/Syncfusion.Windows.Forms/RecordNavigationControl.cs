using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(true)]
[Description("Represents a control with splitter frame and NavigationBar on the bottom left scrollbar.")]
[ToolboxBitmap(typeof(RecordNavigationControl), "ToolboxIcons.RecordNavigationControl.bmp")]
[Designer(typeof(RecordNavigationControlDesigner), typeof(IDesigner))]
public class RecordNavigationControl : SplitterControl
{
	private RecordNavigationScrollBar recordNavigationBar;

	public override bool ThemesEnabled
	{
		get
		{
			return NavigationBar.ThemesEnabled;
		}
		set
		{
			NavigationBar.ThemesEnabled = value;
			base.ThemesEnabled = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public RecordNavigationScrollBar NavigationBar
	{
		get
		{
			if (recordNavigationBar == null)
			{
				SuspendLayout();
				Control scrollBar = CreateScrollBar(ScrollBars.Horizontal, 0);
				recordNavigationBar = new RecordNavigationScrollBar(scrollBar);
				recordNavigationBar.SuspendLayout();
				recordNavigationBar.BeginUpdate();
				recordNavigationBar.DisabledColor = SystemColors.GrayText;
				recordNavigationBar.EnabledColor = SystemColors.WindowText;
				recordNavigationBar.ButtonLook = base.ButtonLook;
				recordNavigationBar.MaxRecord = 1000;
				recordNavigationBar.Font = Font;
				recordNavigationBar.DisplayArrowButtons = DisplayArrowButtons.All;
				recordNavigationBar.ShowToolTips = base.ShowToolTips;
				recordNavigationBar.MaxLabel = "";
				recordNavigationBar.BackColor = SystemColors.Window;
				recordNavigationBar.AllowAddNew = false;
				recordNavigationBar.CurrentRecordChanged += NavigationBarCurrentRecordChanged;
				recordNavigationBar.CurrentRecordChanging += NavigationBarCurrentRecordChanging;
				recordNavigationBar.ArrowButtonClicked -= NavigationBarArrowButtonClicked;
				recordNavigationBar.Click += NavigationBarClick;
				recordNavigationBar.Dock = DockStyle.None;
				recordNavigationBar.Anchor = AnchorStyles.None;
				recordNavigationBar.TabStop = false;
				hScrollBars[0] = recordNavigationBar;
				recordNavigationBar.EndUpdate(refresh: false);
				recordNavigationBar.ResumeLayout(performLayout: false);
				ResumeLayout(performLayout: false);
			}
			return recordNavigationBar;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int CurrentRecord
	{
		get
		{
			return NavigationBar.CurrentRecord;
		}
		set
		{
			NavigationBar.CurrentRecord = value;
		}
	}

	[Description("Gets or sets the minimum record position.")]
	public int MinRecord
	{
		get
		{
			return NavigationBar.MinRecord;
		}
		set
		{
			NavigationBar.MinRecord = value;
		}
	}

	[Description("Gets or sets the maximum record position.")]
	public int MaxRecord
	{
		get
		{
			return NavigationBar.MaxRecord;
		}
		set
		{
			NavigationBar.MaxRecord = value;
		}
	}

	[Description("Indicates whether adding new records is enabled.")]
	public bool AllowAddNew
	{
		get
		{
			return NavigationBar.AllowAddNew;
		}
		set
		{
			NavigationBar.AllowAddNew = value;
		}
	}

	[DefaultValue("Record")]
	[Description("Gets or sets the label to be displayed before the record field textbox.")]
	public string Label
	{
		get
		{
			return NavigationBar.Label;
		}
		set
		{
			NavigationBar.Label = value;
		}
	}

	[Description("Gets or sets an optional maximum label (e.g. of 1000).")]
	[DefaultValue("")]
	public string MaxLabel
	{
		get
		{
			return NavigationBar.MaxLabel;
		}
		set
		{
			NavigationBar.MaxLabel = value;
		}
	}

	[Description("Milliseconds to wait before repeatedly firing scroll event.")]
	[DefaultValue(200)]
	public int RepeatClickDelay
	{
		get
		{
			return NavigationBar.RepeatClickDelay;
		}
		set
		{
			NavigationBar.RepeatClickDelay = value;
		}
	}

	[DefaultValue(20)]
	[Description("Shortest interval for firing scroll event.")]
	public int MinRepeatClickDelay
	{
		get
		{
			return NavigationBar.MinRepeatClickDelay;
		}
		set
		{
			NavigationBar.MinRepeatClickDelay = value;
		}
	}

	[DefaultValue(DisplayArrowButtons.All)]
	[Description("Gets or sets the arrow button that should be shown in an arrow bar.")]
	public DisplayArrowButtons NavigationButtons
	{
		get
		{
			return NavigationBar.DisplayArrowButtons;
		}
		set
		{
			NavigationBar.DisplayArrowButtons = value;
		}
	}

	[Description("Gets or sets the backcolor of the navigation bar.")]
	public Color NavigationBarBackColor
	{
		get
		{
			return NavigationBar.BackColor;
		}
		set
		{
			NavigationBar.BackColor = value;
		}
	}

	[DefaultValue(216)]
	[Description("Gets or sets the width of the navigation bar.")]
	public int NavigationBarWidth
	{
		get
		{
			return NavigationBar.PrefWidth;
		}
		set
		{
			NavigationBar.PrefWidth = value;
			PerformLayout();
			Refresh();
		}
	}

	[Description("Gets or sets the color of arrows in enabled buttons.")]
	public Color EnabledArrowColor
	{
		get
		{
			return NavigationBar.EnabledColor;
		}
		set
		{
			NavigationBar.EnabledColor = value;
		}
	}

	[Description("Gets or sets the color of arrows in disabled buttons.")]
	public Color DisabledArrowColor
	{
		get
		{
			return NavigationBar.DisabledColor;
		}
		set
		{
			NavigationBar.DisabledColor = value;
		}
	}

	[Description("Occurs when the current record is changed.")]
	public event CurrentRecordChangedEventHandler CurrentRecordChanged;

	[Description("Occurs when the current record is changing.")]
	public event CurrentRecordChangedEventHandler CurrentRecordChanging;

	[Description("Occurs when the user clicks an arrow button.")]
	public event ArrowButtonEventHandler ArrowButtonClicked;

	protected virtual void OnArrowButtonClicked(ArrowButtonEventArgs e)
	{
		if (this.ArrowButtonClicked != null)
		{
			this.ArrowButtonClicked(this, e);
		}
	}

	private void NavigationBarArrowButtonClicked(object sender, ArrowButtonEventArgs e)
	{
		OnArrowButtonClicked(e);
	}

	protected virtual void OnCurrentRecordChanged(CurrentRecordEventArgs e)
	{
		if (this.CurrentRecordChanged != null)
		{
			this.CurrentRecordChanged(this, e);
		}
	}

	protected virtual void OnCurrentRecordChanging(CurrentRecordEventArgs e)
	{
		if (this.CurrentRecordChanging != null)
		{
			this.CurrentRecordChanging(this, e);
		}
	}

	public RecordNavigationControl()
	{
		Font = new Font("Microsoft Sans Serif", 10f, FontStyle.Bold);
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		if (recordNavigationBar != null)
		{
			recordNavigationBar.Font = Font;
			PerformLayout();
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && recordNavigationBar != null)
		{
			recordNavigationBar.CurrentRecordChanged -= NavigationBarCurrentRecordChanged;
			recordNavigationBar.CurrentRecordChanging -= NavigationBarCurrentRecordChanging;
			recordNavigationBar.ArrowButtonClicked -= NavigationBarArrowButtonClicked;
			recordNavigationBar.Dispose();
		}
		base.Dispose(disposing);
	}

	protected override Control CreateScrollBarContainer(ScrollBars sbType, int index)
	{
		if (sbType == ScrollBars.Horizontal && index == 0)
		{
			return NavigationBar;
		}
		return base.CreateScrollBarContainer(sbType, index);
	}

	protected override void OnControlGotFocus()
	{
		base.OnControlGotFocus();
		if (recordNavigationBar != null && base.ActiveControl != null && recordNavigationBar.Contains(base.ActiveControl))
		{
			recordNavigationBar.ShowTextBox(setFocus: true);
		}
	}

	protected override void OnValidatingLostFocus()
	{
		if (recordNavigationBar != null)
		{
			recordNavigationBar.NotifyCancelMode();
		}
		base.OnValidatingLostFocus();
	}

	private void NavigationBarClick(object sender, EventArgs e)
	{
		OnClick(e);
	}

	public override void Refresh()
	{
		PerformLayout();
		NavigationBar.PerformLayout();
		base.Refresh();
	}

	private void NavigationBarCurrentRecordChanged(object sender, CurrentRecordEventArgs e)
	{
		OnCurrentRecordChanged(e);
	}

	private void NavigationBarCurrentRecordChanging(object sender, CurrentRecordEventArgs e)
	{
		OnCurrentRecordChanging(e);
	}

	private bool ShouldSerializeMinRecord()
	{
		if (NavigationBar.RnbData == null)
		{
			return MinRecord != 1;
		}
		return false;
	}

	public void ResetMinRecord()
	{
		MinRecord = 1;
	}

	private bool ShouldSerializeMaxRecord()
	{
		if (NavigationBar.RnbData == null)
		{
			return MaxRecord != -1;
		}
		return false;
	}

	public void ResetMaxRecord()
	{
		MaxRecord = -1;
	}

	private bool ShouldSerializeAllowAddNew()
	{
		if (NavigationBar.RnbData == null)
		{
			return !AllowAddNew;
		}
		return false;
	}

	public void ResetAllowAddNew()
	{
		AllowAddNew = true;
	}

	public void ResetNavigationBarBackColor()
	{
		NavigationBar.BackColor = SystemColors.Window;
	}

	private bool ShouldSerializeNavigationBarBackColor()
	{
		return NavigationBar.BackColor != SystemColors.Window;
	}

	public void ResetEnabledArrowColor()
	{
		EnabledArrowColor = SystemColors.WindowText;
	}

	private bool ShouldSerializeEnabledArrowColor()
	{
		return EnabledArrowColor != SystemColors.WindowText;
	}

	public void ResetDisabledArrowColor()
	{
		DisabledArrowColor = SystemColors.GrayText;
	}

	private bool ShouldSerializeDisabledArrowColor()
	{
		return DisabledArrowColor != SystemColors.GrayText;
	}

	protected override void OnButtonLookChanged(EventArgs e)
	{
		if (recordNavigationBar != null)
		{
			recordNavigationBar.ButtonLook = base.ButtonLook;
		}
		base.OnButtonLookChanged(e);
	}

	protected override void OnShowToolTipsChanged(EventArgs e)
	{
		if (recordNavigationBar != null)
		{
			recordNavigationBar.ShowToolTips = base.ShowToolTips;
		}
		base.OnShowToolTipsChanged(e);
	}

	public override void OnMoveSplitter(object sender, int x, int y)
	{
		NavigationBar.HideTextBox();
		base.OnMoveSplitter(sender, x, y);
	}
}
