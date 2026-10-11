using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3E8D-B490-11D3-8A29-00A0247767D8")]
[ProgId("Ascet.AscetProject")]
public class AscetProject : CodeComponent, IAscetProject, ICodeComponent, IComponent, IDataBaseItem, AscetProject_Dispatch
{
	public AscetProject(AscetDataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public AscetProject(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public ArrayElement AddArray(string n)
	{
		return base.addArray(n);
	}

	public DistributionElement AddDistribution(string n)
	{
		return base.addDistribution(n);
	}

	public ImplConfiguration AddImplementation(string name)
	{
		return base.addImplementation(name);
	}

	public MatrixElement AddMatrix(string n)
	{
		return base.addMatrix(n);
	}

	public Formula[] AddMissingFormulasForImplementation(ImplConfiguration implConf)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addMissingFormulasForImplementation:");
			instanceMethodCall.appendParameter(implConf);
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			Formula[] array = new Formula[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new Formula(this, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddMissingFormulasForImplementation(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool AddOperatingMode(string aModeName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addOperatingMode:");
			instanceMethodCall.appendParameter(aModeName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddOperatingMode(): failed -> APIError: " + ex);
		}
		return false;
	}

	public ScalarElement AddParameter(string n)
	{
		Identifiable identifiable = addParam(n);
		if (identifiable != null)
		{
			return new ScalarElement(this, identifiable);
		}
		return base.addVariable(n);
	}

	public virtual AscetProjectFile AddProjectFile(string aFileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addProjectFile:");
			instanceMethodCall.appendParameter(aFileName);
			call(instanceMethodCall);
			return new AscetProjectFile(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddProjectFile(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Task AddTask(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addTask:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return identifyTask(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddTask(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Task AddTaskOfType(string name, string type)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addTask:ofType:");
			instanceMethodCall.appendParameter(name);
			instanceMethodCall.appendParameter(type);
			call(instanceMethodCall);
			return identifyTask(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddTaskOfType(): failed -> APIError: " + ex);
		}
		return null;
	}

	public ScalarElement AddVariable(string n)
	{
		return base.addVariable(n);
	}

	public virtual bool CleanCodeGenerationDirectory()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("cleanCodeGenerationDirectory");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CleanCodeGenerationDirectory(): failed -> APIError: " + ex);
		}
		return false;
	}

	[Obsolete("Method is no longer supported.", false)]
	public virtual string CopyDataSetNamed(string aDataSetName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("copyDataSetNamed:");
			instanceMethodCall.appendParameter(aDataSetName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CopyDataSetNamed(" + aDataSetName + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Formula Create5ParameterFormula()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("create5ParameterFormula");
			call(instanceMethodCall);
			return new Formula(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Create5ParameterFormula(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Formula CreateIdentityFormula()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("createIdentityFormula");
			call(instanceMethodCall);
			return new Formula(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CreateIdentityFormula(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Formula CreateLinearFormula()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("createLinearFormula");
			call(instanceMethodCall);
			return new Formula(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CreateLinearFormula(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Formula CreateMoebiusFormula()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("createMoebiusFormula");
			call(instanceMethodCall);
			return new Formula(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CreateMoebiusFormula(): failed -> APIError: " + ex);
		}
		return null;
	}

	[Obsolete("Method is no longer supported.", false)]
	public virtual string CreateNewDataSet()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("createNewDataSet");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CreateNewDataSet(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool DeleteAllImplTypes()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteAllImplTypes");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".DeleteAllImplTypes(): failed -> APIError: " + ex);
		}
		return false;
	}

	[Obsolete("Method is no longer supported.", false)]
	public virtual string DeleteDataSetNamed(string aDataSetName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteDataSetNamed:");
			instanceMethodCall.appendParameter(aDataSetName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".DeleteDataSetNamed(" + aDataSetName + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool DeleteFormula(Formula aformula)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteFormula:");
			instanceMethodCall.appendParameter(aformula);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".DeleteFormula(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool DeleteFormulaNamed(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteFormulaNamed:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".DeleteFormulaNamed(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool DeleteImplementationType(ImplementationType anImplType)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteImplType:");
			instanceMethodCall.appendParameter(anImplType);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".DeleteImplementationType(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool DeleteImplementationTypeNamed(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteImplTypeNamed:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".DeleteImplementationTypeNamed(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool GenerateIntecrioCode()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("generateIntegrioCode");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GenerateIntecrioCode(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual CodeGenerator[] GetAllCodeGenerators()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllCodeGenerators");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				CodeGenerator codeGenerator = new CodeGenerator(this, remoteObjectsFromCollection[i]);
				if (codeGenerator != null)
				{
					arrayList.Add(codeGenerator);
				}
			}
			CodeGenerator[] array = new CodeGenerator[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllCodeGenerators(): failed -> APIError: " + ex);
		}
		return null;
	}

	public DataConfiguration[] GetAllData()
	{
		return base.getAllData();
	}

	[Obsolete("Method is no longer supported.", false)]
	public virtual string[] GetAllDataSets()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllDataSetLabels");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllDataSets(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Formula[] GetAllFormulas()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllFormulas");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			Formula[] array = new Formula[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new Formula(this, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllFormulas(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual PrimitiveModelElement[] GetAllGlobals()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllGlobals");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				AscetModelElement ascetModelElement = identifyAscetModelElement(remoteObjectsFromCollection[i]);
				if (ascetModelElement != null && ascetModelElement.IsPrimitive())
				{
					arrayList.Add((PrimitiveModelElement)ascetModelElement);
				}
			}
			PrimitiveModelElement[] array = new PrimitiveModelElement[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllGlobals(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string[] GetAllMemoryLocations()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllMemoryLocations");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllMemoryLocations(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string[] GetAllMemoryLocationsFor(AscetModelElement element)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllMemoryLocationsFor:");
			instanceMethodCall.appendParameter(element);
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllMemoryLocationsFor(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string[] GetAllMemoryLocationsForParameter()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllMemoryLocationsForParameter");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllMemoryLocationsForParameter(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string[] GetAllMemoryLocationsForVariable()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllMemoryLocationsForVariable");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllMemoryLocationsForVariable(): failed -> APIError: " + ex);
		}
		return null;
	}

	public ImplConfiguration[] GetAllImplementations()
	{
		return base.getAllImplementations();
	}

	public virtual ComplexModelElement[] GetAllModules()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllModules");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				AscetModelElement ascetModelElement = identifyAscetModelElement(remoteObjectsFromCollection[i]);
				if (ascetModelElement != null && ascetModelElement.IsComplex())
				{
					arrayList.Add((ComplexModelElement)ascetModelElement);
				}
			}
			ComplexModelElement[] array = new ComplexModelElement[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllModules(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string[] GetAllOperatingModes()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllOperatingModes");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllOperatingModes(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual AscetProjectFile[] GetAllProjectFiles()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllProjectFiles");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			AscetProjectFile[] array = new AscetProjectFile[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new AscetProjectFile(this, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllProjectFiles(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Target[] GetAllTargets()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllTargets");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			Target[] array = new Target[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new Target(this, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllTargets(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Task[] GetAllTasks()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllTasks");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				Task task = identifyTask(remoteObjectsFromCollection[i]);
				if (task != null)
				{
					arrayList.Add(task);
				}
			}
			Task[] array = new Task[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllTasks(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Process[] GetAllUnusedProcesses()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllUnusedProcesses");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			Process[] array = new Process[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				instanceMethodCall = new InstanceMethodCall(remoteObjectsFromCollection[i], "getDiagram", this);
				call(instanceMethodCall);
				ProcessDiagram diag = new ProcessDiagram(this, instanceMethodCall.ResultRemoteObject);
				array[i] = new Process(diag, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllUnusedProcesses(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool GetBooleanOption(string option)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getOption:");
			instanceMethodCall.appendParameter(option);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetBooleanOption(" + option + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public DataConfiguration GetClassData()
	{
		return base.getClassData();
	}

	public ImplConfiguration GetClassImplementation()
	{
		return base.getClassImplementation();
	}

	public virtual CodeGenerator GetCodeGenerator(string cgName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCodeGenerator:");
			instanceMethodCall.appendParameter(cgName);
			call(instanceMethodCall);
			return new CodeGenerator(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCodeGenerator(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int GetCooperativeLevel()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCooperativeLevel");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCooperativeLevels(): failed -> APIError: " + ex);
		}
		return -1;
	}

	public virtual CodeGenerator GetCurrentCodeGenerator()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCurrentCodeGenerator");
			call(instanceMethodCall);
			return new CodeGenerator(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCurrentCodeGenerator(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Target GetCurrentTarget()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCurrentTarget");
			call(instanceMethodCall);
			return new Target(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCurrentTarget(): failed -> APIError: " + ex);
		}
		return null;
	}

	public DataConfiguration GetData(string name)
	{
		return base.getData(name);
	}

	public ImplConfiguration GetDefaultImplementation()
	{
		return base.getDefaultImplementation();
	}

	public virtual bool GetEnableMonitoring()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getEnableMonitoring");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetEnableMonitoring() failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetEnableMonitoring() failed: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetEnableMonitoring() failed.");
		}
		throw new ErrorResultException();
	}

	public virtual Formula GetFormula(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getFormula:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return new Formula(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetFormula(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual AscetModelElement GetGlobal(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getGlobal:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return identifyAscetModelElement(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetGlobal(): failed -> APIError: " + ex);
		}
		return null;
	}

	public ImplConfiguration GetImplementation(string name)
	{
		return base.getImplementation(name);
	}

	public virtual ComplexModelElement GetModule(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getModule:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return (ComplexModelElement)identifyAscetModelElement(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetModule(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string[] GetOptionList()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getOptionList");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetOptionList(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int GetPreemptiveLevel()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPreemptiveLevel");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetPreemptiveLevel(): failed -> APIError: " + ex);
		}
		return -1;
	}

	public virtual AscetProjectFile GetProjectFile(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getProjectFile:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return new AscetProjectFile(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetProjectFile(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Target GetTarget(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getTarget:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return new Target(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetTarget(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Task GetTask(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getTask:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return identifyTask(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetTask(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual Task identifyTask(Identifiable obj)
	{
		try
		{
			if (isXXX(obj, "AlarmTask"))
			{
				return new AlarmTimerTask(this, obj);
			}
			if (isXXX(obj, "SoftwareTask"))
			{
				return new SoftwareTask(this, obj);
			}
			if (isXXX(obj, "InitTask"))
			{
				return new InitTask(this, obj);
			}
			if (isXXX(obj, "InterruptTask"))
			{
				return new InterruptTask(this, obj);
			}
			if (isXXX(obj, "TimetableTask"))
			{
				return new TimetableTask(this, obj);
			}
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyTask(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsAscetProject()
	{
		return true;
	}

	public override bool IsProject()
	{
		return true;
	}

	public virtual bool ReadBuildSettingsFromXMLFile(string aXMLFile)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("readBuildSettingsFromXMLFile:");
			instanceMethodCall.appendParameter(aXMLFile);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ReadBuildSettingsFromXMLFile(" + aXMLFile + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool ReadCodeGenMessagesFromXMLFile(string aXMLFile)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("readCodeGenMessagesFromXMLFile:");
			instanceMethodCall.appendParameter(aXMLFile);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ReadCodeGenMessagesFromXMLFile(" + aXMLFile + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual Formula[] ReadFormulasFromXMLFile(string aXMLFile)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("readFormulasFromXMLFile:");
			instanceMethodCall.appendParameter(aXMLFile);
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			Formula[] array = new Formula[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new Formula(this, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ReadFormulasFromXMLFile(" + aXMLFile + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual ImplementationType[] ReadImplementationTypesFromFile(string aXMLFile)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("readImplTypesFromFile:");
			instanceMethodCall.appendParameter(aXMLFile);
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ImplementationType[] array = new ImplementationType[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new ImplementationType(this, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ReadImplementationTypesFromFile(" + aXMLFile + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public bool ReadHexFile(string aFileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("readHexFile:");
			instanceMethodCall.appendParameter(aFileName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ReadHexFile(" + aFileName + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool ReadProjectOptionsFromXMLFile(string xmlFilePathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("readProjectOptionsFromXMLFile:");
			instanceMethodCall.appendParameter(xmlFilePathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ReadProjectOptionsFromXMLFile(" + xmlFilePathName + "): failed :)");
		}
		return false;
	}

	public virtual bool RemoveImplementation(string name)
	{
		return base.removeImpl(name);
	}

	public virtual bool RemoveOperatingMode(string aModeName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteOperatingMode:");
			instanceMethodCall.appendParameter(aModeName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveOperatingMode(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool RemoveProjectFile(AscetProjectFile file)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteProjectFile:");
			instanceMethodCall.appendParameter(file);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveProjectFile(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool RemoveTask(Task t)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteTask:");
			instanceMethodCall.appendParameter(t);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveTask(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual AscetModelElement[] ResolveGlobals()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("resolveGlobals");
			call(instanceMethodCall);
			Collection coll = new Collection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				AscetModelElement ascetModelElement = identifyAscetModelElement(remoteObjectsFromCollection[i]);
				if (ascetModelElement != null)
				{
					arrayList.Add(ascetModelElement);
				}
			}
			AscetModelElement[] array = new AscetModelElement[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ResolveGlobals(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool SetBooleanOption(string option, bool state)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setOption:value:");
			instanceMethodCall.appendParameter(option);
			instanceMethodCall.appendParameter(state);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetBooleanOption(" + option + "," + state + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetCooperativeLevel(int level)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setCooperativeLevel:");
			instanceMethodCall.appendParameter(level);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCooperativeLevel(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetCurrentCodeGenerator(CodeGenerator cg)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setCurrentCodeGenerator:");
			instanceMethodCall.appendParameter(cg);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCurrentCodeGenerator(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetCurrentTarget(Target t)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setCurrentTarget:");
			instanceMethodCall.appendParameter(t);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCurrentTarget(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetDefaultImplementation(ImplConfiguration implConf)
	{
		return setDefaultImplementation(implConf);
	}

	public virtual bool SetEnableMonitoring(bool flag)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setEnableMonitoring:");
			instanceMethodCall.appendParameter(flag);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetEnableMonitoring(" + flag + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetPreemptiveLevel(int level)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPreemptiveLevel:");
			instanceMethodCall.appendParameter(level);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetPreemptiveLevel(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool UpdateImplementation()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("updateImplementation");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".UpdateImplementation(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool WriteASAP2ToFile(string aFileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("writeAsap2ToFile:");
			instanceMethodCall.appendParameter(aFileName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".WriteASAP2ToFile(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool WriteASAP2WithoutCodeGenerationToFile(string aFileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("writeAsap2WithoutCodeGenerationToFile:");
			instanceMethodCall.appendParameter(aFileName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".WriteASAP2WithoutCodeGenerationToFile(" + aFileName + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool WriteAllImplementationTypesToFile(string xmlFilePathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("writeAllImplTypesToFile:");
			instanceMethodCall.appendParameter(xmlFilePathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".WriteAllImplementationTypesToFile(" + xmlFilePathName + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool WriteAllProjectFormulasToXMLFile(string xmlFilePathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("writeAllProjectFormulasToXMLFile:");
			instanceMethodCall.appendParameter(xmlFilePathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".WriteAllProjectFormulasToXMLFile(" + xmlFilePathName + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool WriteCodeGenMessagesToXMLFile(string xmlFilePathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("writeCodeGenMessagesToXMLFile:");
			instanceMethodCall.appendParameter(xmlFilePathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".WriteCodeGenMessagesToXMLFile(" + xmlFilePathName + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool WriteImplementationTypesToFile(ImplementationType[] implTypeList, string xmlFilePathName)
	{
		try
		{
			OrderedCollection i = setOrderedCollectionFromValues(implTypeList);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("writeImplTypes:toFile:");
			instanceMethodCall.appendParameter(i);
			instanceMethodCall.appendParameter(xmlFilePathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".WriteImplementationTypesToXMLFile(", implTypeList, ", ", xmlFilePathName, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public virtual bool WriteFormulasToXMLFile(Formula[] formulasList, string xmlFilePathName)
	{
		try
		{
			OrderedCollection i = setOrderedCollectionFromValues(formulasList);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("writeFormulas:toXMLFile:");
			instanceMethodCall.appendParameter(i);
			instanceMethodCall.appendParameter(xmlFilePathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".WriteFormulasToXMLFile(", formulasList, ", ", xmlFilePathName, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public virtual bool WriteProjectOptionsToXMLFile(string xmlFilePathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("writeProjectOptionsToXMLFile:");
			instanceMethodCall.appendParameter(xmlFilePathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".WriteProjectOptionsToXMLFile(" + xmlFilePathName + "): failed :)");
		}
		return false;
	}

	object AscetProject_Dispatch.AddArray(string n)
	{
		return AddArray(n);
	}

	object AscetProject_Dispatch.AddDistribution(string n)
	{
		return AddDistribution(n);
	}

	object AscetProject_Dispatch.AddImplementation(string name)
	{
		return AddImplementation(name);
	}

	object AscetProject_Dispatch.AddMatrix(string n)
	{
		return AddMatrix(n);
	}

	object AscetProject_Dispatch.AddMissingFormulasForImplementation(object dispatch_implConf)
	{
		ImplConfiguration implConf = (ImplConfiguration)dispatch_implConf;
		Formula[] oTypedArray = AddMissingFormulasForImplementation(implConf);
		return Adapter.ToObject(oTypedArray);
	}

	object AscetProject_Dispatch.AddParameter(string n)
	{
		return AddParameter(n);
	}

	object AscetProject_Dispatch.AddProjectFile(string aFileName)
	{
		return AddProjectFile(aFileName);
	}

	object AscetProject_Dispatch.AddTask(string name)
	{
		return AddTask(name);
	}

	object AscetProject_Dispatch.AddTaskOfType(string name, string type)
	{
		return AddTaskOfType(name, type);
	}

	object AscetProject_Dispatch.AddVariable(string n)
	{
		return AddVariable(n);
	}

	object AscetProject_Dispatch.Create5ParameterFormula()
	{
		return Create5ParameterFormula();
	}

	object AscetProject_Dispatch.CreateIdentityFormula()
	{
		return CreateIdentityFormula();
	}

	object AscetProject_Dispatch.CreateLinearFormula()
	{
		return CreateLinearFormula();
	}

	object AscetProject_Dispatch.CreateMoebiusFormula()
	{
		return CreateMoebiusFormula();
	}

	bool AscetProject_Dispatch.DeleteFormula(object dispatch_aformula)
	{
		Formula aformula = (Formula)dispatch_aformula;
		return DeleteFormula(aformula);
	}

	bool AscetProject_Dispatch.DeleteImplementationType(object dispatch_anImplType)
	{
		ImplementationType anImplType = (ImplementationType)dispatch_anImplType;
		return DeleteImplementationType(anImplType);
	}

	object AscetProject_Dispatch.GetAllCodeGenerators()
	{
		CodeGenerator[] allCodeGenerators = GetAllCodeGenerators();
		return Adapter.ToObject(allCodeGenerators);
	}

	object AscetProject_Dispatch.GetAllData()
	{
		DataConfiguration[] allData = GetAllData();
		return Adapter.ToObject(allData);
	}

	object AscetProject_Dispatch.GetAllDataSets()
	{
		string[] allDataSets = GetAllDataSets();
		return Adapter.ToObject(allDataSets);
	}

	object AscetProject_Dispatch.GetAllFormulas()
	{
		Formula[] allFormulas = GetAllFormulas();
		return Adapter.ToObject(allFormulas);
	}

	object AscetProject_Dispatch.GetAllGlobals()
	{
		PrimitiveModelElement[] allGlobals = GetAllGlobals();
		return Adapter.ToObject(allGlobals);
	}

	object AscetProject_Dispatch.GetAllMemoryLocations()
	{
		string[] allMemoryLocations = GetAllMemoryLocations();
		return Adapter.ToObject(allMemoryLocations);
	}

	object AscetProject_Dispatch.GetAllMemoryLocationsFor(object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		string[] allMemoryLocationsFor = GetAllMemoryLocationsFor(element);
		return Adapter.ToObject(allMemoryLocationsFor);
	}

	object AscetProject_Dispatch.GetAllMemoryLocationsForParameter()
	{
		string[] allMemoryLocationsForParameter = GetAllMemoryLocationsForParameter();
		return Adapter.ToObject(allMemoryLocationsForParameter);
	}

	object AscetProject_Dispatch.GetAllMemoryLocationsForVariable()
	{
		string[] allMemoryLocationsForVariable = GetAllMemoryLocationsForVariable();
		return Adapter.ToObject(allMemoryLocationsForVariable);
	}

	object AscetProject_Dispatch.GetAllImplementations()
	{
		ImplConfiguration[] allImplementations = GetAllImplementations();
		return Adapter.ToObject(allImplementations);
	}

	object AscetProject_Dispatch.GetAllModules()
	{
		ComplexModelElement[] allModules = GetAllModules();
		return Adapter.ToObject(allModules);
	}

	object AscetProject_Dispatch.GetAllOperatingModes()
	{
		string[] allOperatingModes = GetAllOperatingModes();
		return Adapter.ToObject(allOperatingModes);
	}

	object AscetProject_Dispatch.GetAllProjectFiles()
	{
		AscetProjectFile[] allProjectFiles = GetAllProjectFiles();
		return Adapter.ToObject(allProjectFiles);
	}

	object AscetProject_Dispatch.GetAllTargets()
	{
		Target[] allTargets = GetAllTargets();
		return Adapter.ToObject(allTargets);
	}

	object AscetProject_Dispatch.GetAllTasks()
	{
		Task[] allTasks = GetAllTasks();
		return Adapter.ToObject(allTasks);
	}

	object AscetProject_Dispatch.GetAllUnusedProcesses()
	{
		Process[] allUnusedProcesses = GetAllUnusedProcesses();
		return Adapter.ToObject(allUnusedProcesses);
	}

	object AscetProject_Dispatch.GetClassData()
	{
		return GetClassData();
	}

	object AscetProject_Dispatch.GetClassImplementation()
	{
		return GetClassImplementation();
	}

	object AscetProject_Dispatch.GetCodeGenerator(string cgName)
	{
		return GetCodeGenerator(cgName);
	}

	object AscetProject_Dispatch.GetCurrentCodeGenerator()
	{
		return GetCurrentCodeGenerator();
	}

	object AscetProject_Dispatch.GetCurrentTarget()
	{
		return GetCurrentTarget();
	}

	object AscetProject_Dispatch.GetData(string name)
	{
		return GetData(name);
	}

	object AscetProject_Dispatch.GetDefaultImplementation()
	{
		return GetDefaultImplementation();
	}

	object AscetProject_Dispatch.GetFormula(string aName)
	{
		return GetFormula(aName);
	}

	object AscetProject_Dispatch.GetGlobal(string aName)
	{
		return GetGlobal(aName);
	}

	object AscetProject_Dispatch.GetImplementation(string name)
	{
		return GetImplementation(name);
	}

	object AscetProject_Dispatch.GetModule(string aName)
	{
		return GetModule(aName);
	}

	object AscetProject_Dispatch.GetOptionList()
	{
		string[] optionList = GetOptionList();
		return Adapter.ToObject(optionList);
	}

	object AscetProject_Dispatch.GetProjectFile(string aName)
	{
		return GetProjectFile(aName);
	}

	object AscetProject_Dispatch.GetTarget(string aName)
	{
		return GetTarget(aName);
	}

	object AscetProject_Dispatch.GetTask(string name)
	{
		return GetTask(name);
	}

	object AscetProject_Dispatch.ReadFormulasFromXMLFile(string aXMLFile)
	{
		Formula[] oTypedArray = ReadFormulasFromXMLFile(aXMLFile);
		return Adapter.ToObject(oTypedArray);
	}

	object AscetProject_Dispatch.ReadImplementationTypesFromFile(string aXMLFile)
	{
		ImplementationType[] oTypedArray = ReadImplementationTypesFromFile(aXMLFile);
		return Adapter.ToObject(oTypedArray);
	}

	bool AscetProject_Dispatch.RemoveProjectFile(object dispatch_file)
	{
		AscetProjectFile file = (AscetProjectFile)dispatch_file;
		return RemoveProjectFile(file);
	}

	bool AscetProject_Dispatch.RemoveTask(object dispatch_t)
	{
		Task t = (Task)dispatch_t;
		return RemoveTask(t);
	}

	object AscetProject_Dispatch.ResolveGlobals()
	{
		AscetModelElement[] oTypedArray = ResolveGlobals();
		return Adapter.ToObject(oTypedArray);
	}

	bool AscetProject_Dispatch.SetCurrentCodeGenerator(object dispatch_cg)
	{
		CodeGenerator currentCodeGenerator = (CodeGenerator)dispatch_cg;
		return SetCurrentCodeGenerator(currentCodeGenerator);
	}

	bool AscetProject_Dispatch.SetCurrentTarget(object dispatch_t)
	{
		Target currentTarget = (Target)dispatch_t;
		return SetCurrentTarget(currentTarget);
	}

	bool AscetProject_Dispatch.SetDefaultImplementation(object dispatch_implConf)
	{
		ImplConfiguration defaultImplementation = (ImplConfiguration)dispatch_implConf;
		return SetDefaultImplementation(defaultImplementation);
	}

	bool AscetProject_Dispatch.WriteImplementationTypesToFile(object implTypeList, string xmlFilePathName)
	{
		ImplementationType[] implTypeList2 = Adapter.ToArray1Object<ImplementationType>(implTypeList);
		return WriteImplementationTypesToFile(implTypeList2, xmlFilePathName);
	}

	bool AscetProject_Dispatch.WriteFormulasToXMLFile(object formulasList, string xmlFilePathName)
	{
		Formula[] formulasList2 = Adapter.ToArray1Object<Formula>(formulasList);
		return WriteFormulasToXMLFile(formulasList2, xmlFilePathName);
	}

	object AscetProject_Dispatch.AddComponent(object dispatch_item, string name)
	{
		CodeComponent item = (CodeComponent)dispatch_item;
		return AddComponent(item, name);
	}

	object AscetProject_Dispatch.AddData(string name)
	{
		return AddData(name);
	}

	object AscetProject_Dispatch.AddDeltaT()
	{
		return AddDeltaT();
	}

	object AscetProject_Dispatch.AddEnumeration(object dispatch_enumerator, string name)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return AddEnumeration(enumerator, name);
	}

	object AscetProject_Dispatch.AddOneDTable(string n)
	{
		return AddOneDTable(n);
	}

	object AscetProject_Dispatch.AddTwoDTable(string n)
	{
		return AddTwoDTable(n);
	}

	bool AscetProject_Dispatch.ExistsExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return ExistsExportForImport(modelElement);
	}

	object AscetProject_Dispatch.GetAllComplexModelElements()
	{
		ComplexModelElement[] allComplexModelElements = GetAllComplexModelElements();
		return Adapter.ToObject(allComplexModelElements);
	}

	object AscetProject_Dispatch.GetAllDiagrams()
	{
		AscetDiagram[] allDiagrams = GetAllDiagrams();
		return Adapter.ToObject(allDiagrams);
	}

	object AscetProject_Dispatch.GetAllModelElements()
	{
		AscetModelElement[] allModelElements = GetAllModelElements();
		return Adapter.ToObject(allModelElements);
	}

	object AscetProject_Dispatch.GetAllPrimitiveModelElements()
	{
		PrimitiveModelElement[] allPrimitiveModelElements = GetAllPrimitiveModelElements();
		return Adapter.ToObject(allPrimitiveModelElements);
	}

	object AscetProject_Dispatch.GetAllReferencedModelElements()
	{
		AscetModelElement[] allReferencedModelElements = GetAllReferencedModelElements();
		return Adapter.ToObject(allReferencedModelElements);
	}

	object AscetProject_Dispatch.GetAllUndefinedComplexModelElementNames()
	{
		string[] allUndefinedComplexModelElementNames = GetAllUndefinedComplexModelElementNames();
		return Adapter.ToObject(allUndefinedComplexModelElementNames);
	}

	object AscetProject_Dispatch.GetComplexModelElement(string name)
	{
		return GetComplexModelElement(name);
	}

	object AscetProject_Dispatch.GetDefaultData()
	{
		return GetDefaultData();
	}

	object AscetProject_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object AscetProject_Dispatch.GetDiagramWithName(string diagName)
	{
		return GetDiagramWithName(diagName);
	}

	object AscetProject_Dispatch.GetExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return GetExportForImport(modelElement);
	}

	object AscetProject_Dispatch.GetIcon()
	{
		return GetIcon();
	}

	object AscetProject_Dispatch.GetModelElement(string name)
	{
		return GetModelElement(name);
	}

	object AscetProject_Dispatch.GetPrimitiveModelElement(string name)
	{
		return GetPrimitiveModelElement(name);
	}

	object AscetProject_Dispatch.GetReferencedItemsForExport()
	{
		DataBaseItem[] referencedItemsForExport = GetReferencedItemsForExport();
		return Adapter.ToObject(referencedItemsForExport);
	}

	bool AscetProject_Dispatch.RemoveDiagram(object dispatch_diagram)
	{
		AscetDiagram diagram = (AscetDiagram)dispatch_diagram;
		return RemoveDiagram(diagram);
	}

	bool AscetProject_Dispatch.RemoveModelElement(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return RemoveModelElement(modelElement);
	}

	bool AscetProject_Dispatch.ReplaceComplexModelElement(object dispatch_element, object dispatch_component)
	{
		ComplexModelElement element = (ComplexModelElement)dispatch_element;
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElement(element, component);
	}

	bool AscetProject_Dispatch.ReplaceComplexModelElementNamed(string name, object dispatch_component)
	{
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElementNamed(name, component);
	}

	bool AscetProject_Dispatch.SetDefaultData(object dispatch_dataConf)
	{
		DataConfiguration defaultData = (DataConfiguration)dispatch_dataConf;
		return SetDefaultData(defaultData);
	}

	bool AscetProject_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object AscetProject_Dispatch.Edit()
	{
		return Edit();
	}

	object AscetProject_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object AscetProject_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object AscetProject_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object AscetProject_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object AscetProject_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object AscetProject_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object AscetProject_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string AscetProject_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool AscetProject_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object AscetProject_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
