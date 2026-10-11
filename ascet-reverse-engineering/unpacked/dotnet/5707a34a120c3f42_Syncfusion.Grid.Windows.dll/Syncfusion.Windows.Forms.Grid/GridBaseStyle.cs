using System;
using System.ComponentModel;
using System.Runtime.Serialization;
using System.Xml.Serialization;
using Syncfusion.ComponentModel;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[TypeConverter(typeof(GridBaseStyleConverter))]
public class GridBaseStyle : NonFinalizeDisposable, ICloneable, ISerializable
{
	private string name;

	private bool isSystem;

	private StyleInfoStore styleInfoStore;

	[NonSerialized]
	private GridBaseStylesMap styleInfoMap;

	[NonSerialized]
	private GridBaseStyleInfo styleInfo;

	public string Name
	{
		get
		{
			return name;
		}
		set
		{
			if (!isSystem && name != value)
			{
				if (styleInfoMap != null)
				{
					styleInfoMap.baseStyles.Remove(name);
					name = value;
					styleInfoMap[name] = this;
				}
				else
				{
					name = value;
				}
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsSystem => isSystem;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[XmlIgnore]
	public GridBaseStylesMap BaseStylesMap
	{
		get
		{
			return styleInfoMap;
		}
		set
		{
			if (styleInfoMap != value)
			{
				styleInfoMap = value;
				StyleInfo = null;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridStyleInfo StyleInfo
	{
		get
		{
			if (styleInfo == null)
			{
				styleInfo = new GridBaseStyleInfo(new GridBaseStyleIdentity(styleInfoMap), StyleInfoStore);
				styleInfo.Changed += OnStyleInfoChanged;
			}
			return styleInfo;
		}
		set
		{
			if (value != styleInfo)
			{
				if (styleInfo != null)
				{
					styleInfo.Changed -= OnStyleInfoChanged;
				}
				styleInfo = null;
				if (value != null)
				{
					styleInfoStore = value.Store;
				}
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[XmlIgnore]
	public GridStyleInfoStore StyleInfoStore
	{
		get
		{
			if (styleInfoStore == null)
			{
				styleInfoStore = new GridStyleInfoStore();
			}
			return (GridStyleInfoStore)styleInfoStore;
		}
		set
		{
			if (value != styleInfoStore)
			{
				styleInfoStore = value;
				if (styleInfo != null)
				{
					styleInfo.Changed -= OnStyleInfoChanged;
					styleInfo.Dispose();
				}
				styleInfoStore.Dispose();
				styleInfo = null;
			}
		}
	}

	public GridBaseStyle()
	{
		isSystem = false;
		styleInfoStore = null;
	}

	protected GridBaseStyle(SerializationInfo info, StreamingContext context)
	{
		name = info.GetString("Name");
		isSystem = info.GetBoolean("IsSystem");
		object value = info.GetValue("Type", typeof(object));
		styleInfoStore = (StyleInfoStore)info.GetValue("Store", (!(value is string)) ? ((Type)value) : ValueConvert.GetType((string)value));
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Name", name);
		info.AddValue("IsSystem", isSystem);
		info.AddValue("Type", ValueConvert.GetTypeName(styleInfoStore.GetType()));
		info.AddValue("Store", styleInfoStore);
	}

	public GridBaseStyle(string name, bool isSystem, GridStyleInfoStore styleInfoStore, GridBaseStylesMap styleInfoMap)
	{
		this.name = name;
		this.isSystem = isSystem;
		this.styleInfoStore = styleInfoStore;
		this.styleInfoMap = styleInfoMap;
	}

	public GridBaseStyle(string name, bool isSystem, GridStyleInfoStore styleInfoStore)
		: this(name, isSystem, styleInfoStore, null)
	{
	}

	public GridBaseStyle(string name, bool isSystem, GridStyleInfo styleInfo)
		: this(name, isSystem, styleInfo.Store, null)
	{
	}

	public GridBaseStyle(string name, bool isSystem)
		: this(name, isSystem, null, null)
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (styleInfoMap != null && styleInfoMap.baseStyles.ContainsValue(this))
			{
				styleInfoMap.baseStyles.Remove(name);
			}
			if (styleInfo != null)
			{
				styleInfo.Changed -= OnStyleInfoChanged;
				styleInfo.Dispose();
			}
			if (styleInfoStore != null)
			{
				styleInfoStore.Dispose();
			}
			styleInfoMap = null;
			styleInfo = null;
			styleInfoStore = null;
		}
		base.Dispose(disposing);
	}

	public object Clone()
	{
		return new GridBaseStyle(name, isSystem, (GridStyleInfoStore)styleInfoStore.Clone(), styleInfoMap);
	}

	public override string ToString()
	{
		return name;
	}

	private void OnStyleInfoChanged(object sender, StyleChangedEventArgs e)
	{
		if (styleInfoMap != null)
		{
			styleInfoMap.Add(this);
			styleInfoMap.OnStyleChanged(this);
		}
	}

	private bool ShouldSerializeStyleInfo()
	{
		if (styleInfo != null && styleInfo.Store != null)
		{
			return !styleInfo.IsEmpty;
		}
		return false;
	}
}
