using System;
using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxItem(false)]
[DefaultProperty("Header")]
[DesignTimeVisible(false)]
public class GridBoundColumn : Component, ICurrencyManagerSource, ICloneable
{
	private GridBoundColumnStyleInfo styleInfo;

	private PropertyDescriptor propertyDescriptor;

	private ICurrencyManagerSource owner;

	private string mappingName = string.Empty;

	private string headerName = string.Empty;

	private bool readOnly;

	internal int width = -1;

	private bool isDefault;

	private object tag;

	internal object value;

	internal bool dirty;

	internal object savedValue;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridStyleInfo StyleInfo
	{
		get
		{
			if (styleInfo == null)
			{
				styleInfo = new GridBoundColumnStyleInfo(this);
			}
			return styleInfo;
		}
		set
		{
			styleInfo = new GridBoundColumnStyleInfo(this, value.Store);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Browsable(false)]
	[DefaultValue(null)]
	public virtual PropertyDescriptor PropertyDescriptor
	{
		get
		{
			return propertyDescriptor;
		}
		set
		{
			if (propertyDescriptor != value)
			{
				propertyDescriptor = value;
				OnPropertyDescriptorChanged(EventArgs.Empty);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual GridModelDataBinder Owner
	{
		get
		{
			return owner as GridModelDataBinder;
		}
		set
		{
			owner = value;
		}
	}

	[Category("Display")]
	[Localizable(true)]
	public virtual string HeaderText
	{
		get
		{
			return headerName;
		}
		set
		{
			if (value == null)
			{
				value = string.Empty;
			}
			if (!headerName.Equals(value))
			{
				headerName = value;
				OnHeaderTextChanged(EventArgs.Empty);
			}
		}
	}

	[TypeConverter(typeof(CurrencyManagerMappingNameConverter))]
	[DefaultValue("")]
	public string MappingName
	{
		get
		{
			return mappingName;
		}
		set
		{
			if (value == null)
			{
				value = string.Empty;
			}
			if (mappingName.Equals(value))
			{
				return;
			}
			string text = mappingName;
			mappingName = value;
			try
			{
				if (Owner != null)
				{
					Owner.GridBoundColumns.CheckForMappingNameDuplicates(this);
				}
			}
			catch
			{
				mappingName = text;
				throw;
			}
			OnMappingNameChanged(EventArgs.Empty);
		}
	}

	private string Name
	{
		get
		{
			if (PropertyDescriptor != null)
			{
				return PropertyDescriptor.Name;
			}
			return string.Empty;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public object Tag
	{
		get
		{
			return tag;
		}
		set
		{
			tag = value;
		}
	}

	[DefaultValue(false)]
	public virtual bool ReadOnly
	{
		get
		{
			return readOnly;
		}
		set
		{
			if (readOnly != value)
			{
				readOnly = value;
				OnReadOnlyChanged(EventArgs.Empty);
			}
		}
	}

	public event EventHandler PropertyDescriptorChanged;

	public event EventHandler HeaderTextChanged;

	public event EventHandler MappingNameChanged;

	public event EventHandler ReadOnlyChanged;

	public GridBoundColumn()
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (styleInfo != null)
			{
				styleInfo.Dispose();
				styleInfo = null;
			}
			owner = null;
			if (tag is IDisposable)
			{
				((IDisposable)tag).Dispose();
			}
			tag = null;
		}
		base.Dispose(disposing);
	}

	public object Clone()
	{
		GridBoundColumn gridBoundColumn = MemberwiseClone() as GridBoundColumn;
		if (styleInfo != null)
		{
			gridBoundColumn.styleInfo = new GridBoundColumnStyleInfo(this, (GridStyleInfoStore)styleInfo.Store.Clone());
			if (tag is ICloneable)
			{
				gridBoundColumn.tag = ((ICloneable)tag).Clone();
			}
		}
		return gridBoundColumn;
	}

	public GridBoundColumn(PropertyDescriptor prop)
	{
		PropertyDescriptor = prop;
		if (prop != null)
		{
			readOnly = prop.IsReadOnly;
			headerName = prop.Name;
			mappingName = prop.Name;
		}
	}

	internal GridBoundColumn(PropertyDescriptor prop, bool isDefault)
		: this(prop)
	{
		this.isDefault = isDefault;
		if (isDefault)
		{
			headerName = prop.Name;
			mappingName = prop.Name;
		}
	}

	CurrencyManager ICurrencyManagerSource.GetCurrencyManager()
	{
		if (owner != null)
		{
			return owner.GetCurrencyManager();
		}
		return null;
	}

	private bool ShouldSerializeStyleInfo()
	{
		if (styleInfo != null && styleInfo.Store != null)
		{
			return !styleInfo.IsEmpty;
		}
		return false;
	}

	public void SetOwner(ICurrencyManagerSource owner)
	{
		this.owner = owner;
	}

	public void ResetHeaderText()
	{
		HeaderText = string.Empty;
	}

	private bool ShouldSerializeHeaderText()
	{
		return headerName.Length != 0;
	}

	private void OnReadOnlyChanged(EventArgs e)
	{
		if (this.ReadOnlyChanged != null)
		{
			this.ReadOnlyChanged(this, e);
		}
	}

	private void OnPropertyDescriptorChanged(EventArgs e)
	{
		if (this.PropertyDescriptorChanged != null)
		{
			this.PropertyDescriptorChanged(this, e);
		}
	}

	private void OnHeaderTextChanged(EventArgs e)
	{
		if (this.HeaderTextChanged != null)
		{
			this.HeaderTextChanged(this, e);
		}
	}

	private void OnMappingNameChanged(EventArgs e)
	{
		if (this.MappingNameChanged != null)
		{
			this.MappingNameChanged(this, e);
		}
	}
}
