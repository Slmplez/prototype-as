using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class TabControlActionList : SyncActionListBase<TabControlAdv>
{
	public enum TabStyles
	{
		TabRenderer3D,
		TabRenderer2D,
		TabRendererWorkbookMode,
		OneNoteStyleRenderer,
		OneNoteStyleFlatTabsRenderer,
		TabRendererOffice2003,
		TabRendererWhidbey,
		TabRendererDockingWhidbey,
		TabRendererDockingWhidbeyBeta,
		TabRendererIE7,
		TabRendererOffice2007,
		TabRendererVS2008,
		TabRendererBlendDark,
		TabRendererBlendLight,
		TabRendererVS2010
	}

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

	public TabPageAdvCollection TabPages
	{
		get
		{
			TabPageAdvCollection result = null;
			if (base.Control != null)
			{
				_ = base.Control;
				result = base.Control.TabPages;
			}
			return result;
		}
		set
		{
			SetValue("TabPages", value);
		}
	}

	public TabStyles TabStyle
	{
		get
		{
			TabStyles result = TabStyles.TabRenderer3D;
			if (base.Control != null)
			{
				TabControlAdv tabControlAdv = base.Control;
				string text = tabControlAdv.TabStyle.ToString();
				text = text.Replace("Syncfusion.Windows.Forms.Tools.", "");
				result = (TabStyles)Enum.Parse(typeof(TabStyles), text);
			}
			return result;
		}
		set
		{
			switch (value)
			{
			case TabStyles.TabRenderer3D:
				SetValue("TabStyle", typeof(TabRenderer3D));
				break;
			case TabStyles.TabRenderer2D:
				SetValue("TabStyle", typeof(TabRenderer2D));
				break;
			case TabStyles.TabRendererWorkbookMode:
				SetValue("TabStyle", typeof(TabRendererWorkbookMode));
				break;
			case TabStyles.OneNoteStyleRenderer:
				SetValue("TabStyle", typeof(OneNoteStyleRenderer));
				break;
			case TabStyles.OneNoteStyleFlatTabsRenderer:
				SetValue("TabStyle", typeof(OneNoteStyleFlatTabsRenderer));
				break;
			case TabStyles.TabRendererOffice2003:
				SetValue("TabStyle", typeof(TabRendererOffice2003));
				break;
			case TabStyles.TabRendererWhidbey:
				SetValue("TabStyle", typeof(TabRendererWhidbey));
				break;
			case TabStyles.TabRendererDockingWhidbeyBeta:
				SetValue("TabStyle", typeof(TabRendererDockingWhidbeyBeta));
				break;
			case TabStyles.TabRendererDockingWhidbey:
				SetValue("TabStyle", typeof(TabRendererDockingWhidbey));
				break;
			case TabStyles.TabRendererIE7:
				SetValue("TabStyle", typeof(TabRendererIE7));
				break;
			case TabStyles.TabRendererOffice2007:
				SetValue("TabStyle", typeof(TabRendererOffice2007));
				break;
			case TabStyles.TabRendererVS2008:
				SetValue("TabStyle", typeof(TabRendererVS2008));
				break;
			case TabStyles.TabRendererBlendDark:
				SetValue("TabStyle", typeof(TabRendererBlendDark));
				break;
			case TabStyles.TabRendererBlendLight:
				SetValue("TabStyle", typeof(TabRendererBlendLight));
				break;
			case TabStyles.TabRendererVS2010:
				SetValue("TabStyle", typeof(TabRendererVS2010));
				break;
			}
		}
	}

	public TabAlignment Alignment
	{
		get
		{
			TabAlignment result = TabAlignment.Top;
			if (base.Control != null)
			{
				TabControlAdv tabControlAdv = base.Control;
				result = tabControlAdv.Alignment;
			}
			return result;
		}
		set
		{
			SetValue("Alignment", value);
		}
	}

	public ImageList ImageList
	{
		get
		{
			ImageList result = null;
			if (base.Control != null)
			{
				TabControlAdv tabControlAdv = base.Control;
				result = tabControlAdv.ImageList;
			}
			return result;
		}
		set
		{
			SetValue("ImageList", value);
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				TabControlAdv tabControlAdv = base.Control;
				result = tabControlAdv.ThemesEnabled;
			}
			return result;
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public bool LabelEdit
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				TabControlAdv tabControlAdv = base.Control;
				result = tabControlAdv.LabelEdit;
			}
			return result;
		}
		set
		{
			SetValue("LabelEdit", value);
		}
	}

	public bool ShowScroll
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				TabControlAdv tabControlAdv = base.Control;
				result = tabControlAdv.ShowScroll;
			}
			return result;
		}
		set
		{
			SetValue("ShowScroll", value);
		}
	}

	public bool HotTrack
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				TabControlAdv tabControlAdv = base.Control;
				result = tabControlAdv.HotTrack;
			}
			return result;
		}
		set
		{
			SetValue("HotTrack", value);
		}
	}

	public Color TabPanelBackColor
	{
		get
		{
			Color result = Color.Empty;
			if (base.Control != null)
			{
				TabControlAdv tabControlAdv = base.Control;
				result = tabControlAdv.TabPanelBackColor;
			}
			return result;
		}
		set
		{
			SetValue("TabPanelBackColor", value);
		}
	}

	public Color ActiveTabColor
	{
		get
		{
			Color result = Color.Empty;
			if (base.Control != null)
			{
				TabControlAdv tabControlAdv = base.Control;
				result = tabControlAdv.ActiveTabColor;
			}
			return result;
		}
		set
		{
			SetValue("ActiveTabColor", value);
		}
	}

	public Color InactiveTabColor
	{
		get
		{
			Color result = Color.Empty;
			if (base.Control != null)
			{
				TabControlAdv tabControlAdv = base.Control;
				result = tabControlAdv.InactiveTabColor;
			}
			return result;
		}
		set
		{
			SetValue("InactiveTabColor", value);
		}
	}

	public RelativeImageAlignment ImageAlignmentR
	{
		get
		{
			RelativeImageAlignment result = RelativeImageAlignment.LeftOfText;
			if (base.Control != null)
			{
				TabControlAdv tabControlAdv = base.Control;
				result = tabControlAdv.ImageAlignmentR;
			}
			return result;
		}
		set
		{
			SetValue("ImageAlignmentR", value);
		}
	}

	public bool RotateTextWhenVertical
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				TabControlAdv tabControlAdv = base.Control;
				result = tabControlAdv.RotateTextWhenVertical;
			}
			return result;
		}
		set
		{
			SetValue("RotateTextWhenVertical", value);
		}
	}

	public DockStyle Dock
	{
		get
		{
			DockStyle result = DockStyle.None;
			if (base.Control != null)
			{
				TabControlAdv tabControlAdv = base.Control;
				result = tabControlAdv.Dock;
			}
			return result;
		}
		set
		{
			SetValue("Dock", value);
		}
	}

	public TabControlActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - TabControlAdv");
		AddDesignerActionPropertyItem("Name", "Name", "Misc", "Specifies the name of the control");
		AddDesignerActionPropertyItem("Alignment", "Alignment", "Misc", "Specifies the alignment of tabs.");
		AddDesignerActionPropertyItem("ImageList", "ImageList", "Misc", "Specifies the imageList to be associated.");
		AddDesignerActionPropertyItem("TabPages", "TabPagesCollection", "Misc", "Indicates the collection of tabPages");
		AddDesignerActionMethodItem("AddTab", "Add Tab", "Misc", "Adds a new tabPage.");
		AddDesignerActionMethodItem("RemoveTab", "Remove Tab", "Misc", "Removes selected tabPage.");
		AddDesignerActionHeaderItem("Style");
		AddDesignerActionPropertyItem("TabStyle", "TabStyle", "Style", "Specifies the style for the tabs.");
		AddDesignerActionHeaderItem("Color");
		AddDesignerActionPropertyItem("TabPanelBackColor", "TabPanelBackColor", "Color", "Specifies the BackColor for the tabPanel.");
		AddDesignerActionPropertyItem("ActiveTabColor", "ActiveTabColor", "Color", "Specifies the ActiveTabColor for the tabs.");
		AddDesignerActionPropertyItem("InactiveTabColor", "InactiveTabColor", "Color", "Specifies the InactiveTabColor for the tabs.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("ImageAlignmentR", "ImageAlignment", "Appearance", "Specifies alignment of image with respect to tab text.");
		AddDesignerActionPropertyItem("ThemesEnabled", "Themes Enabled", "Appearance", "Specifies whether themes should be enabled.");
		AddDesignerActionPropertyItem("RotateTextWhenVertical", "RotateTextWhenVertical", "Appearance", "Specifies whether to rotate the tabs.");
		AddDesignerActionPropertyItem("ShowScroll", "Show Scroll", "Appearance", "Specifies whether the scroll buttons should be visible.");
		AddDesignerActionPropertyItem("HotTrack", "HotTrack", "Appearance", "Specifies whether hotTrack should be enabled.");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("LabelEdit", "Label Edit", "Behavior", "Specifies whether Label Edit should be enabled.");
		AddDesignerActionHeaderItem("Layout");
		AddDesignerActionPropertyItem("Dock", "Dock", "Layout", "Defines which borders of the control are to be bound to the container.");
	}

	public void AddTab()
	{
		if (base.Control == null)
		{
			return;
		}
		_ = base.Control;
		TabControlAdv tabControlAdv = (TabControlAdv)base.Component;
		MemberDescriptor member = TypeDescriptor.GetProperties(base.Component)["Controls"];
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
				designerTransaction = designerHost.CreateTransaction("Add tab to " + base.Component.Site.Name);
			}
			catch (CheckoutException ex)
			{
				CheckoutException ex2 = ex;
				if (ex2 == CheckoutException.Canceled)
				{
					throw ex2;
				}
			}
			TabPageAdv tabPageAdv = (TabPageAdv)designerHost.CreateComponent(GetChildType());
			string text = null;
			PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(tabPageAdv)["Name"];
			if (propertyDescriptor != null && propertyDescriptor.PropertyType == typeof(string))
			{
				text = (string)propertyDescriptor.GetValue(tabPageAdv);
			}
			if (text != null)
			{
				tabPageAdv.Text = text;
			}
			tabControlAdv.Controls.Add(tabPageAdv);
			RaiseComponentChanged(member, null, null);
		}
		finally
		{
			designerTransaction?.Commit();
		}
	}

	protected void RaiseComponentChanged(MemberDescriptor member, object oldValue, object newValue)
	{
		((IComponentChangeService)GetService(typeof(IComponentChangeService)))?.OnComponentChanged(base.Component, member, oldValue, newValue);
	}

	private Type GetChildType()
	{
		Type result = typeof(TabPageAdv);
		object[] customAttributes = base.Component.GetType().GetCustomAttributes(typeof(DefaultChildTypeAttribute), inherit: true);
		if (customAttributes.Length > 0)
		{
			DefaultChildTypeAttribute defaultChildTypeAttribute = customAttributes[0] as DefaultChildTypeAttribute;
			if (!typeof(TabPageAdv).IsAssignableFrom(defaultChildTypeAttribute.ChildType))
			{
				MessageBox.Show("Specified custom type " + defaultChildTypeAttribute.ChildType.ToString() + " is not derived from TabPageAdv. Creating a TabPageAdv instance.", "TabControlAdv designer warning:");
			}
			else
			{
				result = defaultChildTypeAttribute.ChildType;
			}
		}
		return result;
	}

	public void RemoveTab()
	{
		TabControlAdv tabControlAdv = (TabControlAdv)base.Component;
		if (tabControlAdv == null || tabControlAdv.TabPages.Count == 0)
		{
			return;
		}
		MemberDescriptor member = TypeDescriptor.GetProperties(base.Component)["Controls"];
		TabPageAdv selectedTab = tabControlAdv.SelectedTab;
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
				designerTransaction = designerHost.CreateTransaction("Remove " + selectedTab.Site.Name + " from " + base.Component.Site.Name);
			}
			catch (CheckoutException ex)
			{
				CheckoutException ex2 = ex;
				if (ex2 != CheckoutException.Canceled)
				{
					throw ex2;
				}
			}
			designerHost.DestroyComponent(selectedTab);
			RaiseComponentChanged(member, null, null);
		}
		finally
		{
			designerTransaction?.Commit();
		}
	}
}
