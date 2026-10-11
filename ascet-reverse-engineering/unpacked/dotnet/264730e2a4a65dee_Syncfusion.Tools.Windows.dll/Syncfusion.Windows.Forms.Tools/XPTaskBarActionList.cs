using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class XPTaskBarActionList : SyncActionListBase<XPTaskBar>
{
	public string Name
	{
		get
		{
			string result = string.Empty;
			if (base.Control != null)
			{
				_ = base.Control;
				result = base.Control.Name;
			}
			return result;
		}
		set
		{
			SetValue("Name", value);
		}
	}

	public DockStyle Dock
	{
		get
		{
			DockStyle result = DockStyle.None;
			if (base.Control != null)
			{
				XPTaskBar xPTaskBar = base.Control;
				result = xPTaskBar.Dock;
			}
			return result;
		}
		set
		{
			SetValue("Dock", value);
		}
	}

	public Padding Padding
	{
		get
		{
			Padding result = Padding.Empty;
			if (base.Control != null)
			{
				XPTaskBar xPTaskBar = base.Control;
				result = xPTaskBar.Padding;
			}
			return result;
		}
		set
		{
			SetValue("Padding", value);
		}
	}

	public int VerticalPadding
	{
		get
		{
			int result = 0;
			if (base.Control != null)
			{
				XPTaskBar xPTaskBar = base.Control;
				result = xPTaskBar.VerticalPadding;
			}
			return result;
		}
		set
		{
			SetValue("VerticalPadding", value);
		}
	}

	public bool AutoScroll
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				XPTaskBar xPTaskBar = base.Control;
				result = xPTaskBar.AutoScroll;
			}
			return result;
		}
		set
		{
			SetValue("AutoScroll", value);
		}
	}

	public Color BackColor
	{
		get
		{
			Color result = Color.Empty;
			if (base.Control != null)
			{
				XPTaskBar xPTaskBar = base.Control;
				result = xPTaskBar.BackColor;
			}
			return result;
		}
		set
		{
			SetValue("BackColor", value);
		}
	}

	public ImageList HeaderImageList
	{
		get
		{
			ImageList result = null;
			if (base.Control != null)
			{
				XPTaskBar xPTaskBar = base.Control;
				result = xPTaskBar.HeaderImageList;
			}
			return result;
		}
		set
		{
			SetValue("HeaderImageList", value);
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				XPTaskBar xPTaskBar = base.Control;
				result = xPTaskBar.ThemesEnabled;
			}
			return result;
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public bool VerticalLayout
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				XPTaskBar xPTaskBar = base.Control;
				result = xPTaskBar.VerticalLayout;
			}
			return result;
		}
		set
		{
			SetValue("VerticalLayout", value);
		}
	}

	public bool AutoPersistStates
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				XPTaskBar xPTaskBar = base.Control;
				result = xPTaskBar.AutoPersistStates;
			}
			return result;
		}
		set
		{
			SetValue("AutoPersistStates", value);
		}
	}

	public XPTaskBarActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - XPTaskBar");
		AddDesignerActionPropertyItem("Name", "Name", "Misc", "Specifies the name of the control.");
		AddDesignerActionMethodItem("AddTaskBox", "Add TaskBarBox", "Misc", "Adds new XPTaskBarBoxes.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("BackColor", "BackColor", "Appearance", "Specifies the BackColor of XPTaskBar.");
		AddDesignerActionPropertyItem("HeaderImageList", "Header ImageList", "Appearance", "Specifies the imageList used for Header.");
		AddDesignerActionPropertyItem("ThemesEnabled", "Themes Enabled", "Appearance", "Specifies whether themes should be enabled.");
		AddDesignerActionPropertyItem("VerticalLayout", "Vertical Layout", "Appearance", "Specifies the layout of XPTaskBarBoxes.");
		AddDesignerActionPropertyItem("AutoPersistStates", "AutoPersistStates", "Appearance", "Specifies whether XPTaskBarBoxes state should be persisted.");
		AddDesignerActionHeaderItem("Layout");
		AddDesignerActionPropertyItem("Dock", "Dock", "Layout", "Defines which borders of the control are to be bound to the container.");
		AddDesignerActionPropertyItem("Padding", "Padding", "Layout", "Specifies the spacing between the borders and XPTaskBarBoxes.");
		AddDesignerActionPropertyItem("VerticalPadding", "Vertical Padding", "Layout", "Specfies the spacing between XPTaskBarBoxes.");
		AddDesignerActionPropertyItem("AutoScroll", "Auto Scroll", "Layout", "Specfies whether AutoScroll should be enabled.");
	}

	public void AddTaskBox()
	{
		XPTaskBar xPTaskBar = (XPTaskBar)base.Component;
		_ = TypeDescriptor.GetProperties(base.Component)["Controls"];
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		if (designerHost == null)
		{
			return;
		}
		DesignerTransaction designerTransaction = null;
		try
		{
			try
			{
				designerTransaction = designerHost.CreateTransaction("Add task menu category to " + base.Component.Site.Name);
			}
			catch (CheckoutException ex)
			{
				CheckoutException ex2 = ex;
				if (ex2 == CheckoutException.Canceled)
				{
					throw ex2;
				}
			}
			XPTaskBarBox xPTaskBarBox = (XPTaskBarBox)designerHost.CreateComponent(GetChildType());
			string text = null;
			PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(xPTaskBarBox)["Name"];
			if (propertyDescriptor != null && propertyDescriptor.PropertyType == typeof(string))
			{
				text = (string)propertyDescriptor.GetValue(xPTaskBarBox);
			}
			if (text != null)
			{
				xPTaskBarBox.Text = text;
			}
			xPTaskBar.Controls.Add(xPTaskBarBox);
			if (!xPTaskBar.ThemesEnabled && xPTaskBar.Style == XPTaskBarStyle.Office2007)
			{
				xPTaskBarBox.ResetPADY();
			}
		}
		finally
		{
			designerTransaction?.Commit();
		}
	}

	private Type GetChildType()
	{
		Type result = typeof(XPTaskBarBox);
		object[] customAttributes = base.Component.GetType().GetCustomAttributes(typeof(DefaultChildTypeAttribute), inherit: true);
		if (customAttributes.Length > 0)
		{
			DefaultChildTypeAttribute defaultChildTypeAttribute = customAttributes[0] as DefaultChildTypeAttribute;
			if (!typeof(XPTaskBarBox).IsAssignableFrom(defaultChildTypeAttribute.ChildType))
			{
				MessageBox.Show("Specified custom type " + defaultChildTypeAttribute.ChildType.ToString() + " is not derived from XPTaskBarBox. Creating a XPTaskBarBox instance.", "XPTaskBar designer warning:");
			}
			else
			{
				result = defaultChildTypeAttribute.ChildType;
			}
		}
		return result;
	}
}
