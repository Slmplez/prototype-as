using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class TreeViewAdvBaseStylesEditorForm : Form
{
	private PropertyGrid propertyGrid1;

	private Label propLabel;

	private Label memLabel;

	private Label label1;

	private Button addBtn;

	private Button removeBtn;

	private static string ResetHintString = "Right Click to Reset";

	private string propBaseString;

	private Hashtable baseStyles;

	private TreeViewAdv treeView;

	private EditableList styleNamesList;

	private ToolTip toolTip1;

	private Button closeBtn;

	private IContainer components;

	private Button addNodeLevelBtn;

	private PropertyGridContextMenu pgMenu;

	private int tooltipIndex;

	private ListBox ListBox => styleNamesList.ListBox;

	private int ToolTipIndex
	{
		get
		{
			return tooltipIndex;
		}
		set
		{
			if (tooltipIndex != value)
			{
				tooltipIndex = value;
				string caption = string.Empty;
				if (tooltipIndex != -1)
				{
					caption = treeView.GetHintTextForStyle(ListBox.Items[tooltipIndex].ToString());
				}
				toolTip1.SetToolTip(ListBox, caption);
			}
		}
	}

	protected TreeViewAdvBaseStylesEditorForm()
	{
		InitializeComponent();
	}

	public TreeViewAdvBaseStylesEditorForm(TreeViewAdv treeView)
	{
		InitializeComponent();
		this.treeView = treeView;
		baseStyles = treeView.BaseStyles;
		pgMenu = new PropertyGridContextMenu(propertyGrid1);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (pgMenu != null)
			{
				pgMenu.Dispose();
				pgMenu = null;
			}
			if (components != null)
			{
				components.Dispose();
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		this.propertyGrid1 = new System.Windows.Forms.PropertyGrid();
		this.propLabel = new System.Windows.Forms.Label();
		this.memLabel = new System.Windows.Forms.Label();
		this.styleNamesList = new Syncfusion.Windows.Forms.Tools.EditableList();
		this.label1 = new System.Windows.Forms.Label();
		this.addBtn = new System.Windows.Forms.Button();
		this.removeBtn = new System.Windows.Forms.Button();
		this.closeBtn = new System.Windows.Forms.Button();
		this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
		this.addNodeLevelBtn = new System.Windows.Forms.Button();
		base.SuspendLayout();
		this.propertyGrid1.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
		this.propertyGrid1.CommandsVisibleIfAvailable = true;
		this.propertyGrid1.LargeButtons = false;
		this.propertyGrid1.LineColor = System.Drawing.SystemColors.ScrollBar;
		this.propertyGrid1.Location = new System.Drawing.Point(224, 48);
		this.propertyGrid1.Name = "propertyGrid1";
		this.propertyGrid1.Size = new System.Drawing.Size(240, 368);
		this.propertyGrid1.TabIndex = 6;
		this.propertyGrid1.Text = "propertyGrid1";
		this.propertyGrid1.ToolbarVisible = false;
		this.propertyGrid1.ViewBackColor = System.Drawing.SystemColors.Window;
		this.propertyGrid1.ViewForeColor = System.Drawing.SystemColors.WindowText;
		this.propertyGrid1.SelectedObjectsChanged += new System.EventHandler(propertyGrid1_SelectedObjectsChanged);
		this.propLabel.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
		this.propLabel.Location = new System.Drawing.Point(224, 8);
		this.propLabel.Name = "propLabel";
		this.propLabel.Size = new System.Drawing.Size(240, 32);
		this.propLabel.TabIndex = 5;
		this.propLabel.Text = "&Properties";
		this.memLabel.Location = new System.Drawing.Point(8, 8);
		this.memLabel.Name = "memLabel";
		this.memLabel.Size = new System.Drawing.Size(200, 32);
		this.memLabel.TabIndex = 1;
		this.memLabel.Text = "&BaseStyles: (F2 or Mouse Click to edit)";
		this.styleNamesList.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.styleNamesList.Button.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
		this.styleNamesList.Button.Location = new System.Drawing.Point(112, 120);
		this.styleNamesList.Button.Name = "button";
		this.styleNamesList.Button.Size = new System.Drawing.Size(30, 20);
		this.styleNamesList.Button.TabIndex = 2;
		this.styleNamesList.Button.Text = "...";
		this.styleNamesList.Button.Visible = false;
		this.styleNamesList.Controls.AddRange(new System.Windows.Forms.Control[3]
		{
			this.styleNamesList.Button,
			this.styleNamesList.TextBox,
			this.styleNamesList.ListBox
		});
		this.styleNamesList.ListBox.Dock = System.Windows.Forms.DockStyle.Fill;
		this.styleNamesList.ListBox.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
		this.styleNamesList.ListBox.Name = "listBox";
		this.styleNamesList.ListBox.Size = new System.Drawing.Size(200, 303);
		this.styleNamesList.ListBox.TabIndex = 0;
		this.styleNamesList.ListBox.MouseMove += new System.Windows.Forms.MouseEventHandler(styleNamesList_ListBox_MouseMove);
		this.styleNamesList.ListBox.SelectedIndexChanged += new System.EventHandler(styleNamesList_ListBox_SelectedIndexChanged);
		this.styleNamesList.Location = new System.Drawing.Point(8, 48);
		this.styleNamesList.Name = "styleNamesList";
		this.styleNamesList.Size = new System.Drawing.Size(200, 312);
		this.styleNamesList.TabIndex = 2;
		this.styleNamesList.TextBox.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this.styleNamesList.TextBox.Location = new System.Drawing.Point(8, 120);
		this.styleNamesList.TextBox.Name = "textBox";
		this.styleNamesList.TextBox.TabIndex = 2;
		this.styleNamesList.TextBox.Visible = false;
		this.styleNamesList.WantButton = false;
		this.styleNamesList.ItemChanging += new Syncfusion.Windows.Forms.Tools.ListBoxTextChangingEventHandler(styleNamesList_ItemChanging);
		this.styleNamesList.BeforeListItemEdit += new System.ComponentModel.CancelEventHandler(styleNamesList_BeforeListItemEdit);
		this.label1.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
		this.label1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
		this.label1.Location = new System.Drawing.Point(8, 424);
		this.label1.Name = "label1";
		this.label1.Size = new System.Drawing.Size(456, 3);
		this.label1.TabIndex = 8;
		this.addBtn.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.addBtn.Location = new System.Drawing.Point(112, 360);
		this.addBtn.Name = "addBtn";
		this.addBtn.Size = new System.Drawing.Size(96, 23);
		this.addBtn.TabIndex = 3;
		this.addBtn.Text = "&Add Base Style";
		this.addBtn.Click += new System.EventHandler(addBtn_Click);
		this.removeBtn.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.removeBtn.Location = new System.Drawing.Point(72, 392);
		this.removeBtn.Name = "removeBtn";
		this.removeBtn.TabIndex = 4;
		this.removeBtn.Text = "&Remove";
		this.removeBtn.Click += new System.EventHandler(removeBtn_Click);
		this.closeBtn.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.closeBtn.Location = new System.Drawing.Point(376, 432);
		this.closeBtn.Name = "closeBtn";
		this.closeBtn.TabIndex = 7;
		this.closeBtn.Text = "Close";
		this.closeBtn.Click += new System.EventHandler(closeBtn_Click);
		this.addNodeLevelBtn.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.addNodeLevelBtn.Location = new System.Drawing.Point(8, 360);
		this.addNodeLevelBtn.Name = "addNodeLevelBtn";
		this.addNodeLevelBtn.Size = new System.Drawing.Size(96, 23);
		this.addNodeLevelBtn.TabIndex = 9;
		this.addNodeLevelBtn.Text = "&Add Level Style";
		this.addNodeLevelBtn.Click += new System.EventHandler(addNodeLevelBtn_Click);
		base.AcceptButton = this.closeBtn;
		this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
		base.ClientSize = new System.Drawing.Size(472, 461);
		base.Controls.AddRange(new System.Windows.Forms.Control[9] { this.addNodeLevelBtn, this.closeBtn, this.removeBtn, this.addBtn, this.label1, this.styleNamesList, this.memLabel, this.propLabel, this.propertyGrid1 });
		base.Name = "TreeViewAdvBaseStylesEditorForm";
		this.Text = "BaseStyles Collection Editor";
		base.Load += new System.EventHandler(TreeViewAdvBaseStylesEditorForm_Load);
		base.ResumeLayout(false);
	}

	private void TreeViewAdvBaseStylesEditorForm_Load(object sender, EventArgs e)
	{
		propBaseString = propLabel.Text;
		FillEditor();
	}

	private void FillEditor()
	{
		foreach (string key in baseStyles.Keys)
		{
			styleNamesList.ListBox.Items.Add(key);
		}
		if (ListBox.Items.Count > 0)
		{
			ListBox.SelectedIndex = 0;
		}
	}

	private int HitTestListBox(Point ptClient)
	{
		int num = 0;
		int num2 = 0;
		for (num2 = 0; num2 < ListBox.Items.Count; num2++)
		{
			num += ListBox.ItemHeight;
			if (num >= ptClient.Y)
			{
				break;
			}
		}
		if (num2 >= ListBox.Items.Count)
		{
			return -1;
		}
		return num2;
	}

	private void AddNewBaseStyle(int type)
	{
		string text = GenerateNewBaseStyleName(type);
		baseStyles[text] = new TreeNodeAdvStyleInfo(new TreeViewAdvStyleInfoIdentity(treeView));
		int selectedIndex = ListBox.Items.Add(text);
		ListBox.SelectedIndex = selectedIndex;
	}

	private string GenerateNewBaseStyleName(int type)
	{
		string text = TreeViewAdv.BaseStyleBaseName;
		if (type == 1)
		{
			text = TreeViewAdv.NodeLevelStyleBaseName;
		}
		string empty = string.Empty;
		int num = 0;
		do
		{
			num++;
			empty = text + num;
		}
		while (baseStyles.Contains(empty));
		return empty;
	}

	private bool IsValidBaseStyleName(string name)
	{
		if (name == null || name.Length == 0)
		{
			return false;
		}
		if (baseStyles.Contains(name))
		{
			return false;
		}
		return true;
	}

	private void styleNamesList_BeforeListItemEdit(object sender, CancelEventArgs e)
	{
		if (!treeView.IsBaseStyleRemoveable(ListBox.SelectedItem.ToString()))
		{
			e.Cancel = true;
			MessageBox.Show("Cannot edit this base style.");
		}
	}

	private void styleNamesList_ItemChanging(object sender, ListBoxTextChangingEventArgs e)
	{
		if (!IsValidBaseStyleName(e.NewText))
		{
			e.Cancel = true;
			MessageBox.Show("New Style Name is not unique, please provide a unique style name.");
			return;
		}
		string key = ListBox.SelectedItem.ToString();
		baseStyles[e.NewText] = baseStyles[key];
		baseStyles.Remove(key);
		ToolTipIndex = -1;
	}

	private void styleNamesList_ListBox_SelectedIndexChanged(object sender, EventArgs e)
	{
		if (ListBox.SelectedIndex != -1)
		{
			propertyGrid1.SelectedObject = baseStyles[ListBox.SelectedItem.ToString()];
		}
	}

	private void addBtn_Click(object sender, EventArgs e)
	{
		AddNewBaseStyle(0);
	}

	private void addNodeLevelBtn_Click(object sender, EventArgs e)
	{
		AddNewBaseStyle(1);
	}

	private void removeBtn_Click(object sender, EventArgs e)
	{
		if (ListBox.SelectedIndex != -1)
		{
			string text = ListBox.SelectedItem.ToString();
			if (treeView.IsBaseStyleRemoveable(text))
			{
				baseStyles.Remove(text);
				ListBox.Items.RemoveAt(ListBox.SelectedIndex);
				ListBox.SelectedIndex = ListBox.Items.Count - 1;
			}
			else
			{
				MessageBox.Show("Cannot remove selected base style.");
			}
			ToolTipIndex = -1;
		}
	}

	private void closeBtn_Click(object sender, EventArgs e)
	{
		treeView.MakeDirty();
		Close();
	}

	private void propertyGrid1_SelectedObjectsChanged(object sender, EventArgs e)
	{
		if (ListBox.SelectedIndex == -1)
		{
			propLabel.Text = propBaseString + ":(" + ResetHintString + ")";
			return;
		}
		propLabel.Text = propBaseString + " for style " + ListBox.SelectedItem.ToString() + ":(" + ResetHintString + ")";
	}

	private void styleNamesList_ListBox_MouseMove(object sender, MouseEventArgs e)
	{
		ToolTipIndex = HitTestListBox(new Point(e.X, e.Y));
	}
}
