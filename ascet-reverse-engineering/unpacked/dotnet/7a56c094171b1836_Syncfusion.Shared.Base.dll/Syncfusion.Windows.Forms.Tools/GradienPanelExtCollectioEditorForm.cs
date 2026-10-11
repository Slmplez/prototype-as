using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class GradienPanelExtCollectioEditorForm : Form
{
	private GradientPanelExt m_ownerControl;

	private PrimitiveCollection m_arrAddedPrimitives;

	private PrimitiveCollection m_arrRemovedPrimitives;

	private Panel panelBottom;

	private ListBox lbPrimitives;

	private Button btAdd;

	private Button btRemove;

	private Button btCancel;

	private Button btOK;

	private GradienPanelExtPropertyGrid pgPrimitive;

	private ComboBox cbPrimitiveTypes;

	private Label label1;

	private void InitializeComponent()
	{
		this.panelBottom = new System.Windows.Forms.Panel();
		this.cbPrimitiveTypes = new System.Windows.Forms.ComboBox();
		this.btOK = new System.Windows.Forms.Button();
		this.btCancel = new System.Windows.Forms.Button();
		this.btRemove = new System.Windows.Forms.Button();
		this.btAdd = new System.Windows.Forms.Button();
		this.lbPrimitives = new System.Windows.Forms.ListBox();
		this.pgPrimitive = new Syncfusion.Windows.Forms.Tools.GradienPanelExtPropertyGrid();
		this.label1 = new System.Windows.Forms.Label();
		this.panelBottom.SuspendLayout();
		base.SuspendLayout();
		this.panelBottom.Controls.Add(this.label1);
		this.panelBottom.Controls.Add(this.cbPrimitiveTypes);
		this.panelBottom.Controls.Add(this.btOK);
		this.panelBottom.Controls.Add(this.btCancel);
		this.panelBottom.Controls.Add(this.btRemove);
		this.panelBottom.Controls.Add(this.btAdd);
		this.panelBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
		this.panelBottom.Location = new System.Drawing.Point(0, 422);
		this.panelBottom.Name = "panelBottom";
		this.panelBottom.Size = new System.Drawing.Size(586, 40);
		this.panelBottom.TabIndex = 0;
		this.cbPrimitiveTypes.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
		this.cbPrimitiveTypes.Location = new System.Drawing.Point(112, 8);
		this.cbPrimitiveTypes.Name = "cbPrimitiveTypes";
		this.cbPrimitiveTypes.Size = new System.Drawing.Size(136, 21);
		this.cbPrimitiveTypes.TabIndex = 4;
		this.btOK.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.btOK.Location = new System.Drawing.Point(426, 8);
		this.btOK.Name = "btOK";
		this.btOK.TabIndex = 1;
		this.btOK.Text = "OK";
		this.btOK.Click += new System.EventHandler(btOK_Click);
		this.btCancel.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.btCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.btCancel.Location = new System.Drawing.Point(506, 8);
		this.btCancel.Name = "btCancel";
		this.btCancel.TabIndex = 0;
		this.btCancel.Text = "Cancel";
		this.btCancel.Click += new System.EventHandler(btCancel_Click);
		this.btRemove.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.btRemove.Location = new System.Drawing.Point(336, 8);
		this.btRemove.Name = "btRemove";
		this.btRemove.TabIndex = 2;
		this.btRemove.Text = "Remove";
		this.btRemove.Click += new System.EventHandler(btRemove_Click);
		this.btAdd.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.btAdd.Location = new System.Drawing.Point(256, 8);
		this.btAdd.Name = "btAdd";
		this.btAdd.TabIndex = 3;
		this.btAdd.Text = "Add";
		this.btAdd.Click += new System.EventHandler(btAdd_Click);
		this.lbPrimitives.Dock = System.Windows.Forms.DockStyle.Left;
		this.lbPrimitives.Location = new System.Drawing.Point(0, 0);
		this.lbPrimitives.Name = "lbPrimitives";
		this.lbPrimitives.Size = new System.Drawing.Size(280, 420);
		this.lbPrimitives.TabIndex = 1;
		this.lbPrimitives.SelectedIndexChanged += new System.EventHandler(lbPrimitives_SelectedIndexChanged);
		this.pgPrimitive.CommandsVisibleIfAvailable = true;
		this.pgPrimitive.Dock = System.Windows.Forms.DockStyle.Fill;
		this.pgPrimitive.LargeButtons = false;
		this.pgPrimitive.LineColor = System.Drawing.SystemColors.ScrollBar;
		this.pgPrimitive.Location = new System.Drawing.Point(280, 0);
		this.pgPrimitive.Name = "pgPrimitive";
		this.pgPrimitive.Size = new System.Drawing.Size(306, 422);
		this.pgPrimitive.TabIndex = 2;
		this.pgPrimitive.Text = "pgPrimitive";
		this.pgPrimitive.ViewBackColor = System.Drawing.SystemColors.Window;
		this.pgPrimitive.ViewForeColor = System.Drawing.SystemColors.WindowText;
		this.label1.Location = new System.Drawing.Point(8, 8);
		this.label1.Name = "label1";
		this.label1.TabIndex = 5;
		this.label1.Text = "Types of primitive:";
		base.AcceptButton = this.btOK;
		this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
		base.CancelButton = this.btCancel;
		base.ClientSize = new System.Drawing.Size(586, 462);
		base.Controls.Add(this.pgPrimitive);
		base.Controls.Add(this.lbPrimitives);
		base.Controls.Add(this.panelBottom);
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
		this.MinimumSize = new System.Drawing.Size(592, 488);
		base.Name = "GradienPanelExtCollectioEditorForm";
		base.ShowInTaskbar = false;
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		this.Text = "GradientPanelExt PrimitiveCollection Editor";
		this.panelBottom.ResumeLayout(false);
		base.ResumeLayout(false);
	}

	public GradienPanelExtCollectioEditorForm(GradientPanelExt ownerControl)
	{
		InitializeComponent();
		m_ownerControl = ownerControl;
		m_arrAddedPrimitives = new PrimitiveCollection();
		m_arrRemovedPrimitives = new PrimitiveCollection();
		m_arrAddedPrimitives.CollectionChanged += Primitives_CollectionChanged;
		FillTypesPrimitive();
		if (m_ownerControl != null && m_ownerControl.Primitives != null)
		{
			FillListBoxPrimitives(m_ownerControl.Primitives);
		}
	}

	public GradienPanelExtCollectioEditorForm(GradientPanelExt ownerControl, IServiceProvider provider)
		: this(ownerControl)
	{
		pgPrimitive.Provider = provider;
	}

	private void FillListBoxPrimitives(PrimitiveCollection primitives)
	{
		if (primitives != null)
		{
			foreach (Primitive primitive in primitives)
			{
				lbPrimitives.Items.Add(primitive);
			}
		}
		if (lbPrimitives.Items.Count > 0)
		{
			lbPrimitives.SelectedIndex = 0;
		}
	}

	private void FillTypesPrimitive()
	{
		string[] names = Enum.GetNames(typeof(PrimitiveTypes));
		cbPrimitiveTypes.Items.AddRange(names);
		if (names.Length > 0)
		{
			cbPrimitiveTypes.SelectedIndex = 0;
		}
	}

	private Primitive CreatePrimitive(PrimitiveTypes primitiveType)
	{
		Primitive result = null;
		IDesignerHost iDesignerHost = m_ownerControl.GetIDesignerHost();
		if (iDesignerHost != null)
		{
			switch (primitiveType)
			{
			case PrimitiveTypes.Collapse:
				result = (CollapsePrimitive)iDesignerHost.CreateComponent(typeof(CollapsePrimitive));
				break;
			case PrimitiveTypes.Image:
				result = (ImagePrimitive)iDesignerHost.CreateComponent(typeof(ImagePrimitive));
				break;
			case PrimitiveTypes.Text:
				result = (TextPrimitive)iDesignerHost.CreateComponent(typeof(TextPrimitive));
				break;
			case PrimitiveTypes.Host:
				result = (HostPrimitive)iDesignerHost.CreateComponent(typeof(HostPrimitive));
				break;
			}
		}
		return result;
	}

	private void lbPrimitives_SelectedIndexChanged(object sender, EventArgs e)
	{
		if (lbPrimitives.SelectedItem is Primitive selectedObject)
		{
			pgPrimitive.SelectedObject = selectedObject;
		}
	}

	private void btAdd_Click(object sender, EventArgs e)
	{
		Primitive primitive = null;
		if (cbPrimitiveTypes.SelectedIndex > -1)
		{
			PrimitiveTypes selectedIndex = (PrimitiveTypes)cbPrimitiveTypes.SelectedIndex;
			primitive = CreatePrimitive(selectedIndex);
			if (primitive != null)
			{
				m_arrAddedPrimitives.Add(primitive);
			}
		}
	}

	private void Primitives_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		if (e.Element is Primitive primitive && e.Action == CollectionChangeAction.Add)
		{
			m_ownerControl.Primitives.Add(primitive);
			lbPrimitives.Items.Add(primitive);
			lbPrimitives.SelectedItem = primitive;
		}
	}

	private void btRemove_Click(object sender, EventArgs e)
	{
		Primitive primitive = lbPrimitives.SelectedItem as Primitive;
		m_arrRemovedPrimitives.Add(primitive);
		lbPrimitives.Items.Remove(primitive);
		if (lbPrimitives.Items.Count > 0)
		{
			lbPrimitives.SelectedIndex = lbPrimitives.Items.Count - 1;
		}
	}

	private void btOK_Click(object sender, EventArgs e)
	{
		if (m_arrRemovedPrimitives != null && m_arrRemovedPrimitives.Count > 0 && m_ownerControl != null)
		{
			IDesignerHost iDesignerHost = m_ownerControl.GetIDesignerHost();
			if (iDesignerHost != null)
			{
				foreach (Primitive arrRemovedPrimitive in m_arrRemovedPrimitives)
				{
					iDesignerHost.DestroyComponent(arrRemovedPrimitive);
					m_ownerControl.Primitives.Remove(arrRemovedPrimitive);
				}
			}
		}
		m_ownerControl.Invalidate();
		Close();
	}

	private void btCancel_Click(object sender, EventArgs e)
	{
		IDesignerHost iDesignerHost = m_ownerControl.GetIDesignerHost();
		if (m_arrAddedPrimitives != null && m_arrAddedPrimitives.Count > 0 && iDesignerHost != null)
		{
			foreach (Primitive arrAddedPrimitive in m_arrAddedPrimitives)
			{
				iDesignerHost.DestroyComponent(arrAddedPrimitive);
				m_ownerControl.Primitives.Remove(arrAddedPrimitive);
			}
		}
		m_ownerControl.Invalidate();
	}
}
