using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridComboBoxCellModel : GridDropDownCellModel
{
	private bool allowDoubleClickChangeSelectedIndex = true;

	private GridComboBoxListBoxHelper listBox;

	private Hashtable notfound = new Hashtable();

	private GridComboBoxListBoxHelper ListBox
	{
		get
		{
			if (listBox == null)
			{
				listBox = new GridComboBoxListBoxHelper();
			}
			return listBox;
		}
	}

	public bool AllowDoubleClickChangeSelectedIndex
	{
		get
		{
			return allowDoubleClickChangeSelectedIndex;
		}
		set
		{
			allowDoubleClickChangeSelectedIndex = value;
		}
	}

	[DocumentationExclude]
	[Obsolete("Problem with sluggish list boxes has been fixed. Set also GridStyleInfoStore.DataSourceProperty.IsCloneable and GridStyleInfoStore.DataSourceProperty.IsDisposable = false")]
	public bool CacheDataSource
	{
		get
		{
			return false;
		}
		set
		{
		}
	}

	public GridComboBoxCellModel(GridModel grid)
		: base(grid)
	{
		base.AllowFloating = false;
		base.ButtonBarSize = new Size(SystemInformation.VerticalScrollBarWidth, 0);
		base.SupportsChoiceList = true;
	}

	protected GridComboBoxCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (listBox != null)
		{
			listBox.DataSource = null;
			listBox.Dispose();
			listBox = null;
		}
		base.Dispose(disposing);
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridComboBoxCellRenderer(control, this);
	}

	public virtual object GetDataSource(GridStyleInfo style)
	{
		return base.Grid.GetStyleDataSource(style);
	}

	public virtual void FillWithChoices(ListBox listBox, GridStyleInfo style, out bool exclusive)
	{
		exclusive = style.ExclusiveChoiceList;
		listBox.Name = "Combobox";
		object dataSource = GetDataSource(style);
		if (style.ChoiceList == null || style.ChoiceList.Count == 0)
		{
			if (dataSource != null)
			{
				if (listBox.BindingContext == null || dataSource != listBox.DataSource || listBox.DisplayMember != style.DisplayMember || listBox.ValueMember != style.ValueMember)
				{
					listBox.DataSource = null;
					listBox.DisplayMember = string.Empty;
					listBox.ValueMember = string.Empty;
					listBox.DataSource = dataSource;
					listBox.DisplayMember = style.DisplayMember;
					listBox.ValueMember = style.ValueMember;
					listBox.BindingContext = base.BindingContext;
				}
				return;
			}
			Type cellValueType = style.CellValueType;
			if (cellValueType != null)
			{
				listBox.DataSource = null;
				listBox.Items.Clear();
				TypeConverter converter = TypeDescriptor.GetConverter(cellValueType);
				if (converter == null || !converter.GetStandardValuesSupported())
				{
					return;
				}
				ICollection standardValues = converter.GetStandardValues();
				foreach (object item in standardValues)
				{
					listBox.Items.Add(item.ToString());
				}
				exclusive = converter.GetStandardValuesExclusive();
			}
			else
			{
				listBox.DataSource = null;
				listBox.Items.Clear();
			}
			return;
		}
		listBox.DataSource = null;
		listBox.Items.Clear();
		if (style.ChoiceList == null)
		{
			return;
		}
		StringEnumerator enumerator2 = style.ChoiceList.GetEnumerator();
		try
		{
			while (enumerator2.MoveNext())
			{
				string current2 = enumerator2.Current;
				listBox.Items.Add(current2);
			}
		}
		finally
		{
			if (enumerator2 is IDisposable disposable)
			{
				disposable.Dispose();
			}
		}
	}

	public GridComboBoxListBoxHelper GetInternalListBox()
	{
		return ListBox;
	}

	public override bool ApplyFormattedText(GridStyleInfo style, string text, int textInfo)
	{
		if (text.Length > 0 && (style.ChoiceList == null || style.ChoiceList.Count == 0) && style.DataSource != null && style.DisplayMember != style.ValueMember)
		{
			FillWithChoices(ListBox, style, out var exclusive);
			int num = ListBox.FindStringExact(text);
			if (num != -1)
			{
				style.CellValue = ListBox.GetItemValue(num);
				return true;
			}
			if (exclusive)
			{
				return false;
			}
		}
		return base.ApplyFormattedText(style, text, textInfo);
	}

	public int FindValue(GridStyleInfo style, object value)
	{
		if (value == null || (value is string && value.Equals(string.Empty)))
		{
			return -1;
		}
		if (style.ChoiceList == null || style.ChoiceList.Count == 0)
		{
			FillWithChoices(ListBox, style, out var _);
			if (ListBox.BindingContext != null && ListBox.DataSource != null)
			{
				return ListBox.FindValue(value);
			}
		}
		else if (style.ChoiceList != null && value is string)
		{
			return style.ChoiceList.IndexOf((string)value);
		}
		return -1;
	}

	public object GetItemValue(object dataSource, string valueMember, object item)
	{
		return ListUtil.GetItemValue(dataSource, valueMember, item);
	}

	public override string GetFormattedText(GridStyleInfo style, object value, int textInfo)
	{
		if ((style.ChoiceList == null || style.ChoiceList.Count == 0) && style.DataSource != null && style.DisplayMember != style.ValueMember)
		{
			FillWithChoices(ListBox, style, out var exclusive);
			if (ListBox.BindingContext != null)
			{
				if (style.ValueMember == string.Empty)
				{
					if (value != null && !(value is string) && !value.GetType().IsPrimitive)
					{
						return ListBox.GetItemText(value);
					}
					if (exclusive)
					{
						return string.Empty;
					}
				}
				else
				{
					int num = ListBox.FindValue(value);
					if (num != -1)
					{
						return ListBox.GetItemText(num);
					}
					if (exclusive)
					{
						return string.Empty;
					}
				}
			}
		}
		return base.GetFormattedText(style, value, textInfo);
	}
}
