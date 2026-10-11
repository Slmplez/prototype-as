using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.Design;

[DocumentationExclude]
public class TabStyleEditor : UITypeEditor
{
	private ListBox tabList;

	private string addMoreTabs = "Add Custom Tabs...";

	private IWindowsFormsEditorService editorService;

	private void InitList(object value, bool insertAddMoreTabs)
	{
		if (tabList == null)
		{
			tabList = new ListBox();
			tabList.Click += ListItemClicked;
		}
		tabList.Items.Clear();
		ArrayList registeredRenderers = TabRendererFactory.GetRegisteredRenderers(forDesignTime: true);
		RemoveInvalidTypes(registeredRenderers);
		ArrayList tabStyleNames = ReflectionHelper.GetTabStyleNames(registeredRenderers);
		foreach (object item in tabStyleNames)
		{
			tabList.Items.Add(item);
		}
		if (insertAddMoreTabs)
		{
			tabList.Items.Add(addMoreTabs);
		}
		tabList.SelectedItem = value;
		tabList.Height = 13 * (tabList.Items.Count + 1) + 3;
	}

	protected internal static void RemoveInvalidTypes(ArrayList rendererTypes)
	{
		if (rendererTypes == null || rendererTypes.Count <= 0)
		{
			return;
		}
		Type type = null;
		for (int i = 0; i < rendererTypes.Count; i++)
		{
			type = rendererTypes[i] as Type;
			if (!TabControlAdv.IsValidRendererType(type))
			{
				rendererTypes.Remove(type);
			}
		}
	}

	private void ListItemClicked(object sender, EventArgs e)
	{
		editorService.CloseDropDown();
	}

	public TabStyleEditor()
	{
		TabRenderer2D.RegisterTabType();
		TabRenderer3D.RegisterTabType();
		TabRendererWorkbookMode.RegisterTabType();
		OneNoteStyleRenderer.RegisterTabType();
		TabRendererOffice2003.RegisterTabType();
		TabRendererWhidbey.RegisterTabType();
		TabRendererIE7.RegisterTabType();
		TabRendererOffice2007.RegisterTabType();
		TabRendererDockingWhidbeyBeta.RegisterTabType();
		TabRendererDockingWhidbey.RegisterTabType();
		TabRendererBlendLight.RegisterTabType();
		TabRendererBlendDark.RegisterTabType();
		TabRendererVS2010.RegisterTabType();
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (provider == null)
		{
			return base.EditValue(context, provider, value);
		}
		IDesignerHost designerHost = (IDesignerHost)provider.GetService(typeof(IDesignerHost));
		TabControlAdv tabControlAdv = context.Instance as TabControlAdv;
		editorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
		if (editorService != null)
		{
			InitList(ReflectionHelper.GetTabNameFromType((Type)value), designerHost != null && tabControlAdv != null);
			editorService.DropDownControl(tabList);
			if (tabList.SelectedItem != null)
			{
				if ((string)tabList.SelectedItem == addMoreTabs)
				{
					IDesigner designer = designerHost.GetDesigner(tabControlAdv);
					if (designer != null && designer is ITabControlAdvDesigner)
					{
						((ITabControlAdvDesigner)designer).InitTypeLoaderComponent();
						MessageBox.Show("You can add your Custom Tabs (following the implementation rules specified in the TabStyle documentation) to the list of available TabStyles in the designer. To do so simply add an entry to your custom Tab class in the designTimeTabTypeLoader component's TypesToLoadList list.", "Loading Custom Tab Types");
					}
				}
				else
				{
					value = ReflectionHelper.GetTabTypeFromName((string)tabList.SelectedItem);
				}
			}
		}
		return value;
	}
}
