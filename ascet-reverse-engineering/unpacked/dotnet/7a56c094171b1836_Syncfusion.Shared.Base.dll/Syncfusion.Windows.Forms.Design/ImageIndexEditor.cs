using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Design;

[DocumentationExclude]
public class ImageIndexEditor : UITypeEditor
{
	public const string DEF_IMGLIST_PROP_NAME = "ImageList";

	private ImageList currentImageList;

	private object currentInstance;

	private UITypeEditor imageEditor;

	internal static readonly string[] s_aImgListPropNames = new string[1] { "ImageList" };

	protected virtual string[] ImageListPropertyNames => s_aImgListPropNames;

	public ImageIndexEditor()
	{
		imageEditor = (UITypeEditor)TypeDescriptor.GetEditor(typeof(Image), typeof(UITypeEditor));
	}

	protected virtual bool IsPropertyValidForInstance(object instance, string sProperty)
	{
		Type type = instance.GetType();
		PropertyInfo property = type.GetProperty(sProperty, typeof(ImageList));
		return null != property;
	}

	public override void PaintValue(PaintValueEventArgs e)
	{
		if (imageEditor != null && e.Value is int)
		{
			Image image = GetImage(e.Context, (int)e.Value);
			if (image != null)
			{
				imageEditor.PaintValue(new PaintValueEventArgs(e.Context, image, e.Graphics, e.Bounds));
			}
		}
	}

	public override bool GetPaintValueSupported(ITypeDescriptorContext context)
	{
		if (imageEditor != null)
		{
			return imageEditor.GetPaintValueSupported(context);
		}
		return false;
	}

	protected virtual object GetParentInstance(object instance, PropertyDescriptorCollection propertyDescriptorCollection)
	{
		return propertyDescriptorCollection["Parent"]?.GetValue(instance);
	}

	private Image GetImage(ITypeDescriptorContext context, int index)
	{
		Image result = null;
		object obj = context.Instance;
		if (index < 0)
		{
			return result;
		}
		currentInstance = obj;
		PropertyDescriptor propertyDescriptor = null;
		bool flag = false;
		while (!flag && obj != null)
		{
			PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(obj);
			string[] imageListPropertyNames = ImageListPropertyNames;
			foreach (string text in imageListPropertyNames)
			{
				if (!IsPropertyValidForInstance(obj, text))
				{
					continue;
				}
				PropertyDescriptor propertyDescriptor2 = properties[text];
				if (propertyDescriptor2 != null && typeof(ImageList).IsAssignableFrom(propertyDescriptor2.PropertyType))
				{
					propertyDescriptor = propertyDescriptor2;
				}
				else
				{
					foreach (PropertyDescriptor item in properties)
					{
						if (typeof(ImageList).IsAssignableFrom(item.PropertyType))
						{
							propertyDescriptor = item;
						}
					}
				}
				if (propertyDescriptor != null)
				{
					currentImageList = (ImageList)propertyDescriptor.GetValue(obj);
					flag = null != currentImageList;
					if (flag)
					{
						break;
					}
				}
			}
			if (!flag)
			{
				obj = GetParentInstance(obj, properties);
			}
		}
		if (currentImageList != null && index < currentImageList.Images.Count)
		{
			result = currentImageList.Images[index];
		}
		return result;
	}
}
