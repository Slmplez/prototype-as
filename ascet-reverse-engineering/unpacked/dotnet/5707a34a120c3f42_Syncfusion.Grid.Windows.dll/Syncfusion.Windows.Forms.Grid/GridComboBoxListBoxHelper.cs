using System;
using System.Collections;
using System.ComponentModel;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxItem(false)]
[DocumentationExclude]
public class GridComboBoxListBoxHelper : ListBox
{
	private BindingContext bindingContext;

	public override int SelectedIndex
	{
		get
		{
			if (base.IsHandleCreated)
			{
				return base.SelectedIndex;
			}
			return 0;
		}
		set
		{
			if (base.IsHandleCreated)
			{
				base.SelectedIndex = value;
			}
		}
	}

	public override BindingContext BindingContext
	{
		get
		{
			if (bindingContext == null)
			{
				bindingContext = new BindingContext();
			}
			return bindingContext;
		}
		set
		{
		}
	}

	protected override void OnDataSourceChanged(EventArgs e)
	{
		if (base.IsHandleCreated)
		{
			base.OnDataSourceChanged(e);
		}
	}

	protected override void OnCreateControl()
	{
		throw new Exception("GridComboBoxListBoxHelper is only usasble for filtering items, not for displaying them.");
	}

	protected override void SetItemsCore(IList items)
	{
		if (base.IsHandleCreated)
		{
			base.SetItemsCore(items);
		}
	}

	protected override void SetItemCore(int index, object value)
	{
		if (base.IsHandleCreated)
		{
			base.SetItemCore(index, value);
		}
	}

	private object _FilterItemOnProperty(object item, string field)
	{
		if (item != null && field.Length > 0)
		{
			try
			{
				PropertyDescriptor propertyDescriptor = ((base.DataManager == null) ? TypeDescriptor.GetProperties(item).Find(field, ignoreCase: true) : base.DataManager.GetItemProperties().Find(field, ignoreCase: true));
				if (propertyDescriptor != null)
				{
					item = propertyDescriptor.GetValue(item);
				}
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
		return item;
	}

	[DocumentationExclude]
	public new string GetItemText(object item)
	{
		if (item == null)
		{
			return string.Empty;
		}
		if (GridUtil.IsEmpty(base.DisplayMember))
		{
			return item.ToString();
		}
		object obj = _FilterItemOnProperty(item, base.DisplayMember);
		return obj.ToString();
	}

	[DocumentationExclude]
	public object GetItemValue(object item)
	{
		if (GridUtil.IsEmpty(base.ValueMember))
		{
			return item;
		}
		return _FilterItemOnProperty(item, base.ValueMember);
	}

	[DocumentationExclude]
	public object GetItemValue(int index)
	{
		object item = base.DataManager.List[index];
		return _FilterItemOnProperty(item, base.ValueMember);
	}

	[DocumentationExclude]
	public string GetItemText(int index)
	{
		object item = base.DataManager.List[index];
		return base.GetItemText(item);
	}

	[DocumentationExclude]
	public int GetItemCount()
	{
		if (base.DataManager == null)
		{
			return 0;
		}
		return base.DataManager.List.Count;
	}

	private int FindKey(IList thisList, PropertyDescriptor property, object key)
	{
		try
		{
			if (property != null && thisList is IBindingList && ((IBindingList)thisList).SupportsSearching)
			{
				return ((IBindingList)thisList).Find(property, key);
			}
			bool flag = key == null || key is DBNull;
			for (int i = 0; i < thisList.Count; i++)
			{
				object obj = ((property != null) ? property.GetValue(thisList[i]) : thisList[i]);
				bool flag2 = obj == null || obj is DBNull;
				if ((flag && flag2) || object.ReferenceEquals(key, obj) || (!flag && key.Equals(obj)))
				{
					return i;
				}
			}
		}
		catch (FormatException e)
		{
			TraceUtil.TraceExceptionCatched(e);
		}
		catch (NullReferenceException e2)
		{
			TraceUtil.TraceExceptionCatched(e2);
		}
		return -1;
	}

	[DocumentationExclude]
	public int FindValue(object value)
	{
		if (base.DataManager != null)
		{
			PropertyDescriptorCollection itemProperties = base.DataManager.GetItemProperties();
			PropertyDescriptor propertyDescriptor = itemProperties.Find(base.ValueMember, ignoreCase: true);
			if (propertyDescriptor == null)
			{
				return base.DataManager.List.IndexOf(value);
			}
			if (!(propertyDescriptor.PropertyType == typeof(string)) || !(value is DBNull))
			{
				value = ValueConvert.ChangeType(value, propertyDescriptor.PropertyType, CultureInfo.CurrentCulture, returnDbNUllIfNotValid: true);
			}
			return FindKey(base.DataManager.List, propertyDescriptor, value);
		}
		return -1;
	}

	[DocumentationExclude]
	public new int FindStringExact(string s)
	{
		IList list = base.DataManager.List;
		PropertyDescriptorCollection itemProperties = base.DataManager.GetItemProperties();
		PropertyDescriptor propertyDescriptor = itemProperties.Find(base.DisplayMember, ignoreCase: true);
		object obj = null;
		try
		{
			for (int i = 0; i < list.Count; i++)
			{
				obj = ((propertyDescriptor != null) ? propertyDescriptor.GetValue(list[i]) : list[i]);
				string strB = ((obj != null) ? obj.ToString() : string.Empty);
				if (string.Compare(s, strB, ignoreCase: true, CultureInfo.CurrentCulture) == 0)
				{
					return i;
				}
			}
		}
		catch (FormatException e)
		{
			TraceUtil.TraceExceptionCatched(e);
		}
		return -1;
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		base.DataSource = null;
		base.OnHandleDestroyed(e);
	}
}
