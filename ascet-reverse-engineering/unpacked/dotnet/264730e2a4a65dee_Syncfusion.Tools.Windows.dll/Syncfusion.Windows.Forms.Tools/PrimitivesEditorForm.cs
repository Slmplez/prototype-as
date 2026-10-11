using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class PrimitivesEditorForm : Form
{
	private static readonly string[] m_arrPrimitiveTypes;

	private static readonly Hashtable m_htPrimitiveTypes;

	private TreeNodePrimitivesCollection m_primitives = new TreeNodePrimitivesCollection();

	private Panel panelBottom;

	private PropertyGrid pgPrimitive;

	private Button btnOK;

	private Button btnCancel;

	private Button btnRemove;

	private Button btnAdd;

	private ComboBox cbPrimitives;

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
		this.panelBottom = new System.Windows.Forms.Panel();
		this.cbPrimitives = new System.Windows.Forms.ComboBox();
		this.btnOK = new System.Windows.Forms.Button();
		this.btnCancel = new System.Windows.Forms.Button();
		this.btnRemove = new System.Windows.Forms.Button();
		this.btnAdd = new System.Windows.Forms.Button();
		this.pgPrimitive = new System.Windows.Forms.PropertyGrid();
		this.lbPrimitives = new System.Windows.Forms.ListBox();
		this.panelBottom.SuspendLayout();
		base.SuspendLayout();
		this.panelBottom.Controls.Add(this.cbPrimitives);
		this.panelBottom.Controls.Add(this.btnOK);
		this.panelBottom.Controls.Add(this.btnCancel);
		this.panelBottom.Controls.Add(this.btnRemove);
		this.panelBottom.Controls.Add(this.btnAdd);
		this.panelBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
		this.panelBottom.Location = new System.Drawing.Point(0, 342);
		this.panelBottom.Name = "panelBottom";
		this.panelBottom.Size = new System.Drawing.Size(480, 40);
		this.panelBottom.TabIndex = 2;
		this.cbPrimitives.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
		this.cbPrimitives.Location = new System.Drawing.Point(8, 8);
		this.cbPrimitives.Name = "cbPrimitives";
		this.cbPrimitives.Size = new System.Drawing.Size(104, 21);
		this.cbPrimitives.TabIndex = 0;
		this.btnOK.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.btnOK.Location = new System.Drawing.Point(320, 8);
		this.btnOK.Name = "btnOK";
		this.btnOK.TabIndex = 3;
		this.btnOK.Text = "OK";
		this.btnOK.Click += new System.EventHandler(btnOK_Click);
		this.btnCancel.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.btnCancel.Location = new System.Drawing.Point(400, 8);
		this.btnCancel.Name = "btnCancel";
		this.btnCancel.TabIndex = 4;
		this.btnCancel.Text = "Cancel";
		this.btnCancel.Click += new System.EventHandler(btnCancel_Click);
		this.btnRemove.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.btnRemove.Location = new System.Drawing.Point(200, 8);
		this.btnRemove.Name = "btnRemove";
		this.btnRemove.TabIndex = 2;
		this.btnRemove.Text = "Remove";
		this.btnRemove.Click += new System.EventHandler(btnRemove_Click);
		this.btnAdd.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.btnAdd.Location = new System.Drawing.Point(120, 8);
		this.btnAdd.Name = "btnAdd";
		this.btnAdd.TabIndex = 1;
		this.btnAdd.Text = "Add...";
		this.btnAdd.Click += new System.EventHandler(btnAdd_Click);
		this.pgPrimitive.CommandsVisibleIfAvailable = true;
		this.pgPrimitive.Dock = System.Windows.Forms.DockStyle.Fill;
		this.pgPrimitive.LargeButtons = false;
		this.pgPrimitive.LineColor = System.Drawing.SystemColors.ScrollBar;
		this.pgPrimitive.Location = new System.Drawing.Point(232, 0);
		this.pgPrimitive.Name = "pgPrimitive";
		this.pgPrimitive.Size = new System.Drawing.Size(248, 342);
		this.pgPrimitive.TabIndex = 1;
		this.pgPrimitive.Text = "pgPrimitive";
		this.pgPrimitive.ViewBackColor = System.Drawing.SystemColors.Window;
		this.pgPrimitive.ViewForeColor = System.Drawing.SystemColors.WindowText;
		this.lbPrimitives.Dock = System.Windows.Forms.DockStyle.Left;
		this.lbPrimitives.Location = new System.Drawing.Point(0, 0);
		this.lbPrimitives.Name = "lbPrimitives";
		this.lbPrimitives.Size = new System.Drawing.Size(232, 342);
		this.lbPrimitives.TabIndex = 0;
		this.lbPrimitives.SelectedIndexChanged += new System.EventHandler(lbPrimitives_SelectedIndexChanged);
		base.AcceptButton = this.btnOK;
		this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
		base.CancelButton = this.btnCancel;
		base.ClientSize = new System.Drawing.Size(480, 382);
		base.Controls.Add(this.pgPrimitive);
		base.Controls.Add(this.lbPrimitives);
		base.Controls.Add(this.panelBottom);
		base.Name = "PrimitivesEditorForm";
		base.ShowInTaskbar = false;
		this.Text = "TreeNodePrimitives collection editor";
		this.panelBottom.ResumeLayout(false);
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
		m_primitives.Clear();
		m_primitives.CollectionChanged += m_primitives_CollectionChanged;
		if (primitives != null && primitives.Count > 0)
		{
			int i = 0;
			for (int count = primitives.Count; i < count; i++)
			{
				m_primitives.Add((TreeNodePrimitive)primitives[i].Clone());
				lbPrimitives.Items.Add(primitives[i].PrimitiveType);
			}
		}
		FillPrimitiveTypesList();
		if (lbPrimitives.Items.Count > 0)
		{
			lbPrimitives.SelectedIndex = 0;
			pgPrimitive.SelectedObject = m_primitives[0];
		}
	}

	private void btnAdd_Click(object sender, EventArgs e)
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

	private void btnRemove_Click(object sender, EventArgs e)
	{
		int num = lbPrimitives.SelectedIndex;
		if (num >= 0)
		{
			lbPrimitives.Items.RemoveAt(num);
			m_primitives.RemoveAt(num);
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

	private void btnOK_Click(object sender, EventArgs e)
	{
		base.DialogResult = DialogResult.OK;
	}

	private void btnCancel_Click(object sender, EventArgs e)
	{
		base.DialogResult = DialogResult.Cancel;
	}

	private void lbPrimitives_SelectedIndexChanged(object sender, EventArgs e)
	{
		pgPrimitive.SelectedObject = ((lbPrimitives.SelectedIndex >= 0) ? m_primitives[lbPrimitives.SelectedIndex] : null);
	}

	private void m_primitives_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		TreeNodePrimitive treeNodePrimitive = (TreeNodePrimitive)e.Element;
		switch (e.Action)
		{
		case CollectionChangeAction.Add:
			treeNodePrimitive.PropertyChanged += primitive_PropertyChanged;
			break;
		case CollectionChangeAction.Remove:
			treeNodePrimitive.PropertyChanged -= primitive_PropertyChanged;
			break;
		}
	}

	private void primitive_PropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "PrimitiveType" && lbPrimitives.SelectedIndex >= 0)
		{
			lbPrimitives.Items[lbPrimitives.SelectedIndex] = e.NewValue.ToString();
			FillPrimitiveTypesList();
		}
	}
}
