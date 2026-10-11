using System;
using System.ComponentModel;
using System.Drawing;
using System.Resources;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridFindReplaceDialog : Form
{
	private const int indexWholeTable = 0;

	private const int indexColumnOnly = 1;

	private const int indexSelectionOnly = 2;

	private IGridFindReplaceDialogSink editView;

	private object lcrFoundOld;

	private int editOriginalCloseTop;

	private int offsetY;

	private bool inFind;

	private Label labelFindWhat;

	private CheckBox checkBoxMatchCase;

	private CheckBox checkBoxMatchWholeCell;

	private CheckBox checkBoxSearchUp;

	private Button buttonReplace;

	private Button buttonClose;

	private Button buttonFindNext;

	private Button buttonReplaceAll;

	private Label labelReplaceWith;

	private ComboBox comboBoxFindWhat;

	private ComboBox comboBoxReplaceWith;

	private ImageList imageList1;

	private ComboBox comboBoxSelection;

	private IContainer components;

	private string strNotFound = "The specified text was not found.";

	private string strCategory = "Search Results";

	private string strReachedStart = "Find reached the starting point of the search.";

	[ThreadStatic]
	private static GridFindReplaceDialog dialog;

	private GridFindReplaceDialogOptions options = GridFindReplaceDialogOptions.All;

	public static GridFindReplaceDialog Instance
	{
		get
		{
			if (dialog == null)
			{
				dialog = new GridFindReplaceDialog();
			}
			return dialog;
		}
	}

	public string TextSearched
	{
		get
		{
			return comboBoxFindWhat.Text;
		}
		set
		{
			comboBoxFindWhat.Text = value;
		}
	}

	[DefaultValue(GridFindReplaceDialogOptions.All)]
	public GridFindReplaceDialogOptions Options
	{
		get
		{
			return options;
		}
		set
		{
			if (options != value)
			{
				options = value;
				OnOptionsChanged(EventArgs.Empty);
				ApplyOptions();
			}
		}
	}

	public IGridFindReplaceDialogSink ActiveSink
	{
		get
		{
			return editView;
		}
		set
		{
			editView = value;
		}
	}

	public bool ShowReplaceButton
	{
		get
		{
			return buttonReplace.Visible;
		}
		set
		{
			buttonReplace.Visible = false;
		}
	}

	public event EventHandler OptionsChanged;

	public event CancelEventHandler TextNotFound;

	public event CancelEventHandler ReachedStartingPoint;

	private GridFindReplaceDialog()
	{
		InitializeComponent();
		editOriginalCloseTop = buttonClose.Top;
		offsetY = editOriginalCloseTop - buttonReplaceAll.Top;
		comboBoxSelection.SelectedIndex = 1;
		ApplyOptions();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	protected virtual void OnOptionsChanged(EventArgs e)
	{
		if (this.OptionsChanged != null)
		{
			this.OptionsChanged(this, e);
		}
	}

	public static void SetActiveSinkIfVisible(IGridFindReplaceDialogSink sink)
	{
		if (dialog != null)
		{
			dialog.ActiveSink = sink;
		}
	}

	public static void ResetFindLocation()
	{
		if (dialog != null && !dialog.inFind)
		{
			dialog.lcrFoundOld = null;
		}
	}

	public void AddToSearchedList(string str)
	{
		if (!comboBoxFindWhat.Items.Contains(comboBoxFindWhat.Text))
		{
			comboBoxFindWhat.Items.Insert(0, comboBoxFindWhat.Text);
		}
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		dialog = null;
		base.OnHandleDestroyed(e);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		System.Resources.ResourceManager resourceManager = new System.Resources.ResourceManager(typeof(Syncfusion.Windows.Forms.Grid.GridFindReplaceDialog));
		this.buttonReplaceAll = new System.Windows.Forms.Button();
		this.labelReplaceWith = new System.Windows.Forms.Label();
		this.checkBoxSearchUp = new System.Windows.Forms.CheckBox();
		this.comboBoxReplaceWith = new System.Windows.Forms.ComboBox();
		this.imageList1 = new System.Windows.Forms.ImageList(this.components);
		this.checkBoxMatchCase = new System.Windows.Forms.CheckBox();
		this.labelFindWhat = new System.Windows.Forms.Label();
		this.comboBoxFindWhat = new System.Windows.Forms.ComboBox();
		this.checkBoxMatchWholeCell = new System.Windows.Forms.CheckBox();
		this.buttonClose = new System.Windows.Forms.Button();
		this.buttonReplace = new System.Windows.Forms.Button();
		this.buttonFindNext = new System.Windows.Forms.Button();
		this.comboBoxSelection = new System.Windows.Forms.ComboBox();
		base.SuspendLayout();
		this.buttonReplaceAll.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.buttonReplaceAll.Location = new System.Drawing.Point(352, 64);
		this.buttonReplaceAll.Name = "buttonReplaceAll";
		this.buttonReplaceAll.TabIndex = 16;
		this.buttonReplaceAll.Text = "Replace &All";
		this.buttonReplaceAll.Click += new System.EventHandler(buttonReplaceAll_Click);
		this.labelReplaceWith.Location = new System.Drawing.Point(8, 36);
		this.labelReplaceWith.Name = "labelReplaceWith";
		this.labelReplaceWith.Size = new System.Drawing.Size(84, 14);
		this.labelReplaceWith.TabIndex = 3;
		this.labelReplaceWith.Text = "Re&place with:";
		this.checkBoxSearchUp.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.checkBoxSearchUp.Location = new System.Drawing.Point(208, 64);
		this.checkBoxSearchUp.Name = "checkBoxSearchUp";
		this.checkBoxSearchUp.Size = new System.Drawing.Size(124, 16);
		this.checkBoxSearchUp.TabIndex = 10;
		this.checkBoxSearchUp.Text = "Search &up";
		this.comboBoxReplaceWith.DropDownWidth = 280;
		this.comboBoxReplaceWith.Location = new System.Drawing.Point(96, 32);
		this.comboBoxReplaceWith.Name = "comboBoxReplaceWith";
		this.comboBoxReplaceWith.Size = new System.Drawing.Size(240, 21);
		this.comboBoxReplaceWith.TabIndex = 4;
		this.imageList1.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit;
		this.imageList1.ImageSize = new System.Drawing.Size(16, 16);
		this.imageList1.ImageStream = (System.Windows.Forms.ImageListStreamer)resourceManager.GetObject("imageList1.ImageStream");
		this.imageList1.TransparentColor = System.Drawing.Color.White;
		this.checkBoxMatchCase.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.checkBoxMatchCase.Location = new System.Drawing.Point(8, 64);
		this.checkBoxMatchCase.Name = "checkBoxMatchCase";
		this.checkBoxMatchCase.Size = new System.Drawing.Size(124, 16);
		this.checkBoxMatchCase.TabIndex = 6;
		this.checkBoxMatchCase.Text = "Match &case";
		this.labelFindWhat.Location = new System.Drawing.Point(8, 8);
		this.labelFindWhat.Name = "labelFindWhat";
		this.labelFindWhat.Size = new System.Drawing.Size(84, 14);
		this.labelFindWhat.TabIndex = 0;
		this.labelFindWhat.Text = "Fi&nd what:";
		this.comboBoxFindWhat.DropDownWidth = 256;
		this.comboBoxFindWhat.Location = new System.Drawing.Point(96, 4);
		this.comboBoxFindWhat.Name = "comboBoxFindWhat";
		this.comboBoxFindWhat.Size = new System.Drawing.Size(240, 21);
		this.comboBoxFindWhat.TabIndex = 1;
		this.comboBoxFindWhat.TextChanged += new System.EventHandler(comboBoxFindWhat_TextChanged);
		this.checkBoxMatchWholeCell.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.checkBoxMatchWholeCell.Location = new System.Drawing.Point(8, 94);
		this.checkBoxMatchWholeCell.Name = "checkBoxMatchWholeCell";
		this.checkBoxMatchWholeCell.Size = new System.Drawing.Size(124, 16);
		this.checkBoxMatchWholeCell.TabIndex = 7;
		this.checkBoxMatchWholeCell.Text = "Match &whole cell";
		this.buttonClose.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.buttonClose.Location = new System.Drawing.Point(352, 92);
		this.buttonClose.Name = "buttonClose";
		this.buttonClose.TabIndex = 18;
		this.buttonClose.Text = "Close";
		this.buttonClose.Click += new System.EventHandler(buttonClose_Click);
		this.buttonReplace.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.buttonReplace.Image = (System.Drawing.Bitmap)resourceManager.GetObject("buttonReplace.Image");
		this.buttonReplace.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
		this.buttonReplace.ImageIndex = 1;
		this.buttonReplace.ImageList = this.imageList1;
		this.buttonReplace.Location = new System.Drawing.Point(352, 36);
		this.buttonReplace.Name = "buttonReplace";
		this.buttonReplace.TabIndex = 15;
		this.buttonReplace.Text = "&Replace";
		this.buttonReplace.Click += new System.EventHandler(buttonReplace_Click);
		this.buttonFindNext.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.buttonFindNext.Location = new System.Drawing.Point(352, 8);
		this.buttonFindNext.Name = "buttonFindNext";
		this.buttonFindNext.TabIndex = 14;
		this.buttonFindNext.Text = "&Find Next";
		this.buttonFindNext.Click += new System.EventHandler(buttonFindNext_Click);
		this.comboBoxSelection.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
		this.comboBoxSelection.DropDownWidth = 128;
		this.comboBoxSelection.Enabled = false;
		this.comboBoxSelection.Items.AddRange(new object[3] { "Whole table", "Column only", "Selection only" });
		this.comboBoxSelection.Location = new System.Drawing.Point(208, 92);
		this.comboBoxSelection.Name = "comboBoxSelection";
		this.comboBoxSelection.Size = new System.Drawing.Size(128, 21);
		this.comboBoxSelection.TabIndex = 13;
		base.AcceptButton = this.buttonFindNext;
		base.ClientSize = new System.Drawing.Size(434, 124);
		base.Controls.AddRange(new System.Windows.Forms.Control[12]
		{
			this.comboBoxReplaceWith, this.labelReplaceWith, this.buttonReplaceAll, this.buttonClose, this.buttonReplace, this.buttonFindNext, this.comboBoxFindWhat, this.checkBoxSearchUp, this.checkBoxMatchWholeCell, this.checkBoxMatchCase,
			this.labelFindWhat, this.comboBoxSelection
		});
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
		base.MaximizeBox = false;
		base.MinimizeBox = false;
		base.Name = "GridFindReplaceDialog";
		this.Text = "GridFindReplaceDialog";
		base.TopMost = true;
		base.Closing += new System.ComponentModel.CancelEventHandler(GridFindReplaceDialog_Closing);
		base.VisibleChanged += new System.EventHandler(This_VisibleChanged);
		base.ResumeLayout(false);
	}

	private void This_VisibleChanged(object sender, EventArgs e)
	{
		if (base.Visible)
		{
			comboBoxFindWhat.Select();
		}
		else if (editView is Control)
		{
			((Control)editView).Focus();
		}
	}

	private void buttonClose_Click(object sender, EventArgs e)
	{
		Hide();
	}

	protected virtual void OnTextNotFound(CancelEventArgs e)
	{
		if (this.TextNotFound != null)
		{
			this.TextNotFound(this, e);
		}
		if (!e.Cancel)
		{
			buttonClose_Click(this, e);
			editView.ShowInfoMessage(strNotFound, strCategory);
		}
	}

	protected virtual void OnReachedStartingPoint(CancelEventArgs e)
	{
		if (this.ReachedStartingPoint != null)
		{
			this.ReachedStartingPoint(this, e);
		}
		if (!e.Cancel)
		{
			buttonClose_Click(this, e);
			editView.ShowInfoMessage(strReachedStart, strCategory);
		}
	}

	public void FindNext()
	{
		buttonFindNext_Click(this, EventArgs.Empty);
	}

	private void buttonFindNext_Click(object sender, EventArgs e)
	{
		object obj = lcrFoundOld;
		inFind = true;
		try
		{
			if (editView == null)
			{
				return;
			}
			AddToSearchedList(comboBoxFindWhat.Text);
			GridFindReplaceEventArgs e2 = CreateFindReplaceEventArgs();
			object obj2 = editView.Find(e2);
			if (obj2 == null)
			{
				OnTextNotFound(new CancelEventArgs(cancel: false));
				return;
			}
			Rectangle screenRect = editView.GetScreenRect(obj2);
			Point pt = new Point(screenRect.Right, screenRect.Bottom);
			if (base.Bounds.Contains(pt))
			{
				if (Screen.PrimaryScreen.WorkingArea.Contains(new Rectangle(pt.X + 8, base.Top, base.Width, base.Height)))
				{
					base.Left = pt.X + 8;
				}
				else if (Screen.PrimaryScreen.WorkingArea.Contains(new Rectangle(base.Left, pt.Y - 8 - base.Height, base.Width, base.Height)))
				{
					base.Top = pt.Y - 8 - base.Height;
				}
				else
				{
					pt = screenRect.Location;
					if (Screen.PrimaryScreen.WorkingArea.Contains(new Rectangle(pt.X - 8 - base.Width, base.Top, base.Width, base.Height)))
					{
						base.Left = pt.X - 8 - base.Width;
					}
					else
					{
						base.Left = 1;
						base.Top = 1;
					}
				}
			}
			if (obj2.Equals(obj))
			{
				OnReachedStartingPoint(new CancelEventArgs(cancel: false));
			}
			else if (lcrFoundOld == null)
			{
				lcrFoundOld = obj2;
			}
		}
		finally
		{
			inFind = false;
		}
	}

	private void buttonReplace_Click(object sender, EventArgs e)
	{
		if (buttonClose.Top != editOriginalCloseTop)
		{
			SetToReplaceState();
			comboBoxReplaceWith.Focus();
			return;
		}
		object obj = lcrFoundOld;
		inFind = true;
		try
		{
			if (editView == null)
			{
				return;
			}
			AddToSearchedList(comboBoxFindWhat.Text);
			GridFindReplaceEventArgs e2 = CreateFindReplaceEventArgs();
			object obj2 = editView.Replace(e2);
			if (obj2 == null)
			{
				OnTextNotFound(new CancelEventArgs(cancel: false));
				return;
			}
			Rectangle screenRect = editView.GetScreenRect(obj2);
			Point pt = new Point(screenRect.Right, screenRect.Bottom);
			if (base.Bounds.Contains(pt))
			{
				if (Screen.PrimaryScreen.WorkingArea.Contains(new Rectangle(pt.X + 8, base.Top, base.Width, base.Height)))
				{
					base.Left = pt.X + 8;
				}
				else if (Screen.PrimaryScreen.WorkingArea.Contains(new Rectangle(base.Left, pt.Y - 8 - base.Height, base.Width, base.Height)))
				{
					base.Top = pt.Y - 8 - base.Height;
				}
				else
				{
					pt = screenRect.Location;
					if (Screen.PrimaryScreen.WorkingArea.Contains(new Rectangle(pt.X - 8 - base.Width, base.Top, base.Width, base.Height)))
					{
						base.Left = pt.X - 8 - base.Width;
					}
					else
					{
						base.Left = 1;
						base.Top = 1;
					}
				}
			}
			if (obj2.Equals(obj))
			{
				OnReachedStartingPoint(new CancelEventArgs(cancel: false));
			}
			else if (lcrFoundOld == null)
			{
				lcrFoundOld = obj2;
			}
		}
		finally
		{
			inFind = false;
		}
	}

	private GridFindReplaceEventArgs CreateFindReplaceEventArgs()
	{
		bool bWholeTable = comboBoxSelection.SelectedIndex == 0;
		bool bColumnOnly = comboBoxSelection.SelectedIndex == 1;
		bool bSelectionOnly = comboBoxSelection.SelectedIndex == 2;
		return new GridFindReplaceEventArgs(comboBoxFindWhat.Text, comboBoxReplaceWith.Text, GridFindReplaceEventArgs.MakeFindOptions(checkBoxMatchCase.Checked, checkBoxMatchWholeCell.Checked, checkBoxSearchUp.Checked, bWholeTable, bColumnOnly, bSelectionOnly), lcrFoundOld);
	}

	private void comboBoxFindWhat_TextChanged(object sender, EventArgs e)
	{
		CheckButtonEnabledState();
		lcrFoundOld = null;
	}

	internal void SetFindText(string str)
	{
		comboBoxFindWhat.Text = str;
	}

	public void SetState(IGridFindReplaceDialogSink view, string str, bool bReplace)
	{
		editView = view;
		comboBoxFindWhat.Text = str;
		if (bReplace)
		{
			SetToReplaceState();
		}
		else
		{
			SetToFindState();
		}
	}

	private void SetToFindState()
	{
		if (buttonClose.Top == editOriginalCloseTop)
		{
			base.Height -= offsetY;
			labelReplaceWith.Visible = false;
			comboBoxReplaceWith.Visible = false;
			buttonReplaceAll.Visible = false;
			buttonReplace.ImageIndex = 1;
			buttonClose.Top -= offsetY;
			checkBoxMatchCase.Top -= offsetY;
			checkBoxMatchWholeCell.Top -= offsetY;
			checkBoxSearchUp.Top -= offsetY;
			comboBoxSelection.Top -= offsetY;
			CheckButtonEnabledState();
		}
	}

	private void SetToReplaceState()
	{
		if (buttonClose.Top != editOriginalCloseTop)
		{
			base.Height += offsetY;
			labelReplaceWith.Visible = true;
			comboBoxReplaceWith.Visible = true;
			buttonReplaceAll.Visible = true;
			buttonReplace.ImageIndex = -1;
			buttonClose.Top += offsetY;
			checkBoxMatchCase.Top += offsetY;
			checkBoxMatchWholeCell.Top += offsetY;
			checkBoxSearchUp.Top += offsetY;
			comboBoxSelection.Top += offsetY;
			if (GridUtil.IsEmpty(comboBoxFindWhat.Text))
			{
				buttonReplace.Enabled = false;
			}
			comboBoxFindWhat.Focus();
		}
	}

	private void CheckButtonEnabledState()
	{
		if (GridUtil.IsEmpty(comboBoxFindWhat.Text))
		{
			buttonFindNext.Enabled = false;
			if (buttonClose.Top == editOriginalCloseTop)
			{
				buttonReplace.Enabled = false;
			}
			else
			{
				buttonReplace.Enabled = true;
			}
			buttonReplaceAll.Enabled = false;
		}
		else
		{
			buttonFindNext.Enabled = true;
			buttonReplace.Enabled = true;
			buttonReplaceAll.Enabled = true;
		}
	}

	private void buttonReplaceAll_Click(object sender, EventArgs e)
	{
		GridFindReplaceEventArgs e2 = CreateFindReplaceEventArgs();
		editView.ReplaceAll(e2);
	}

	private string GetReplacedString(string strOld)
	{
		return comboBoxReplaceWith.Text;
	}

	private void GridFindReplaceDialog_Closing(object sender, CancelEventArgs e)
	{
		Hide();
		e.Cancel = true;
	}

	private void ApplyOptions()
	{
		if ((options & GridFindReplaceDialogOptions.ShowMatchCase) != GridFindReplaceDialogOptions.None)
		{
			checkBoxMatchCase.Visible = true;
		}
		else
		{
			checkBoxMatchCase.Visible = false;
		}
		if ((options & GridFindReplaceDialogOptions.ShowMatchWholeCell) != GridFindReplaceDialogOptions.None)
		{
			checkBoxMatchWholeCell.Visible = true;
		}
		else
		{
			checkBoxMatchWholeCell.Visible = false;
		}
		if ((options & GridFindReplaceDialogOptions.ShowSearchSelection) != GridFindReplaceDialogOptions.None)
		{
			comboBoxSelection.Visible = true;
			comboBoxSelection.Enabled = true;
		}
		else
		{
			comboBoxSelection.Visible = false;
		}
		if ((options & GridFindReplaceDialogOptions.ShowSearchUp) != GridFindReplaceDialogOptions.None)
		{
			checkBoxSearchUp.Visible = true;
		}
		else
		{
			checkBoxSearchUp.Visible = false;
		}
	}
}
