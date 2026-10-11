using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class AutoCompleteDesigner : ComponentDesigner
{
	protected DesignerVerb dvRefreshColumns;

	protected DesignerVerbCollection dvcVerbs;

	private DesignerActionListCollection actionLists;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new AutoCompleteActionList(base.Component));
			}
			return actionLists;
		}
	}

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (((AutoComplete)base.Component).TableData.Columns.Count > 0)
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

	public AutoCompleteDesigner()
	{
		dvRefreshColumns = new DesignerVerb("Refresh Columns", HandleRefreshColumns);
		dvRefreshColumns.Enabled = false;
		DesignerVerb[] value = new DesignerVerb[1] { dvRefreshColumns };
		dvcVerbs = new DesignerVerbCollection(value);
	}

	public override void InitializeExistingComponent(IDictionary defaultValues)
	{
		base.InitializeExistingComponent(defaultValues);
		InitializeExistingComponent();
	}

	public void HandleRefreshColumns(object sender, EventArgs e)
	{
		if (base.Component != null)
		{
			AutoComplete autoComplete = base.Component as AutoComplete;
			autoComplete.RefreshColumns();
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		IDesignerHost designerHost = component.Site.Container as IDesignerHost;
		Form parentForm = designerHost.RootComponent as Form;
		AutoComplete autoComplete = component as AutoComplete;
		autoComplete.ParentForm = parentForm;
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		if (selectionService != null)
		{
			selectionService.SelectionChanged += HandleSelectionChanged;
		}
	}

	private void InitializeExistingComponent()
	{
		AutoComplete autoComplete = base.Component as AutoComplete;
		if (autoComplete.ParentForm == null)
		{
			IDesignerHost designerHost = base.Component.Site.Container as IDesignerHost;
			Form parentForm = designerHost.RootComponent as Form;
			autoComplete.ParentForm = parentForm;
		}
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
		AutoComplete autoComplete = (AutoComplete)base.Component;
		if (control != null)
		{
			autoComplete.ActiveFocusControl = control;
		}
		else if (autoComplete.ActiveFocusControl != null)
		{
			autoComplete.ActiveFocusControl = null;
		}
	}

	protected override void PreFilterProperties(IDictionary properties)
	{
		base.PreFilterProperties(properties);
		RemovePropertyBrowsable(strcolln: new string[28]
		{
			"RightToLeft", "ContextMenu", "ImeMode", "TabStop", "Dock", "DockPadding", "Anchor", "AutoScroll", "CausesValidation", "AllowDrop",
			"BackgroundImage", "Cursor", "DialogResult", "Location", "Size", "AccessibleDescription", "AccessibleName", "AccessibleRole", "Locked", "Font",
			"Enabled", "BackColor", "ForeColor", "AutoScrollMargin", "AutoScrollMinSize", "TabIndex", "Visible", "DataBindings"
		}, control: base.Component, properties: properties);
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
