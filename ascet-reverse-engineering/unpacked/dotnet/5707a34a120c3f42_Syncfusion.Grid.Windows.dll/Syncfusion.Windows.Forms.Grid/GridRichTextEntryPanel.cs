using System;
using System.ComponentModel;
using System.Drawing;
using System.Resources;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxItem(false)]
public class GridRichTextEntryPanel : UserControl
{
	private ImageList imageList1;

	private Panel pnlFonts;

	private ComboBox fontComboBox;

	private ComboBox fontSizeComboBox;

	private Panel pnlFontsTB;

	private ToolBar tbFont;

	private ToolBarButton boldButton;

	private ToolBarButton italicButton;

	private ToolBarButton underLineButton;

	private ToolBar tbAlign;

	private ToolBarButton laButton;

	private ToolBarButton centerButton;

	private ToolBarButton raButton;

	private RichTextBox richTextBox1;

	private Button btnSave;

	private Button btnCancel;

	private IContainer components;

	private bool initDone;

	private FontStyle curStyle;

	private HorizontalAlignment curAlignment;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public RichTextBox RichTextBox => richTextBox1;

	public event EventHandler Save;

	public event EventHandler Cancel;

	public GridRichTextEntryPanel()
	{
		InitializeComponent();
		fontComboBox.DisplayMember = "Name";
		fontComboBox.ValueMember = "Name";
		fontComboBox.Items.AddRange(FontFamily.Families);
		fontComboBox.SelectedIndex = 2;
		fontSizeComboBox.SelectedIndex = 2;
		richTextBox1.TextChanged += richTextBox1_TextChanged;
		initDone = true;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		System.Resources.ResourceManager resourceManager = new System.Resources.ResourceManager(typeof(Syncfusion.Windows.Forms.Grid.GridRichTextEntryPanel));
		this.imageList1 = new System.Windows.Forms.ImageList(this.components);
		this.pnlFonts = new System.Windows.Forms.Panel();
		this.fontComboBox = new System.Windows.Forms.ComboBox();
		this.fontSizeComboBox = new System.Windows.Forms.ComboBox();
		this.pnlFontsTB = new System.Windows.Forms.Panel();
		this.tbFont = new System.Windows.Forms.ToolBar();
		this.boldButton = new System.Windows.Forms.ToolBarButton();
		this.italicButton = new System.Windows.Forms.ToolBarButton();
		this.underLineButton = new System.Windows.Forms.ToolBarButton();
		this.tbAlign = new System.Windows.Forms.ToolBar();
		this.laButton = new System.Windows.Forms.ToolBarButton();
		this.centerButton = new System.Windows.Forms.ToolBarButton();
		this.raButton = new System.Windows.Forms.ToolBarButton();
		this.richTextBox1 = new System.Windows.Forms.RichTextBox();
		this.btnSave = new System.Windows.Forms.Button();
		this.btnCancel = new System.Windows.Forms.Button();
		this.pnlFonts.SuspendLayout();
		this.pnlFontsTB.SuspendLayout();
		base.SuspendLayout();
		this.imageList1.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit;
		this.imageList1.ImageSize = new System.Drawing.Size(16, 16);
		this.imageList1.ImageStream = (System.Windows.Forms.ImageListStreamer)resourceManager.GetObject("imageList1.ImageStream");
		this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
		this.pnlFonts.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
		this.pnlFonts.Controls.AddRange(new System.Windows.Forms.Control[4] { this.fontComboBox, this.fontSizeComboBox, this.pnlFontsTB, this.tbAlign });
		this.pnlFonts.Name = "pnlFonts";
		this.pnlFonts.Size = new System.Drawing.Size(352, 24);
		this.pnlFonts.TabIndex = 6;
		this.fontComboBox.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
		this.fontComboBox.DisplayMember = "Name";
		this.fontComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
		this.fontComboBox.Location = new System.Drawing.Point(0, 1);
		this.fontComboBox.Name = "fontComboBox";
		this.fontComboBox.Size = new System.Drawing.Size(136, 21);
		this.fontComboBox.TabIndex = 5;
		this.fontComboBox.ValueMember = "Name";
		this.fontComboBox.SelectedIndexChanged += new System.EventHandler(fontComboBox_SelectedIndexChanged);
		this.fontSizeComboBox.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.fontSizeComboBox.Items.AddRange(new object[7] { "8", "9", "10", "11", "12", "14", "15" });
		this.fontSizeComboBox.Location = new System.Drawing.Point(140, 1);
		this.fontSizeComboBox.Name = "fontSizeComboBox";
		this.fontSizeComboBox.Size = new System.Drawing.Size(56, 21);
		this.fontSizeComboBox.TabIndex = 4;
		this.fontSizeComboBox.SelectedIndexChanged += new System.EventHandler(fontSizeComboBox_SelectedIndexChanged);
		this.pnlFontsTB.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.pnlFontsTB.Controls.AddRange(new System.Windows.Forms.Control[1] { this.tbFont });
		this.pnlFontsTB.Location = new System.Drawing.Point(202, 0);
		this.pnlFontsTB.Name = "pnlFontsTB";
		this.pnlFontsTB.Size = new System.Drawing.Size(72, 23);
		this.pnlFontsTB.TabIndex = 5;
		this.tbFont.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.tbFont.Appearance = System.Windows.Forms.ToolBarAppearance.Flat;
		this.tbFont.Buttons.AddRange(new System.Windows.Forms.ToolBarButton[3] { this.boldButton, this.italicButton, this.underLineButton });
		this.tbFont.Divider = false;
		this.tbFont.Dock = System.Windows.Forms.DockStyle.None;
		this.tbFont.DropDownArrows = true;
		this.tbFont.ImageList = this.imageList1;
		this.tbFont.Name = "tbFont";
		this.tbFont.ShowToolTips = true;
		this.tbFont.Size = new System.Drawing.Size(73, 23);
		this.tbFont.TabIndex = 4;
		this.tbFont.ButtonClick += new System.Windows.Forms.ToolBarButtonClickEventHandler(tbFont_ButtonClick);
		this.boldButton.ImageIndex = 3;
		this.boldButton.Style = System.Windows.Forms.ToolBarButtonStyle.ToggleButton;
		this.boldButton.ToolTipText = "Bold";
		this.italicButton.ImageIndex = 4;
		this.italicButton.Style = System.Windows.Forms.ToolBarButtonStyle.ToggleButton;
		this.italicButton.ToolTipText = "Italic";
		this.underLineButton.ImageIndex = 5;
		this.underLineButton.Style = System.Windows.Forms.ToolBarButtonStyle.ToggleButton;
		this.underLineButton.ToolTipText = "Underline";
		this.tbAlign.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.tbAlign.Appearance = System.Windows.Forms.ToolBarAppearance.Flat;
		this.tbAlign.Buttons.AddRange(new System.Windows.Forms.ToolBarButton[3] { this.laButton, this.centerButton, this.raButton });
		this.tbAlign.ButtonSize = new System.Drawing.Size(23, 22);
		this.tbAlign.Divider = false;
		this.tbAlign.Dock = System.Windows.Forms.DockStyle.None;
		this.tbAlign.DropDownArrows = true;
		this.tbAlign.ImageList = this.imageList1;
		this.tbAlign.Location = new System.Drawing.Point(280, 0);
		this.tbAlign.Name = "tbAlign";
		this.tbAlign.ShowToolTips = true;
		this.tbAlign.Size = new System.Drawing.Size(72, 23);
		this.tbAlign.TabIndex = 7;
		this.tbAlign.ButtonClick += new System.Windows.Forms.ToolBarButtonClickEventHandler(tbAlign_ButtonClick);
		this.laButton.ImageIndex = 0;
		this.laButton.Pushed = true;
		this.laButton.Style = System.Windows.Forms.ToolBarButtonStyle.ToggleButton;
		this.laButton.ToolTipText = "Left Aligned";
		this.centerButton.ImageIndex = 1;
		this.centerButton.Style = System.Windows.Forms.ToolBarButtonStyle.ToggleButton;
		this.centerButton.ToolTipText = "Center Aligned";
		this.raButton.ImageIndex = 2;
		this.raButton.Style = System.Windows.Forms.ToolBarButtonStyle.ToggleButton;
		this.raButton.ToolTipText = "Right Aligned";
		this.richTextBox1.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
		this.richTextBox1.Location = new System.Drawing.Point(0, 24);
		this.richTextBox1.Name = "richTextBox1";
		this.richTextBox1.Size = new System.Drawing.Size(352, 168);
		this.richTextBox1.TabIndex = 7;
		this.richTextBox1.Text = string.Empty;
		this.richTextBox1.SelectionChanged += new System.EventHandler(richTextBox1_SelectionChanged);
		this.btnSave.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.btnSave.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.btnSave.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.btnSave.Location = new System.Drawing.Point(176, 200);
		this.btnSave.Name = "btnSave";
		this.btnSave.Size = new System.Drawing.Size(72, 24);
		this.btnSave.TabIndex = 8;
		this.btnSave.Text = "&Save";
		this.btnSave.Click += new System.EventHandler(btnSave_Click);
		this.btnCancel.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.btnCancel.CausesValidation = false;
		this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.btnCancel.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.btnCancel.Location = new System.Drawing.Point(264, 200);
		this.btnCancel.Name = "btnCancel";
		this.btnCancel.Size = new System.Drawing.Size(72, 24);
		this.btnCancel.TabIndex = 8;
		this.btnCancel.Text = "&Cancel";
		this.btnCancel.Click += new System.EventHandler(btnCancel_Click);
		base.Controls.AddRange(new System.Windows.Forms.Control[4] { this.btnSave, this.richTextBox1, this.pnlFonts, this.btnCancel });
		base.Name = "GridRichTextEntryPanel";
		base.Size = new System.Drawing.Size(352, 232);
		this.pnlFonts.ResumeLayout(false);
		this.pnlFontsTB.ResumeLayout(false);
		base.ResumeLayout(false);
	}

	private void tbFont_ButtonClick(object sender, ToolBarButtonClickEventArgs e)
	{
		if (initDone)
		{
			tbAlign_ButtonClick(sender, e);
		}
	}

	private void tbAlign_ButtonClick(object sender, ToolBarButtonClickEventArgs e)
	{
		if (!initDone)
		{
			return;
		}
		if (e.Button == boldButton)
		{
			if (boldButton.Pushed)
			{
				curStyle |= FontStyle.Bold;
			}
			else
			{
				curStyle &= ~FontStyle.Bold;
			}
		}
		else if (e.Button == italicButton)
		{
			if (italicButton.Pushed)
			{
				curStyle |= FontStyle.Italic;
			}
			else
			{
				curStyle &= ~FontStyle.Italic;
			}
		}
		else if (e.Button == underLineButton)
		{
			if (underLineButton.Pushed)
			{
				curStyle |= FontStyle.Underline;
			}
			else
			{
				curStyle &= ~FontStyle.Underline;
			}
		}
		else if (e.Button == laButton)
		{
			if (laButton.Pushed)
			{
				curAlignment = HorizontalAlignment.Left;
				centerButton.Pushed = false;
				raButton.Pushed = false;
			}
			richTextBox1.SelectionAlignment = curAlignment;
		}
		else if (e.Button == centerButton)
		{
			if (centerButton.Pushed)
			{
				curAlignment = HorizontalAlignment.Center;
				laButton.Pushed = false;
				raButton.Pushed = false;
			}
			richTextBox1.SelectionAlignment = curAlignment;
		}
		else if (e.Button == raButton)
		{
			if (raButton.Pushed)
			{
				curAlignment = HorizontalAlignment.Right;
				laButton.Pushed = false;
				centerButton.Pushed = false;
			}
			richTextBox1.SelectionAlignment = curAlignment;
		}
		richTextBox1.Focus();
		UpdateFont();
	}

	private void fontComboBox_SelectedIndexChanged(object sender, EventArgs e)
	{
		if (initDone)
		{
			richTextBox1.Focus();
			UpdateFont();
		}
	}

	private void fontSizeComboBox_SelectedIndexChanged(object sender, EventArgs e)
	{
		if (initDone)
		{
			richTextBox1.Focus();
			UpdateFont();
		}
	}

	private void UpdateFont()
	{
		try
		{
			string text = fontComboBox.SelectedItem.ToString();
			int num = text.IndexOf("]");
			int num2 = text.IndexOf("=");
			if (num != -1 && num > num2)
			{
				text = text.Substring(text.IndexOf("=") + 1, text.IndexOf("]") - text.IndexOf("=") - 1);
			}
			richTextBox1.SelectionFont = FontUtil.CreateFont(text, float.Parse(fontSizeComboBox.Text), curStyle);
		}
		catch
		{
		}
	}

	private void btnSave_Click(object sender, EventArgs e)
	{
		if (this.Save != null)
		{
			this.Save(this, EventArgs.Empty);
		}
	}

	private void btnCancel_Click(object sender, EventArgs e)
	{
		if (this.Cancel != null)
		{
			this.Cancel(this, EventArgs.Empty);
		}
	}

	private void richTextBox1_SelectionChanged(object sender, EventArgs e)
	{
		if (!initDone)
		{
			return;
		}
		initDone = false;
		Font selectionFont = richTextBox1.SelectionFont;
		if (selectionFont != null)
		{
			try
			{
				curStyle = selectionFont.Style;
				fontComboBox.SelectedIndex = fontComboBox.FindString(selectionFont.Name);
				fontSizeComboBox.Text = selectionFont.SizeInPoints.ToString();
				boldButton.Pushed = (selectionFont.Style & FontStyle.Bold) != 0;
				underLineButton.Pushed = (selectionFont.Style & FontStyle.Underline) != 0;
				italicButton.Pushed = (selectionFont.Style & FontStyle.Italic) != 0;
				curAlignment = richTextBox1.SelectionAlignment;
				laButton.Pushed = curAlignment == HorizontalAlignment.Left;
				centerButton.Pushed = curAlignment == HorizontalAlignment.Center;
				raButton.Pushed = curAlignment == HorizontalAlignment.Right;
			}
			catch
			{
			}
		}
		initDone = true;
	}

	protected override bool ProcessDialogKey(Keys keyData)
	{
		if (base.ActiveControl == richTextBox1 && keyData == Keys.Return)
		{
			return false;
		}
		return base.ProcessDialogKey(keyData);
	}

	private void richTextBox1_TextChanged(object sender, EventArgs e)
	{
		richTextBox1_SelectionChanged(sender, e);
		richTextBox1.Font = Font;
	}
}
