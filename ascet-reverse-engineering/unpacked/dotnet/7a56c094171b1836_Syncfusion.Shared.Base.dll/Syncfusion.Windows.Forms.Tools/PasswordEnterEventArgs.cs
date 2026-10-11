using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class PasswordEnterEventArgs : CancelEventArgs
{
	private string m_username;

	private string m_password;

	public string UserName => m_username;

	public string Password => m_password;

	public PasswordEnterEventArgs(string username, string password)
	{
		m_username = username;
		m_password = password;
	}
}
