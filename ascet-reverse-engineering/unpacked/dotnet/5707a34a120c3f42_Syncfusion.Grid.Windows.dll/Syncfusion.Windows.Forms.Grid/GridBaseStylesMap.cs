#define TRACE
using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Design;
using System.Runtime.Serialization;
using System.Windows.Forms;
using System.Xml.Serialization;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[Editor(typeof(GridBaseStyleCollectionEditor), typeof(UITypeEditor))]
public class GridBaseStylesMap : NonFinalizeDisposable, ICloneable, ISerializable, ICollection, IEnumerable
{
	internal Hashtable baseStyles;

	[NonSerialized]
	private ArrayList m_params;

	[NonSerialized]
	private int nameCounter = -1;

	[NonSerialized]
	private bool modified;

	[NonSerialized]
	private ArrayList cellTypes = new ArrayList();

	[NonSerialized]
	private int updateCount;

	[NonSerialized]
	private bool changePending;

	internal bool inCollectionEditorEditValue;

	public ArrayList CellTypes => cellTypes;

	[Browsable(false)]
	internal bool Updating => updateCount > 0;

	[XmlIgnore]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool Modified
	{
		get
		{
			return modified;
		}
		set
		{
			modified = value;
		}
	}

	[DocumentationExclude]
	public bool InCollectionEditor => inCollectionEditorEditValue;

	[Browsable(false)]
	public GridBaseStyle this[string name]
	{
		get
		{
			if (baseStyles.Contains(name))
			{
				GridBaseStyle gridBaseStyle = (GridBaseStyle)baseStyles[name];
				gridBaseStyle.BaseStylesMap = this;
				return gridBaseStyle;
			}
			return new GridBaseStyle(name, isSystem: false, null, this);
		}
		set
		{
			GridBaseStyle gridBaseStyle = null;
			if (value.BaseStylesMap != this)
			{
				gridBaseStyle = (GridBaseStyle)(baseStyles[name] = new GridBaseStyle(value.Name, value.IsSystem, (GridStyleInfoStore)value.StyleInfoStore.Clone(), this));
				OnStyleAdded(gridBaseStyle);
				return;
			}
			if (baseStyles.Contains(name))
			{
				gridBaseStyle = this[name];
			}
			if (gridBaseStyle != value)
			{
				gridBaseStyle = (GridBaseStyle)(baseStyles[name] = value);
				if (gridBaseStyle == null)
				{
					OnStyleAdded(gridBaseStyle);
				}
			}
		}
	}

	[Browsable(false)]
	public GridBaseStyle this[int index]
	{
		get
		{
			return (GridBaseStyle)baseStyles[index];
		}
		set
		{
			Add(value);
		}
	}

	[Browsable(false)]
	public int Count => baseStyles.Count;

	[Browsable(false)]
	public object SyncRoot => baseStyles.SyncRoot;

	[Browsable(false)]
	public bool IsReadOnly => baseStyles.IsReadOnly;

	[Browsable(false)]
	public bool IsSynchronized => baseStyles.IsSynchronized;

	[Browsable(false)]
	private ArrayList Params
	{
		get
		{
			if (m_params == null)
			{
				m_params = new ArrayList();
			}
			return m_params;
		}
	}

	protected GridBaseStylesMap(SerializationInfo info, StreamingContext context)
	{
		baseStyles = new Hashtable();
		bool flag = true;
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Name == "#&Modified")
			{
				flag = Convert.ToBoolean(enumerator.Value);
			}
			else
			{
				GridBaseStyle gridBaseStyle = (GridBaseStyle)enumerator.Value;
				gridBaseStyle.BaseStylesMap = this;
				baseStyles.Add(enumerator.Name, enumerator.Value as GridBaseStyle);
			}
			Modified = flag;
		}
	}

	public override string ToString()
	{
		return GetType().Name + "{ Count=" + baseStyles.Count + " }";
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		foreach (GridBaseStyle value in baseStyles.Values)
		{
			info.AddValue(value.Name, value);
		}
		info.AddValue("#&Modified", modified);
	}

	public static DialogResult ShowGridBaseStylesMapDialog(object instance, string propertyName)
	{
		return ShowGridBaseStylesMapDialog(instance, propertyName, null);
	}

	public static DialogResult ShowGridBaseStylesMapDialog(object instance, string propertyName, IServiceProvider provider)
	{
		GridBaseStyleCollectionEditor gridBaseStyleCollectionEditor = new GridBaseStyleCollectionEditor(typeof(ArrayList));
		WindowsFormsEditorServiceContainer windowsFormsEditorServiceContainer = new WindowsFormsEditorServiceContainer(provider);
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(instance)[propertyName];
		TypeDescriptorContext typeDescriptorContext = new TypeDescriptorContext(instance, propertyDescriptor);
		typeDescriptorContext.ServiceProvider = windowsFormsEditorServiceContainer;
		object value = propertyDescriptor.GetValue(instance);
		object obj = gridBaseStyleCollectionEditor.IntEditValue(typeDescriptorContext, windowsFormsEditorServiceContainer, ((ICloneable)value).Clone());
		if (windowsFormsEditorServiceContainer.DialogResult == DialogResult.OK)
		{
			IComponentChangeService componentChangeService = null;
			if (provider != null)
			{
				componentChangeService = provider.GetService(typeof(IComponentChangeService)) as IComponentChangeService;
			}
			if (componentChangeService != null)
			{
				componentChangeService.OnComponentChanging(instance, propertyDescriptor);
				propertyDescriptor.SetValue(instance, obj);
				componentChangeService.OnComponentChanged(instance, propertyDescriptor, value, obj);
			}
			else
			{
				propertyDescriptor.SetValue(instance, obj);
			}
			if (instance is Control control)
			{
				control.Invalidate();
			}
		}
		return windowsFormsEditorServiceContainer.DialogResult;
	}

	public GridBaseStylesMap()
	{
		baseStyles = new Hashtable();
		string[] array = new string[20]
		{
			"Header", "Static", "TextBox", "CheckBox", "PushButton", "NumericUpDown", "DropDownGrid", "GridListControl", "ComboBox", "ColorEdit",
			"MonthCalendar", "FormulaCell", "MaskEdit", "Currency", "Image", "RichText", "Control", "OriginalTextBox", "ProgressBar", "RadioButton"
		};
		string[] array2 = array;
		foreach (string value in array2)
		{
			cellTypes.Add(value);
		}
	}

	public GridBaseStylesMap(GridBaseStyle[] baseStyles)
	{
		this.baseStyles = new Hashtable();
		foreach (GridBaseStyle gridBaseStyle in baseStyles)
		{
			this[gridBaseStyle.Name] = gridBaseStyle;
		}
	}

	public object Clone()
	{
		GridBaseStylesMap gridBaseStylesMap = new GridBaseStylesMap();
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				GridBaseStyle gridBaseStyle = (GridBaseStyle)enumerator.Current;
				gridBaseStylesMap[gridBaseStyle.Name] = gridBaseStyle;
			}
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
		gridBaseStylesMap.Modified = Modified;
		return gridBaseStylesMap;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			{
				IEnumerator enumerator = GetEnumerator();
				try
				{
					while (enumerator.MoveNext())
					{
						GridBaseStyle gridBaseStyle = (GridBaseStyle)enumerator.Current;
						gridBaseStyle.BaseStylesMap = null;
					}
				}
				finally
				{
					IDisposable disposable = enumerator as IDisposable;
					if (disposable != null)
					{
						disposable.Dispose();
					}
				}
			}
			baseStyles.Clear();
		}
		base.Dispose(disposing);
	}

	public GridStyleInfo[] GetBaseStylesMapStyles(string name, out int level)
	{
		GridStyleInfo[] array = new GridStyleInfo[16];
		bool flag = false;
		level = 0;
		while (level < 16)
		{
			if (baseStyles.ContainsKey(name))
			{
				GridBaseStyle gridBaseStyle = this[name];
				GridStyleInfo styleInfo = gridBaseStyle.StyleInfo;
				array[level++] = styleInfo;
				if (name == "Standard")
				{
					return array;
				}
				if (styleInfo.HasBaseStyle)
				{
					name = styleInfo.BaseStyle;
					continue;
				}
			}
			if (flag)
			{
				break;
			}
			name = "Standard";
			flag = true;
		}
		return array;
	}

	internal void BeginUpdate()
	{
		updateCount++;
	}

	internal void EndUpdate(bool notifyPending)
	{
		if (--updateCount == 0 && changePending)
		{
			if (notifyPending)
			{
				OnStyleChanged(null);
			}
			changePending = false;
		}
	}

	internal void OnStyleAdded(GridBaseStyle baseStyle)
	{
		Modified = true;
		if (Updating)
		{
			changePending = true;
		}
	}

	internal void OnStyleChanged(GridBaseStyle baseStyle)
	{
		Modified = true;
		if (Updating)
		{
			changePending = true;
		}
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				GridBaseStyle gridBaseStyle = (GridBaseStyle)enumerator.Current;
				if (gridBaseStyle.StyleInfo.HasFont)
				{
					gridBaseStyle.StyleInfo.Font.ResetGdipFont();
				}
			}
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	internal void OnStyleRemoved(string name)
	{
		Modified = true;
		if (Updating)
		{
			changePending = true;
		}
	}

	public void RegisterStandardStyles()
	{
		BeginUpdate();
		baseStyles.Clear();
		GridBaseStyle gridBaseStyle = new GridBaseStyle("Standard", isSystem: true);
		gridBaseStyle.StyleInfo.Interior = new BrushInfo(SystemColors.Window);
		gridBaseStyle.BaseStylesMap = this;
		Add(gridBaseStyle);
		GridBaseStyle gridBaseStyle2 = new GridBaseStyle("Header", isSystem: true);
		gridBaseStyle2.StyleInfo.Font.Bold = true;
		gridBaseStyle2.StyleInfo.Borders.All = new GridBorder(GridBorderStyle.None, SystemColors.WindowFrame, GridBorderWeight.Thin);
		gridBaseStyle2.StyleInfo.Interior = new BrushInfo(SystemColors.Control);
		gridBaseStyle2.StyleInfo.VerticalAlignment = GridVerticalAlignment.Middle;
		gridBaseStyle2.StyleInfo.CellType = "Header";
		gridBaseStyle2.BaseStylesMap = this;
		Add(gridBaseStyle2);
		GridBaseStyle gridBaseStyle3 = new GridBaseStyle("Column Header", isSystem: true);
		gridBaseStyle3.StyleInfo.BaseStyle = "Header";
		gridBaseStyle3.StyleInfo.HorizontalAlignment = GridHorizontalAlignment.Center;
		gridBaseStyle3.BaseStylesMap = this;
		Add(gridBaseStyle3);
		GridBaseStyle gridBaseStyle4 = new GridBaseStyle("Row Header", isSystem: true);
		gridBaseStyle4.StyleInfo.BaseStyle = "Header";
		gridBaseStyle4.StyleInfo.HorizontalAlignment = GridHorizontalAlignment.Left;
		gridBaseStyle4.BaseStylesMap = this;
		Add(gridBaseStyle4);
		EndUpdate(notifyPending: true);
		Modified = false;
	}

	public string GetNewBaseStyleName()
	{
		if (nameCounter == -1)
		{
			{
				IEnumerator enumerator = GetEnumerator();
				try
				{
					while (enumerator.MoveNext())
					{
						GridBaseStyle gridBaseStyle = (GridBaseStyle)enumerator.Current;
						if (!gridBaseStyle.Name.StartsWith("BaseStyle"))
						{
							continue;
						}
						try
						{
							nameCounter = Math.Max(nameCounter, int.Parse(gridBaseStyle.Name.Substring("BaseStyle".Length)));
						}
						catch (Exception ex)
						{
							TraceUtil.TraceExceptionCatched(ex);
							if (!ExceptionManager.RaiseExceptionCatched(this, ex))
							{
								throw;
							}
						}
					}
				}
				finally
				{
					IDisposable disposable = enumerator as IDisposable;
					if (disposable != null)
					{
						disposable.Dispose();
					}
				}
			}
		}
		nameCounter++;
		return "BaseStyle" + nameCounter;
	}

	public void Add(GridBaseStyle baseStyle)
	{
		GridBaseStyle gridBaseStyle = this[baseStyle.Name];
		if (gridBaseStyle != baseStyle)
		{
			if (gridBaseStyle != null)
			{
				gridBaseStyle.BaseStylesMap = null;
			}
			this[baseStyle.Name] = baseStyle;
			OnStyleAdded(baseStyle);
		}
	}

	private void Remove(string name)
	{
		if (baseStyles.ContainsKey(name))
		{
			baseStyles.Remove(name);
			OnStyleRemoved(name);
		}
	}

	public void AddRange(GridBaseStyle[] value)
	{
		BeginUpdate();
		foreach (object obj in value)
		{
			if (!(obj is GridBaseStyle gridBaseStyle))
			{
				if (obj != null && Switches.Development.TraceVerbose)
				{
					Trace.WriteLine(obj.GetType().ToString() + ": " + obj.ToString());
				}
			}
			else
			{
				this[gridBaseStyle.Name] = gridBaseStyle;
			}
		}
		EndUpdate(notifyPending: true);
	}

	public void CopyTo(Array array, int index)
	{
		baseStyles.CopyTo(array, index);
	}

	public void CopyTo(GridBaseStyle[] values, int index)
	{
		baseStyles.Values.CopyTo(values, index);
	}

	public IEnumerator GetEnumerator()
	{
		return baseStyles.Values.GetEnumerator();
	}
}
