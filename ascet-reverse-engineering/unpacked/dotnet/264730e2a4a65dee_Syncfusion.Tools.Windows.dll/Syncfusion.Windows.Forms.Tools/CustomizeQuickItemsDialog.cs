using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class CustomizeQuickItemsDialog : Office2007Form
{
	private class StartPanel
	{
		private ToolStripDropDown m_DropDown = new ToolStripDropDown();

		public ToolStripDropDown DropDown => m_DropDown;

		public StartPanel(ToolStripDropDown dropdown)
		{
			m_DropDown = dropdown;
		}

		public override string ToString()
		{
			RibbonControlAdvHeader ribbonControlAdvHeader = null;
			RibbonControlAdv ribbonControlAdv = null;
			if (m_DropDown.OwnerItem != null && m_DropDown.OwnerItem.Owner is RibbonControlAdvHeader ribbonControlAdvHeader2)
			{
				ribbonControlAdv = ribbonControlAdvHeader2.Parent as RibbonControlAdv;
			}
			if (ribbonControlAdv == null)
			{
				return base.ToString();
			}
			return ribbonControlAdv.SystemText.QuickAccessDialogDropDownName;
		}
	}

	private class RibbonPanelItem
	{
		private ToolStripTabItem m_item;

		private string m_text;

		public RibbonPanel Panel => m_item.Panel;

		public RibbonPanelItem(ToolStripTabItem item, string text)
		{
			m_item = item;
			m_text = text;
		}

		public override string ToString()
		{
			return m_text;
		}
	}

	private class QuickComparer : IComparer
	{
		private IList m_template;

		public QuickComparer(IList template)
		{
			m_template = template;
		}

		public int Compare(object x, object y)
		{
			int num = m_template.IndexOf((x is IQuickItem) ? ((IQuickItem)x).ReflectedComponent : x);
			int num2 = m_template.IndexOf((y is IQuickItem) ? ((IQuickItem)y).ReflectedComponent : y);
			return num - num2;
		}
	}

	internal class QATListView : ListView
	{
		public new void RecreateHandle()
		{
			base.RecreateHandle();
		}
	}

	private static readonly Color c_borderColorOffice2007 = Color.FromArgb(200, 177, 128);

	private static readonly Color c_foreColorTopFirstOffice2007 = Color.FromArgb(255, 253, 235);

	private static readonly Color c_foreColorTopLastOffice2007 = Color.FromArgb(255, 235, 178);

	private static readonly Color c_foreColorBottomFirstOffice2007 = Color.FromArgb(255, 213, 98);

	private static readonly Color c_foreColorBottomLastOffice2007 = Color.FromArgb(255, 228, 145);

	private static readonly Color c_foreColorBottomLineOffice2007 = Color.FromArgb(255, 248, 181);

	private List<Component> m_reflectedComponents;

	private RibbonControlAdvHeader m_header;

	private List<Component> m_Quick;

	private Regex m_regex;

	private IContainer components;

	private Label lblChooseCommandsFrom;

	private ComboBoxAdv comboPanels;

	private QATListView lstAvailableItems;

	private QATListView lstChosenItems;

	private ButtonAdv btnAdd;

	private ButtonAdv btnRemove;

	private CheckBoxAdv chkPlaceBelowRibbon;

	private ButtonAdv btnCancel;

	private ButtonAdv btnOK;

	private ButtonAdv btnReset;

	private ButtonAdv btnUp;

	private ButtonAdv btnDown;

	private ImageList imageList;

	private ScrollersFrame sfAvailableItems;

	private ScrollersFrame sfChosenItems;

	private Regex Regex
	{
		get
		{
			if (m_regex == null)
			{
				m_regex = new Regex("\\s+");
			}
			return m_regex;
		}
	}

	public CustomizeQuickItemsDialog(RibbonControlAdvHeader header)
	{
		InitializeComponent();
		InitLocalizedResources();
		m_header = header;
		SetupHeaderDependencies();
		ApplyColorSchemeToControls();
		m_reflectedComponents = new List<Component>();
		m_Quick = new List<Component>(m_header.QuickItems.Count);
		foreach (ToolStripItem quickItem2 in m_header.QuickItems)
		{
			if (quickItem2 is IQuickItem quickItem)
			{
				m_reflectedComponents.Add(quickItem.ReflectedComponent);
				m_Quick.Add(quickItem.ReflectedComponent);
			}
			else
			{
				m_Quick.Add(quickItem2);
			}
		}
		ExtractPanels();
		UpdateDestinationList();
	}

	public virtual void InitLocalizedResources()
	{
		btnAdd.Text = SR.GetString("QuickAccessDialogButtonAdd");
		btnRemove.Text = SR.GetString("QuickAccessDialogButtonRemove");
		btnReset.Text = SR.GetString("QuickAccessDialogButtonReset");
		btnCancel.Text = SR.GetString("QuickAccessDialogButtonCancel");
		chkPlaceBelowRibbon.Text = SR.GetString("QuickAccessPlaceBelowRibbon");
		lblChooseCommandsFrom.Text = SR.GetString("QuickAccessDialogCommands");
	}

	private void SetupHeaderDependencies()
	{
		m_header.RendererChanged += HeaderRendererChanged;
		if (m_header.Parent is RibbonControlAdv ribbonControlAdv)
		{
			base.ColorScheme = ColorSchemeConverter.ToOffice2007Theme(ribbonControlAdv.OfficeColorScheme);
		}
	}

	public static void Execute(RibbonControlAdvHeader header)
	{
		using CustomizeQuickItemsDialog customizeQuickItemsDialog = new CustomizeQuickItemsDialog(header);
		customizeQuickItemsDialog.ShowDialog();
	}

	protected override void SetVisibleCore(bool value)
	{
		if (value)
		{
			UpdateLabels();
		}
		base.SetVisibleCore(value);
	}

	protected override void OnColorSchemeChanged()
	{
		base.OnColorSchemeChanged();
		ApplyColorSchemeToControls();
	}

	private void OnComboToolstripsSelectedIndexChanged(object sender, EventArgs e)
	{
		if (comboPanels.SelectedItem is RibbonPanelItem ribbonPanelItem)
		{
			UpdateSourceListFromPanel(ribbonPanelItem.Panel);
		}
		else if (comboPanels.SelectedItem is StartPanel startPanel)
		{
			UpdateSourceListFromDropDown(startPanel.DropDown);
		}
	}

	private void OnLstAvailableItemsSelectedIndexChanged(object sender, EventArgs e)
	{
		bool enabled = lstAvailableItems.SelectedItems.Count > 0;
		foreach (ListViewItem selectedItem in lstAvailableItems.SelectedItems)
		{
			Component item = selectedItem.Tag as Component;
			if (m_reflectedComponents.Contains(item))
			{
				enabled = false;
				break;
			}
		}
		btnAdd.Enabled = enabled;
	}

	private void OnLstChosenItemsSelectedIndexChanged(object sender, EventArgs e)
	{
		btnRemove.Enabled = lstChosenItems.SelectedItems.Count > 0;
		ListView.SelectedIndexCollection selectedIndices = lstChosenItems.SelectedIndices;
		if (selectedIndices.Count == 1)
		{
			int num = lstChosenItems.SelectedIndices[0];
			btnDown.Enabled = num != lstChosenItems.Items.Count - 1;
			btnUp.Enabled = num != 0;
		}
		else
		{
			btnDown.Enabled = false;
			btnUp.Enabled = false;
		}
	}

	private void OnBtnAddClick(object sender, EventArgs e)
	{
		AddItemsToDestinationList(lstAvailableItems.SelectedItems);
		btnAdd.Enabled = false;
	}

	private void OnBtnRemoveClick(object sender, EventArgs e)
	{
		RemoveItemsFromDestinationList(lstChosenItems.SelectedItems);
		btnRemove.Enabled = false;
	}

	private void OnLstAvailableItemsDoubleClick(object sender, EventArgs e)
	{
		Point point = lstAvailableItems.PointToClient(Cursor.Position);
		ListViewItem itemAt = lstAvailableItems.GetItemAt(point.X, point.Y);
		if (itemAt != null)
		{
			AddItemsToDestinationList(new ListViewItem[1] { itemAt });
			btnAdd.Enabled = false;
		}
	}

	private void OnLstChosenItemsDoubleClick(object sender, EventArgs e)
	{
		RemoveItemsFromDestinationList(lstChosenItems.SelectedItems);
		btnRemove.Enabled = false;
	}

	private void OnBtnOKClick(object sender, EventArgs e)
	{
		if (!(m_header.QuickItems is RibbonControlAdvHeader.QuickItemsCollection { Owner: var owner } quickItemsCollection))
		{
			return;
		}
		owner?.SuspendLayout();
		ArrayList arrayList = new ArrayList(m_reflectedComponents);
		ArrayList arrayList2 = new ArrayList(quickItemsCollection);
		foreach (ToolStripItem item in arrayList2)
		{
			if (item is IQuickItem quickItem)
			{
				int num = arrayList.IndexOf(quickItem.ReflectedComponent);
				if (num < 0)
				{
					quickItemsCollection.Remove(item);
				}
				else
				{
					arrayList.RemoveAt(num);
				}
			}
		}
		foreach (Component item2 in arrayList)
		{
			ToolStripItem itemToReflect = QuickToolstripReflectable.GetItemToReflect(item2);
			m_header.AddQuickItem(itemToReflect);
		}
		QuickComparer comparer = new QuickComparer(m_Quick);
		quickItemsCollection.Sort(comparer);
		quickItemsCollection.UpdateAccelerators(null);
		if (owner != null)
		{
			owner.ResumeLayout(performLayout: false);
			owner.PerformLayout();
		}
	}

	private void btnReset_Click(object sender, EventArgs e)
	{
		foreach (Component reflectedComponent in m_reflectedComponents)
		{
			m_Quick.Remove(reflectedComponent);
		}
		m_reflectedComponents.Clear();
		UpdateDestinationList();
	}

	private void btnDown_Click(object sender, EventArgs e)
	{
		ListView.SelectedIndexCollection selectedIndices = lstChosenItems.SelectedIndices;
		if (selectedIndices.Count == 1)
		{
			int num = selectedIndices[0];
			if (num < lstChosenItems.Items.Count - 1)
			{
				Component item = m_reflectedComponents[num];
				Component item2 = m_reflectedComponents[num + 1];
				m_reflectedComponents.RemoveAt(num + 1);
				m_reflectedComponents.Insert(num, item2);
				m_Quick.Remove(item2);
				m_Quick.Insert(m_Quick.IndexOf(item), item2);
				ListViewItem item3 = lstChosenItems.Items[num];
				lstChosenItems.Items.RemoveAt(num);
				lstChosenItems.Items.Insert(num + 1, item3);
				lstChosenItems.EnsureVisible(num + 1);
			}
		}
		lstChosenItems.Select();
	}

	private void btnUp_Click(object sender, EventArgs e)
	{
		ListView.SelectedIndexCollection selectedIndices = lstChosenItems.SelectedIndices;
		if (selectedIndices.Count == 1)
		{
			int num = selectedIndices[0];
			if (num > 0)
			{
				Component item = m_reflectedComponents[num - 1];
				Component item2 = m_reflectedComponents[num];
				m_reflectedComponents.RemoveAt(num);
				m_reflectedComponents.Insert(num - 1, item2);
				m_Quick.Remove(item2);
				m_Quick.Insert(m_Quick.IndexOf(item), item2);
				ListViewItem item3 = lstChosenItems.Items[num];
				lstChosenItems.Items.RemoveAt(num);
				lstChosenItems.Items.Insert(num - 1, item3);
				lstChosenItems.EnsureVisible(num - 1);
			}
		}
		lstChosenItems.Select();
	}

	private void lstChosenItems_Validating(object sender, CancelEventArgs e)
	{
		btnDown.Enabled = false;
		btnUp.Enabled = false;
	}

	private void HeaderRendererChanged(object sender, EventArgs e)
	{
		ApplyColorSchemeToControls();
	}

	private void UpdateLabels()
	{
		if (m_header.Parent is RibbonControlAdv { SystemText: var systemText })
		{
			Text = systemText.QuickAccessCustomizeCaptionText;
			lblChooseCommandsFrom.Text = systemText.QuickAccessDialogCommandsText;
			btnAdd.Text = systemText.QuickAccessDialogAddText;
			btnRemove.Text = systemText.QuickAccessDialogRemoveText;
			btnOK.Text = systemText.QuickAccessDialogOkText;
			btnCancel.Text = systemText.QuickAccessDialogCancelText;
			btnReset.Text = systemText.QuickAccessDialogResetText;
			chkPlaceBelowRibbon.Text = systemText.QuickAccessPlaceBelowText;
			btnReset.Size = btnReset.GetPreferredSize(btnReset.Size);
		}
	}

	private void UpdateSourceListFromPanel(RibbonPanel panel)
	{
		ClearSourceList();
		if (!(m_header.Parent is RibbonControlAdv { ItemsToHideInCustomQuickDialog: var itemsToHideInCustomQuickDialog }))
		{
			return;
		}
		List<ToolStripEx> list = new List<ToolStripEx>();
		foreach (Control control in panel.Controls)
		{
			if (control is ToolStripEx toolStripEx)
			{
				AddImage(lstAvailableItems, toolStripEx);
				string description = GetDescription(toolStripEx);
				if (!itemsToHideInCustomQuickDialog.Contains(toolStripEx))
				{
					ListViewItem listViewItem = new ListViewItem(description, lstAvailableItems.SmallImageList.Images.Count - 1);
					listViewItem.Tag = toolStripEx;
					lstAvailableItems.Items.Add(listViewItem);
				}
				list.Add(toolStripEx);
			}
		}
		foreach (ToolStripEx item in list)
		{
			ArrayList arrayList = ExtractToolStripItems(item.GetItems());
			foreach (ToolStripItem item2 in arrayList)
			{
				if (!itemsToHideInCustomQuickDialog.Contains(item2))
				{
					string description2 = GetDescription(item2);
					AddImage(lstAvailableItems, item2);
					ListViewItem listViewItem2 = new ListViewItem(description2, lstAvailableItems.SmallImageList.Images.Count - 1);
					listViewItem2.Tag = item2;
					lstAvailableItems.Items.Add(listViewItem2);
				}
			}
		}
	}

	private void AddImage(QATListView listView, Component component)
	{
		Image image = m_header.GetImage(component);
		ImageList smallImageList = listView.SmallImageList;
		Size imageSize = smallImageList.ImageSize;
		if (image.Size != imageSize)
		{
			Image image2 = new Bitmap(imageSize.Width, imageSize.Height);
			using (Graphics graphics = Graphics.FromImage(image2))
			{
				Rectangle rect = new Rectangle(Point.Empty, imageSize);
				graphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
				graphics.DrawImage(image, rect);
			}
			image = image2;
		}
		smallImageList.Images.Add(image);
	}

	private void UpdateSourceListFromDropDown(ToolStripDropDown dropDown)
	{
		ClearSourceList();
		ArrayList arrayList = ExtractToolStripItems(dropDown.Items);
		RibbonControlAdv ribbonControlAdv = m_header.Parent as RibbonControlAdv;
		List<Component> itemsToHideInCustomQuickDialog = ribbonControlAdv.ItemsToHideInCustomQuickDialog;
		foreach (ToolStripItem item in arrayList)
		{
			if (!itemsToHideInCustomQuickDialog.Contains(item))
			{
				string description = GetDescription(item);
				AddImage(lstAvailableItems, item);
				ListViewItem listViewItem = new ListViewItem(description, lstAvailableItems.SmallImageList.Images.Count - 1);
				listViewItem.Tag = item;
				lstAvailableItems.Items.Add(listViewItem);
			}
		}
	}

	private string GetDescription(Component comp)
	{
		string input = m_header.GetText(comp);
		return Regex.Replace(input, " ");
	}

	private void ClearSourceList()
	{
		lstAvailableItems.Clear();
		lstAvailableItems.SmallImageList = CreateImageList();
		lstAvailableItems.RecreateHandle();
	}

	private static ImageList CreateImageList()
	{
		ImageList imageList = new ImageList();
		imageList.ColorDepth = ColorDepth.Depth32Bit;
		imageList.ImageSize = new Size(16, 16);
		return imageList;
	}

	private void UpdateDestinationList()
	{
		ClearDestinationList();
		foreach (Component reflectedComponent in m_reflectedComponents)
		{
			AddImage(lstChosenItems, reflectedComponent);
			ListViewItem listViewItem = new ListViewItem(GetDescription(reflectedComponent), lstChosenItems.SmallImageList.Images.Count - 1);
			listViewItem.Tag = reflectedComponent;
			lstChosenItems.Items.Add(listViewItem);
		}
	}

	private void ClearDestinationList()
	{
		lstChosenItems.Clear();
		lstChosenItems.SmallImageList = CreateImageList();
		lstChosenItems.RecreateHandle();
	}

	private void AddItemsToDestinationList(ICollection items)
	{
		if (items == null || items.Count <= 0)
		{
			return;
		}
		foreach (ListViewItem item2 in items)
		{
			if (item2.Tag is Component item && !m_reflectedComponents.Contains(item))
			{
				m_reflectedComponents.Add(item);
				m_Quick.Add(item);
			}
		}
		UpdateDestinationList();
	}

	private void RemoveItemsFromDestinationList(ICollection items)
	{
		if (items == null || items.Count <= 0)
		{
			return;
		}
		foreach (ListViewItem item2 in items)
		{
			if (!(item2.Tag is Component item))
			{
				continue;
			}
			int num = m_reflectedComponents.IndexOf(item);
			if (num >= 0)
			{
				m_reflectedComponents.RemoveAt(num);
				int num2 = m_Quick.IndexOf(item);
				if (num2 >= 0)
				{
					m_Quick.RemoveAt(num2);
				}
			}
		}
		UpdateDestinationList();
	}

	private void ExtractPanels()
	{
		comboPanels.Items.Clear();
		if (!(m_header.Parent is RibbonControlAdv { ItemsToHideInCustomQuickDialog: var itemsToHideInCustomQuickDialog }))
		{
			return;
		}
		foreach (ToolStripItem mainItem in m_header.MainItems)
		{
			if (mainItem is ToolStripTabItem toolStripTabItem && !itemsToHideInCustomQuickDialog.Contains(toolStripTabItem))
			{
				comboPanels.Items.Add(new RibbonPanelItem(toolStripTabItem, GetDescription(toolStripTabItem)));
			}
		}
		if (m_header.MenuButtonVisible)
		{
			ToolStripDropDown menuButtonDropDown = m_header.MenuButtonDropDown;
			StartPanel item = new StartPanel(menuButtonDropDown);
			comboPanels.Items.Add(item);
		}
		if (comboPanels.Items.Count > 0)
		{
			comboPanels.SelectedIndex = 0;
		}
		comboPanels.ListBox.ItemHeight = 20;
		comboPanels.ListBox.DrawMode = DrawMode.OwnerDrawFixed;
		comboPanels.ListBox.DrawItem += ListBox_DrawItem;
	}

	private void ListBox_DrawItem(object sender, DrawItemEventArgs e)
	{
		e.DrawFocusRectangle();
		e.DrawBackground();
		string s = string.Empty;
		object obj = comboPanels.Items[e.Index];
		if (obj is RibbonPanelItem)
		{
			RibbonPanelItem ribbonPanelItem = comboPanels.Items[e.Index] as RibbonPanelItem;
			s = ribbonPanelItem.Panel.Text;
		}
		else if (obj is StartPanel)
		{
			StartPanel startPanel = comboPanels.Items[e.Index] as StartPanel;
			s = startPanel.ToString();
		}
		StringFormat stringFormat = new StringFormat();
		stringFormat.Alignment = StringAlignment.Near;
		stringFormat.LineAlignment = StringAlignment.Center;
		if ((e.State & DrawItemState.Selected) != DrawItemState.None)
		{
			Graphics graphics = e.Graphics;
			Rectangle bounds = e.Bounds;
			Pen pen = new Pen(c_borderColorOffice2007);
			graphics.DrawLine(pen, bounds.X + 1, bounds.Y, bounds.Right - 1, bounds.Y);
			graphics.DrawLine(pen, bounds.X, bounds.Y + 1, bounds.X, bounds.Bottom - 2);
			graphics.DrawLine(pen, bounds.X + 1, bounds.Bottom - 1, bounds.Right - 2, bounds.Bottom - 1);
			graphics.DrawLine(pen, bounds.Right - 1, bounds.Y + 1, bounds.Right - 1, bounds.Bottom - 2);
			bounds.Inflate(-2, -2);
			RectangleF rect = new RectangleF(bounds.X, bounds.Y, bounds.Width, (float)bounds.Height / 2f);
			RectangleF rect2 = new RectangleF(bounds.X, (float)bounds.Y + (float)bounds.Height / 2f, bounds.Width, (float)bounds.Height / 2f);
			using (LinearGradientBrush brush = new LinearGradientBrush(rect, c_foreColorTopFirstOffice2007, c_foreColorTopLastOffice2007, LinearGradientMode.Vertical))
			{
				rect = new RectangleF(rect.X - 1f, rect.Y - 1f, rect.Width + 2f, rect.Height + 1f);
				graphics.FillRectangle(brush, rect);
			}
			using (LinearGradientBrush brush2 = new LinearGradientBrush(rect2, c_foreColorBottomFirstOffice2007, c_foreColorBottomLastOffice2007, LinearGradientMode.Vertical))
			{
				graphics.FillRectangle(brush2, rect2);
			}
			Pen pen2 = new Pen(c_foreColorBottomLineOffice2007);
			graphics.DrawLine(pen2, rect2.X - 1f, rect2.Y, rect2.X - 1f, rect2.Bottom);
			graphics.DrawLine(pen2, rect2.Right, rect2.Y, rect2.Right, rect2.Bottom);
			graphics.DrawLine(pen2, rect2.X, rect2.Bottom, rect2.Right, rect2.Bottom);
		}
		else
		{
			e.Graphics.FillRectangle(new SolidBrush(e.BackColor), e.Bounds);
		}
		e.Graphics.DrawString(s, comboPanels.Font, new SolidBrush(comboPanels.ForeColor), e.Bounds, stringFormat);
	}

	private ArrayList ExtractToolStripItems(ToolStripItemCollection items)
	{
		ArrayList arrayList = new ArrayList();
		foreach (ToolStripItem item in items)
		{
			if (item is ToolStripPanelItem)
			{
				ToolStripPanelItem toolStripPanelItem = item as ToolStripPanelItem;
				arrayList.AddRange(ExtractToolStripItems(toolStripPanelItem.ToolStrip.GetItems()));
			}
			else if (IsSupportedItem(item))
			{
				arrayList.Add(item);
			}
		}
		return arrayList;
	}

	private bool IsSupportedItem(ToolStripItem item)
	{
		if (!(item is ToolStripButton) && !(item is ToolStripDropDownButton) && !(item is ToolStripSplitButton) && !(item is ToolStripSplitButtonEx) && !(item is ToolStripTextBox) && !(item is ToolStripComboBox))
		{
			return item is ToolStripComboBoxEx;
		}
		return true;
	}

	private void ApplyColorSchemeToControls()
	{
		foreach (Control control in base.Controls)
		{
			if (control is ISupportOffice2007Theme supportOffice2007Theme)
			{
				supportOffice2007Theme.Office2007ColorTheme = base.ColorScheme;
			}
		}
		Office2007ColorScheme colorScheme = (Office2007ColorScheme)base.ColorScheme;
		sfAvailableItems.OfficeColorScheme = colorScheme;
		sfChosenItems.OfficeColorScheme = colorScheme;
		lblChooseCommandsFrom.ForeColor = ((base.ColorScheme == Office2007Theme.Black) ? Color.White : Color.Black);
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
		System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Syncfusion.Windows.Forms.Tools.CustomizeQuickItemsDialog));
		this.lblChooseCommandsFrom = new System.Windows.Forms.Label();
		this.comboPanels = new Syncfusion.Windows.Forms.Tools.ComboBoxAdv();
		this.lstAvailableItems = new Syncfusion.Windows.Forms.Tools.CustomizeQuickItemsDialog.QATListView();
		this.lstChosenItems = new Syncfusion.Windows.Forms.Tools.CustomizeQuickItemsDialog.QATListView();
		this.btnAdd = new Syncfusion.Windows.Forms.ButtonAdv();
		this.btnRemove = new Syncfusion.Windows.Forms.ButtonAdv();
		this.chkPlaceBelowRibbon = new Syncfusion.Windows.Forms.Tools.CheckBoxAdv();
		this.btnCancel = new Syncfusion.Windows.Forms.ButtonAdv();
		this.btnOK = new Syncfusion.Windows.Forms.ButtonAdv();
		this.btnReset = new Syncfusion.Windows.Forms.ButtonAdv();
		this.btnUp = new Syncfusion.Windows.Forms.ButtonAdv();
		this.imageList = new System.Windows.Forms.ImageList(this.components);
		this.btnDown = new Syncfusion.Windows.Forms.ButtonAdv();
		this.sfAvailableItems = new Syncfusion.Windows.Forms.ScrollersFrame(this.components);
		this.sfChosenItems = new Syncfusion.Windows.Forms.ScrollersFrame(this.components);
		((System.ComponentModel.ISupportInitialize)this.comboPanels).BeginInit();
		((System.ComponentModel.ISupportInitialize)this.chkPlaceBelowRibbon).BeginInit();
		base.SuspendLayout();
		resources.ApplyResources(this.lblChooseCommandsFrom, "lblChooseCommandsFrom");
		this.lblChooseCommandsFrom.BackColor = System.Drawing.Color.Transparent;
		this.lblChooseCommandsFrom.Name = "lblChooseCommandsFrom";
		this.comboPanels.BackColor = System.Drawing.Color.FromArgb(234, 242, 251);
		this.comboPanels.DisplayMember = "Text";
		this.comboPanels.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
		this.comboPanels.IgnoreThemeBackground = true;
		resources.ApplyResources(this.comboPanels, "comboPanels");
		this.comboPanels.Name = "comboPanels";
		this.comboPanels.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;
		this.comboPanels.SelectedIndexChanged += new System.EventHandler(OnComboToolstripsSelectedIndexChanged);
		resources.ApplyResources(this.lstAvailableItems, "lstAvailableItems");
		this.lstAvailableItems.Name = "lstAvailableItems";
		this.lstAvailableItems.UseCompatibleStateImageBehavior = false;
		this.lstAvailableItems.View = System.Windows.Forms.View.List;
		this.lstAvailableItems.SelectedIndexChanged += new System.EventHandler(OnLstAvailableItemsSelectedIndexChanged);
		this.lstAvailableItems.DoubleClick += new System.EventHandler(OnLstAvailableItemsDoubleClick);
		resources.ApplyResources(this.lstChosenItems, "lstChosenItems");
		this.lstChosenItems.HideSelection = false;
		this.lstChosenItems.Name = "lstChosenItems";
		this.lstChosenItems.UseCompatibleStateImageBehavior = false;
		this.lstChosenItems.View = System.Windows.Forms.View.List;
		this.lstChosenItems.SelectedIndexChanged += new System.EventHandler(OnLstChosenItemsSelectedIndexChanged);
		this.lstChosenItems.DoubleClick += new System.EventHandler(OnLstChosenItemsDoubleClick);
		this.btnAdd.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		resources.ApplyResources(this.btnAdd, "btnAdd");
		this.btnAdd.Name = "btnAdd";
		this.btnAdd.UseVisualStyle = true;
		this.btnAdd.UseVisualStyleBackColor = true;
		this.btnAdd.Click += new System.EventHandler(OnBtnAddClick);
		this.btnRemove.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		resources.ApplyResources(this.btnRemove, "btnRemove");
		this.btnRemove.Name = "btnRemove";
		this.btnRemove.UseVisualStyle = true;
		this.btnRemove.UseVisualStyleBackColor = true;
		this.btnRemove.Click += new System.EventHandler(OnBtnRemoveClick);
		this.chkPlaceBelowRibbon.BackColor = System.Drawing.Color.Transparent;
		this.chkPlaceBelowRibbon.BorderColor = System.Drawing.SystemColors.WindowFrame;
		resources.ApplyResources(this.chkPlaceBelowRibbon, "chkPlaceBelowRibbon");
		this.chkPlaceBelowRibbon.GradientEnd = System.Drawing.SystemColors.ControlDark;
		this.chkPlaceBelowRibbon.GradientStart = System.Drawing.SystemColors.Control;
		this.chkPlaceBelowRibbon.HotBorderColor = System.Drawing.SystemColors.WindowFrame;
		this.chkPlaceBelowRibbon.ImageCheckBoxSize = new System.Drawing.Size(13, 13);
		this.chkPlaceBelowRibbon.Name = "chkPlaceBelowRibbon";
		this.chkPlaceBelowRibbon.ShadowColor = System.Drawing.Color.Black;
		this.chkPlaceBelowRibbon.ShadowOffset = new System.Drawing.Point(2, 2);
		this.chkPlaceBelowRibbon.ThemesEnabled = false;
		resources.ApplyResources(this.btnCancel, "btnCancel");
		this.btnCancel.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.btnCancel.Name = "btnCancel";
		this.btnCancel.UseVisualStyle = true;
		this.btnCancel.UseVisualStyleBackColor = true;
		resources.ApplyResources(this.btnOK, "btnOK");
		this.btnOK.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.btnOK.Name = "btnOK";
		this.btnOK.UseVisualStyle = true;
		this.btnOK.UseVisualStyleBackColor = true;
		this.btnOK.Click += new System.EventHandler(OnBtnOKClick);
		this.btnReset.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		resources.ApplyResources(this.btnReset, "btnReset");
		this.btnReset.Name = "btnReset";
		this.btnReset.UseVisualStyle = true;
		this.btnReset.UseVisualStyleBackColor = true;
		this.btnReset.Click += new System.EventHandler(btnReset_Click);
		resources.ApplyResources(this.btnUp, "btnUp");
		this.btnUp.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.btnUp.ImageList = this.imageList;
		this.btnUp.Name = "btnUp";
		this.btnUp.UseVisualStyle = true;
		this.btnUp.UseVisualStyleBackColor = true;
		this.btnUp.Click += new System.EventHandler(btnUp_Click);
		this.imageList.ImageStream = (System.Windows.Forms.ImageListStreamer)resources.GetObject("imageList.ImageStream");
		this.imageList.TransparentColor = System.Drawing.Color.Magenta;
		this.imageList.Images.SetKeyName(0, "");
		this.imageList.Images.SetKeyName(1, "");
		resources.ApplyResources(this.btnDown, "btnDown");
		this.btnDown.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.btnDown.ImageList = this.imageList;
		this.btnDown.Name = "btnDown";
		this.btnDown.UseVisualStyle = true;
		this.btnDown.UseVisualStyleBackColor = true;
		this.btnDown.Click += new System.EventHandler(btnDown_Click);
		this.sfAvailableItems.AttachedTo = this.lstAvailableItems;
		this.sfAvailableItems.SizeGripperVisibility = Syncfusion.Windows.Forms.SizeGripperVisibility.Auto;
		this.sfAvailableItems.VisualStyle = Syncfusion.Windows.Forms.ScrollBarCustomDrawStyles.Office2007;
		this.sfChosenItems.AttachedTo = this.lstChosenItems;
		this.sfChosenItems.SizeGripperVisibility = Syncfusion.Windows.Forms.SizeGripperVisibility.Auto;
		this.sfChosenItems.VisualStyle = Syncfusion.Windows.Forms.ScrollBarCustomDrawStyles.Office2007;
		base.AcceptButton = this.btnOK;
		resources.ApplyResources(this, "$this");
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
		base.CancelButton = this.btnCancel;
		base.Controls.Add(this.comboPanels);
		base.Controls.Add(this.lstAvailableItems);
		base.Controls.Add(this.btnAdd);
		base.Controls.Add(this.btnRemove);
		base.Controls.Add(this.lstChosenItems);
		base.Controls.Add(this.btnReset);
		base.Controls.Add(this.btnUp);
		base.Controls.Add(this.btnDown);
		base.Controls.Add(this.chkPlaceBelowRibbon);
		base.Controls.Add(this.btnOK);
		base.Controls.Add(this.btnCancel);
		base.Controls.Add(this.lblChooseCommandsFrom);
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
		base.MaximizeBox = false;
		base.MinimizeBox = false;
		base.Name = "CustomizeQuickItemsDialog";
		base.ShowIcon = false;
		base.ShowInTaskbar = false;
		base.UseOffice2007SchemeBackColor = true;
		((System.ComponentModel.ISupportInitialize)this.comboPanels).EndInit();
		((System.ComponentModel.ISupportInitialize)this.chkPlaceBelowRibbon).EndInit();
		base.ResumeLayout(false);
		base.PerformLayout();
	}
}
