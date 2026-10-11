using System;
using System.ComponentModel.Design;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Design;

public class CustomButtonCollectionEditor : CollectionEditor
{
	public CustomButtonCollectionEditor(Type type)
		: base(type)
	{
	}

	protected override object CreateInstance(Type itemType)
	{
		CustomButton customButton = (CustomButton)base.CreateInstance(itemType);
		if (base.Context.Instance is NavigationView navigationView)
		{
			customButton.Height = navigationView.Height;
		}
		return customButton;
	}
}
