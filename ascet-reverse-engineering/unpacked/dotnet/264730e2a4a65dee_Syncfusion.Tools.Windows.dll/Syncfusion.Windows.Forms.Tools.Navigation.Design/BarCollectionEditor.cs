using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Design;

internal class BarCollectionEditor : UITypeEditor
{
	private IWindowsFormsEditorService _editorService;

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context != null && context.Instance != null && provider != null)
		{
			_editorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (_editorService != null && context.Instance is IContainBars && context.Instance is NavigationView navigationView)
			{
				BarCollectionEditorForm barCollectionEditorForm = new BarCollectionEditorForm(provider, navigationView);
				_editorService.ShowDialog(barCollectionEditorForm);
				if (barCollectionEditorForm.IsDirty)
				{
					ISite site = navigationView.Site;
					if (site != null)
					{
						IComponentChangeService componentChangeService = (IComponentChangeService)site.GetService(typeof(IComponentChangeService));
						if (componentChangeService != null)
						{
							PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(navigationView);
							PropertyDescriptor member = properties.Find("Bars", ignoreCase: false);
							componentChangeService.OnComponentChanging(navigationView, member);
							componentChangeService.OnComponentChanged(navigationView, member, navigationView.Bars, navigationView.Bars);
						}
					}
				}
			}
		}
		return value;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.Modal;
	}
}
