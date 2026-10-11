namespace Etas.Base.Shared.IoC.Model;

public interface ILoggingPerformance
{
	bool Initialize(string configFilePath, string schemaFilePath);

	string Start(string identifier);

	string StartWithComment(string identifier, string comment);

	double End(string identifier);
}
