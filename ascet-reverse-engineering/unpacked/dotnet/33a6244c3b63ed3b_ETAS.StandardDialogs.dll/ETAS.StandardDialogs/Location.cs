using System.Runtime.InteropServices;

namespace ETAS.StandardDialogs;

[Guid("17246EDE-1452-400e-B1D5-C872A55F0672")]
[ProgId("ETAS.StandardDialogs.Location")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class Location : ILocation
{
	private string m_Phone = string.Empty;

	private string m_EMail = string.Empty;

	public string Phone
	{
		get
		{
			return m_Phone;
		}
		set
		{
			m_Phone = value;
		}
	}

	public string Email
	{
		get
		{
			return m_EMail;
		}
		set
		{
			m_EMail = value;
		}
	}

	public Location(string phone, string email)
	{
		m_Phone = phone;
		m_EMail = email;
	}

	public Location()
	{
	}
}
