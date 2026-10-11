using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class ComboBoxAutoCompleteDesigner : ControlDesigner
{
	protected DesignerVerb dvRefreshColumns;

	protected DesignerVerbCollection dvcVerbs;

	private DesignerActionListCollection actionLists;

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (((ComboBoxAutoComplete)Control).AutoCompleteControl.TableData.Columns.Count > 0)
			{
				dvRefreshColumns.Enabled = true;
			}
			else
			{
				dvRefreshColumns.Enabled = false;
			}
			return dvcVerbs;
		}
	}

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new ComboBoxAutoCompleteActionList(base.Component));
			}
			return actionLists;
		}
	}

	public ComboBoxAutoCompleteDesigner()
	{
		dvRefreshColumns = new DesignerVerb("Refresh Columns", HandleRefreshColumns);
		dvRefreshColumns.Enabled = false;
		DesignerVerb[] value = new DesignerVerb[1] { dvRefreshColumns };
		dvcVerbs = new DesignerVerbCollection(value);
	}

	public void HandleRefreshColumns(object sender, EventArgs e)
	{
		if (Control != null)
		{
			ComboBoxAutoComplete comboBoxAutoComplete = Control as ComboBoxAutoComplete;
			comboBoxAutoComplete.AutoCompleteControl.RefreshColumns();
		}
	}

	public override void Initialize(IComponent control)
	{
		base.Initialize(control);
		IDesignerHost designerHost = control.Site.Container as IDesignerHost;
		Form parentForm = designerHost.RootComponent as Form;
		ComboBoxAutoComplete comboBoxAutoComplete = control as ComboBoxAutoComplete;
		comboBoxAutoComplete.ParentForm = parentForm;
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		if (selectionService != null)
		{
			selectionService.SelectionChanged += HandleSelectionChanged;
		}
	}

	private void InitializeExistingComponent()
	{
		ComboBoxAutoComplete comboBoxAutoComplete = Control as ComboBoxAutoComplete;
		if (comboBoxAutoComplete.ParentForm == null)
		{
			IDesignerHost designerHost = base.Component.Site.Container as IDesignerHost;
			Form parentForm = designerHost.RootComponent as Form;
			comboBoxAutoComplete.AutoCompleteControl.ParentForm = parentForm;
		}
	}

	public override void InitializeExistingComponent(IDictionary defaultValues)
	{
		base.InitializeExistingComponent(defaultValues);
	}

	protected override void Dispose(bool disposing)
	{
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		if (selectionService != null)
		{
			selectionService.SelectionChanged -= HandleSelectionChanged;
		}
		base.Dispose(disposing);
	}

	private void HandleSelectionChanged(object sender, EventArgs e)
	{
		ISelectionService ss = (ISelectionService)sender;
		UpdateAutoCompleteSelection(ss);
	}

	private void UpdateAutoCompleteSelection(ISelectionService ss)
	{
		Control control = ss.PrimarySelection as Control;
		ComboBoxAutoComplete comboBoxAutoComplete = (ComboBoxAutoComplete)Control;
		if (control != null)
		{
			comboBoxAutoComplete.AutoCompleteControl.ActiveFocusControl = control;
		}
		else if (comboBoxAutoComplete.AutoCompleteControl.ActiveFocusControl != null)
		{
			comboBoxAutoComplete.AutoCompleteControl.ActiveFocusControl = null;
		}
	}

	protected override void PreFilterProperties(IDictionary properties)
	{
		base.PreFilterProperties(properties);
		RemovePropertyBrowsable(strcolln: new string[9] { "Items", "DataSource", "DisplayMember", "DropDownWidth", "IntegralHeight", "ItemHeight", "MaxDropDownItems", "Sorted", "ValueMember" }, control: base.Component, properties: properties);
	}

	private static void RemovePropertyBrowsable(IComponent control, string[] strcolln, IDictionary properties)
	{
		foreach (string key in strcolln)
		{
			PropertyDescriptor propertyDescriptor = (PropertyDescriptor)properties[key];
			if (propertyDescriptor == null || !propertyDescriptor.IsBrowsable)
			{
				continue;
			}
			AttributeCollection attributes = propertyDescriptor.Attributes;
			bool flag = false;
			foreach (Attribute item in attributes)
			{
				if (item is BrowsableAttribute)
				{
					flag = true;
					break;
				}
			}
			int num = (flag ? attributes.Count : (attributes.Count + 1));
			Attribute[] array = new Attribute[num];
			attributes.CopyTo(array, 0);
			if (flag)
			{
				array[Array.IndexOf(array, BrowsableAttribute.Yes)] = BrowsableAttribute.No;
			}
			else
			{
				array[num - 1] = BrowsableAttribute.No;
			}
			properties[key] = TypeDescriptor.CreateProperty(control.GetType(), propertyDescriptor, array);
		}
	}
}
