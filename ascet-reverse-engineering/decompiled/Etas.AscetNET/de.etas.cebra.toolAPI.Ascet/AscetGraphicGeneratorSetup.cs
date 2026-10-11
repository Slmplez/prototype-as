using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("8D077711-D834-48cc-A0EF-8F10A4BAD9BA")]
[ProgId("Ascet.AscetGraphicGeneratorSetup")]
[ComVisible(true)]
public class AscetGraphicGeneratorSetup : SmalltalkToolAPI, AscetGraphicGeneratorSetup_Dispatch
{
	public AscetGraphicGeneratorSetup(Ascet tool, Identifiable handle)
		: base(tool.Sender)
	{
		setIdentifier(handle);
	}

	public virtual string GenerateByCommandLine(string commandLine)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("generateByCommandLine:");
			instanceMethodCall.appendParameter(commandLine);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GenerateByCommandLine :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GenerateByCommandLine(" + commandLine + "): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GenerateByCommandLine(" + commandLine + "): failed.");
		}
		return null;
	}

	public virtual string GenerateByCommandLineLong(string commandLine, string iniFile, bool isHeadless)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("generateByCommandLine:iniFile:isHeadless:");
			instanceMethodCall.appendParameter(commandLine);
			instanceMethodCall.appendParameter(iniFile);
			instanceMethodCall.appendParameter(isHeadless);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GenerateByCommandLineLong :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GenerateByCommandLineLong(" + commandLine + "): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GenerateByCommandLineLong(" + commandLine + "): failed.");
		}
		return null;
	}
}
