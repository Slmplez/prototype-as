using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class GroupViewItemConverter : TypeConverter
{
	public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
	{
		if (sourceType == typeof(string))
		{
			return true;
		}
		return base.CanConvertFrom(context, sourceType);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor) && value is GroupViewItem)
		{
			GroupViewItem groupViewItem = (GroupViewItem)value;
			if (!groupViewItem.Visible)
			{
				ConstructorInfo constructor = typeof(GroupViewItem).GetConstructor(new Type[6]
				{
					typeof(string),
					typeof(int),
					typeof(bool),
					typeof(object),
					typeof(string),
					typeof(bool)
				});
				return new InstanceDescriptor(constructor, new object[6] { groupViewItem.Text, groupViewItem.ImageIndex, groupViewItem.Enabled, groupViewItem.Tag, groupViewItem.ToolTipText, false });
			}
			if (groupViewItem.ToolTipText != null && groupViewItem.ToolTipText.Length > 0)
			{
				ConstructorInfo constructor2 = typeof(GroupViewItem).GetConstructor(new Type[5]
				{
					typeof(string),
					typeof(int),
					typeof(bool),
					typeof(object),
					typeof(string)
				});
				return new InstanceDescriptor(constructor2, new object[5] { groupViewItem.Text, groupViewItem.ImageIndex, groupViewItem.Enabled, groupViewItem.Tag, groupViewItem.ToolTipText });
			}
			if (groupViewItem.Tag != null && groupViewItem.Tag as string != string.Empty && !groupViewItem.Enabled)
			{
				ConstructorInfo constructor3 = typeof(GroupViewItem).GetConstructor(new Type[4]
				{
					typeof(string),
					typeof(int),
					typeof(bool),
					typeof(object)
				});
				return new InstanceDescriptor(constructor3, new object[4] { groupViewItem.Text, groupViewItem.ImageIndex, groupViewItem.Enabled, groupViewItem.Tag });
			}
			if (groupViewItem.Tag != null && groupViewItem.Tag as string != string.Empty)
			{
				ConstructorInfo constructor4 = typeof(GroupViewItem).GetConstructor(new Type[3]
				{
					typeof(string),
					typeof(int),
					typeof(object)
				});
				return new InstanceDescriptor(constructor4, new object[3] { groupViewItem.Text, groupViewItem.ImageIndex, groupViewItem.Tag });
			}
			if (!groupViewItem.Enabled)
			{
				ConstructorInfo constructor5 = typeof(GroupViewItem).GetConstructor(new Type[3]
				{
					typeof(string),
					typeof(int),
					typeof(bool)
				});
				return new InstanceDescriptor(constructor5, new object[3] { groupViewItem.Text, groupViewItem.ImageIndex, groupViewItem.Enabled });
			}
			ConstructorInfo constructor6 = typeof(GroupViewItem).GetConstructor(new Type[2]
			{
				typeof(string),
				typeof(int)
			});
			return new InstanceDescriptor(constructor6, new object[2] { groupViewItem.Text, groupViewItem.ImageIndex });
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}

	public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor))
		{
			return true;
		}
		return base.CanConvertTo(context, destinationType);
	}
}
