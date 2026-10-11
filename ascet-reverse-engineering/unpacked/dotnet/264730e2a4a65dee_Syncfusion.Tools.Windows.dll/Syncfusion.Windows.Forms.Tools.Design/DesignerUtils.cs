using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Reflection;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class DesignerUtils
{
	private static Type m_tDesignerToolStripControlHost;

	private static Type m_tToolStripItemDesigner;

	private static Type m_tToolStripItemBehavior;

	private static Type m_tToolStripItemGlyph;

	private static FieldInfo m_fiBodyGlyph;

	static DesignerUtils()
	{
		m_tDesignerToolStripControlHost = Type.GetType("System.Windows.Forms.Design.DesignerToolStripControlHost, System.Design");
		m_tToolStripItemDesigner = Type.GetType("System.Windows.Forms.Design.ToolStripItemDesigner, System.Design");
		m_tToolStripItemBehavior = Type.GetType("System.Windows.Forms.Design.ToolStripItemBehavior, System.Design");
		m_tToolStripItemGlyph = Type.GetType("System.Windows.Forms.Design.ToolStripItemGlyph, System.Design");
		if (m_tToolStripItemDesigner != null)
		{
			m_fiBodyGlyph = m_tToolStripItemDesigner.GetField("bodyGlyph", BindingFlags.Instance | BindingFlags.NonPublic);
		}
	}

	public static BehaviorService GetBehaviorService(IComponent item)
	{
		if (item != null && item.Site != null)
		{
			return item.Site.GetService(typeof(BehaviorService)) as BehaviorService;
		}
		return null;
	}

	public static ISelectionService GetSelectionService(IComponent item)
	{
		if (item != null && item.Site != null)
		{
			return item.Site.GetService(typeof(ISelectionService)) as ISelectionService;
		}
		return null;
	}

	public static DesignerActionService GetDesignerActionService(IComponent item)
	{
		if (item != null && item.Site != null)
		{
			return item.Site.GetService(typeof(DesignerActionService)) as DesignerActionService;
		}
		return null;
	}

	public static IMenuCommandService GetMenuCommandService(IComponent item)
	{
		if (item != null && item.Site != null)
		{
			return item.Site.GetService(typeof(IMenuCommandService)) as IMenuCommandService;
		}
		return null;
	}

	public static IComponentChangeService GetComponentChangeService(IComponent item)
	{
		if (item != null && item.Site != null)
		{
			return item.Site.GetService(typeof(IComponentChangeService)) as IComponentChangeService;
		}
		return null;
	}

	public static IDesigner GetDesigner(IComponent item)
	{
		if (item != null && item.Site != null && item.Site.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			return designerHost.GetDesigner(item);
		}
		return null;
	}

	public static IRootDesigner GetRootDesigner(IComponent item)
	{
		if (item != null && item.Site != null && item.Site.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			return designerHost.GetDesigner(designerHost.RootComponent) as IRootDesigner;
		}
		return null;
	}

	public static Control GetRootControl(IComponent item)
	{
		IRootDesigner rootDesigner = GetRootDesigner(item);
		if (rootDesigner != null)
		{
			return rootDesigner.Component as Control;
		}
		return null;
	}

	public static void UpdateDropDownParent(ToolStripDropDown dropDown)
	{
		Control rootControl = GetRootControl(dropDown);
		if (rootControl != null && dropDown.TopLevel)
		{
			dropDown.TopLevel = false;
			dropDown.Parent = rootControl.Parent;
		}
	}

	public static void GetAdjustedBounds(ToolStripItem item, ref Rectangle rc)
	{
		if (!(item is ToolStripControlHost) || !item.IsOnDropDown)
		{
			if (item is ToolStripMenuItem && item.IsOnDropDown)
			{
				rc.Inflate(-3, -2);
				rc.Width++;
			}
			else if (item is ToolStripControlHost && !item.IsOnDropDown)
			{
				rc.Inflate(0, -2);
			}
			else if (item is ToolStripMenuItem && !item.IsOnDropDown)
			{
				rc.Inflate(-3, -3);
			}
			else
			{
				rc.Inflate(-1, -1);
			}
		}
	}

	public static ComponentGlyph GetToolStripItemGlyph(ToolStripItem item)
	{
		ComponentGlyph componentGlyph = null;
		if (item != null && item.Site != null && m_fiBodyGlyph != null && item.Site.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost && !m_tDesignerToolStripControlHost.IsAssignableFrom(item.GetType()))
		{
			IDesigner designer = designerHost.GetDesigner(item);
			if (designer != null)
			{
				Behavior behavior = Activator.CreateInstance(m_tToolStripItemBehavior, new object[0]) as Behavior;
				object[] args = new object[4]
				{
					item,
					designer,
					Rectangle.Empty,
					behavior
				};
				if (Activator.CreateInstance(m_tToolStripItemGlyph, args) is ComponentGlyph baseGlyph)
				{
					componentGlyph = new ToolStripExItemGlyph(baseGlyph);
					m_fiBodyGlyph.SetValue(designer, componentGlyph);
				}
			}
		}
		return componentGlyph;
	}

	public static bool IsDropDownItem(ToolStripDropDown dropDown, ToolStripItem item)
	{
		if (item != null)
		{
			ToolStrip toolStrip = GetParentToolStrip(item);
			while (toolStrip != null)
			{
				if (toolStrip != dropDown)
				{
					if (toolStrip is ToolStripDropDown)
					{
						ToolStripItem ownerItem = ((ToolStripDropDown)toolStrip).OwnerItem;
						toolStrip = ((ownerItem == null) ? null : GetParentToolStrip(ownerItem));
					}
					else
					{
						toolStrip = toolStrip.Parent as ToolStrip;
					}
					continue;
				}
				return true;
			}
		}
		return false;
	}

	private static ToolStrip GetParentToolStrip(ToolStripItem item)
	{
		ToolStrip toolStrip = null;
		if (item != null)
		{
			toolStrip = item.GetCurrentParent();
			if (toolStrip == null)
			{
				toolStrip = item.Owner;
			}
		}
		return toolStrip;
	}
}
