using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Localization;

namespace Syncfusion.Windows.Forms;

[ToolboxBitmap(typeof(RecordNavigationBar), "ToolboxIcons.RecordNavigationBar.bmp")]
[ToolboxItem(true)]
public class RecordNavigationBar : ArrowButtonBar, IInternalButtonParent, IThemedControl
{
	private int currentRecord;

	private int minRecord = 1;

	private int maxRecord = -1;

	private bool addNewRecord = true;

	private bool bFocused;

	private RichTextBox textBox;

	private InternalButton labelButton;

	private InternalButton labelMaxButton;

	private Rectangle textArea = Rectangle.Empty;

	private int mouseDownTick = int.MaxValue;

	private int step = 1;

	private IRecordNavigationBarData rnbData;

	private bool textBoxVisible;

	private bool allowStepIncrease = true;

	private int correctedYCoord;

	protected IContainer components = new Container();

	private bool inSetCurrentRecord;

	[Description("Indicates whether the step for increasing the record position should be increased when the user holds down the mouse on a record navigation button for a longer period.")]
	[DefaultValue(true)]
	public bool AllowStepIncrease
	{
		get
		{
			return allowStepIncrease;
		}
		set
		{
			allowStepIncrease = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	protected override InternalButton[] NoArrowButtons => new InternalButton[2] { labelButton, null };

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	protected override InternalButton[] SingleArrowButtons
	{
		get
		{
			InternalButton[] array = (AllowAddNew ? new InternalButton[4]
			{
				new InternalArrowButton(this, ArrowType.Previous, SR.GetString("RecordNavigationBarPreviousRecord")),
				labelButton,
				null,
				new InternalArrowButton(this, ArrowType.Next, SR.GetString("RecordNavigationBarNextRecord"))
			} : new InternalButton[5]
			{
				new InternalArrowButton(this, ArrowType.Previous, SR.GetString("RecordNavigationBarPreviousRecord")),
				labelButton,
				null,
				new InternalArrowButton(this, ArrowType.Next, SR.GetString("RecordNavigationBarNextRecord")),
				new InternalArrowButton(this, ArrowType.AddNew, SR.GetString("RecordNavigationBarAllowAddNew"))
			});
			UpdateComponents(array);
			return array;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	protected override InternalButton[] AllArrowButtons
	{
		get
		{
			InternalButton[] array = (AllowAddNew ? new InternalButton[8]
			{
				new InternalArrowButton(this, ArrowType.First, SR.GetString("RecordNavigationBarFirstRecord")),
				new InternalArrowButton(this, ArrowType.Previous, SR.GetString("RecordNavigationBarPreviousRecord")),
				labelButton,
				null,
				labelMaxButton,
				new InternalArrowButton(this, ArrowType.Next, SR.GetString("RecordNavigationBarNextRecord")),
				new InternalArrowButton(this, ArrowType.Last, SR.GetString("RecordNavigationBarLastRecord")),
				new InternalArrowButton(this, ArrowType.AddNew, SR.GetString("RecordNavigationBarAllowAddNew"))
			} : new InternalButton[7]
			{
				new InternalArrowButton(this, ArrowType.First, SR.GetString("RecordNavigationBarFirstRecord")),
				new InternalArrowButton(this, ArrowType.Previous, SR.GetString("RecordNavigationBarPreviousRecord")),
				labelButton,
				null,
				labelMaxButton,
				new InternalArrowButton(this, ArrowType.Next, SR.GetString("RecordNavigationBarNextRecord")),
				new InternalArrowButton(this, ArrowType.Last, SR.GetString("RecordNavigationBarLastRecord"))
			});
			UpdateComponents(array);
			return array;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int CurrentRecord
	{
		get
		{
			return currentRecord;
		}
		set
		{
			SetCurrentRecord(value, force: false);
		}
	}

	[Description("Gets or sets the minimum record position.")]
	[DefaultValue(1)]
	public int MinRecord
	{
		get
		{
			if (rnbData == null)
			{
				return minRecord;
			}
			return rnbData.MinRecord;
		}
		set
		{
			if (minRecord != value)
			{
				minRecord = value;
				SyncArrowButtons();
			}
		}
	}

	[Description("Gets or sets the maximum record position.")]
	[DefaultValue(-1)]
	public int MaxRecord
	{
		get
		{
			if (rnbData == null)
			{
				return maxRecord;
			}
			return rnbData.MaxRecord;
		}
		set
		{
			if (maxRecord != value)
			{
				maxRecord = value;
				base.Enabled = MaxRecord >= MinRecord || AllowAddNew;
				SyncArrowButtons();
			}
		}
	}

	[Description("Indicates whether adding new records is enabled.")]
	[DefaultValue(true)]
	public bool AllowAddNew
	{
		get
		{
			if (rnbData == null)
			{
				return addNewRecord;
			}
			return rnbData.AllowAddNew;
		}
		set
		{
			if (addNewRecord != value)
			{
				addNewRecord = value;
				base.Enabled = MaxRecord >= MinRecord || AllowAddNew;
				SyncArrowButtons();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public IRecordNavigationBarData RnbData
	{
		get
		{
			return rnbData;
		}
		set
		{
			rnbData = value;
		}
	}

	[Description("Gets or sets the label to be displayed before the record field textbox.")]
	[DefaultValue("Record")]
	public string Label
	{
		get
		{
			return labelButton.Cookie.ToString();
		}
		set
		{
			if ((string)labelButton.Cookie != value)
			{
				labelButton.Cookie = value;
				PerformLayout();
			}
		}
	}

	[Description("Gets or sets an optional maximum label (e.g. of 1000).")]
	[DefaultValue("")]
	public string MaxLabel
	{
		get
		{
			return labelMaxButton.Cookie.ToString();
		}
		set
		{
			if ((string)labelMaxButton.Cookie != value)
			{
				labelMaxButton.Cookie = value;
				PerformLayout();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public RichTextBox TextBox
	{
		get
		{
			if (textBox == null)
			{
				textBox = OnCreateTextBox();
			}
			return textBox;
		}
	}

	[Description("Occurs when the current record is changing.")]
	public event CurrentRecordChangedEventHandler CurrentRecordChanging;

	[Description("Occurs when the current record is changed.")]
	public event CurrentRecordChangedEventHandler CurrentRecordChanged;

	public RecordNavigationBar()
	{
		labelButton = new InternalButton(this, SR.GetString("RecordNavigationBarRecord"), SR.GetString("RecordNavigationBarCurrentRecord"), default(Size), drawButton: false);
		components.Add(labelButton);
		labelMaxButton = new InternalButton(this, "", SR.GetString("RecordNavigationBarRecordCount"), default(Size), drawButton: false);
		components.Add(labelMaxButton);
		base.CausesValidation = false;
		SetStyle(ControlStyles.Selectable, value: false);
		base.Enabled = true;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			components.Dispose();
			if (textBox != null)
			{
				textBox.Dispose();
				textBox = null;
			}
		}
		base.Dispose(disposing);
	}

	protected internal virtual void ShowTextBox(bool setFocus)
	{
		RichTextBox richTextBox = TextBox;
		richTextBox.Font = Font;
		richTextBox.BackColor = BackColor;
		richTextBox.ForeColor = ForeColor;
		richTextBox.BorderStyle = BorderStyle.None;
		richTextBox.AllowDrop = false;
		richTextBox.AcceptsTab = false;
		richTextBox.AutoSize = false;
		richTextBox.Multiline = true;
		richTextBox.ShowSelectionMargin = false;
		richTextBox.ScrollBars = RichTextBoxScrollBars.None;
		richTextBox.Text = (base.Enabled ? CurrentRecord.ToString() : "");
		richTextBox.CausesValidation = false;
		richTextBox.Location = textArea.Location;
		richTextBox.Bounds = textArea;
		richTextBox.Visible = true;
		textBoxVisible = true;
		if (!base.Controls.Contains(richTextBox))
		{
			SuspendLayout();
			base.Controls.Add(richTextBox);
			ResumeLayout(performLayout: false);
		}
		if (setFocus && base.Enabled)
		{
			if (base.Parent is SplitterControl splitterControl)
			{
				splitterControl.ActiveControl = richTextBox;
				if (splitterControl.ActiveControl != richTextBox)
				{
					return;
				}
				Stack stack = new Stack();
				FixCausesValidation(stack);
				splitterControl.Focus();
				while (stack.Count > 0)
				{
					((Control)stack.Pop()).CausesValidation = true;
				}
				richTextBox.Show();
				richTextBox.Focus();
			}
			else
			{
				richTextBox.Focus();
			}
		}
		richTextBox.Modified = false;
		richTextBox.Refresh();
	}

	private void TextBoxLeave(object sender, EventArgs e)
	{
		HideTextBox();
	}

	private void TextBoxLostFocus(object sender, EventArgs e)
	{
		OnLostFocus(EventArgs.Empty);
		if (!inSetCurrentRecord)
		{
			HideTextBox();
		}
	}

	private void FixCausesValidation(Stack f)
	{
		foreach (Control control in base.Parent.Controls)
		{
			if (control.CausesValidation)
			{
				f.Push(control);
				control.CausesValidation = false;
			}
		}
	}

	protected override void OnMouseDown(MouseEventArgs mevent)
	{
		mouseDownTick = Environment.TickCount + 1500;
		step = 1;
		_ = TextBox;
		if (!base.DesignMode && textArea.Contains(new Point(mevent.X, mevent.Y)))
		{
			ShowTextBox(setFocus: true);
			return;
		}
		bFocused = textBox.Focused;
		base.OnMouseDown(mevent);
	}

	internal void HideTextBox()
	{
		textBoxVisible = false;
		if (textBox.Focused)
		{
			textBox.Location = new Point(-1000, 1000);
		}
		else
		{
			textBox.Visible = false;
		}
		Invalidate(textArea);
	}

	protected override void OnMouseUp(MouseEventArgs mevent)
	{
		base.OnMouseUp(mevent);
		if (base.IsHandleCreated && textBox.Focused)
		{
			ShowTextBox(setFocus: true);
		}
	}

	protected override void OnPaint(PaintEventArgs pe)
	{
		lock (this)
		{
			Region clip = pe.Graphics.Clip;
			if (!textBoxVisible && !textArea.IsEmpty && textArea.IntersectsWith(pe.ClipRectangle))
			{
				pe.Graphics.IntersectClip(textArea);
				Brush brush = new SolidBrush(ForeColor);
				Brush brush2 = new SolidBrush(BackColor);
				try
				{
					pe.Graphics.FillRectangle(brush2, textArea);
					StringFormat stringFormat = new StringFormat();
					Rectangle rectangle = textArea;
					string text = CurrentRecord.ToString();
					rectangle.Y = GetCorrectedYCoord(pe.Graphics, text);
					if (RightToLeft == RightToLeft.Yes)
					{
						stringFormat.Alignment = StringAlignment.Far;
					}
					if (base.Enabled && CurrentRecord >= MinRecord && CurrentRecord <= MaxRecord + (AllowAddNew ? 1 : 0))
					{
						pe.Graphics.DrawString(CurrentRecord.ToString(), Font, brush, rectangle, stringFormat);
					}
				}
				finally
				{
					brush.Dispose();
					brush2.Dispose();
				}
				pe.Graphics.Clip = clip;
			}
			pe.Graphics.ExcludeClip(textArea);
			base.OnPaint(pe);
			pe.Graphics.Clip = clip;
		}
	}

	protected override void OnEnabledChanged(EventArgs e)
	{
		base.OnEnabledChanged(e);
		if (textBox != null && !base.Enabled)
		{
			textBox.Text = "";
			textBox.Visible = false;
		}
		SyncArrowButtons();
	}

	public override void Refresh()
	{
		if (!base.Updating)
		{
			RichTextBox richTextBox = TextBox;
			if (richTextBox.IsHandleCreated && richTextBox.Visible)
			{
				richTextBox.Refresh();
			}
			SyncArrowButtons();
		}
		base.Refresh();
	}

	[DocumentationExclude]
	public static Rectangle CenterInRect(Rectangle rect, Size size)
	{
		int num = 0;
		if (size.Width < rect.Width)
		{
			num = rect.Width - size.Width;
		}
		int num2 = 0;
		if (size.Height < rect.Height)
		{
			num2 = rect.Height - size.Height;
		}
		return new Rectangle(rect.Left + num / 2, rect.Top + num2 / 2, Math.Min(size.Width, rect.Width), Math.Min(size.Height, rect.Height));
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		Graphics graphics = CreateGraphics();
		Font font = Font;
		Size size = graphics.MeasureString(currentRecord.ToString(), font).ToSize();
		size.Width++;
		graphics.Dispose();
		labelButton.HideButton = false;
		labelMaxButton.HideButton = false;
		base.OnLayout(levent);
		InternalButtonBar buttonBarChild = base.ButtonBarChild;
		if (!size.IsEmpty && !labelButton.Size.IsEmpty && buttonBarChild.placeHolderBounds.Width < size.Width / 2)
		{
			labelButton.HideButton = true;
			if (buttonBarChild.placeHolderBounds.Width == 0)
			{
				buttonBarChild.placeHolderBounds = labelButton.Bounds;
			}
			else
			{
				int num = labelButton.Size.Width;
				buttonBarChild.placeHolderBounds.X -= num;
				buttonBarChild.placeHolderBounds.Width += num;
				labelButton.Bounds = buttonBarChild.placeHolderBounds;
			}
		}
		Rectangle placeHolderBounds = buttonBarChild.placeHolderBounds;
		if (!placeHolderBounds.IsEmpty)
		{
			textArea = new Rectangle(placeHolderBounds.Location, size);
			textArea.Height = Math.Max(textArea.Height, buttonBarChild.Bounds.Height);
			if (RightToLeft == RightToLeft.Yes)
			{
				textArea.X = buttonBarChild.Bounds.Right - textArea.Right + buttonBarChild.Bounds.Left;
			}
			if (textBoxVisible)
			{
				TextBox.Bounds = textArea;
			}
			labelMaxButton.Bounds = new Rectangle((RightToLeft == RightToLeft.Yes) ? textArea.Left : textArea.Right, textArea.Top, labelMaxButton.Bounds.Width, labelMaxButton.Bounds.Height);
		}
	}

	public override void OnClickedButton(InternalButton button)
	{
		if (button is InternalArrowButton internalArrowButton)
		{
			ArrowButtonEventArgs e = new ArrowButtonEventArgs(internalArrowButton.Type);
			OnArrowButtonClicked(e);
			if (e.Cancel)
			{
				return;
			}
			if (Environment.TickCount > mouseDownTick)
			{
				mouseDownTick = Environment.TickCount + 1000;
				if (allowStepIncrease)
				{
					step = Math.Min(9, step + 1);
				}
			}
			switch (internalArrowButton.Type)
			{
			case ArrowType.First:
				CurrentRecord = MinRecord;
				break;
			case ArrowType.Last:
				CurrentRecord = MaxRecord;
				break;
			case ArrowType.Next:
				CurrentRecord = Math.Min(CurrentRecord + step, MaxRecord);
				break;
			case ArrowType.Previous:
				CurrentRecord = Math.Max(CurrentRecord - step, 1);
				break;
			case ArrowType.AddNew:
				CurrentRecord = MaxRecord + 1;
				break;
			}
			PerformLayout();
			if (!TextBox.Focused)
			{
				HideTextBox();
			}
		}
		else
		{
			switch (button.SpinButton)
			{
			case SpinButtonType.Up:
				CurrentRecord++;
				break;
			case SpinButtonType.Down:
				CurrentRecord--;
				break;
			}
		}
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override bool ProcessKeyPreview(ref Message m)
	{
		if (textBox.IsHandleCreated && (int)m.WParam == 13)
		{
			if (m.Msg == 256)
			{
				try
				{
					CurrentRecord = int.Parse(textBox.Text);
				}
				catch (Exception ex)
				{
					TraceUtil.TraceExceptionCatched(ex);
					if (!ExceptionManager.RaiseExceptionCatched(null, ex))
					{
						throw;
					}
				}
				textBox.Modified = false;
			}
			return true;
		}
		return base.ProcessKeyPreview(ref m);
	}

	private void SyncArrowButtons()
	{
		ArrowType arrowType = ArrowType.None;
		if (base.Enabled)
		{
			if (CurrentRecord != MinRecord)
			{
				arrowType |= ArrowType.First;
			}
			if (CurrentRecord > MinRecord)
			{
				arrowType |= ArrowType.Previous;
			}
			if (MaxRecord == -1 || CurrentRecord < MaxRecord)
			{
				arrowType |= ArrowType.Next;
			}
			if (MaxRecord != -1 && CurrentRecord != MaxRecord && MaxRecord + (AllowAddNew ? 1 : 0) > MinRecord)
			{
				arrowType |= ArrowType.Last;
			}
			if (AllowAddNew && CurrentRecord != MaxRecord + 1)
			{
				arrowType |= ArrowType.AddNew;
			}
		}
		base.EnableButtonFlags = arrowType;
	}

	private bool IsValidRecord(int record)
	{
		if (record == 0)
		{
			return true;
		}
		if (record < MinRecord)
		{
			return false;
		}
		if (MaxRecord == -1)
		{
			return true;
		}
		if (AllowAddNew && record <= MaxRecord + 1)
		{
			return true;
		}
		return record <= MaxRecord;
	}

	private void UpdateComponents(InternalButton[] buttons)
	{
		foreach (InternalButton internalButton in buttons)
		{
			if (internalButton != null && internalButton != labelButton)
			{
				components.Add(internalButton);
			}
		}
	}

	public void SetCurrentRecord(int value, bool force)
	{
		SetCurrentRecord(value, force, raiseChanged: true);
	}

	public void SetCurrentRecord(int value, bool force, bool raiseChanged)
	{
		inSetCurrentRecord = true;
		if ((force || currentRecord != value) && IsValidRecord(value) && (!raiseChanged || OnCurrentRecordChanging(ref value)))
		{
			if (force || currentRecord != value)
			{
				currentRecord = value;
				SyncArrowButtons();
				try
				{
					RichTextBox richTextBox = TextBox;
					richTextBox.Visible = false;
					richTextBox.Text = (base.Enabled ? CurrentRecord.ToString() : "");
					if (!base.Updating && !richTextBox.Visible)
					{
						Invalidate(textArea);
						Update();
					}
				}
				catch (Exception ex)
				{
					TraceUtil.TraceExceptionCatched(ex);
					if (!ExceptionManager.RaiseExceptionCatched(null, ex))
					{
						throw;
					}
				}
			}
			inSetCurrentRecord = false;
			if (raiseChanged)
			{
				OnCurrentRecordChanged(value);
			}
		}
		inSetCurrentRecord = false;
	}

	public void SetValues(int min, int max, string label, bool allowAdd, int current)
	{
		if (base.InvokeRequired)
		{
			Invoke(new MethodInvoker(base.Update), min, max, label, allowAdd, current);
		}
		else
		{
			MaxRecord = max;
			MinRecord = min;
			AllowAddNew = allowAdd;
			MaxLabel = label;
			CurrentRecord = current;
		}
	}

	private RichTextBox OnCreateTextBox()
	{
		RichTextBox richTextBox = new RecordNavigationBarTextBox();
		richTextBox.Visible = false;
		richTextBox.TabStop = false;
		richTextBox.CausesValidation = false;
		richTextBox.KeyPress += TextBoxKeyPress;
		richTextBox.Leave += TextBoxLeave;
		richTextBox.LostFocus += TextBoxLostFocus;
		return richTextBox;
	}

	private void TextBoxKeyPress(object sender, KeyPressEventArgs e)
	{
		if (!char.IsDigit(e.KeyChar))
		{
			e.Handled = true;
		}
	}

	[DocumentationExclude]
	protected void RaiseCurrentRecordChangingEvent(CurrentRecordEventArgs e)
	{
		if (this.CurrentRecordChanging != null)
		{
			this.CurrentRecordChanging(this, e);
		}
	}

	protected virtual bool OnCurrentRecordChanging(ref int record)
	{
		CurrentRecordEventArgs e = new CurrentRecordEventArgs(record);
		RaiseCurrentRecordChangingEvent(e);
		record = e.Record;
		return !e.Cancel;
	}

	[DocumentationExclude]
	protected void RaiseCurrentRecordChangedEvent(CurrentRecordEventArgs e)
	{
		if (this.CurrentRecordChanged != null)
		{
			this.CurrentRecordChanged(this, e);
		}
	}

	protected virtual void OnCurrentRecordChanged(int record)
	{
		CurrentRecordEventArgs e = new CurrentRecordEventArgs(record);
		RaiseCurrentRecordChangedEvent(e);
	}

	private int GetCorrectedYCoord(Graphics g, string text)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (text == null)
		{
			throw new ArgumentNullException("text");
		}
		Size size = g.MeasureString(text, Font).ToSize();
		Rectangle rect = textArea;
		correctedYCoord = CenterInRect(rect, size).Y;
		return correctedYCoord;
	}
}
