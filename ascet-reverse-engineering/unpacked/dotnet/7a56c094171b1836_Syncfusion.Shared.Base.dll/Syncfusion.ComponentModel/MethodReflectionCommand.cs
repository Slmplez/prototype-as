using System;
using System.Reflection;
using Syncfusion.Documentation;

namespace Syncfusion.ComponentModel;

[DocumentationExclude]
internal class MethodReflectionCommand : SyncfusionCommand
{
	private object target;

	private object[] parameters;

	private MethodInfo methodInfo;

	private string description;

	public override string Description => description;

	public object Target => target;

	public static Type[] GetTypes(object[] parameters)
	{
		Type[] array = new Type[parameters.Length];
		for (int i = 0; i < parameters.Length; i++)
		{
			array[i] = ((parameters[i] != null) ? parameters[i].GetType() : typeof(object));
		}
		return array;
	}

	public MethodReflectionCommand(string description, object target, string methodName, params object[] parameters)
		: this(description, target, methodName, GetTypes(parameters), parameters)
	{
	}

	public MethodReflectionCommand(string description, object target, string methodName, Type[] types, params object[] parameters)
		: this(description, target, target.GetType().GetMethod(methodName, BindingFlags.Instance | BindingFlags.Public, null, types, null), parameters)
	{
	}

	public MethodReflectionCommand(string description, object target, MethodInfo methodInfo, params object[] parameters)
	{
		this.description = description;
		this.methodInfo = methodInfo;
		this.target = target;
		this.parameters = parameters;
	}

	protected void SetDescription(string value)
	{
		description = value;
	}

	public override void Execute()
	{
		methodInfo.Invoke(target, parameters);
	}
}
