using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridCollectionEditor : Form
{
	private Container components;

	private Button btnOk;

	private Button btnCancel;

	private ListBox lstItems;

	private PropertyGrid pgEditor;

	private GridStylesUITypeEditor uiTypeEditor;

	private ICollection editCollection;

	private bool dirty;

	private PropertyGridContextMenu pgMenu;

	internal bool Dirty => dirty;

	protected GridCollectionEditor()
	{
		InitializeComponent();
	}

	internal GridCollectionEditor(ICollection collection, GridStylesUITypeEditor uiTypeEditor)
	{
		editCollection = collection;
		this.uiTypeEditor = uiTypeEditor;
		InitializeComponent();
		pgMenu = new PropertyGridContextMenu(pgEditor);
		int num = 0;
		foreach (object item in editCollection)
		{
			string text = this.uiTypeEditor.Format(item, num);
			lstItems.Items.Add(new GridCollectionEditorNode(text, item));
			num++;
		}
		if (editCollection.Count > 0)
		{
			lstItems.SelectedIndex = 0;
			UpdateSelection();
		}
		HookListeners();
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
		this.lstItems = new System.Windows.Forms.ListBox();
		this.pgEditor = new System.Windows.Forms.PropertyGrid();
		this.btnOk = new System.Windows.Forms.Button();
		this.btnCancel = new System.Windows.Forms.Button();
		base.SuspendLayout();
		this.lstItems.Location = new System.Drawing.Point(8, 8);
		this.lstItems.Name = "lstItems";
		this.lstItems.Size = new System.Drawing.Size(176, 342);
		this.lstItems.TabIndex = 0;
		this.lstItems.SelectedIndexChanged += new System.EventHandler(lstItems_SelectedIndexChanged);
		this.pgEditor.CommandsVisibleIfAvailable = true;
		this.pgEditor.LargeButtons = false;
		this.pgEditor.LineColor = System.Drawing.SystemColors.ScrollBar;
		this.pgEditor.Location = new System.Drawing.Point(200, 8);
		this.pgEditor.Name = "pgEditor";
		this.pgEditor.Size = new System.Drawing.Size(224, 304);
		this.pgEditor.TabIndex = 1;
		this.pgEditor.Text = "PropertyGrid";
		this.pgEditor.ViewBackColor = System.Drawing.SystemColors.Window;
		this.pgEditor.ViewForeColor = System.Drawing.SystemColors.WindowText;
		this.btnOk.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.btnOk.Location = new System.Drawing.Point(240, 328);
		this.btnOk.Name = "btnOk";
		this.btnOk.Size = new System.Drawing.Size(88, 24);
		this.btnOk.TabIndex = 2;
		this.btnOk.Text = "OK";
		this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.btnCancel.Location = new System.Drawing.Point(336, 328);
		this.btnCancel.Name = "btnCancel";
		this.btnCancel.Size = new System.Drawing.Size(88, 24);
		this.btnCancel.TabIndex = 3;
		this.btnCancel.Text = "Cancel";
		base.ClientSize = new System.Drawing.Size(432, 358);
		base.Controls.AddRange(new System.Windows.Forms.Control[4] { this.btnCancel, this.btnOk, this.pgEditor, this.lstItems });
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
		base.Name = "GridCollectionEditor";
		this.Text = "Collection Editor";
		base.Closing += new System.ComponentModel.CancelEventHandler(GridCollectionEditor_Closing);
		base.ResumeLayout(false);
	}

	private void lstItems_SelectedIndexChanged(object sender, EventArgs e)
	{
		UpdateSelection();
	}

	private void UpdateSelection()
	{
		GridCollectionEditorNode gridCollectionEditorNode = lstItems.SelectedItem as GridCollectionEditorNode;
		pgEditor.SelectedObject = gridCollectionEditorNode.Value;
	}

	private void OnStyleChanged(object sender, StyleChangedEventArgs args)
	{
		dirty = true;
	}

	private void HookListeners()
	{
		foreach (object item in editCollection)
		{
			if (item is GridStyleInfo gridStyleInfo)
			{
				gridStyleInfo.Changed += OnStyleChanged;
			}
		}
	}

	private void UnHookListeners()
	{
		foreach (object item in editCollection)
		{
			if (item is GridStyleInfo gridStyleInfo)
			{
				gridStyleInfo.Changed -= OnStyleChanged;
			}
		}
	}

	private void GridCollectionEditor_Closing(object sender, CancelEventArgs e)
	{
		UnHookListeners();
	}
}
