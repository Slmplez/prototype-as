using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridBoundColumnsCollectionEditor : CollectionEditor
{
	private PropertyGridContextMenu pgMenu;

	public GridBoundColumnsCollectionEditor(Type type)
		: base(type)
	{
	}

	protected override CollectionForm CreateCollectionForm()
	{
		CollectionForm collectionForm = base.CreateCollectionForm();
		PropertyGrid propertyGridInControl = WinFormsUtils.GetPropertyGridInControl(collectionForm);
		if (propertyGridInControl != null)
		{
			pgMenu = new PropertyGridContextMenu(propertyGridInControl);
		}
		return collectionForm;
	}

	private object _EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		return base.EditValue(context, provider, value);
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context == null || context.Instance == null || context.PropertyDescriptor == null || context.PropertyDescriptor.IsReadOnly)
		{
			return _EditValue(context, provider, value);
		}
		GridBoundColumnsCollectionEditor gridBoundColumnsCollectionEditor = new GridBoundColumnsCollectionEditor(base.CollectionType);
		WindowsFormsEditorServiceContainer windowsFormsEditorServiceContainer = new WindowsFormsEditorServiceContainer(provider);
		PropertyDescriptor propertyDescriptor = context.PropertyDescriptor;
		object instance = context.Instance;
		TypeDescriptorContext typeDescriptorContext = new TypeDescriptorContext(instance, propertyDescriptor);
		typeDescriptorContext.ServiceProvider = windowsFormsEditorServiceContainer;
		IDesignerHost designerHost = (IDesignerHost)provider.GetService(typeof(IDesignerHost));
		provider?.GetService(typeof(IComponentChangeService));
		DesignerTransaction designerTransaction = null;
		if (designerHost != null)
		{
			designerTransaction = designerHost.CreateTransaction("Change " + propertyDescriptor.Name);
		}
		object value2 = propertyDescriptor.GetValue(instance);
		object value3 = ((ICloneable)value2).Clone();
		object result = gridBoundColumnsCollectionEditor._EditValue(typeDescriptorContext, windowsFormsEditorServiceContainer, value3);
		if (windowsFormsEditorServiceContainer.DialogResult == DialogResult.OK)
		{
			try
			{
				propertyDescriptor.SetValue(instance, value3);
			}
			finally
			{
				designerTransaction?.Commit();
			}
			if (instance is Control control)
			{
				control.Invalidate();
			}
			return result;
		}
		designerTransaction?.Cancel();
		return value2;
	}
}
