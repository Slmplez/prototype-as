using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Design;

[DesignTimeVisible(false)]
[ToolboxItem(false)]
internal class DesignBindingPicker : TreeView
{
	internal class DataSourceNode : TreeNode
	{
		private IComponent dataSource;

		public IComponent DataSource => dataSource;

		public DataSourceNode(IComponent dataSource)
			: base(dataSource.Site.Name, BINDER_IMAGE, BINDER_IMAGE)
		{
			this.dataSource = dataSource;
		}
	}

	internal class DataMemberNode : TreeNode
	{
		private bool isList;

		private string dataMember;

		public bool IsList => isList;

		public string DataMember => dataMember;

		public string DataField => base.Text;

		public IComponent DataSource
		{
			get
			{
				TreeNode treeNode = this;
				while (treeNode is DataMemberNode)
				{
					treeNode = treeNode.Parent;
				}
				if (treeNode is DataSourceNode)
				{
					return ((DataSourceNode)treeNode).DataSource;
				}
				return null;
			}
		}

		public DataMemberNode(string dataMember, string dataField, bool isList)
			: base(dataField, COLUMN_IMAGE, COLUMN_IMAGE)
		{
			this.dataMember = dataMember;
			this.isList = isList;
		}
	}

	internal class NoneNode : TreeNode
	{
		public NoneNode()
			: base("Null", NONE_IMAGE, NONE_IMAGE)
		{
		}
	}

	private const int MaximumDepth = 10;

	private IWindowsFormsEditorService edSvc;

	private bool multipleDataSources;

	private bool selectLists;

	private bool expansionSignClicked;

	private bool allowSelection;

	private DesignBinding selectedItem;

	private TreeNode selectedNode;

	private static readonly int BINDER_IMAGE;

	private static readonly int COLUMN_IMAGE;

	private static readonly int NONE_IMAGE;

	public DesignBinding SelectedItem => selectedItem;

	private bool ExpansionSignClicked
	{
		get
		{
			return expansionSignClicked;
		}
		set
		{
			expansionSignClicked = value;
		}
	}

	public bool AllowSelection
	{
		get
		{
			return allowSelection;
		}
		set
		{
			allowSelection = value;
		}
	}

	public DesignBindingPicker(ITypeDescriptorContext context, bool multipleDataSources, bool selectLists)
	{
		expansionSignClicked = false;
		allowSelection = false;
		selectedItem = null;
		selectedNode = null;
		this.multipleDataSources = multipleDataSources;
		this.selectLists = selectLists;
		Image value = new Bitmap(typeof(ControlDesigner), "DataPickerImages.bmp");
		ImageList imageList = new ImageList();
		imageList.TransparentColor = Color.Lime;
		imageList.Images.AddStrip(value);
		base.ImageList = imageList;
	}

	static DesignBindingPicker()
	{
		BINDER_IMAGE = 0;
		COLUMN_IMAGE = 1;
		NONE_IMAGE = 2;
	}

	protected override void OnAfterExpand(TreeViewEventArgs e)
	{
		base.OnAfterExpand(e);
		ExpansionSignClicked = false;
	}

	protected override void OnBeforeExpand(TreeViewCancelEventArgs e)
	{
		ExpansionSignClicked = true;
		base.OnBeforeExpand(e);
	}

	protected override void OnAfterCollapse(TreeViewEventArgs e)
	{
		base.OnAfterCollapse(e);
		ExpansionSignClicked = false;
	}

	protected override void OnBeforeCollapse(TreeViewCancelEventArgs e)
	{
		ExpansionSignClicked = true;
		base.OnBeforeCollapse(e);
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 513)
		{
			base.WndProc(ref m);
			if (!allowSelection)
			{
				return;
			}
			SetSelectedItem(GetNodeAtXAndY((short)(int)m.LParam, (int)m.LParam >> 16));
			if (selectedItem != null && !ExpansionSignClicked)
			{
				edSvc.CloseDropDown();
			}
			ExpansionSignClicked = false;
		}
		base.WndProc(ref m);
	}

	protected override void OnKeyUp(KeyEventArgs e)
	{
		base.OnKeyUp(e);
		if (e.KeyData == Keys.Return)
		{
			SetSelectedItem(base.SelectedNode);
			if (selectedItem != null)
			{
				edSvc.CloseDropDown();
			}
		}
	}

	protected override bool IsInputKey(Keys key)
	{
		if (key == Keys.Return)
		{
			return true;
		}
		return base.IsInputKey(key);
	}

	private TreeNode GetNodeAtXAndY(int x, int y)
	{
		NativeMethods.TV_HITTESTINFO tV_HITTESTINFO = new NativeMethods.TV_HITTESTINFO();
		tV_HITTESTINFO.pt_x = x;
		tV_HITTESTINFO.pt_y = y;
		IntPtr intPtr = NativeMethods.SendMessage(base.Handle, 4369, 0, tV_HITTESTINFO);
		if (intPtr == IntPtr.Zero)
		{
			return null;
		}
		if (tV_HITTESTINFO.flags == 4 || tV_HITTESTINFO.flags != 2)
		{
			return GetNodeAt(x, y);
		}
		return null;
	}

	public void Start(ITypeDescriptorContext context, IWindowsFormsEditorService edSvc, object dataSource, DesignBinding selectedItem)
	{
		this.edSvc = edSvc;
		this.selectedItem = selectedItem;
		ExpansionSignClicked = false;
		if (context != null && context.Container != null)
		{
			FillDataSources(context, dataSource);
			base.Width = GetMaxItemWidth(base.Nodes) + SystemInformation.VerticalScrollBarWidth * 2;
		}
	}

	public void End()
	{
		base.Nodes.Clear();
		edSvc = null;
		selectedItem = null;
		ExpansionSignClicked = false;
	}

	protected void FillDataSource(BindingContext bindingManager, object component)
	{
		if (!(component is IListSource) && !(component is IList) && !(component is Array))
		{
			return;
		}
		CurrencyManager currencyManager = (CurrencyManager)bindingManager[component];
		PropertyDescriptorCollection itemProperties = currencyManager.GetItemProperties();
		if (itemProperties.Count <= 0)
		{
			return;
		}
		TreeNodeCollection treeNodeCollection = base.Nodes;
		if (multipleDataSources)
		{
			TreeNode treeNode = new DataSourceNode((IComponent)component);
			base.Nodes.Add(treeNode);
			if (selectedItem != null && selectedItem.Equals(component, ""))
			{
				selectedNode = treeNode;
			}
			treeNodeCollection = treeNode.Nodes;
		}
		for (int i = 0; i < itemProperties.Count; i++)
		{
			FillDataMembers(bindingManager, component, itemProperties[i].Name, itemProperties[i].Name, typeof(IList).IsAssignableFrom(itemProperties[i].PropertyType), treeNodeCollection, 0);
		}
	}

	protected void FillDataSources(ITypeDescriptorContext context, object dataSource)
	{
		base.Nodes.Clear();
		BindingContext bindingManager = new BindingContext();
		if (multipleDataSources)
		{
			ComponentCollection components = context.Container.Components;
			foreach (IComponent item in components)
			{
				FillDataSource(bindingManager, item);
			}
		}
		FillDataSource(bindingManager, dataSource);
		TreeNode node = new NoneNode();
		base.Nodes.Add(node);
		if (selectedNode == null)
		{
			selectedNode = node;
		}
		base.SelectedNode = selectedNode;
		selectedNode = null;
		selectedItem = null;
		allowSelection = true;
	}

	protected void FillDataMembers(BindingContext bindingManager, object dataSource, string dataMember, string propertyName, bool isList, TreeNodeCollection nodes, int depth)
	{
		if (depth > 10 || (!isList && selectLists))
		{
			return;
		}
		DataMemberNode dataMemberNode = new DataMemberNode(dataMember, propertyName, isList);
		nodes.Add(dataMemberNode);
		if (selectedItem != null && selectedItem.Equals(dataSource, dataMember))
		{
			selectedNode = dataMemberNode;
		}
		if (!isList)
		{
			return;
		}
		CurrencyManager currencyManager = (CurrencyManager)bindingManager[dataSource, dataMember];
		PropertyDescriptorCollection itemProperties = currencyManager.GetItemProperties();
		for (int i = 0; i < itemProperties.Count; i++)
		{
			ListBindableAttribute listBindableAttribute = (ListBindableAttribute)itemProperties[i].Attributes[typeof(ListBindableAttribute)];
			if (listBindableAttribute == null || listBindableAttribute.ListBindable)
			{
				FillDataMembers(bindingManager, dataSource, dataMember + "." + itemProperties[i].Name, itemProperties[i].Name, typeof(IList).IsAssignableFrom(itemProperties[i].PropertyType), dataMemberNode.Nodes, depth + 1);
			}
		}
	}

	private int GetMaxItemWidth(TreeNodeCollection nodes)
	{
		int num = 0;
		foreach (TreeNode node in nodes)
		{
			Rectangle bounds = node.Bounds;
			int val = bounds.Left + bounds.Width;
			bool isExpanded = node.IsExpanded;
			try
			{
				num = Math.Max(val, num);
				node.Expand();
				num = Math.Max(num, GetMaxItemWidth(node.Nodes));
			}
			finally
			{
				if (!isExpanded)
				{
					node.Collapse();
				}
			}
		}
		return num;
	}

	private void SetSelectedItem(TreeNode node)
	{
		selectedItem = null;
		if (node is DataMemberNode)
		{
			DataMemberNode dataMemberNode = (DataMemberNode)node;
			if (selectLists == dataMemberNode.IsList)
			{
				selectedItem = new DesignBinding(dataMemberNode.DataSource, dataMemberNode.DataMember);
			}
		}
		else if (node is NoneNode)
		{
			selectedItem = DesignBinding.Null;
		}
	}
}
