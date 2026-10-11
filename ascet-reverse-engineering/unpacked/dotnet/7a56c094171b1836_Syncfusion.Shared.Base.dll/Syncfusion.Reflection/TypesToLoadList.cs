using System;
using System.Collections;
using System.ComponentModel;
using System.Globalization;
using System.Reflection;
using Syncfusion.Collections;
using Syncfusion.ComponentModel;

namespace Syncfusion.Reflection;

public class TypesToLoadList : ArrayListExt
{
	private string memberName;

	private BindingFlags invokeAttr;

	private Binder binder;

	private object[] args;

	private ParameterModifier[] modifiers;

	private CultureInfo culture;

	private string[] namedParameters;

	public new TypeName this[int index]
	{
		get
		{
			return (TypeName)base[index];
		}
		set
		{
			base[index] = value;
		}
	}

	public int ArgsCount => args.Length;

	public string InvokeMemberName
	{
		get
		{
			return memberName;
		}
		set
		{
			memberName = value;
		}
	}

	public event TypeNotFoundEventHandler TypeNotFound;

	protected override void OnItemPropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (sender is TypeName && e.PropertyName == "TypeFullName")
		{
			string typeFullName = ((TypeName)sender).TypeFullName;
			if (typeFullName != null && typeFullName.Length > 0)
			{
				InvokeMemberOnType((TypeName)sender);
			}
		}
		base.OnItemPropertyChanged(sender, e);
	}

	protected override void OnCollectionChanged(CollectionChangeEventArgs args)
	{
		if (args.Action == CollectionChangeAction.Add && args.Element is TypeName)
		{
			string typeFullName = ((TypeName)args.Element).TypeFullName;
			if (typeFullName != null && typeFullName.Length > 0)
			{
				InvokeMemberOnType((TypeName)args.Element);
			}
			else if (args.Element is TypeName { TypeFullName: null } typeName)
			{
				typeName.TypeFullName = string.Empty;
			}
		}
		base.OnCollectionChanged(args);
	}

	public object GetArg(int i)
	{
		if (i < args.Length)
		{
			return args[i];
		}
		return null;
	}

	public void InitInvokeMemberSettings(string memberName, BindingFlags invokeAttr, Binder binder, object[] args, ParameterModifier[] modifiers, CultureInfo culture, string[] namedParameters)
	{
		this.memberName = memberName;
		this.invokeAttr = invokeAttr;
		this.binder = binder;
		this.args = args;
		this.modifiers = modifiers;
		this.culture = culture;
		this.namedParameters = namedParameters;
		InvokeMemberOnExisitingTypes();
	}

	public void InvokeMemberOnExisitingTypes()
	{
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				TypeName typeName = (TypeName)enumerator.Current;
				string typeFullName = typeName.TypeFullName;
				if (typeFullName != null && typeFullName.Length > 0)
				{
					InvokeMemberOnType(typeName);
				}
			}
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	protected void InvokeMemberOnType(TypeName typename)
	{
		if (memberName == null || typename.TypeFullName.IndexOf(TypeLoader.UnresolvedType) != -1)
		{
			return;
		}
		Type type = Type.GetType(typename.TypeFullName);
		if (type != null && memberName != null && memberName.Length > 0)
		{
			try
			{
				type.InvokeMember(memberName, invokeAttr, binder, type, args, modifiers, culture, namedParameters);
				return;
			}
			catch
			{
				return;
			}
		}
		if (this.TypeNotFound != null)
		{
			this.TypeNotFound(this, new TypeNotFoundEventArgs(typename));
		}
	}
}
