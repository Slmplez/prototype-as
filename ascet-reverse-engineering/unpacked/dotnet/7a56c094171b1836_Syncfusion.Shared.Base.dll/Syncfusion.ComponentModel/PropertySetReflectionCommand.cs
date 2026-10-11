using System.Reflection;
using Syncfusion.Documentation;

namespace Syncfusion.ComponentModel;

[DocumentationExclude]
internal class PropertySetReflectionCommand : MethodReflectionCommand
{
	public static MethodInfo GetSetMethod(object target, string propertyName)
	{
		PropertyInfo property = target.GetType().GetProperty(propertyName);
		return property.GetSetMethod();
	}

	public PropertySetReflectionCommand(string description, object target, string propertyName, object value)
		: base(description, target, GetSetMethod(target, propertyName), value)
	{
	}

	public PropertySetReflectionCommand(string description, object target, PropertyInfo pi, object value)
		: base(description, target, pi.GetSetMethod(), value)
	{
	}
}
