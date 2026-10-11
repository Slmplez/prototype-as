using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class RibbonControlDescriptorService : ITypeDescriptorFilterService
{
	private class CustomDescriptor : PropertyDescriptor
	{
		private PropertyDescriptor m_baseDescriptor;

		public override Type ComponentType => m_baseDescriptor.ComponentType;

		public override Type PropertyType => m_baseDescriptor.PropertyType;

		public override bool IsReadOnly => m_baseDescriptor.IsReadOnly;

		public override bool IsBrowsable => m_baseDescriptor.IsBrowsable;

		public CustomDescriptor(PropertyDescriptor baseDescriptor)
			: this(baseDescriptor, new Attribute[0])
		{
		}

		public CustomDescriptor(PropertyDescriptor baseDescriptor, Attribute[] attributes)
			: base(baseDescriptor, attributes)
		{
			m_baseDescriptor = baseDescriptor;
		}

		public override object GetValue(object component)
		{
			return m_baseDescriptor.GetValue(component);
		}

		public override void SetValue(object component, object value)
		{
			m_baseDescriptor.SetValue(component, value);
		}

		public override bool CanResetValue(object component)
		{
			return m_baseDescriptor.CanResetValue(component);
		}

		public override void ResetValue(object component)
		{
			m_baseDescriptor.ResetValue(component);
		}

		public override bool ShouldSerializeValue(object component)
		{
			return m_baseDescriptor.ShouldSerializeValue(component);
		}
	}

	private ITypeDescriptorFilterService m_baseSvc;

	private static string[] sQuickItemHiddenProperties = new string[6] { "Text", "Image", "Enabled", "DisplayStyle", "DropDownItems", "RightToLeft" };

	private static string[] sToolStripExHiddenProperties = new string[1] { "Dock" };

	private static string sTextProperty = "Text";

	protected RibbonControlDescriptorService(ITypeDescriptorFilterService baseSvc)
	{
		m_baseSvc = baseSvc;
	}

	public static void Initialize(ISite site)
	{
		if (site == null || !(site.GetService(typeof(IServiceContainer)) is IServiceContainer serviceContainer))
		{
			return;
		}
		Type typeFromHandle = typeof(RibbonControlDescriptorService);
		if (serviceContainer.GetService(typeFromHandle) == null)
		{
			Type typeFromHandle2 = typeof(ITypeDescriptorFilterService);
			if (serviceContainer.GetService(typeFromHandle2) is ITypeDescriptorFilterService baseSvc)
			{
				RibbonControlDescriptorService serviceInstance = new RibbonControlDescriptorService(baseSvc);
				serviceContainer.RemoveService(typeFromHandle2);
				serviceContainer.AddService(typeFromHandle2, serviceInstance);
				serviceContainer.AddService(typeFromHandle, serviceInstance);
			}
		}
	}

	bool ITypeDescriptorFilterService.FilterAttributes(IComponent component, IDictionary attributes)
	{
		return m_baseSvc.FilterAttributes(component, attributes);
	}

	bool ITypeDescriptorFilterService.FilterEvents(IComponent component, IDictionary events)
	{
		return m_baseSvc.FilterEvents(component, events);
	}

	bool ITypeDescriptorFilterService.FilterProperties(IComponent component, IDictionary properties)
	{
		bool result = m_baseSvc.FilterProperties(component, properties);
		if (component is IQuickItem)
		{
			UpdateQuickItemProperties(component, properties);
		}
		if (component is ToolStripItem)
		{
			UpdateToolStripItemProperties(component, properties);
		}
		if (component is ToolStripEx)
		{
			UpdateToolStripExProperties(component, properties);
		}
		return result;
	}

	private void UpdateQuickItemProperties(IComponent component, IDictionary properties)
	{
		string[] array = sQuickItemHiddenProperties;
		foreach (string key in array)
		{
			if (properties[key] is PropertyDescriptor baseDescriptor)
			{
				Attribute[] attributes = new Attribute[2]
				{
					new BrowsableAttribute(browsable: false),
					new DesignerSerializationVisibilityAttribute(DesignerSerializationVisibility.Hidden)
				};
				properties[key] = new CustomDescriptor(baseDescriptor, attributes);
			}
		}
	}

	private void UpdateToolStripItemProperties(IComponent component, IDictionary properties)
	{
		if (properties[sTextProperty] is PropertyDescriptor baseDescriptor)
		{
			Attribute[] attributes = new Attribute[1]
			{
				new EditorAttribute(typeof(MultilineStringEditor), typeof(UITypeEditor))
			};
			properties[sTextProperty] = new CustomDescriptor(baseDescriptor, attributes);
		}
	}

	private void UpdateToolStripExProperties(IComponent component, IDictionary properties)
	{
		if (!(component is ToolStripEx toolStripEx) || !(toolStripEx.Parent is RibbonPanel))
		{
			return;
		}
		string[] array = sToolStripExHiddenProperties;
		foreach (string key in array)
		{
			if (properties[key] is PropertyDescriptor baseDescriptor)
			{
				Attribute[] attributes = new Attribute[1]
				{
					new BrowsableAttribute(browsable: false)
				};
				properties[key] = new CustomDescriptor(baseDescriptor, attributes);
			}
		}
	}
}
