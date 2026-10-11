using System.Collections;
using System.ComponentModel;
using System.Configuration.Install;
using System.Globalization;
using System.Reflection;

namespace Etas.Base.Shared;

[RunInstaller(true)]
public class LoggerInstaller : Installer
{
	private bool m_installing;

	public override void Install(IDictionary stateSaver)
	{
		m_installing = true;
		EventLoggerPublisher.DeleteEventLog();
		EventLoggerPublisher.CreateEventLog();
		string message = string.Format(CultureInfo.InvariantCulture, "Installed {0}", new object[1] { Assembly.GetExecutingAssembly().FullName });
		base.Context.LogMessage(message);
		base.Install(stateSaver);
	}

	public override void Uninstall(IDictionary savedState)
	{
		EventLoggerPublisher.DeleteEventLog();
		string message = string.Format(CultureInfo.InvariantCulture, "Uninstalled {0}", new object[1] { Assembly.GetExecutingAssembly().FullName });
		base.Context.LogMessage(message);
		base.Uninstall(savedState);
	}

	public override void Rollback(IDictionary savedState)
	{
		if (m_installing)
		{
			string message = string.Format(CultureInfo.InvariantCulture, "Rolled back installation of {0}", new object[1] { Assembly.GetExecutingAssembly().FullName });
			base.Context.LogMessage(message);
		}
		else
		{
			string message2 = string.Format(CultureInfo.InvariantCulture, "Rolled back uninstallation of {0}", new object[1] { Assembly.GetExecutingAssembly().FullName });
			base.Context.LogMessage(message2);
		}
		base.Rollback(savedState);
	}

	public override void Commit(IDictionary savedState)
	{
		string message = string.Format(CultureInfo.InvariantCulture, "Committed installation of {0}", new object[1] { Assembly.GetExecutingAssembly().FullName });
		base.Context.LogMessage(message);
		m_installing = false;
		base.Commit(savedState);
	}
}
