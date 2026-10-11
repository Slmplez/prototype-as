using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[DesignTimeVisible(false)]
[ToolboxItem(false)]
[DefaultProperty("Client")]
public class GroupBarItem : Component, ICustomTypeDescriptor
{
	[DocumentationExclude]
	protected Control wndClient;

	[DocumentationExclude]
	protected bool bEnabled = true;

	[DocumentationExclude]
	protected bool bVisible = true;

	[DocumentationExclude]
	protected string szText = string.Empty;

	[DocumentationExclude]
	protected Icon iItemIcon;

	[DocumentationExclude]
	protected Image iItemImage;

	[DocumentationExclude]
	protected Font ftText;

	[DocumentationExclude]
	protected bool bFontSet;

	[DocumentationExclude]
	protected Color clrForeGround = Color.Empty;

	[DocumentationExclude]
	protected Brush brBackground = new SolidBrush(SystemColors.Control);

	[DocumentationExclude]
	protected bool bBackColorSet;

	[DocumentationExclude]
	protected BorderColors bdrColors = BorderColors.Default;

	[DocumentationExclude]
	protected bool bBorderColorsSet;

	[DocumentationExclude]
	protected object objTag;

	[DocumentationExclude]
	protected GroupBar groupBarCtrl;

	[DocumentationExclude]
	protected bool bInNavigationPane;

	[DocumentationExclude]
	protected Icon iNavPaneIcon;

	[DocumentationExclude]
	protected bool imageYchanged;

	[DocumentationExclude]
	protected bool textDraw = true;

	[DocumentationExclude]
	private bool m_bLargeImageMode;

	private Image iNavPaneImage;

	private int m_padding;

	[Browsable(false)]
	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsTextVisible
	{
		get
		{
			return textDraw;
		}
		set
		{
			if (textDraw != value)
			{
				textDraw = value;
			}
		}
	}

	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.All)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[DefaultValue(false)]
	public bool LargeImageMode
	{
		get
		{
			return m_bLargeImageMode;
		}
		set
		{
			m_bLargeImageMode = value;
		}
	}

	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool YChanged
	{
		get
		{
			return imageYchanged;
		}
		set
		{
			imageYchanged = value;
		}
	}

	[Editor(typeof(MultilineStringEditor), typeof(UITypeEditor))]
	[Description("The text displayed in the GroupBarItem.")]
	[Category("Appearance")]
	[Localizable(true)]
	public string Text
	{
		get
		{
			return szText;
		}
		set
		{
			if (szText != value)
			{
				szText = value;
				OnPropertyChanged(new PropertyChangedEventArgs("Text"));
			}
		}
	}

	[Description("Gets or sets padding for GroupBarItem")]
	[DefaultValue(0)]
	[Category("Appearance")]
	public int Padding
	{
		get
		{
			return m_padding;
		}
		set
		{
			if (m_padding != value)
			{
				if (value < 0)
				{
					throw new ArgumentException("Value cannot be negative.");
				}
				m_padding = value;
				OnPropertyChanged(new PropertyChangedEventArgs("Padding"));
			}
		}
	}

	[Description("The client control associated with this item.")]
	[Category("Behavior")]
	public Control Client
	{
		get
		{
			return wndClient;
		}
		set
		{
			if (wndClient == value)
			{
				return;
			}
			Control control = wndClient;
			wndClient = null;
			if (control != null)
			{
				groupBarCtrl.Controls.Remove(control);
			}
			if (value != null)
			{
				if (groupBarCtrl == null)
				{
					if (!value.IsHandleCreated)
					{
						value.CreateControl();
					}
					value.Visible = false;
					wndClient = value;
				}
				else if (!NativeMethods.IsChild(value.Handle, groupBarCtrl.Handle) && value != groupBarCtrl)
				{
					if (!value.IsHandleCreated)
					{
						value.CreateControl();
					}
					value.Visible = false;
					wndClient = value;
					if (!groupBarCtrl.Controls.Contains(value))
					{
						groupBarCtrl.IsClientSetting = true;
						groupBarCtrl.Controls.Add(value);
						groupBarCtrl.IsClientSetting = false;
						groupBarCtrl.RecalculateGroupBarLayout();
						groupBarCtrl.SetActiveClientBounds();
					}
				}
			}
			else
			{
				OnPropertyChanged(new PropertyChangedEventArgs("Client"));
			}
		}
	}

	[DefaultValue(null)]
	[Category("Appearance")]
	[Description("The image displayed on the GroupBarItem.")]
	[Localizable(true)]
	public Image Image
	{
		get
		{
			return iItemImage;
		}
		set
		{
			if (iItemImage != value)
			{
				iItemImage = value;
				OnPropertyChanged(new PropertyChangedEventArgs("Image"));
			}
		}
	}

	[DefaultValue(null)]
	[Localizable(true)]
	[Category("Appearance")]
	[Description("The icon displayed on the GroupBarItem.")]
	public Icon Icon
	{
		get
		{
			return iItemIcon;
		}
		set
		{
			if (iItemIcon != value)
			{
				iItemIcon = value;
				OnPropertyChanged(new PropertyChangedEventArgs("Icon"));
			}
		}
	}

	[Description("Indicates whether the item is enabled / disabled.")]
	[Category("Behavior")]
	[DefaultValue(true)]
	[Localizable(true)]
	public bool Enabled
	{
		get
		{
			return bEnabled;
		}
		set
		{
			if (bEnabled != value)
			{
				bEnabled = value;
				OnPropertyChanged(new PropertyChangedEventArgs("Enabled"));
			}
		}
	}

	[Description("Indicates whether the item is visible.")]
	[DefaultValue(true)]
	[Localizable(true)]
	[Category("Behavior")]
	public bool Visible
	{
		get
		{
			return bVisible;
		}
		set
		{
			if (bVisible != value)
			{
				bVisible = value;
				OnPropertyChanged(new PropertyChangedEventArgs("Visible"));
			}
		}
	}

	[Localizable(true)]
	[Category("Appearance")]
	[Description("The font used to display the text in the GroupBarItem.")]
	public Font Font
	{
		get
		{
			return ftText;
		}
		set
		{
			if (ftText != value)
			{
				ftText = value;
				bFontSet = true;
				OnPropertyChanged(new PropertyChangedEventArgs("Font"));
			}
		}
	}

	[Category("Appearance")]
	[Description("The foreground color used to paint the text in the GroupBarItem.")]
	public Color ForeColor
	{
		get
		{
			if (clrForeGround.IsEmpty)
			{
				if (groupBarCtrl != null)
				{
					return groupBarCtrl.ForeColor;
				}
				return SystemColors.ControlText;
			}
			return clrForeGround;
		}
		set
		{
			if (clrForeGround != value)
			{
				clrForeGround = value;
				OnPropertyChanged(new PropertyChangedEventArgs("ForeColor"));
			}
		}
	}

	[Description("The background color used to fill the GroupBarItem.")]
	[Category("Appearance")]
	public Color BackColor
	{
		get
		{
			if (brBackground is SolidBrush)
			{
				return (brBackground as SolidBrush).Color;
			}
			return groupBarCtrl.BackColor;
		}
		set
		{
			if (brBackground is SolidBrush)
			{
				if ((brBackground as SolidBrush).Color != value)
				{
					brBackground = new SolidBrush(value);
					bBackColorSet = true;
					OnPropertyChanged(new PropertyChangedEventArgs("BackColor"));
				}
			}
			else
			{
				brBackground = new SolidBrush(value);
				bBackColorSet = true;
				OnPropertyChanged(new PropertyChangedEventArgs("BackColor"));
			}
		}
	}

	[Browsable(false)]
	public Brush BackgroundBrush
	{
		get
		{
			return brBackground;
		}
		set
		{
			if (brBackground != value)
			{
				brBackground = value;
				bBackColorSet = true;
				OnPropertyChanged(new PropertyChangedEventArgs("BackgroundBrush"));
			}
		}
	}

	[Description("The colors used to draw the borders around the client control.")]
	[Category("Appearance")]
	public BorderColors ClientBorderColors
	{
		get
		{
			return bdrColors;
		}
		set
		{
			if (bdrColors.Left != value.Left || bdrColors.Top != value.Top || bdrColors.Right != value.Right || bdrColors.Bottom != value.Bottom)
			{
				bdrColors = value;
				bBorderColorsSet = true;
				OnPropertyChanged(new PropertyChangedEventArgs("ClientBorderColors"));
			}
		}
	}

	[DefaultValue(null)]
	[Description("Gets / sets the object that contains data about the item.")]
	[TypeConverter(typeof(StringConverter))]
	[Category("Data")]
	public object Tag
	{
		get
		{
			return objTag;
		}
		set
		{
			objTag = value;
		}
	}

	[Browsable(false)]
	public GroupBar GroupBar => groupBarCtrl;

	[Localizable(true)]
	[DefaultValue(false)]
	[Description("Indicates whether the item should be added to the GroupBar's navigation pane.")]
	[Category("Stacked Mode")]
	public bool InNavigationPane
	{
		get
		{
			return bInNavigationPane;
		}
		set
		{
			if (bInNavigationPane != value)
			{
				if (value && groupBarCtrl != null && !groupBarCtrl.StackedMode)
				{
					throw new ApplicationException("This property can be set only when the GroupBar is in the StackedMode.");
				}
				bInNavigationPane = value;
				OnPropertyChanged(new PropertyChangedEventArgs("InNavigationPane"));
			}
		}
	}

	[Description("The icon representing the item in the GroupBar's navigation pane.")]
	[Localizable(true)]
	[DefaultValue(null)]
	[Category("Stacked Mode")]
	public Icon NavigationPaneIcon
	{
		get
		{
			return iNavPaneIcon;
		}
		set
		{
			if (iNavPaneIcon != value)
			{
				iNavPaneIcon = value;
				OnPropertyChanged(new PropertyChangedEventArgs("NavigationPaneIcon"));
			}
		}
	}

	[Description("Gets or sets image representing the item in the GroupBar's navigation pane.")]
	[Category("Stacked Mode")]
	[DefaultValue(null)]
	[Localizable(true)]
	public Image NavigationPaneImage
	{
		get
		{
			return iNavPaneImage;
		}
		set
		{
			if (iNavPaneImage != value)
			{
				iNavPaneImage = value;
				OnPropertyChanged(new PropertyChangedEventArgs("NavigationPaneImage"));
			}
		}
	}

	internal Color ForeColorInternal => clrForeGround;

	[DocumentationExclude]
	protected internal bool InDesignMode => base.DesignMode;

	[Browsable(false)]
	[DocumentationExclude]
	public event PropertyChangedEventHandler PropertyChanged;

	[DocumentationExclude]
	protected void GroupBar_FontChanged(object sender, EventArgs e)
	{
		if (groupBarCtrl != null && !bFontSet)
		{
			ResetFont();
		}
	}

	[DocumentationExclude]
	protected void GroupBar_BackColorChanged(object sender, EventArgs e)
	{
		if (!bBackColorSet)
		{
			ResetBackColor();
		}
		if (!bBorderColorsSet)
		{
			ResetClientBorderColors();
		}
	}

	public bool ShouldSerializePadding()
	{
		if (m_padding == 0)
		{
			return false;
		}
		return true;
	}

	protected bool ShouldSerializeFont()
	{
		return bFontSet;
	}

	public void ResetFont()
	{
		Font = groupBarCtrl.Font;
		bFontSet = false;
	}

	protected bool ShouldSerializeForeColor()
	{
		return !clrForeGround.IsEmpty;
	}

	public void ResetForeColor()
	{
		ForeColor = Color.Empty;
	}

	protected bool ShouldSerializeBackColor()
	{
		return bBackColorSet;
	}

	public void ResetBackColor()
	{
		BackColor = groupBarCtrl.BackColor;
		bBackColorSet = false;
	}

	protected bool ShouldSerializeClientBorderColors()
	{
		return bBorderColorsSet;
	}

	public void ResetClientBorderColors()
	{
		Color backColor = groupBarCtrl.BackColor;
		Color color = ControlPaint.DarkDark(groupBarCtrl.BackColor);
		ClientBorderColors = new BorderColors(color, color, backColor, backColor);
		bBorderColorsSet = false;
	}

	[DocumentationExclude]
	protected internal void SetGroupBarControlReference(GroupBar ctrl)
	{
		groupBarCtrl = ctrl;
		if (groupBarCtrl != null)
		{
			if (!bFontSet)
			{
				ftText = groupBarCtrl.Font;
			}
			if (!bBackColorSet)
			{
				BackColor = groupBarCtrl.BackColor;
			}
			groupBarCtrl.FontChanged += GroupBar_FontChanged;
			groupBarCtrl.BackColorChanged += GroupBar_BackColorChanged;
		}
	}

	[DocumentationExclude]
	protected void OnPropertyChanged(PropertyChangedEventArgs args)
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, args);
		}
	}

	protected override void Dispose(bool bdispose)
	{
		if (bdispose)
		{
			wndClient = null;
			groupBarCtrl = null;
		}
		base.Dispose(bdispose);
	}

	[DocumentationExclude]
	PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties(Attribute[] attributes)
	{
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(this, attributes, noCustomTypeDesc: true);
		bool flag = false;
		bool flag2 = false;
		string text = "";
		foreach (PropertyDescriptor item in properties)
		{
			if (item.Category == "Stacked Mode")
			{
				flag = true;
			}
			if (item.Category == "Appearance" && groupBarCtrl != null && !groupBarCtrl.IsInitializing && item.Name == "LargeImageMode")
			{
				text = ((!(bool)item.GetValue(this)) ? "Image" : "Icon");
			}
		}
		int num = 0;
		ArrayList arrayList = new ArrayList();
		if (flag && groupBarCtrl != null && !groupBarCtrl.StackedMode)
		{
			for (num = 0; num < properties.Count; num++)
			{
				PropertyDescriptor propertyDescriptor2 = properties[num];
				if (propertyDescriptor2.Name == text || propertyDescriptor2.Category == "Stacked Mode")
				{
					if (propertyDescriptor2.Name == text)
					{
						ResetValue(propertyDescriptor2);
					}
				}
				else
				{
					arrayList.Add(propertyDescriptor2);
				}
			}
		}
		else
		{
			for (num = 0; num < properties.Count; num++)
			{
				PropertyDescriptor propertyDescriptor3 = properties[num];
				if (propertyDescriptor3.Name == text)
				{
					ResetValue(propertyDescriptor3);
					num++;
					propertyDescriptor3 = properties[num];
				}
				arrayList.Add(propertyDescriptor3);
			}
		}
		num = 0;
		PropertyDescriptor[] array = new PropertyDescriptor[arrayList.Count];
		foreach (PropertyDescriptor item2 in arrayList)
		{
			array[num++] = item2;
		}
		return new PropertyDescriptorCollection(array);
	}

	private void ResetValue(PropertyDescriptor prop)
	{
		if (prop.GetValue(this) != null)
		{
			prop.ResetValue(this);
		}
	}

	[DocumentationExclude]
	AttributeCollection ICustomTypeDescriptor.GetAttributes()
	{
		return TypeDescriptor.GetAttributes(this, noCustomTypeDesc: true);
	}

	[DocumentationExclude]
	string ICustomTypeDescriptor.GetClassName()
	{
		return TypeDescriptor.GetClassName(this, noCustomTypeDesc: true);
	}

	[DocumentationExclude]
	string ICustomTypeDescriptor.GetComponentName()
	{
		return TypeDescriptor.GetComponentName(this, noCustomTypeDesc: true);
	}

	[DocumentationExclude]
	TypeConverter ICustomTypeDescriptor.GetConverter()
	{
		return TypeDescriptor.GetConverter(this, noCustomTypeDesc: true);
	}

	[DocumentationExclude]
	EventDescriptor ICustomTypeDescriptor.GetDefaultEvent()
	{
		return TypeDescriptor.GetDefaultEvent(this, noCustomTypeDesc: true);
	}

	[DocumentationExclude]
	EventDescriptorCollection ICustomTypeDescriptor.GetEvents(Attribute[] attributes)
	{
		return TypeDescriptor.GetEvents(this, attributes, noCustomTypeDesc: true);
	}

	[DocumentationExclude]
	EventDescriptorCollection ICustomTypeDescriptor.GetEvents()
	{
		return TypeDescriptor.GetEvents(this, noCustomTypeDesc: true);
	}

	[DocumentationExclude]
	PropertyDescriptor ICustomTypeDescriptor.GetDefaultProperty()
	{
		return TypeDescriptor.GetDefaultProperty(this, noCustomTypeDesc: true);
	}

	[DocumentationExclude]
	PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties()
	{
		return TypeDescriptor.GetProperties(this, noCustomTypeDesc: true);
	}

	[DocumentationExclude]
	object ICustomTypeDescriptor.GetEditor(Type editorBaseType)
	{
		return TypeDescriptor.GetEditor(this, editorBaseType, noCustomTypeDesc: true);
	}

	[DocumentationExclude]
	object ICustomTypeDescriptor.GetPropertyOwner(PropertyDescriptor pd)
	{
		return this;
	}
}
