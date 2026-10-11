using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class SplashControlDesigner : ComponentDesigner
{
	protected DesignerVerb dvDisplaySplash;

	protected DesignerVerb dvCancelSplash;

	protected DesignerVerbCollection dvcVerbs;

	private Point customPanelLocation = Point.Empty;

	private bool customSplashUsed;

	public override DesignerVerbCollection Verbs => dvcVerbs;

	public SplashControlDesigner()
	{
		dvDisplaySplash = new DesignerVerb("Preview Splash", HandlePreviewSplashEvent);
		dvCancelSplash = new DesignerVerb("Cancel Splash", HandleCancelSplashEvent);
		dvCancelSplash.Enabled = false;
		DesignerVerb[] value = new DesignerVerb[2] { dvDisplaySplash, dvCancelSplash };
		dvcVerbs = new DesignerVerbCollection(value);
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		SplashControl splashControl = base.Component as SplashControl;
		IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
		if (!(designerHost.RootComponent is Form hostForm))
		{
			throw new ApplicationException("A SplashControl host must be a top-level form.");
		}
		splashControl.HostForm = hostForm;
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentChanged += IComponentChangeService_ComponentChanged;
		}
		if (GetService(typeof(ISelectionService)) is ISelectionService selectionService)
		{
			selectionService.SelectionChanged += ISelectionService_SelectionChanged;
		}
	}

	protected override void Dispose(bool bdisposing)
	{
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentChanged -= IComponentChangeService_ComponentChanged;
		}
		if (GetService(typeof(ISelectionService)) is ISelectionService selectionService)
		{
			selectionService.SelectionChanged -= ISelectionService_SelectionChanged;
		}
		base.Dispose(bdisposing);
	}

	private void IComponentChangeService_ComponentChanged(object sender, ComponentChangedEventArgs e)
	{
		SplashControl splashControl = base.Component as SplashControl;
		if (e.Component == base.Component)
		{
			if (splashControl.UseCustomSplashPanel)
			{
				dvDisplaySplash.Enabled = false;
			}
			else
			{
				dvDisplaySplash.Enabled = true;
			}
		}
	}

	private void ISelectionService_SelectionChanged(object sender, EventArgs e)
	{
		if (GetService(typeof(ISelectionService)) is ISelectionService)
		{
			SplashControl splashControl = base.Component as SplashControl;
			if (splashControl.UseCustomSplashPanel)
			{
				dvDisplaySplash.Enabled = false;
			}
			else
			{
				dvDisplaySplash.Enabled = true;
			}
		}
	}

	private void HandlePreviewSplashEvent(object sender, EventArgs e)
	{
		SplashControl splashControl = base.Component as SplashControl;
		splashControl.SplashClosed += HandleSplashClosedEvent;
		if (splashControl.UseCustomSplashPanel && splashControl.CustomSplashPanel != null)
		{
			customPanelLocation = splashControl.CustomSplashPanel.Location;
			customSplashUsed = true;
		}
		splashControl.ShowSplash(disableOwner: false);
		dvDisplaySplash.Enabled = false;
		dvCancelSplash.Enabled = true;
	}

	private void HandleCancelSplashEvent(object sender, EventArgs e)
	{
		if (!dvDisplaySplash.Enabled)
		{
			SplashControl splashControl = base.Component as SplashControl;
			splashControl.HideSplash();
		}
		dvCancelSplash.Enabled = false;
	}

	private void HandleSplashClosedEvent(object sender, EventArgs e)
	{
		if (customSplashUsed)
		{
			customSplashUsed = false;
			SplashControl splashControl = base.Component as SplashControl;
			if (splashControl.HostForm != null && !splashControl.HostForm.Controls.Contains(splashControl.CustomSplashPanel))
			{
				splashControl.HostForm.Controls.Add(splashControl.CustomSplashPanel);
				splashControl.CustomSplashPanel.Location = customPanelLocation;
			}
		}
		dvCancelSplash.Enabled = false;
		dvDisplaySplash.Enabled = true;
	}

	protected override void PreFilterProperties(IDictionary properties)
	{
		base.PreFilterProperties(properties);
		RemovePropertyBrowsable(strcolln: new string[25]
		{
			"RightToLeft", "ContextMenu", "ImeMode", "TabStop", "Dock", "DockPadding", "Anchor", "AutoScroll", "CausesValidation", "AllowDrop",
			"BackgroundImage", "Cursor", "DynamicProperties", "DataBindings", "Size", "Location", "AccessibleName", "AccessibleDescription", "AccessibleRole", "TabIndex",
			"Text", "Visible", "Font", "ForeColor", "BackColor"
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
