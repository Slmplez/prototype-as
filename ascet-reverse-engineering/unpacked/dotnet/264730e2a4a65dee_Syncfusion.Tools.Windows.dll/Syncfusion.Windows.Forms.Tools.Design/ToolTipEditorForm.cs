using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class ToolTipEditorForm : Form
{
	public class ToolTipPropertyGrid : PropertyGrid
	{
		private IServiceProvider m_parentProvider;

		public ToolTipPropertyGrid(IServiceProvider parentProvider)
		{
			m_parentProvider = parentProvider;
		}

		protected override object GetService(Type service)
		{
			object service2 = base.GetService(service);
			if (service2 == null && service == typeof(IDesignerHost) && m_parentProvider != null)
			{
				service2 = m_parentProvider.GetService(service);
			}
			return service2;
		}
	}

	private PropertyGrid m_propertyGrid;

	private DesignSurface m_designSurface;

	private IDesignerHost m_host;

	private ISelectionService m_selectionSvc;

	private IContainer components;

	private Panel buttonsPanel;

	private Button buttonCancel;

	private Button buttonOk;

	public ToolTipInfo ToolTip => ToolTipControl.Info;

	public ToolTipControl ToolTipControl => m_host.RootComponent as ToolTipControl;

	public ToolTipEditorForm(ToolTipInfo toolTipInfo, IServiceProvider provider)
	{
		Initialize(toolTipInfo, provider);
		InitializeComponent();
		base.StartPosition = FormStartPosition.CenterParent;
	}

	private void Initialize(ToolTipInfo toolTipInfo, IServiceProvider provider)
	{
		if (InitializeSurface(provider))
		{
			ToolTipControl.Info = new ToolTipInfo(toolTipInfo);
			SubscribeToServicesEvents();
		}
	}

	public bool InitializeSurface(IServiceProvider provider)
	{
		bool result = false;
		m_designSurface = new DesignSurface(typeof(ToolTipControl));
		if (m_designSurface.View is Control control)
		{
			m_host = m_designSurface.GetService(typeof(IDesignerHost)) as IDesignerHost;
			if (m_host != null)
			{
				m_selectionSvc = m_designSurface.GetService(typeof(ISelectionService)) as ISelectionService;
				if (m_selectionSvc != null)
				{
					control.Dock = DockStyle.Fill;
					m_propertyGrid = new ToolTipPropertyGrid(provider);
					m_propertyGrid.Size = new Size(250, m_propertyGrid.Size.Height);
					m_propertyGrid.Dock = DockStyle.Right;
					m_propertyGrid.PropertySort = PropertySort.CategorizedAlphabetical;
					m_propertyGrid.ToolbarVisible = true;
					m_propertyGrid.CommandsVisibleIfAvailable = false;
					Splitter splitter = new Splitter();
					splitter.Dock = DockStyle.Right;
					Panel panel = new Panel();
					panel.Dock = DockStyle.Fill;
					panel.BorderStyle = BorderStyle.Fixed3D;
					panel.Controls.Add(control);
					panel.Controls.Add(splitter);
					panel.Controls.Add(m_propertyGrid);
					base.Controls.Add(panel);
					result = true;
				}
			}
		}
		return result;
	}

	public void SubscribeToServicesEvents()
	{
		if (m_selectionSvc != null)
		{
			m_selectionSvc.SelectionChanged += OnSelectionChanged;
			OnSelectionChanged(m_selectionSvc, EventArgs.Empty);
		}
	}

	public void OnSelectionChanged(object sender, EventArgs e)
	{
		ICollection selectedComponents = m_selectionSvc.GetSelectedComponents();
		object[] array = new object[selectedComponents.Count];
		int num = 0;
		foreach (object item in selectedComponents)
		{
			array[num] = ((item is ToolTipControl) ? ((ToolTipControl)item).Info : item);
			num++;
		}
		m_propertyGrid.SelectedObjects = array;
	}

	private void ButtonOkClick(object sender, EventArgs e)
	{
		base.DialogResult = DialogResult.OK;
	}

	private void ButtonCancelClick(object sender, EventArgs e)
	{
		base.DialogResult = DialogResult.Cancel;
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
		this.buttonsPanel = new System.Windows.Forms.Panel();
		this.buttonCancel = new System.Windows.Forms.Button();
		this.buttonOk = new System.Windows.Forms.Button();
		this.buttonsPanel.SuspendLayout();
		base.SuspendLayout();
		this.buttonsPanel.Controls.Add(this.buttonCancel);
		this.buttonsPanel.Controls.Add(this.buttonOk);
		this.buttonsPanel.Dock = System.Windows.Forms.DockStyle.Bottom;
		this.buttonsPanel.Location = new System.Drawing.Point(0, 320);
		this.buttonsPanel.Name = "buttonsPanel";
		this.buttonsPanel.Size = new System.Drawing.Size(442, 46);
		this.buttonsPanel.TabIndex = 0;
		this.buttonCancel.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.buttonCancel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.buttonCancel.Location = new System.Drawing.Point(355, 13);
		this.buttonCancel.Name = "buttonCancel";
		this.buttonCancel.Size = new System.Drawing.Size(75, 23);
		this.buttonCancel.TabIndex = 1;
		this.buttonCancel.Text = "Cancel";
		this.buttonCancel.Click += new System.EventHandler(ButtonCancelClick);
		this.buttonOk.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.buttonOk.Location = new System.Drawing.Point(274, 13);
		this.buttonOk.Name = "buttonOk";
		this.buttonOk.Size = new System.Drawing.Size(75, 23);
		this.buttonOk.TabIndex = 0;
		this.buttonOk.Text = "Ok";
		this.buttonOk.UseVisualStyleBackColor = true;
		this.buttonOk.Click += new System.EventHandler(ButtonOkClick);
		base.AutoScaleDimensions = new System.Drawing.SizeF(6f, 13f);
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
		base.ClientSize = new System.Drawing.Size(442, 366);
		base.Controls.Add(this.buttonsPanel);
		base.Name = "ToolTipEditorForm";
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		this.Text = "ToolTip Editor";
		this.buttonsPanel.ResumeLayout(false);
		base.ResumeLayout(false);
	}
}
