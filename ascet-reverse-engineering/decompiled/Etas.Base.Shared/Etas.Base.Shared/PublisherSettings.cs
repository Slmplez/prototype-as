using System.Collections.Specialized;
using System.Globalization;

namespace Etas.Base.Shared;

internal class PublisherSettings
{
	private string _name;

	private string _assemblyName;

	private string _typeName;

	private CultureInfo _targetCulture = CultureInfo.InvariantCulture;

	private NameValueCollection _otherAttributes = new NameValueCollection();

	protected LogCategory _logCategoryFilter = LogCategory.TraceLoop;

	public string Name
	{
		get
		{
			return _name;
		}
		set
		{
			_name = value;
		}
	}

	public string AssemblyName
	{
		get
		{
			return _assemblyName;
		}
		set
		{
			_assemblyName = value;
		}
	}

	public string TypeName
	{
		get
		{
			return _typeName;
		}
		set
		{
			_typeName = value;
		}
	}

	public LogCategory LogCategoryFilter
	{
		get
		{
			return _logCategoryFilter;
		}
		set
		{
			_logCategoryFilter = value;
		}
	}

	public CultureInfo TargetCulture
	{
		get
		{
			return _targetCulture;
		}
		set
		{
			_targetCulture = value;
		}
	}

	public NameValueCollection OtherAttributes => _otherAttributes;

	public void AddOtherAttributes(string name, string value)
	{
		_otherAttributes.Add(name, value);
	}
}
