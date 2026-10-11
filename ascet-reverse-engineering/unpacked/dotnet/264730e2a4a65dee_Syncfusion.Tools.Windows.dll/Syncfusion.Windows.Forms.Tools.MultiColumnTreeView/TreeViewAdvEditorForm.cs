using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[DocumentationExclude]
public class TreeViewAdvEditorForm : Form
{
	private IServiceProvider m_provider;

	private TreeViewAdvDragHighlightTracker treeViewDragHighlightTracker;

	private TreeNodeAdv currentSourceNode;

	private ButtonAdv addNode;

	private ButtonAdv addChild;

	private TreeViewAdvEditorPropertyGrid propertyEditor;

	private ButtonAdv ok;

	private ButtonAdv cancel;

	private MultiColumnTreeView originalTree;

	private ButtonAdv remove;

	private CheckBox select;

	private ButtonAdv btnSort;

	private PropertyGridContextMenu pgMenu;

	private TreeViewAdvEditor tree;

	private Panel pnlBody;

	private Splitter splitterBody;

	private GradientPanel gradientPanelForm;

	private Panel pnlTree;

	private Panel pnlProperties;

	private Label lblProperties;

	private Label lblNodes;

	private Container components;

	public TreeViewAdvEditorForm()
	{
		InitializeComponent();
		tree.DesignModeInternal = true;
		propertyEditor.HelpVisible = true;
	}

	public TreeViewAdvEditorForm(MultiColumnTreeView treeViewAdv, IServiceProvider provider)
		: this()
	{
		m_provider = provider;
		propertyEditor.Provider = m_provider;
		pgMenu = new PropertyGridContextMenu(propertyEditor);
		originalTree = treeViewAdv;
		tree.Columns.AddRange(treeViewAdv.Columns.Clone());
		tree.Root = treeViewAdv.Root.Clone();
		tree.InteractiveCheckBoxes = treeViewAdv.InteractiveCheckBoxes;
		tree.ItemHeight = treeViewAdv.ItemHeight;
		tree.ShowCheckBoxes = treeViewAdv.ShowCheckBoxes;
		tree.ShowOptionButtons = treeViewAdv.ShowOptionButtons;
		tree.ShowColumnsHeader = treeViewAdv.ShowColumnsHeader;
		tree.ShowPlusMinus = treeViewAdv.ShowPlusMinus;
		tree.HideSelection = false;
		tree.ThemesEnabled = treeViewAdv.ThemesEnabled;
		tree.NodeCount = treeViewAdv.NodeCount;
		tree.AllowDrop = true;
		tree.Font = treeViewAdv.Font;
		tree.ForeColor = treeViewAdv.ForeColor;
		tree.DesignModeInternal = true;
		tree.AutoAdjustMultiLineHeight = treeViewAdv.AutoAdjustMultiLineHeight;
		tree.ShowRootLines = treeViewAdv.ShowRootLines;
		foreach (string key in treeViewAdv.BaseStyles.Keys)
		{
			tree.BaseStyles[key] = treeViewAdv.BaseStyles[key];
		}
		tree.NodeStateImageList = treeViewAdv.NodeStateImageList;
		tree.StateImageList = treeViewAdv.StateImageList;
		tree.LeftImageList = treeViewAdv.LeftImageList;
		tree.RightImageList = treeViewAdv.RightImageList;
		tree.DefaultCollapseImageIndex = treeViewAdv.DefaultCollapseImageIndex;
		tree.DefaultExpandImageIndex = treeViewAdv.DefaultExpandImageIndex;
		treeViewDragHighlightTracker = new TreeViewAdvDragHighlightTracker(tree);
		treeViewDragHighlightTracker.EdgeSensitivityOnTop = tree.ItemHeight / 4;
		treeViewDragHighlightTracker.EdgeSensitivityAtBottom = tree.ItemHeight / 4;
		treeViewDragHighlightTracker.QueryAllowedPositionsForNode += TreeDragDrop_QueryAllowedPositionsForNode;
		tree.DragOver += TreeViewAdv_DragOver;
		tree.QueryContinueDrag += TreeViewAdv_QueryContinueDrag;
		tree.DragLeave += TreeViewAdv_DragLeave;
		tree.DragDrop += TreeViewAdv_DragDrop;
		tree.ItemDrag += TreeViewAdv_ItemDrag;
		tree.Root.RecalculateAllDimensions();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			pgMenu.Dispose();
			if (components != null)
			{
				components.Dispose();
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeColumnAdvStyleInfo treeColumnAdvStyleInfo = new Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeColumnAdvStyleInfo();
		Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvSubItemStyleInfo style = new Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvSubItemStyleInfo();
		Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvStyleInfo treeNodeAdvStyleInfo = new Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvStyleInfo();
		this.addNode = new Syncfusion.Windows.Forms.ButtonAdv();
		this.addChild = new Syncfusion.Windows.Forms.ButtonAdv();
		this.propertyEditor = new Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeViewAdvEditorPropertyGrid();
		this.ok = new Syncfusion.Windows.Forms.ButtonAdv();
		this.cancel = new Syncfusion.Windows.Forms.ButtonAdv();
		this.remove = new Syncfusion.Windows.Forms.ButtonAdv();
		this.gradientPanelForm = new Syncfusion.Windows.Forms.Tools.GradientPanel();
		this.pnlBody = new System.Windows.Forms.Panel();
		this.pnlProperties = new System.Windows.Forms.Panel();
		this.lblProperties = new System.Windows.Forms.Label();
		this.splitterBody = new System.Windows.Forms.Splitter();
		this.pnlTree = new System.Windows.Forms.Panel();
		this.tree = new Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeViewAdvEditor();
		this.lblNodes = new System.Windows.Forms.Label();
		this.btnSort = new Syncfusion.Windows.Forms.ButtonAdv();
		this.select = new System.Windows.Forms.CheckBox();
		((System.ComponentModel.ISupportInitialize)this.gradientPanelForm).BeginInit();
		this.gradientPanelForm.SuspendLayout();
		this.pnlBody.SuspendLayout();
		this.pnlProperties.SuspendLayout();
		this.pnlTree.SuspendLayout();
		((System.ComponentModel.ISupportInitialize)this.tree).BeginInit();
		base.SuspendLayout();
		this.addNode.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.addNode.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.addNode.ComboEditBackColor = System.Drawing.Color.Empty;
		this.addNode.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.addNode.IsMouseDown = false;
		this.addNode.Location = new System.Drawing.Point(16, 384);
		this.addNode.Name = "addNode";
		this.addNode.Size = new System.Drawing.Size(76, 24);
		this.addNode.TabIndex = 1;
		this.addNode.Text = "&Add Node";
		this.addNode.UseVisualStyle = true;
		this.addNode.Click += new System.EventHandler(AddNode_Click);
		this.addChild.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.addChild.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.addChild.ComboEditBackColor = System.Drawing.Color.Empty;
		this.addChild.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.addChild.IsMouseDown = false;
		this.addChild.Location = new System.Drawing.Point(96, 384);
		this.addChild.Name = "addChild";
		this.addChild.Size = new System.Drawing.Size(76, 24);
		this.addChild.TabIndex = 2;
		this.addChild.Text = "A&dd Child";
		this.addChild.UseVisualStyle = true;
		this.addChild.Click += new System.EventHandler(AddChild_Click);
		this.propertyEditor.BackColor = System.Drawing.SystemColors.Control;
		this.propertyEditor.CommandsVisibleIfAvailable = true;
		this.propertyEditor.Dock = System.Windows.Forms.DockStyle.Fill;
		this.propertyEditor.HelpVisible = false;
		this.propertyEditor.LargeButtons = false;
		this.propertyEditor.LineColor = System.Drawing.SystemColors.ScrollBar;
		this.propertyEditor.Location = new System.Drawing.Point(0, 23);
		this.propertyEditor.Name = "propertyEditor";
		this.propertyEditor.Size = new System.Drawing.Size(310, 345);
		this.propertyEditor.TabIndex = 4;
		this.propertyEditor.Text = "propertyGrid1";
		this.propertyEditor.ToolbarVisible = false;
		this.propertyEditor.ViewBackColor = System.Drawing.SystemColors.Window;
		this.propertyEditor.ViewForeColor = System.Drawing.SystemColors.WindowText;
		this.ok.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.ok.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.ok.ComboEditBackColor = System.Drawing.Color.Empty;
		this.ok.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.ok.IsMouseDown = false;
		this.ok.Location = new System.Drawing.Point(466, 416);
		this.ok.Name = "OK";
		this.ok.Size = new System.Drawing.Size(76, 24);
		this.ok.TabIndex = 6;
		this.ok.Text = "&OK";
		this.ok.UseVisualStyle = true;
		this.ok.Click += new System.EventHandler(OK_Click);
		this.cancel.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.cancel.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.cancel.ComboEditBackColor = System.Drawing.Color.Empty;
		this.cancel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.cancel.IsMouseDown = false;
		this.cancel.Location = new System.Drawing.Point(546, 416);
		this.cancel.Name = "Cancel";
		this.cancel.Size = new System.Drawing.Size(76, 24);
		this.cancel.TabIndex = 7;
		this.cancel.Text = "&Cancel";
		this.cancel.UseVisualStyle = true;
		this.cancel.Click += new System.EventHandler(Cancel_Click);
		this.remove.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.remove.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.remove.ComboEditBackColor = System.Drawing.Color.Empty;
		this.remove.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.remove.IsMouseDown = false;
		this.remove.Location = new System.Drawing.Point(176, 384);
		this.remove.Name = "Remove";
		this.remove.Size = new System.Drawing.Size(76, 24);
		this.remove.TabIndex = 3;
		this.remove.Text = "&Remove";
		this.remove.UseVisualStyle = true;
		this.remove.Click += new System.EventHandler(Remove_Click);
		this.gradientPanelForm.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, new System.Drawing.Color[3]
		{
			System.Drawing.Color.FromArgb(238, 243, 250),
			System.Drawing.Color.White,
			System.Drawing.Color.FromArgb(238, 243, 250)
		});
		this.gradientPanelForm.BorderColor = System.Drawing.Color.Black;
		this.gradientPanelForm.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.gradientPanelForm.Controls.Add(this.pnlBody);
		this.gradientPanelForm.Controls.Add(this.btnSort);
		this.gradientPanelForm.Controls.Add(this.addChild);
		this.gradientPanelForm.Controls.Add(this.ok);
		this.gradientPanelForm.Controls.Add(this.addNode);
		this.gradientPanelForm.Controls.Add(this.cancel);
		this.gradientPanelForm.Controls.Add(this.remove);
		this.gradientPanelForm.Controls.Add(this.select);
		this.gradientPanelForm.Dock = System.Windows.Forms.DockStyle.Fill;
		this.gradientPanelForm.DockPadding.All = 8;
		this.gradientPanelForm.IgnoreThemeBackground = true;
		this.gradientPanelForm.Location = new System.Drawing.Point(0, 0);
		this.gradientPanelForm.Name = "gradientPanelForm";
		this.gradientPanelForm.Size = new System.Drawing.Size(632, 446);
		this.gradientPanelForm.TabIndex = 0;
		this.pnlBody.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
		this.pnlBody.BackColor = System.Drawing.Color.Transparent;
		this.pnlBody.Controls.Add(this.pnlProperties);
		this.pnlBody.Controls.Add(this.splitterBody);
		this.pnlBody.Controls.Add(this.pnlTree);
		this.pnlBody.Location = new System.Drawing.Point(8, 8);
		this.pnlBody.Name = "pnlBody";
		this.pnlBody.Size = new System.Drawing.Size(616, 368);
		this.pnlBody.TabIndex = 0;
		this.pnlProperties.Controls.Add(this.propertyEditor);
		this.pnlProperties.Controls.Add(this.lblProperties);
		this.pnlProperties.Dock = System.Windows.Forms.DockStyle.Fill;
		this.pnlProperties.Location = new System.Drawing.Point(306, 0);
		this.pnlProperties.Name = "pnlProperties";
		this.pnlProperties.Size = new System.Drawing.Size(310, 368);
		this.pnlProperties.TabIndex = 6;
		this.lblProperties.Dock = System.Windows.Forms.DockStyle.Top;
		this.lblProperties.Location = new System.Drawing.Point(0, 0);
		this.lblProperties.Name = "lblProperties";
		this.lblProperties.Size = new System.Drawing.Size(310, 23);
		this.lblProperties.TabIndex = 5;
		this.lblProperties.Text = "&Properties:";
		this.lblProperties.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.splitterBody.BackColor = System.Drawing.Color.FromArgb(239, 244, 250);
		this.splitterBody.Location = new System.Drawing.Point(300, 0);
		this.splitterBody.MinSize = 200;
		this.splitterBody.Name = "splitterBody";
		this.splitterBody.Size = new System.Drawing.Size(6, 368);
		this.splitterBody.TabIndex = 1;
		this.splitterBody.TabStop = false;
		this.pnlTree.BackColor = System.Drawing.Color.Transparent;
		this.pnlTree.Controls.Add(this.tree);
		this.pnlTree.Controls.Add(this.lblNodes);
		this.pnlTree.Dock = System.Windows.Forms.DockStyle.Left;
		this.pnlTree.Location = new System.Drawing.Point(0, 0);
		this.pnlTree.Name = "pnlTree";
		this.pnlTree.Size = new System.Drawing.Size(300, 368);
		this.pnlTree.TabIndex = 5;
		this.tree.AllowDrop = true;
		this.tree.BackgroundColor = new Syncfusion.Drawing.BrushInfo();
		treeColumnAdvStyleInfo.AreaBackground = new Syncfusion.Drawing.BrushInfo(System.Drawing.Color.Transparent);
		treeNodeAdvStyleInfo.EnsureDefaultOptionedChild = true;
		this.tree.BaseStylePairs.AddRange(new Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.StyleNamePair[3]
		{
			new Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.StyleNamePair("Standard - Column", treeColumnAdvStyleInfo),
			new Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.StyleNamePair("Standard - SubItem", style),
			new Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.StyleNamePair("Standard", treeNodeAdvStyleInfo)
		});
		this.tree.Dock = System.Windows.Forms.DockStyle.Fill;
		this.tree.HelpTextControl.BackgroundColor = new Syncfusion.Drawing.BrushInfo();
		this.tree.HelpTextControl.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this.tree.HelpTextControl.Location = new System.Drawing.Point(732, 0);
		this.tree.HelpTextControl.Name = "helpText";
		this.tree.HelpTextControl.Size = new System.Drawing.Size(50, 17);
		this.tree.HelpTextControl.TabIndex = 0;
		this.tree.HelpTextControl.Text = "help text";
		this.tree.Location = new System.Drawing.Point(0, 23);
		this.tree.Name = "tree";
		this.tree.PathSeparator = "/";
		this.tree.Size = new System.Drawing.Size(300, 345);
		this.tree.TabIndex = 0;
		this.tree.ToolTipControl.BackColor = System.Drawing.SystemColors.Info;
		this.tree.ToolTipControl.BackgroundColor = new Syncfusion.Drawing.BrushInfo();
		this.tree.ToolTipControl.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this.tree.ToolTipControl.Location = new System.Drawing.Point(642, 0);
		this.tree.ToolTipControl.Name = "toolTip";
		this.tree.ToolTipControl.Size = new System.Drawing.Size(6, 6);
		this.tree.ToolTipControl.TabIndex = 1;
		this.tree.ToolTipControl.Text = "toolTip";
		this.tree.AfterSelect += new System.EventHandler(Tree_AfterSelect);
		this.lblNodes.Dock = System.Windows.Forms.DockStyle.Top;
		this.lblNodes.Location = new System.Drawing.Point(0, 0);
		this.lblNodes.Name = "lblNodes";
		this.lblNodes.Size = new System.Drawing.Size(300, 23);
		this.lblNodes.TabIndex = 1;
		this.lblNodes.Text = "&Nodes:";
		this.lblNodes.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.btnSort.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.btnSort.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.btnSort.ComboEditBackColor = System.Drawing.Color.Empty;
		this.btnSort.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.btnSort.IsMouseDown = false;
		this.btnSort.Location = new System.Drawing.Point(546, 384);
		this.btnSort.Name = "btnSort";
		this.btnSort.Size = new System.Drawing.Size(76, 24);
		this.btnSort.TabIndex = 5;
		this.btnSort.Text = "&Sort";
		this.btnSort.UseVisualStyle = true;
		this.btnSort.Click += new System.EventHandler(BtnSort_Click);
		this.select.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.select.BackColor = System.Drawing.Color.Transparent;
		this.select.Checked = true;
		this.select.CheckState = System.Windows.Forms.CheckState.Checked;
		this.select.Location = new System.Drawing.Point(404, 384);
		this.select.Name = "select";
		this.select.Size = new System.Drawing.Size(128, 24);
		this.select.TabIndex = 4;
		this.select.Text = "Select added &node";
		this.select.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
		this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
		base.ClientSize = new System.Drawing.Size(632, 446);
		base.Controls.Add(this.gradientPanelForm);
		this.MinimumSize = new System.Drawing.Size(500, 400);
		base.Name = "TreeViewAdvEditorForm";
		base.ShowInTaskbar = false;
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		this.Text = "TreeViewAdv NodeCollection Editor";
		base.Load += new System.EventHandler(TreeViewAdvEditorForm_Load);
		((System.ComponentModel.ISupportInitialize)this.gradientPanelForm).EndInit();
		this.gradientPanelForm.ResumeLayout(false);
		this.pnlBody.ResumeLayout(false);
		this.pnlProperties.ResumeLayout(false);
		this.pnlTree.ResumeLayout(false);
		((System.ComponentModel.ISupportInitialize)this.tree).EndInit();
		base.ResumeLayout(false);
	}

	private void AddNode_Click(object sender, EventArgs e)
	{
		TreeNodeAdv treeNodeAdv = new TreeNodeAdv("Node" + tree.NodeCount);
		if (tree.SelectedNode != null && tree.SelectedNode.Parent != null)
		{
			tree.SelectedNode.Parent.Nodes.Add(treeNodeAdv);
		}
		else
		{
			tree.Nodes.Add(treeNodeAdv);
		}
		tree.NodeCount++;
		if (select.Checked)
		{
			tree.SelectedNode = treeNodeAdv;
		}
		tree.Root.RecalculateAllDimensions();
		tree.Invalidate();
	}

	private void AddChild_Click(object sender, EventArgs e)
	{
		TreeNodeAdv treeNodeAdv = new TreeNodeAdv("Node" + tree.NodeCount);
		if (tree.SelectedNode != null)
		{
			tree.SelectedNode.Nodes.Add(treeNodeAdv);
			tree.NodeCount++;
			tree.SelectedNode.Expand();
		}
		if (select.Checked)
		{
			tree.SelectedNode = treeNodeAdv;
		}
		tree.Invalidate();
	}

	private void OK_Click(object sender, EventArgs e)
	{
		tree.HScrollBar.Value = 0;
		tree.HScrollPos = 0;
		tree.Update();
		originalTree.Root = tree.Root.Clone();
		originalTree.MakeDirty();
		originalTree.Root.Visible = true;
		originalTree.NodeCount = tree.NodeCount;
		Close();
	}

	private void Cancel_Click(object sender, EventArgs e)
	{
		Close();
	}

	private void Tree_AfterSelect(object sender, EventArgs e)
	{
		propertyEditor.SelectedObject = tree.SelectedNode;
	}

	private void Remove_Click(object sender, EventArgs e)
	{
		if (tree.SelectedNode != null && tree.SelectedNode.Parent != null)
		{
			_ = tree.SelectedNode.Parent;
			tree.SelectedNode.Parent.Nodes.Remove(tree.SelectedNode);
		}
	}

	private void BtnSort_Click(object sender, EventArgs e)
	{
		if (tree.SelectedNode != null)
		{
			tree.SelectedNode.Sort();
		}
	}

	private void TreeViewAdvEditorForm_Load(object sender, EventArgs e)
	{
	}

	private void TreeViewAdv_ItemDrag(object sender, ItemDragEventArgs e)
	{
		MultiColumnTreeView multiColumnTreeView = sender as MultiColumnTreeView;
		TreeNodeAdv[] array = e.Item as TreeNodeAdv[];
		TreeNodeAdv data = array[0];
		multiColumnTreeView.DoDragDrop(data, DragDropEffects.Move);
	}

	private void TreeViewAdv_QueryContinueDrag(object sender, QueryContinueDragEventArgs e)
	{
		if (e.EscapePressed)
		{
			e.Action = DragAction.Cancel;
		}
	}

	private void TreeViewAdv_DragOver(object sender, DragEventArgs e)
	{
		bool flag = true;
		TreeNodeAdv treeNodeAdv = null;
		MultiColumnTreeView multiColumnTreeView = sender as MultiColumnTreeView;
		Point point = multiColumnTreeView.PointToClient(new Point(e.X, e.Y));
		currentSourceNode = null;
		if (e.Data.GetDataPresent(typeof(TreeNodeAdv)))
		{
			treeNodeAdv = multiColumnTreeView.GetNodeAtPoint(point);
			if (treeNodeAdv == null)
			{
				treeNodeAdv = multiColumnTreeView.Root;
			}
			flag = CanDrop(currentSourceNode = (TreeNodeAdv)e.Data.GetData(typeof(TreeNodeAdv)), treeNodeAdv);
		}
		else
		{
			flag = false;
		}
		e.Effect = (flag ? DragDropEffects.Move : DragDropEffects.None);
		if (flag)
		{
			treeViewDragHighlightTracker.SetHighlightNode(treeNodeAdv, point);
		}
	}

	private bool CanDrop(TreeNodeAdv sourceNode, TreeNodeAdv destinationNode)
	{
		if (sourceNode.TreeView == tree && destinationNode != null && !destinationNode.IsNodeRelative(sourceNode))
		{
			return destinationNode != sourceNode;
		}
		return false;
	}

	private void TreeViewAdv_DragLeave(object sender, EventArgs e)
	{
		treeViewDragHighlightTracker.ClearHighlightNode();
	}

	private void TreeViewAdv_DragDrop(object sender, DragEventArgs e)
	{
		MultiColumnTreeView multiColumnTreeView = sender as MultiColumnTreeView;
		TreeNodeAdv treeNodeAdv = (TreeNodeAdv)e.Data.GetData(typeof(TreeNodeAdv));
		TreeNodeAdv highlightNode = treeViewDragHighlightTracker.HighlightNode;
		TreeViewDropPositions dropPosition = treeViewDragHighlightTracker.DropPosition;
		treeViewDragHighlightTracker.ClearHighlightNode();
		currentSourceNode = null;
		if (highlightNode != null)
		{
			switch (dropPosition)
			{
			case TreeViewDropPositions.AboveNode:
				treeNodeAdv.Move(highlightNode, NodePositions.Previous);
				break;
			case TreeViewDropPositions.BelowNode:
				treeNodeAdv.Move(highlightNode, NodePositions.Next);
				break;
			case TreeViewDropPositions.OnNode:
				treeNodeAdv.Move(highlightNode.Nodes);
				highlightNode.Expand();
				break;
			}
		}
		multiColumnTreeView.SelectedNode = treeNodeAdv;
	}

	private void TreeDragDrop_QueryAllowedPositionsForNode(object sender, QueryAllowedPositionsEventArgs e)
	{
		if (e.HighlightNode != currentSourceNode)
		{
			e.AllowedPositions = TreeViewDropPositions.All;
		}
		else
		{
			e.AllowedPositions = TreeViewDropPositions.None;
		}
		e.ShowSelectionHighlight = CanDrop(currentSourceNode, e.HighlightNode) && e.NewDropPosition == TreeViewDropPositions.OnNode;
	}
}
