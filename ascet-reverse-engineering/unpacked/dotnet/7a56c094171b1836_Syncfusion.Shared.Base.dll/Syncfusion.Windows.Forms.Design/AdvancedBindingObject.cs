using System;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Design;

[TypeConverter("System.Windows.Forms.Design.AdvancedBindingConverter, System.Design")]
[ToolboxItem(false)]
[DesignTimeVisible(false)]
internal class AdvancedBindingObject : ICustomTypeDescriptor, IComponent, IDisposable, ISite, IServiceProvider
{
	private ControlBindingsCollection bindings;

	private PropertyDescriptorCollection propsCollection;

	private PropertyDescriptor defaultProp;

	private bool showAll;

	private bool changed;

	private EventHandler disposed;

	public virtual string Name
	{
		get
		{
			if (bindings.Control.Site == null)
			{
				return "";
			}
			return bindings.Control.Site.Name;
		}
		set
		{
		}
	}

	public virtual ISite Site
	{
		get
		{
			return this;
		}
		set
		{
		}
	}

	bool ISite.DesignMode
	{
		get
		{
			if (bindings.Control.Site == null)
			{
				return false;
			}
			return bindings.Control.Site.DesignMode;
		}
	}

	IContainer ISite.Container
	{
		get
		{
			if (bindings.Control.Site == null)
			{
				return null;
			}
			return bindings.Control.Site.Container;
		}
	}

	IComponent ISite.Component => this;

	public ControlBindingsCollection Bindings => bindings;

	internal bool Changed
	{
		get
		{
			return changed;
		}
		set
		{
			changed = value;
		}
	}

	public bool ShowAll
	{
		get
		{
			return showAll;
		}
		set
		{
			showAll = value;
			propsCollection = null;
			defaultProp = null;
		}
	}

	public event EventHandler Disposed
	{
		add
		{
			disposed = (EventHandler)Delegate.Combine(disposed, value);
		}
		remove
		{
			disposed = (EventHandler)Delegate.Remove(disposed, value);
		}
	}

	public AdvancedBindingObject(ControlBindingsCollection bindings)
	{
		defaultProp = null;
		changed = false;
		this.bindings = bindings;
	}

	object IServiceProvider.GetService(Type service)
	{
		if (bindings.Control.Site != null)
		{
			return bindings.Control.Site.GetService(service);
		}
		return null;
	}

	void IDisposable.Dispose()
	{
		if (disposed != null)
		{
			disposed(this, EventArgs.Empty);
		}
	}

	object ICustomTypeDescriptor.GetPropertyOwner(PropertyDescriptor pd)
	{
		return this;
	}

	PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties(Attribute[] attributes)
	{
		if (propsCollection == null)
		{
			Control control = bindings.Control;
			Type type = control.GetType();
			PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(control, attributes);
			AttributeCollection attributes2 = TypeDescriptor.GetAttributes(type);
			DefaultPropertyAttribute defaultPropertyAttribute = (DefaultPropertyAttribute)attributes2[typeof(DefaultPropertyAttribute)];
			ArrayList arrayList = new ArrayList();
			for (int i = 0; i < properties.Count; i++)
			{
				if (properties[i].IsReadOnly)
				{
					continue;
				}
				bool bindable = ((BindableAttribute)properties[i].Attributes[typeof(BindableAttribute)]).Bindable;
				DesignOnlyAttribute designOnlyAttribute = (DesignOnlyAttribute)properties[i].Attributes[typeof(DesignOnlyAttribute)];
				Attribute[] attrs = new Attribute[2]
				{
					new BrowsableAttribute(browsable: false),
					new DesignerSerializationVisibilityAttribute(DesignerSerializationVisibility.Hidden)
				};
				PropertyDescriptor propertyDescriptor = properties[i];
				DesignBindingPropertyDescriptor designBindingPropertyDescriptor = new DesignBindingPropertyDescriptor(propertyDescriptor.Name, propertyDescriptor.DisplayName, propertyDescriptor, attrs);
				designBindingPropertyDescriptor.AddValueChanged(bindings, OnBindingChanged);
				if (bindable || (showAll && !designOnlyAttribute.IsDesignOnly) || !((DesignBinding)designBindingPropertyDescriptor.GetValue(this)).IsNull)
				{
					arrayList.Add(designBindingPropertyDescriptor);
					if (defaultPropertyAttribute != null && designBindingPropertyDescriptor.Name == defaultPropertyAttribute.Name)
					{
						defaultProp = designBindingPropertyDescriptor;
					}
				}
			}
			PropertyDescriptor[] array = new PropertyDescriptor[checked((uint)arrayList.Count)];
			arrayList.CopyTo(array, 0);
			propsCollection = new PropertyDescriptorCollection(array);
		}
		return propsCollection;
	}

	PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties()
	{
		return ((ICustomTypeDescriptor)this).GetProperties((Attribute[])null);
	}

	EventDescriptorCollection ICustomTypeDescriptor.GetEvents(Attribute[] attributes)
	{
		return null;
	}

	EventDescriptorCollection ICustomTypeDescriptor.GetEvents()
	{
		return null;
	}

	object ICustomTypeDescriptor.GetEditor(Type editorBaseType)
	{
		return null;
	}

	PropertyDescriptor ICustomTypeDescriptor.GetDefaultProperty()
	{
		if (defaultProp != null)
		{
			return defaultProp;
		}
		if (propsCollection != null && propsCollection.Count > 0)
		{
			return propsCollection[0];
		}
		return null;
	}

	EventDescriptor ICustomTypeDescriptor.GetDefaultEvent()
	{
		return null;
	}

	TypeConverter ICustomTypeDescriptor.GetConverter()
	{
		return null;
	}

	string ICustomTypeDescriptor.GetComponentName()
	{
		return null;
	}

	string ICustomTypeDescriptor.GetClassName()
	{
		return null;
	}

	AttributeCollection ICustomTypeDescriptor.GetAttributes()
	{
		return new AttributeCollection((Attribute[])null);
	}

	public override string ToString()
	{
		return "";
	}

	private void OnBindingChanged(object sender, EventArgs e)
	{
		changed = true;
	}
}
