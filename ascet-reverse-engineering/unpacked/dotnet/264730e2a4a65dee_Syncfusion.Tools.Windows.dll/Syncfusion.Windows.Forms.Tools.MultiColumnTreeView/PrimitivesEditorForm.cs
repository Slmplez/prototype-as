using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class PrimitivesEditorForm : Form
{
	private static readonly string[] m_arrPrimitiveTypes;

	private static readonly Hashtable m_htPrimitiveTypes;

	private TreeNodePrimitivesCollection m_primitives;

	private PropertyGrid pgPrimitive;

	private ButtonAdv btnOK;

	private ButtonAdv btnRemove;

	private ButtonAdv btnAdd;

	private ComboBox cbPrimitives;

	private GradientPanel panelForm;

	private Panel pnlBody;

	private Panel pnlList;

	private Label lblList;

	private Splitter splitBody;

	private Panel pnlProperties;

	private Label label1;

	private ListBox lbPrimitives;

	public TreeNodePrimitivesCollection Primitives => m_primitives;

	static PrimitivesEditorForm()
	{
		m_arrPrimitiveTypes = Enum.GetNames(typeof(PredefinedPrimitiveTypes));
		m_htPrimitiveTypes = new Hashtable();
		int i = 0;
		for (int num = m_arrPrimitiveTypes.Length; i < num; i++)
		{
			string text = m_arrPrimitiveTypes[i];
			m_htPrimitiveTypes[text] = (PredefinedPrimitiveTypes)Enum.Parse(typeof(PredefinedPrimitiveTypes), text, ignoreCase: true);
		}
	}

	public PrimitivesEditorForm(TreeNodePrimitivesCollection primitives)
	{
		if (primitives == null)
		{
			throw new ArgumentNullException("primitives");
		}
		InitializeComponent();
		InitPrimitives(primitives);
	}

	private void InitializeComponent()
	{
		this.panelForm = new Syncfusion.Windows.Forms.Tools.GradientPanel();
		this.pnlBody = new System.Windows.Forms.Panel();
		this.pnlProperties = new System.Windows.Forms.Panel();
		this.pgPrimitive = new System.Windows.Forms.PropertyGrid();
		this.label1 = new System.Windows.Forms.Label();
		this.splitBody = new System.Windows.Forms.Splitter();
		this.pnlList = new System.Windows.Forms.Panel();
		this.lbPrimitives = new System.Windows.Forms.ListBox();
		this.lblList = new System.Windows.Forms.Label();
		this.btnOK = new Syncfusion.Windows.Forms.ButtonAdv();
		this.btnAdd = new Syncfusion.Windows.Forms.ButtonAdv();
		this.btnRemove = new Syncfusion.Windows.Forms.ButtonAdv();
		this.cbPrimitives = new System.Windows.Forms.ComboBox();
		((System.ComponentModel.ISupportInitialize)this.panelForm).BeginInit();
		this.panelForm.SuspendLayout();
		this.pnlBody.SuspendLayout();
		this.pnlProperties.SuspendLayout();
		this.pnlList.SuspendLayout();
		base.SuspendLayout();
		this.panelForm.BackgroundColor = new Syncfusion.Drawing.BrushInfo();
		this.panelForm.BorderColor = System.Drawing.Color.Black;
		this.panelForm.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.panelForm.Controls.Add(this.pnlBody);
		this.panelForm.Controls.Add(this.btnOK);
		this.panelForm.Controls.Add(this.btnAdd);
		this.panelForm.Controls.Add(this.btnRemove);
		this.panelForm.Controls.Add(this.cbPrimitives);
		this.panelForm.Dock = System.Windows.Forms.DockStyle.Fill;
		this.panelForm.Location = new System.Drawing.Point(0, 0);
		this.panelForm.Name = "panelForm";
		this.panelForm.Size = new System.Drawing.Size(632, 446);
		this.panelForm.TabIndex = 0;
		this.pnlBody.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
		this.pnlBody.BackColor = System.Drawing.Color.Transparent;
		this.pnlBody.Controls.Add(this.pnlProperties);
		this.pnlBody.Controls.Add(this.splitBody);
		this.pnlBody.Controls.Add(this.pnlList);
		this.pnlBody.Location = new System.Drawing.Point(8, 8);
		this.pnlBody.Name = "pnlBody";
		this.pnlBody.Size = new System.Drawing.Size(616, 368);
		this.pnlBody.TabIndex = 0;
		this.pnlProperties.Controls.Add(this.pgPrimitive);
		this.pnlProperties.Controls.Add(this.label1);
		this.pnlProperties.Dock = System.Windows.Forms.DockStyle.Fill;
		this.pnlProperties.Location = new System.Drawing.Point(306, 0);
		this.pnlProperties.Name = "pnlProperties";
		this.pnlProperties.Size = new System.Drawing.Size(310, 368);
		this.pnlProperties.TabIndex = 4;
		this.pgPrimitive.BackColor = System.Drawing.SystemColors.Control;
		this.pgPrimitive.CommandsVisibleIfAvailable = true;
		this.pgPrimitive.Dock = System.Windows.Forms.DockStyle.Fill;
		this.pgPrimitive.LargeButtons = false;
		this.pgPrimitive.LineColor = System.Drawing.SystemColors.ScrollBar;
		this.pgPrimitive.Location = new System.Drawing.Point(0, 23);
		this.pgPrimitive.Name = "pgPrimitive";
		this.pgPrimitive.Size = new System.Drawing.Size(310, 345);
		this.pgPrimitive.TabIndex = 1;
		this.pgPrimitive.Text = "pgPrimitive";
		this.pgPrimitive.ToolbarVisible = false;
		this.pgPrimitive.ViewBackColor = System.Drawing.SystemColors.Window;
		this.pgPrimitive.ViewForeColor = System.Drawing.SystemColors.WindowText;
		this.label1.Dock = System.Windows.Forms.DockStyle.Top;
		this.label1.Location = new System.Drawing.Point(0, 0);
		this.label1.Name = "label1";
		this.label1.Size = new System.Drawing.Size(310, 23);
		this.label1.TabIndex = 0;
		this.label1.Text = "&Properties:";
		this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.splitBody.BackColor = System.Drawing.Color.FromArgb(239, 244, 250);
		this.splitBody.Location = new System.Drawing.Point(300, 0);
		this.splitBody.MinSize = 270;
		this.splitBody.Name = "splitBody";
		this.splitBody.Size = new System.Drawing.Size(6, 368);
		this.splitBody.TabIndex = 3;
		this.splitBody.TabStop = false;
		this.pnlList.Controls.Add(this.lbPrimitives);
		this.pnlList.Controls.Add(this.lblList);
		this.pnlList.Dock = System.Windows.Forms.DockStyle.Left;
		this.pnlList.Location = new System.Drawing.Point(0, 0);
		this.pnlList.Name = "pnlList";
		this.pnlList.Size = new System.Drawing.Size(300, 368);
		this.pnlList.TabIndex = 0;
		this.lbPrimitives.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this.lbPrimitives.Dock = System.Windows.Forms.DockStyle.Fill;
		this.lbPrimitives.Location = new System.Drawing.Point(0, 23);
		this.lbPrimitives.Name = "lbPrimitives";
		this.lbPrimitives.Size = new System.Drawing.Size(300, 340);
		this.lbPrimitives.TabIndex = 1;
		this.lbPrimitives.SelectedIndexChanged += new System.EventHandler(LbPrimitives_SelectedIndexChanged);
		this.lblList.Dock = System.Windows.Forms.DockStyle.Top;
		this.lblList.Location = new System.Drawing.Point(0, 0);
		this.lblList.Name = "lblList";
		this.lblList.Size = new System.Drawing.Size(300, 23);
		this.lblList.TabIndex = 0;
		this.lblList.Text = "Primitives &List:";
		this.lblList.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.btnOK.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.btnOK.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.btnOK.ComboEditBackColor = System.Drawing.Color.Empty;
		this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.btnOK.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.btnOK.IsMouseDown = false;
		this.btnOK.Location = new System.Drawing.Point(544, 414);
		this.btnOK.Name = "btnOK";
		this.btnOK.TabIndex = 3;
		this.btnOK.Text = "&Close";
		this.btnOK.UseVisualStyle = true;
		this.btnOK.Click += new System.EventHandler(BtnOK_Click);
		this.btnAdd.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.btnAdd.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.btnAdd.ComboEditBackColor = System.Drawing.Color.Empty;
		this.btnAdd.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.btnAdd.IsMouseDown = false;
		this.btnAdd.Location = new System.Drawing.Point(144, 384);
		this.btnAdd.Name = "btnAdd";
		this.btnAdd.TabIndex = 1;
		this.btnAdd.Text = "&Add...";
		this.btnAdd.UseVisualStyle = true;
		this.btnAdd.Click += new System.EventHandler(BtnAdd_Click);
		this.btnRemove.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.btnRemove.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.btnRemove.ComboEditBackColor = System.Drawing.Color.Empty;
		this.btnRemove.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.btnRemove.IsMouseDown = false;
		this.btnRemove.Location = new System.Drawing.Point(224, 384);
		this.btnRemove.Name = "btnRemove";
		this.btnRemove.TabIndex = 2;
		this.btnRemove.Text = "&Remove";
		this.btnRemove.UseVisualStyle = true;
		this.btnRemove.Click += new System.EventHandler(BtnRemove_Click);
		this.cbPrimitives.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.cbPrimitives.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
		this.cbPrimitives.Location = new System.Drawing.Point(16, 384);
		this.cbPrimitives.Name = "cbPrimitives";
		this.cbPrimitives.Size = new System.Drawing.Size(120, 21);
		this.cbPrimitives.TabIndex = 0;
		base.AcceptButton = this.btnOK;
		this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
		base.ClientSize = new System.Drawing.Size(632, 446);
		base.Controls.Add(this.panelForm);
		this.MinimumSize = new System.Drawing.Size(500, 400);
		base.Name = "PrimitivesEditorForm";
		base.ShowInTaskbar = false;
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		this.Text = "TreeNodePrimitives collection editor";
		((System.ComponentModel.ISupportInitialize)this.panelForm).EndInit();
		this.panelForm.ResumeLayout(false);
		this.pnlBody.ResumeLayout(false);
		this.pnlProperties.ResumeLayout(false);
		this.pnlList.ResumeLayout(false);
		base.ResumeLayout(false);
	}

	private void FillPrimitiveTypesList()
	{
		cbPrimitives.Items.Clear();
		int i = 0;
		for (int num = m_arrPrimitiveTypes.Length; i < num; i++)
		{
			string text = m_arrPrimitiveTypes[i];
			PredefinedPrimitiveTypes primitiveType = (PredefinedPrimitiveTypes)m_htPrimitiveTypes[text];
			if (m_primitives.IsValidPrimitiveType(primitiveType))
			{
				cbPrimitives.Items.Add(text);
			}
		}
		if (cbPrimitives.Items.Count > 0)
		{
			cbPrimitives.Enabled = true;
			cbPrimitives.SelectedIndex = 0;
			btnAdd.Enabled = true;
		}
		else
		{
			cbPrimitives.Enabled = false;
			btnAdd.Enabled = false;
		}
	}

	private void InitPrimitives(TreeNodePrimitivesCollection primitives)
	{
		lbPrimitives.Items.Clear();
		if (primitives != null)
		{
			m_primitives = primitives.Clone();
			m_primitives.CollectionChanged += Primitives_CollectionChanged;
			int i = 0;
			for (int count = m_primitives.Count; i < count; i++)
			{
				lbPrimitives.Items.Add(m_primitives[i].PrimitiveType);
			}
		}
		FillPrimitiveTypesList();
		if (lbPrimitives.Items.Count > 0)
		{
			lbPrimitives.SelectedIndex = 0;
			pgPrimitive.SelectedObject = m_primitives[0];
		}
	}

	private void BtnAdd_Click(object sender, EventArgs e)
	{
		if (cbPrimitives.SelectedIndex >= 0)
		{
			string key = (string)cbPrimitives.SelectedItem;
			PredefinedPrimitiveTypes predefinedPrimitiveTypes = (PredefinedPrimitiveTypes)m_htPrimitiveTypes[key];
			TreeNodePrimitive primitive = new TreeNodePrimitive(0, predefinedPrimitiveTypes);
			m_primitives.Add(primitive);
			lbPrimitives.Items.Add(predefinedPrimitiveTypes);
			lbPrimitives.SelectedIndex = lbPrimitives.Items.Count - 1;
			pgPrimitive.SelectedObject = m_primitives[lbPrimitives.SelectedIndex];
			FillPrimitiveTypesList();
		}
	}

	private void BtnRemove_Click(object sender, EventArgs e)
	{
		int num = lbPrimitives.SelectedIndex;
		if (num >= 0)
		{
			lbPrimitives.Items.RemoveAt(num);
			TreeNodePrimitive primitive = m_primitives[num];
			m_primitives.Remove(primitive);
		}
		if (lbPrimitives.Items.Count > 0)
		{
			if (num >= lbPrimitives.Items.Count)
			{
				num = lbPrimitives.Items.Count - 1;
				pgPrimitive.SelectedObject = m_primitives[num];
			}
			lbPrimitives.SelectedIndex = num;
		}
		FillPrimitiveTypesList();
	}

	private void LbPrimitives_SelectedIndexChanged(object sender, EventArgs e)
	{
		pgPrimitive.SelectedObject = ((lbPrimitives.SelectedIndex >= 0) ? m_primitives[lbPrimitives.SelectedIndex] : null);
	}

	private void Primitives_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		TreeNodePrimitive treeNodePrimitive = (TreeNodePrimitive)e.Element;
		switch (e.Action)
		{
		case CollectionChangeAction.Add:
			treeNodePrimitive.PropertyChanged += Primitive_PropertyChanged;
			break;
		case CollectionChangeAction.Remove:
			treeNodePrimitive.PropertyChanged -= Primitive_PropertyChanged;
			break;
		}
	}

	private void Primitive_PropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "PrimitiveType" && lbPrimitives.SelectedIndex >= 0)
		{
			lbPrimitives.Items[lbPrimitives.SelectedIndex] = e.NewValue.ToString();
			FillPrimitiveTypesList();
		}
	}

	private void BtnOK_Click(object sender, EventArgs e)
	{
		base.DialogResult = DialogResult.OK;
		Close();
	}
}
