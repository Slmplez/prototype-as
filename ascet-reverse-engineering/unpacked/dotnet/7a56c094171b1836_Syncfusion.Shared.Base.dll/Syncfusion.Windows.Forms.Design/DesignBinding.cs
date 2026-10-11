using System.ComponentModel;
using System.Drawing.Design;

namespace Syncfusion.Windows.Forms.Design;

[Editor(typeof(DesignBindingEditor), typeof(UITypeEditor))]
internal class DesignBinding
{
	private object dataSource;

	private string dataMember;

	public static DesignBinding Null;

	public bool IsNull => dataSource == null;

	public object DataSource => dataSource;

	public string DataMember => dataMember;

	public string DataField
	{
		get
		{
			int num = dataMember.LastIndexOf(".");
			if (num == -1)
			{
				return dataMember;
			}
			return dataMember.Substring(num + 1);
		}
	}

	public DesignBinding(object dataSource, string dataMember)
	{
		this.dataSource = dataSource;
		this.dataMember = dataMember;
	}

	static DesignBinding()
	{
		Null = new DesignBinding(null, null);
	}

	public bool Equals(object dataSource, string dataMember)
	{
		if (dataSource == this.dataSource)
		{
			return string.Compare(dataMember, this.dataMember, ignoreCase: true) == 0;
		}
		return false;
	}
}
