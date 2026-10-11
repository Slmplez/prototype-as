namespace ETASToolStarter;

internal interface IEtasToolStarter
{
	string[] ListOfEtasApplications();

	string[] ListOfVersionsForEtasApplication(string toolName);

	bool Start(string toolName);

	bool Start(string toolName, string version);

	bool Start(string toolName, int timeOut);

	bool Start(string toolName, string version, int timeOut);

	bool isRunning(string toolName);

	bool isRunning(string toolName, string version);
}
