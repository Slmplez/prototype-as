using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using Autofac.Core;
using Autofac.Util;

namespace Autofac.Features.GeneratedFactories;

public class FactoryGenerator
{
	private readonly Func<IComponentContext, IEnumerable<Parameter>, Delegate> _generator;

	public FactoryGenerator(Type delegateType, Service service, ParameterMapping parameterMapping)
	{
		if (service == null)
		{
			throw new ArgumentNullException("service");
		}
		Enforce.ArgumentTypeIsFunction(delegateType);
		_generator = CreateGenerator(delegate(Expression activatorContextParam, Expression[] resolveParameterArray)
		{
			Expression[] arguments = new Expression[3]
			{
				activatorContextParam,
				Expression.Constant(service, typeof(Service)),
				Expression.NewArrayInit(typeof(Parameter), resolveParameterArray)
			};
			return Expression.Call(ReflectionExtensions.GetMethod((IComponentContext cc) => cc.ResolveService((Service)null, (Parameter[])null)), arguments);
		}, delegateType, GetParameterMapping(delegateType, parameterMapping));
	}

	public FactoryGenerator(Type delegateType, IComponentRegistration productRegistration, ParameterMapping parameterMapping)
	{
		if (productRegistration == null)
		{
			throw new ArgumentNullException("productRegistration");
		}
		Enforce.ArgumentTypeIsFunction(delegateType);
		_generator = CreateGenerator(delegate(Expression activatorContextParam, Expression[] resolveParameterArray)
		{
			Expression[] arguments = new Expression[2]
			{
				Expression.Constant(productRegistration, typeof(IComponentRegistration)),
				Expression.NewArrayInit(typeof(Parameter), resolveParameterArray)
			};
			return Expression.Call(activatorContextParam, ReflectionExtensions.GetMethod((IComponentContext cc) => cc.ResolveComponent(null, null)), arguments);
		}, delegateType, GetParameterMapping(delegateType, parameterMapping));
	}

	private static ParameterMapping GetParameterMapping(Type delegateType, ParameterMapping configuredParameterMapping)
	{
		if (configuredParameterMapping == ParameterMapping.Adaptive)
		{
			if (!delegateType.Name.StartsWith("Func`", StringComparison.Ordinal))
			{
				return ParameterMapping.ByName;
			}
			return ParameterMapping.ByType;
		}
		return configuredParameterMapping;
	}

	private static Func<IComponentContext, IEnumerable<Parameter>, Delegate> CreateGenerator(Func<Expression, Expression[], Expression> makeResolveCall, Type delegateType, ParameterMapping pm)
	{
		ParameterExpression parameterExpression = Expression.Parameter(typeof(IComponentContext), "c");
		ParameterExpression parameterExpression2 = Expression.Parameter(typeof(IEnumerable<Parameter>), "p");
		ParameterExpression[] parameters = new ParameterExpression[2] { parameterExpression, parameterExpression2 };
		MethodInfo method = delegateType.GetMethod("Invoke");
		List<ParameterExpression> list = (from pi in method.GetParameters()
			select Expression.Parameter(pi.ParameterType, pi.Name)).ToList();
		Expression[] arg = MapParameters(list, pm);
		Expression expression = makeResolveCall(parameterExpression, arg);
		UnaryExpression body = Expression.Convert(expression, method.ReturnType);
		LambdaExpression body2 = Expression.Lambda(delegateType, body, list);
		Expression<Func<IComponentContext, IEnumerable<Parameter>, Delegate>> expression2 = Expression.Lambda<Func<IComponentContext, IEnumerable<Parameter>, Delegate>>(body2, parameters);
		return expression2.Compile();
	}

	private static Expression[] MapParameters(IEnumerable<ParameterExpression> creatorParams, ParameterMapping pm)
	{
		return pm switch
		{
			ParameterMapping.ByType => creatorParams.Select((ParameterExpression p) => Expression.New(typeof(TypedParameter).GetConstructor(new Type[2]
			{
				typeof(Type),
				typeof(object)
			}), Expression.Constant(p.Type, typeof(Type)), Expression.Convert(p, typeof(object)))).OfType<Expression>().ToArray(), 
			ParameterMapping.ByPosition => creatorParams.Select((ParameterExpression p, int i) => Expression.New(typeof(PositionalParameter).GetConstructor(new Type[2]
			{
				typeof(int),
				typeof(object)
			}), Expression.Constant(i, typeof(int)), Expression.Convert(p, typeof(object)))).OfType<Expression>().ToArray(), 
			_ => creatorParams.Select((ParameterExpression p) => Expression.New(typeof(NamedParameter).GetConstructor(new Type[2]
			{
				typeof(string),
				typeof(object)
			}), Expression.Constant(p.Name, typeof(string)), Expression.Convert(p, typeof(object)))).OfType<Expression>().ToArray(), 
		};
	}

	public Delegate GenerateFactory(IComponentContext context, IEnumerable<Parameter> parameters)
	{
		if (context == null)
		{
			throw new ArgumentNullException("context");
		}
		if (parameters == null)
		{
			throw new ArgumentNullException("parameters");
		}
		return _generator(context.Resolve<ILifetimeScope>(), parameters);
	}

	public TDelegate GenerateFactory<TDelegate>(IComponentContext context, IEnumerable<Parameter> parameters) where TDelegate : class
	{
		return (TDelegate)(object)GenerateFactory(context, parameters);
	}
}
