using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Drawing.Design;
using System.Globalization;
using System.Reflection;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Core.Licensing;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(ComboBoxAdv), "ToolboxIcons.ComboBoxAdv.bmp")]
[Description("Represents an advanced combo box control.")]
[Designer(typeof(ComboBoxAdvDesigner), typeof(IDesigner))]
public class ComboBoxAdv : ComboBoxBaseDataBound
{
	[Serializable]
	[TypeConverter(typeof(ImageIndexItemTypeConverter))]
	public class ImageIndexItem
	{
		private ComboBoxAdv m_combo;

		private object m_item = string.Empty;

		private int m_index = -1;

		internal object Item => m_item;

		public int ImageIndex
		{
			get
			{
				return m_index;
			}
			set
			{
				if (m_index != value)
				{
					m_index = value;
					m_combo.ImageIndexes[m_combo.Items.IndexOf(Item)] = m_index;
				}
			}
		}

		internal ComboBoxAdv ComboBox => m_combo;

		public string Name => m_combo.GetItemText(Item);

		public ImageIndexItem()
		{
		}

		public ImageIndexItem(ComboBoxAdv combo, object item)
		{
			m_combo = combo;
			m_item = item;
		}

		public ImageIndexItem(ComboBoxAdv combo, object item, int imageIndex)
			: this(combo, item)
		{
			m_index = imageIndex;
		}
	}

	public class ImageIndexItemTypeConverter : TypeConverter
	{
		public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
		{
			if (destinationType == typeof(InstanceDescriptor) && value is ImageIndexItem imageIndexItem)
			{
				if (imageIndexItem.ImageIndex != -1)
				{
					ConstructorInfo constructor = typeof(ImageIndexItem).GetConstructor(new Type[3]
					{
						typeof(ComboBoxAdv),
						typeof(object),
						typeof(int)
					});
					return new InstanceDescriptor(constructor, new object[3] { imageIndexItem.ComboBox, imageIndexItem.Item, imageIndexItem.ImageIndex });
				}
				ConstructorInfo constructor2 = typeof(ImageIndexItem).GetConstructor(new Type[2]
				{
					typeof(ComboBoxAdv),
					typeof(object)
				});
				return new InstanceDescriptor(constructor2, new object[2] { imageIndexItem.ComboBox, imageIndexItem.Item });
			}
			return base.ConvertTo(context, culture, value, destinationType);
		}

		public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
		{
			if (destinationType == typeof(InstanceDescriptor))
			{
				return true;
			}
			return base.CanConvertTo(context, destinationType);
		}
	}

	[Serializable]
	public class ImageIndexItemCollection : CollectionBase, IDisposable
	{
		private ComboBoxAdv m_combo;

		public ImageIndexItem this[int index]
		{
			get
			{
				ImageIndexItem result = null;
				if (index >= 0 && index < base.List.Count)
				{
					result = base.List[index] as ImageIndexItem;
				}
				return result;
			}
			set
			{
				if (index < 0 || index >= base.List.Count)
				{
					throw new IndexOutOfRangeException("index");
				}
				if (value == null)
				{
					throw new NullReferenceException("value can't be NULL");
				}
				if (base.List[index] != value)
				{
					base.List[index] = value;
				}
			}
		}

		internal ImageIndexItemCollection(ComboBoxAdv combo)
		{
			m_combo = combo;
			if (m_combo.DesignMode && m_combo.Items != null && m_combo.Items.Count > 0)
			{
				for (int i = 0; i < m_combo.Items.Count; i++)
				{
					object obj = m_combo.Items[i];
					Add(new ImageIndexItem(m_combo, obj, m_combo.ImageIndexes[m_combo.Items.IndexOf(obj)]));
				}
			}
		}

		public void Add(ImageIndexItem item)
		{
			if (item == null)
			{
				throw new NullReferenceException("Item can't be NULL");
			}
			base.List.Add(item);
		}

		public bool Contains(ImageIndexItem item)
		{
			if (item == null)
			{
				throw new NullReferenceException("Item can't be NULL");
			}
			return base.List.Contains(item);
		}

		public void Remove(ImageIndexItem item)
		{
			if (item == null)
			{
				throw new NullReferenceException("Item can't be NULL");
			}
			if (!Contains(item))
			{
				throw new NullReferenceException("Item doesn't exist in collection");
			}
			base.List.Remove(item);
		}

		public int IndexOf(ImageIndexItem item)
		{
			if (item == null)
			{
				throw new NullReferenceException("Item can't be NULL");
			}
			return base.List.IndexOf(item);
		}

		public void Insert(int index, ImageIndexItem item)
		{
			if (item == null)
			{
				throw new NullReferenceException("Item can't be NULL");
			}
			if (index < 0 || index > base.List.Count)
			{
				throw new IndexOutOfRangeException("index");
			}
			base.List.Insert(index, item);
		}

		void IDisposable.Dispose()
		{
			m_combo = null;
		}
	}

	public class ImageIndexesCollectionEditor : UITypeEditor
	{
		public class EditorForm : Form
		{
			private ArrayList m_items;

			private Panel itemsPanel;

			private ListBox itemsList;

			private PropertyGrid itemsProperty;

			private Panel buttonsPanel;

			private Button btOK;

			private Button btCancel;

			public IList Items => m_items;

			public EditorForm(ImageIndexItemCollection collection)
			{
				InitializeComponent();
				m_items = new ArrayList();
				if (collection == null)
				{
					return;
				}
				int count = collection.Count;
				if (count > 0)
				{
					ListBox.ObjectCollection items = itemsList.Items;
					for (int i = 0; i < count; i++)
					{
						ImageIndexItem imageIndexItem = collection[i];
						items.Add(imageIndexItem.Item);
						m_items.Add(new ImageIndexItem(imageIndexItem.ComboBox, imageIndexItem.Item, imageIndexItem.ImageIndex));
					}
					itemsList.SelectedIndex = 0;
				}
			}

			private void InitializeComponent()
			{
				this.itemsPanel = new System.Windows.Forms.Panel();
				this.itemsList = new System.Windows.Forms.ListBox();
				this.itemsProperty = new System.Windows.Forms.PropertyGrid();
				this.buttonsPanel = new System.Windows.Forms.Panel();
				this.btOK = new System.Windows.Forms.Button();
				this.btCancel = new System.Windows.Forms.Button();
				this.itemsPanel.SuspendLayout();
				this.buttonsPanel.SuspendLayout();
				base.SuspendLayout();
				this.itemsPanel.Controls.Add(this.itemsList);
				this.itemsPanel.Controls.Add(this.itemsProperty);
				this.itemsPanel.Dock = System.Windows.Forms.DockStyle.Fill;
				this.itemsPanel.Location = new System.Drawing.Point(0, 0);
				this.itemsPanel.Name = "panel1";
				this.itemsPanel.Size = new System.Drawing.Size(592, 322);
				this.itemsList.Dock = System.Windows.Forms.DockStyle.Fill;
				this.itemsList.IntegralHeight = false;
				this.itemsList.Location = new System.Drawing.Point(0, 0);
				this.itemsList.Name = "listBox1";
				this.itemsList.Size = new System.Drawing.Size(361, 322);
				this.itemsList.Sorted = false;
				this.itemsList.TabIndex = 0;
				this.itemsList.SelectedIndexChanged += new System.EventHandler(OnSelectedItemChanged);
				this.itemsProperty.Dock = System.Windows.Forms.DockStyle.Right;
				this.itemsProperty.Location = new System.Drawing.Point(361, 0);
				this.itemsProperty.Name = "propertyGrid1";
				this.itemsProperty.Size = new System.Drawing.Size(231, 322);
				this.itemsProperty.TabIndex = 1;
				this.buttonsPanel.Controls.Add(this.btOK);
				this.buttonsPanel.Controls.Add(this.btCancel);
				this.buttonsPanel.Dock = System.Windows.Forms.DockStyle.Bottom;
				this.buttonsPanel.Location = new System.Drawing.Point(0, 322);
				this.buttonsPanel.Name = "panel2";
				this.buttonsPanel.Size = new System.Drawing.Size(592, 44);
				this.btOK.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
				this.btOK.DialogResult = System.Windows.Forms.DialogResult.OK;
				this.btOK.Location = new System.Drawing.Point(424, 9);
				this.btOK.Name = "btOK";
				this.btOK.Size = new System.Drawing.Size(75, 23);
				this.btOK.TabIndex = 0;
				this.btOK.Text = "OK";
				this.btCancel.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
				this.btCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
				this.btCancel.Location = new System.Drawing.Point(505, 9);
				this.btCancel.Name = "btCancel";
				this.btCancel.Size = new System.Drawing.Size(75, 23);
				this.btCancel.TabIndex = 1;
				this.btCancel.Text = "Cancel";
				base.AcceptButton = this.btOK;
				base.CancelButton = this.btCancel;
				base.ClientSize = new System.Drawing.Size(592, 366);
				base.Controls.Add(this.itemsPanel);
				base.Controls.Add(this.buttonsPanel);
				base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
				this.Text = "Items Image Indexes";
				this.itemsPanel.ResumeLayout(false);
				this.buttonsPanel.ResumeLayout(false);
				base.ResumeLayout(false);
			}

			private void OnSelectedItemChanged(object sender, EventArgs e)
			{
				object obj = null;
				if (itemsList.SelectedIndex >= 0)
				{
					obj = m_items[itemsList.SelectedIndex];
				}
				itemsProperty.SelectedObjects = new object[1] { obj };
			}
		}

		public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
		{
			return UITypeEditorEditStyle.Modal;
		}

		public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
		{
			if (value is ImageIndexItemCollection imageIndexItemCollection)
			{
				IWindowsFormsEditorService windowsFormsEditorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
				if (windowsFormsEditorService != null)
				{
					using EditorForm editorForm = new EditorForm(imageIndexItemCollection);
					if (windowsFormsEditorService.ShowDialog(editorForm) == DialogResult.OK)
					{
						imageIndexItemCollection.Clear();
						IList items = editorForm.Items;
						for (int i = 0; i < items.Count; i++)
						{
							imageIndexItemCollection.Add(items[i] as ImageIndexItem);
						}
					}
				}
			}
			return value;
		}
	}

	private const int c_iImageIndent = 2;

	private const int c_bordersWidth = 4;

	private const int c_defaultDropDownSimpleHeight = 150;

	private ImageIndexesCollection m_imageIndexes;

	private ImageIndexItemCollection m_imageItemsCollection;

	private ImageList m_imageList;

	private bool m_bShowImageInTextBox;

	private bool m_bShowImageInComboListBox;

	private bool m_bForceImageIndent;

	private bool isSelectedIndexChanged;

	private bool isSelectionChangeCommitted;

	private int textBoxHeight = 13;

	[Description("Gets or sets image list.")]
	[Category("Appearance - Images")]
	[DefaultValue(null)]
	public ImageList ImageList
	{
		get
		{
			return m_imageList;
		}
		set
		{
			if (m_imageList != value)
			{
				m_imageList = value;
			}
		}
	}

	[Browsable(false)]
	public ImageIndexesCollection ImageIndexes => m_imageIndexes;

	[Description("Gets collection of image indexes.")]
	[Editor(typeof(ImageIndexesCollectionEditor), typeof(UITypeEditor))]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ImageIndexItemCollection ItemsImageIndexes => m_imageItemsCollection;

	[Description("Gets or sets draw selected item image in text box.")]
	[DefaultValue(false)]
	[Category("Appearance - Images")]
	public bool ShowImageInTextBox
	{
		get
		{
			return m_bShowImageInTextBox;
		}
		set
		{
			if (m_bShowImageInTextBox != value)
			{
				m_bShowImageInTextBox = value;
				SetNeedLayout(needLayout: true);
			}
		}
	}

	[Browsable(false)]
	public new bool UseMnemonic
	{
		get
		{
			return base.UseMnemonic;
		}
		set
		{
			base.UseMnemonic = value;
		}
	}

	[DefaultValue(false)]
	[Description("Gets or sets draw images in combo list box.")]
	[Category("Appearance - Images")]
	public bool ShowImagesInComboListBox
	{
		get
		{
			return m_bShowImageInComboListBox;
		}
		set
		{
			if (m_bShowImageInComboListBox != value)
			{
				m_bShowImageInComboListBox = value;
			}
		}
	}

	[DefaultValue(false)]
	[Category("Appearance - Images")]
	[Description("Gets or sets show indent for images in combo list box.")]
	public bool ForceImageIndent
	{
		get
		{
			return m_bForceImageIndent;
		}
		set
		{
			if (m_bForceImageIndent != value)
			{
				m_bForceImageIndent = value;
			}
		}
	}

	[Editor("System.Windows.Forms.Design.StringCollectionEditor, System.Design", "System.Drawing.Design.UITypeEditor, System.Drawing")]
	public override ObjectCollection Items => base.Items;

	[Browsable(false)]
	public virtual ListBox ListBox => base.ListControl as ListBox;

	public override bool IntegralHeight
	{
		get
		{
			return base.IntegralHeight;
		}
		set
		{
			if (IntegralHeight != value)
			{
				base.IntegralHeight = value;
				ListBox.IntegralHeight = value;
			}
		}
	}

	[Browsable(false)]
	[Description("Gets or sets the textbox height in ComboBoxAdv.")]
	[Category("Layout")]
	[DefaultValue(13)]
	public int TextBoxHeight
	{
		get
		{
			return textBoxHeight;
		}
		set
		{
			if (textBoxHeight != value)
			{
				textBoxHeight = value;
			}
		}
	}

	private new bool IsMirrored => RightToLeft == RightToLeft.Yes;

	public new ComboBoxStyle DropDownStyle
	{
		get
		{
			return base.DropDownStyle;
		}
		set
		{
			base.DropDownStyle = value;
			if (base.DropDownStyle == ComboBoxStyle.Simple)
			{
				base.Height = 150;
			}
		}
	}

	public ComboBoxAdv()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(ComboBoxAdv));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		m_imageIndexes = new ImageIndexesCollection(Items);
		m_imageItemsCollection = new ImageIndexItemCollection(this);
	}

	protected override ListControl CreateListControl()
	{
		return new ComboListBox(this);
	}

	protected override void InitListControl(ListControl listControl)
	{
		ListBox.TabStop = false;
		base.InitListControl(listControl);
	}

	protected override void UpdateListBoxBorderStyle()
	{
		if (ListBox == null)
		{
			return;
		}
		if (DropDownStyle == ComboBoxStyle.Simple)
		{
			ListBox.BorderStyle = BorderStyle.None;
			return;
		}
		if (DropDownStyle == ComboBoxStyle.DropDownList)
		{
			if (base.DesignMode)
			{
				base.TextBox.Clear();
			}
			else if (SelectedIndex >= 0 && SelectedIndex < Items.Count)
			{
				base.TextBox.Text = ListBox.Items[SelectedIndex].ToString();
			}
		}
		if (FlatStyle == ComboFlatStyle.System)
		{
			ListBox.BorderStyle = BorderStyle.Fixed3D;
		}
		else
		{
			ListBox.BorderStyle = BorderStyle.FixedSingle;
		}
	}

	protected override void OnDataManagerPositionChanged()
	{
		if (base.DataManager != null && ListBox.Items.Count > base.DataManager.Position)
		{
			SelectedIndex = base.DataManager.Position;
		}
	}

	protected override void OnDisplayMemberChanged(EventArgs e)
	{
		base.OnDisplayMemberChanged(e);
		if (ListControl == null)
		{
			ListControl = CreateListControl();
		}
		if (base.DataSource == null)
		{
			ArrayList arrayList = new ArrayList();
			foreach (object item in Items)
			{
				arrayList.Add(item);
			}
			Items.ClearInternal();
			foreach (object item2 in arrayList)
			{
				Items.Add(item2);
			}
			arrayList.Clear();
		}
		ListControl.DisplayMember = base.DisplayMember;
	}

	protected override void NativeAdd(object item)
	{
		base.NativeAdd(item);
		if (!initializing && item != null)
		{
			m_imageItemsCollection.Add(new ImageIndexItem(this, item, ImageIndexes[Items.IndexOf(item)]));
		}
	}

	protected override void NativeClear()
	{
		base.NativeClear();
		m_imageItemsCollection.Clear();
	}

	protected override void NativeInsert(int index, object item)
	{
		base.NativeInsert(index, item);
		m_imageItemsCollection.Insert(index, new ImageIndexItem(this, item));
	}

	protected override void NativeRemoveAt(int index)
	{
		base.NativeRemoveAt(index);
		if (m_imageItemsCollection[index] != null)
		{
			m_imageItemsCollection.RemoveAt(index);
		}
	}

	public override bool UpdateText(bool fireEvent)
	{
		bool result = false;
		_ = Text;
		if (PopupControl != null)
		{
			string text = GetPopupText();
			if (CharacterCasing == CharacterCasing.Upper)
			{
				text = text.ToUpper();
			}
			else if (CharacterCasing == CharacterCasing.Lower)
			{
				text = text.ToLower();
			}
			if (IsTextValid(text) || text == string.Empty)
			{
				base.TextBox.Text = text;
			}
			SetNeedLayout(needLayout: true);
		}
		else if (DropDownStyle == ComboBoxStyle.DropDownList)
		{
			base.TextBox.Text = string.Empty;
		}
		if (fireEvent && !base.Disposing)
		{
			OnSelectionChangeCommitted(EventArgs.Empty);
			isSelectionChangeCommitted = true;
			result = true;
		}
		return result;
	}

	protected override void OnSelectedIndexChanged(EventArgs e)
	{
		base.OnSelectedIndexChanged(e);
		isSelectedIndexChanged = true;
	}

	protected override void DetermineHeightsBasedOnFont(Graphics g, ref int textAreaHeight)
	{
		Size size = ControlDrawing.MeasureDisplayStringSize(g, Text, Font, RightToLeft == RightToLeft.Yes);
		if (TextBoxHeight > Font.Height + 2 && size.Height < TextBoxHeight)
		{
			textAreaHeight = TextBoxHeight;
			int num = ((base.Style != VisualStyle.Default) ? 1 : 2);
			base.DropDownButtonHeight = textAreaHeight + 4;
			if (base.Style != VisualStyle.Default)
			{
				base.DropDownButtonHeight += 2;
			}
			base.EditPortionHeight = base.DropDownButtonHeight + num * 2;
			if (DropDownStyle != ComboBoxStyle.Simple || base.Height < base.EditPortionHeight)
			{
				base.Height = base.EditPortionHeight;
			}
		}
		else
		{
			base.DetermineHeightsBasedOnFont(g, ref textAreaHeight);
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (ImageList != null && ShowImageInTextBox)
		{
			int selectedIndex = ListBox.SelectedIndex;
			if (selectedIndex >= 0)
			{
				int num = ImageIndexes[selectedIndex];
				if (num >= 0 && ImageList.Images.Count > num)
				{
					Rectangle rect = ((!IsMirrored) ? new Rectangle(base.TextBox.Bounds.X - base.TextBox.Bounds.Height - 2, base.TextBox.Bounds.Y, base.TextBox.Bounds.Height, base.TextBox.Bounds.Height) : new Rectangle(base.TextBox.Bounds.X + base.TextBox.Bounds.Width + 2, base.TextBox.Bounds.Y, base.TextBox.Bounds.Height, base.TextBox.Bounds.Height));
					if (base.Enabled)
					{
						e.Graphics.DrawImage(ImageList.Images[num], rect);
					}
					else
					{
						ControlPaint.DrawImageDisabled(e.Graphics, new Bitmap(ImageList.Images[num], rect.Size), rect.X, rect.Y, BackColor);
					}
				}
			}
		}
		if (isSelectedIndexChanged)
		{
			if (isSelectionChangeCommitted)
			{
				base.TextBox.SelectAll();
				isSelectionChangeCommitted = false;
			}
			isSelectedIndexChanged = false;
		}
	}

	protected override void SetTextBoxBounds(Rectangle rect)
	{
		int num = ImageIndexes[SelectedIndex];
		Rectangle textBoxBounds;
		if (ShowImageInTextBox && ImageList != null && num >= 0 && ImageList.Images.Count > num)
		{
			int num2 = rect.Height + 2;
			textBoxBounds = ((!IsMirrored) ? new Rectangle(rect.X + num2, rect.Y, rect.Width - num2, rect.Height) : new Rectangle(rect.X, rect.Y, rect.Width - num2, rect.Height));
		}
		else
		{
			textBoxBounds = rect;
		}
		base.SetTextBoxBounds(textBoxBounds);
	}

	public override int FindString(string s)
	{
		return FindString(s, -1);
	}

	public override int FindString(string s, int startIndex)
	{
		if (s == null)
		{
			return -1;
		}
		return ListBox.FindString(s, startIndex);
	}

	public override int FindStringExact(string s)
	{
		return FindStringExact(s, -1);
	}

	public override int FindStringExact(string s, int startIndex)
	{
		if (s == null)
		{
			return -1;
		}
		s = s.Replace("&&", "&");
		return ListBox.FindStringExact(s, startIndex);
	}

	public override int FindStringExact(string text, bool ignoreCase)
	{
		return FindStringExact(text, -1);
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (DropDownStyle == ComboBoxStyle.Simple && IntegralHeight && height > base.EditPortionHeight)
		{
			int num = GetEmbeddedChildBounds(height).Height;
			int listNCHeight = GetListNCHeight();
			int num2 = (num - listNCHeight) / ListBox.ItemHeight;
			int num3 = num2 * ListBox.ItemHeight + listNCHeight;
			int num4 = num3 - num;
			if (num4 > 0)
			{
				height += num4;
			}
		}
		base.SetBoundsCore(x, y, width, height, specified);
	}

	protected override void OnBeforePopup()
	{
		object selectedItem = ListBox.SelectedItem;
		string text = base.TextBox.Text;
		if (selectedItem == null || selectedItem.ToString() != text)
		{
			int num = 0;
			num = (base.CaseSensitiveAutocomplete ? ListBox.Items.IndexOf(text) : FindItem(text, select: false, -1, ignoreCase: true));
			if (num > -1)
			{
				ListBox.SelectedIndex = num;
			}
		}
		ListBox.IntegralHeight = true;
		int num2 = ((ListBox.Items.Count > base.MaxDropDownItems) ? base.MaxDropDownItems : ListBox.Items.Count);
		if (num2 == 0)
		{
			num2 = 1;
		}
		_ = ListBox.Handle;
		int num3 = Math.Max(ListBox.Font.Height, ListBox.ItemHeight);
		int num4 = 2;
		if (ListBox.ItemHeight != num3)
		{
			ListBox.ItemHeight = num3 + num4;
		}
		int num5 = num2 * ListBox.ItemHeight;
		int num6 = Screen.GetWorkingArea(this).Height;
		if (num5 > num6)
		{
			num5 = num6;
		}
		ListBox.ClientSize = new Size(ListBox.ClientSize.Width, num5);
		base.OnBeforePopup();
	}

	protected override void OnPopupClosed(PopupClosedEventArgs e)
	{
		if ((e.PopupCloseType == PopupCloseType.Canceled || e.PopupCloseType == PopupCloseType.Deactivated) && Text != ListControl.Text)
		{
			ListControl.SelectedIndex = FindStringExact(Text, -1);
		}
		base.OnPopupClosed(e);
		ListBox.IntegralHeight = IntegralHeight;
	}

	protected override Point CorrectPopupLocation(Point location)
	{
		return base.CorrectPopupLocation(location);
	}

	protected override void OnEndInit()
	{
		base.OnEndInit();
		for (int i = 0; i < Items.Count; i++)
		{
			if (ItemsImageIndexes[i] != null)
			{
				ImageIndexes[i] = ItemsImageIndexes[i].ImageIndex;
			}
		}
	}

	protected override void AttachPopupControl()
	{
		base.AttachPopupControl();
		if (DropDownStyle == ComboBoxStyle.Simple)
		{
			UpdatePopupControlRelationship();
		}
	}

	protected override void DetachPopupControl(bool disposing)
	{
		base.DetachPopupControl(disposing);
		if (PopupControl != null && DropDownStyle == ComboBoxStyle.Simple && !disposing)
		{
			PopupControl.Parent.Controls.Remove(PopupControl);
		}
	}

	protected override void UpdatePopupControlRelationship()
	{
		base.UpdatePopupControlRelationship();
		if (PopupControl != null && DropDownStyle == ComboBoxStyle.Simple)
		{
			SuspendLayout();
			base.Controls.Add(PopupControl);
			ResumeLayout(performLayout: false);
		}
	}

	protected override void UpdatePopupControlBounds()
	{
		base.UpdatePopupControlBounds();
		if (PopupControl != null && DropDownStyle == ComboBoxStyle.Simple)
		{
			SuspendLayout();
			PopupControl.Visible = true;
			PopupControl.Top = base.EditPortionHeight + 2;
			PopupControl.Left = 2;
			PopupControl.Width = base.Width - 4;
			ResumeLayout(performLayout: false);
		}
	}

	protected override TextBox CreateTextBox()
	{
		return new ComboBoxAdvTextBox();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (m_imageIndexes != null)
			{
				((IDisposable)m_imageIndexes).Dispose();
				m_imageIndexes = null;
			}
			if (m_imageItemsCollection != null)
			{
				((IDisposable)m_imageItemsCollection).Dispose();
				m_imageItemsCollection = null;
			}
		}
		base.Dispose(disposing);
	}

	private void RefreshTextSelection()
	{
		base.TextBox.HideSelection = false;
		base.TextBox.SelectionLength = 0;
		base.TextBox.SelectAll();
	}
}
