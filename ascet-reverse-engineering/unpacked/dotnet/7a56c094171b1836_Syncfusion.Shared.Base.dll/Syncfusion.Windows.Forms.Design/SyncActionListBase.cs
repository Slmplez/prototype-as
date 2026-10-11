using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Design;

public abstract class SyncActionListBase<ComponentType> : DesignerActionList where ComponentType : Component
{
	private ComponentType designerComponentType = null;

	private DesignerActionService designerActionService;

	private DesignerActionItemCollection actonListItems;

	public ComponentType Control => designerComponentType;

	private Control control => designerComponentType as Control;

	public SyncActionListBase(IComponent component)
		: base(component)
	{
		designerComponentType = component as ComponentType;
		designerActionService = GetService(typeof(DesignerActionService)) as DesignerActionService;
	}

	protected PropertyDescriptor GetProperty(string propertyName)
	{
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(designerComponentType)[propertyName];
		if (propertyDescriptor == null)
		{
			throw new ArgumentException("Property " + propertyName + " not found in " + typeof(ComponentType).Name);
		}
		return propertyDescriptor;
	}

	protected void SetValue(string propertyName, object value)
	{
		GetProperty(propertyName).SetValue(designerComponentType, value);
		if (GetService(typeof(DesignerActionUIService)) is DesignerActionUIService designerActionUIService)
		{
			designerActionUIService.Refresh(base.Component);
		}
	}

	protected object GetValue(string propertyName)
	{
		return GetProperty(propertyName).GetValue(designerComponentType);
	}

	protected virtual void InitializeActionList()
	{
	}

	public sealed override DesignerActionItemCollection GetSortedActionItems()
	{
		actonListItems = new DesignerActionItemCollection();
		InitializeActionList();
		return actonListItems;
	}

	protected void AddDesignerActionHeaderItem(string headerText)
	{
		actonListItems.Add(new DesignerActionHeaderItem(headerText));
	}

	protected void AddDesignerActionPropertyItem(string propertyName, string displayText, string categoryText, string descriptionText)
	{
		actonListItems.Add(new DesignerActionPropertyItem(propertyName, displayText, categoryText, descriptionText));
	}

	protected void AddDesignerActionTextItem(string text, string categoryText)
	{
		actonListItems.Add(new DesignerActionTextItem(text, categoryText));
	}

	protected void AddDesignerActionMethodItem(string methodName, string displayText, string categoryText, string descriptionText)
	{
		actonListItems.Add(new DesignerActionMethodItem(this, methodName, displayText, categoryText, descriptionText));
	}
}
