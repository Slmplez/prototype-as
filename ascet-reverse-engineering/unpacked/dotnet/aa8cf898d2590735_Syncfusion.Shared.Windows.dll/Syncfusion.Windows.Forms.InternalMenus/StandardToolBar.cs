using System.Drawing;
using System.Resources;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.InternalMenus;

internal class StandardToolBar : ToolBar
{
	public StandardToolBar(ResourceManager manager, ToolBarItemStructCollection items)
	{
		new ToolTip();
		base.Name = items.ToolBarName;
		base.Height = 23;
		base.ButtonSize = new Size(23, 23);
		base.Appearance = ToolBarAppearance.Flat;
		int num = 0;
		ToolBarItemStructCollection.ToolBarItemStructEnumerator enumerator = items.GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Current.shortcutText == "")
			{
				base.Buttons.Add(new ToolBarButtonSeperator());
				continue;
			}
			num = Images.ImageCollection.IndexOf(enumerator.Current.iconResource, addIfNotFound: true, manager);
			RichToolBarButton richToolBarButton = new RichToolBarButton(enumerator.Current.shortcutText, num);
			richToolBarButton.Tag = new ActionInfo(MenuLoader.EventActionNamespace + enumerator.Current.eventHandler, MenuLoader.ParentObject, richToolBarButton);
			string text;
			if ((text = enumerator.Current.style.Trim().ToLower()) != null && text == "togglebutton")
			{
				richToolBarButton.Style = ToolBarButtonStyle.ToggleButton;
			}
			else
			{
				richToolBarButton.Style = ToolBarButtonStyle.PushButton;
			}
			base.Buttons.Add(richToolBarButton);
		}
		base.ImageList = Images.CurrentImageList;
		base.ButtonClick += ToolBarClickEvent;
	}

	private void ToolBarClickEvent(object sender, ToolBarButtonClickEventArgs e)
	{
		if (e.Button.Tag != null)
		{
			((ActionInfo)e.Button.Tag).EventHandler.DynamicInvoke(sender, e);
		}
	}
}
