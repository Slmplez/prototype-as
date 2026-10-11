/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 *  org.eclipse.emf.ecore.util.Diagnostician
 *  org.eclipse.emf.ecore.xml.type.XMLTypeFactory
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.AlarmType;
import com.etas.amd620.core.ComponentProject.AssignedOperationModesType;
import com.etas.amd620.core.ComponentProject.BuildConfigurationType;
import com.etas.amd620.core.ComponentProject.BuildSettingsType;
import com.etas.amd620.core.ComponentProject.CodeGeneratorT;
import com.etas.amd620.core.ComponentProject.CodeGeneratorType;
import com.etas.amd620.core.ComponentProject.CodeVariantT;
import com.etas.amd620.core.ComponentProject.ColorT;
import com.etas.amd620.core.ComponentProject.CompilerType;
import com.etas.amd620.core.ComponentProject.ComponentProjectFactory;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.DataConfigurationType;
import com.etas.amd620.core.ComponentProject.DocumentRoot;
import com.etas.amd620.core.ComponentProject.ERCOSEKT;
import com.etas.amd620.core.ComponentProject.ElementInfoT;
import com.etas.amd620.core.ComponentProject.ExperimentTargetType;
import com.etas.amd620.core.ComponentProject.FileReferenceT;
import com.etas.amd620.core.ComponentProject.FileType;
import com.etas.amd620.core.ComponentProject.FilesType;
import com.etas.amd620.core.ComponentProject.FormattedTextT;
import com.etas.amd620.core.ComponentProject.GenericDataT;
import com.etas.amd620.core.ComponentProject.GroupType;
import com.etas.amd620.core.ComponentProject.GroupType1;
import com.etas.amd620.core.ComponentProject.IconT;
import com.etas.amd620.core.ComponentProject.ImplementationConfigurationType;
import com.etas.amd620.core.ComponentProject.InitType;
import com.etas.amd620.core.ComponentProject.InterruptType;
import com.etas.amd620.core.ComponentProject.IntervalT;
import com.etas.amd620.core.ComponentProject.ItemRefT;
import com.etas.amd620.core.ComponentProject.MessageTType;
import com.etas.amd620.core.ComponentProject.MessageTypeType;
import com.etas.amd620.core.ComponentProject.ModelConfigurationT;
import com.etas.amd620.core.ComponentProject.NoteType;
import com.etas.amd620.core.ComponentProject.NotesT;
import com.etas.amd620.core.ComponentProject.OSLogicT;
import com.etas.amd620.core.ComponentProject.OperatingSystemType;
import com.etas.amd620.core.ComponentProject.OperationModeT;
import com.etas.amd620.core.ComponentProject.OperationModeType;
import com.etas.amd620.core.ComponentProject.OperationModesType;
import com.etas.amd620.core.ComponentProject.OptionT;
import com.etas.amd620.core.ComponentProject.OsDescriptionType;
import com.etas.amd620.core.ComponentProject.OsEntryType;
import com.etas.amd620.core.ComponentProject.OsLogicType;
import com.etas.amd620.core.ComponentProject.OsSettingsType;
import com.etas.amd620.core.ComponentProject.PlatformType;
import com.etas.amd620.core.ComponentProject.PointT;
import com.etas.amd620.core.ComponentProject.PrePostHooksType;
import com.etas.amd620.core.ComponentProject.ProcessType;
import com.etas.amd620.core.ComponentProject.ProjectType;
import com.etas.amd620.core.ComponentProject.SchedulingType;
import com.etas.amd620.core.ComponentProject.SimulationConfigurationType;
import com.etas.amd620.core.ComponentProject.SizeT;
import com.etas.amd620.core.ComponentProject.SoftwareType;
import com.etas.amd620.core.ComponentProject.TargetKeyType;
import com.etas.amd620.core.ComponentProject.TargetType;
import com.etas.amd620.core.ComponentProject.TargetType1;
import com.etas.amd620.core.ComponentProject.TaskBaseT;
import com.etas.amd620.core.ComponentProject.TaskSwBaseT;
import com.etas.amd620.core.ComponentProject.TaskType;
import com.etas.amd620.core.ComponentProject.TaskTypeType;
import com.etas.amd620.core.ComponentProject.TasksType;
import com.etas.amd620.core.ComponentProject.TimeStampT;
import com.etas.amd620.core.ComponentProject.TimetableType;
import com.etas.amd620.core.ComponentProject.TransferOptionsType;
import com.etas.amd620.core.ComponentProject.TypeType;
import com.etas.amd620.core.ComponentProject.ViewType;
import com.etas.amd620.core.ComponentProject.impl.AlarmTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.AssignedOperationModesTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.BuildConfigurationTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.BuildSettingsTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.CodeGeneratorTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.CodeVariantTImpl;
import com.etas.amd620.core.ComponentProject.impl.ColorTImpl;
import com.etas.amd620.core.ComponentProject.impl.CompilerTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.DataConfigurationTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.DocumentRootImpl;
import com.etas.amd620.core.ComponentProject.impl.ERCOSEKTImpl;
import com.etas.amd620.core.ComponentProject.impl.ElementInfoTImpl;
import com.etas.amd620.core.ComponentProject.impl.FileReferenceTImpl;
import com.etas.amd620.core.ComponentProject.impl.FileTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.FilesTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.FormattedTextTImpl;
import com.etas.amd620.core.ComponentProject.impl.GenericDataTImpl;
import com.etas.amd620.core.ComponentProject.impl.GroupType1Impl;
import com.etas.amd620.core.ComponentProject.impl.GroupTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.IconTImpl;
import com.etas.amd620.core.ComponentProject.impl.ImplementationConfigurationTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.InitTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.InterruptTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.IntervalTImpl;
import com.etas.amd620.core.ComponentProject.impl.ItemRefTImpl;
import com.etas.amd620.core.ComponentProject.impl.MessageTTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.MessageTypeTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.ModelConfigurationTImpl;
import com.etas.amd620.core.ComponentProject.impl.NoteTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.NotesTImpl;
import com.etas.amd620.core.ComponentProject.impl.OSLogicTImpl;
import com.etas.amd620.core.ComponentProject.impl.OperatingSystemTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.OperationModeTImpl;
import com.etas.amd620.core.ComponentProject.impl.OperationModeTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.OperationModesTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.OptionTImpl;
import com.etas.amd620.core.ComponentProject.impl.OsDescriptionTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.OsEntryTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.OsLogicTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.OsSettingsTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.PlatformTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.PointTImpl;
import com.etas.amd620.core.ComponentProject.impl.ProcessTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.ProjectTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.SimulationConfigurationTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.SizeTImpl;
import com.etas.amd620.core.ComponentProject.impl.SoftwareTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.TargetKeyTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.TargetType1Impl;
import com.etas.amd620.core.ComponentProject.impl.TargetTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.TaskBaseTImpl;
import com.etas.amd620.core.ComponentProject.impl.TaskSwBaseTImpl;
import com.etas.amd620.core.ComponentProject.impl.TaskTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.TaskTypeTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.TasksTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.TimeStampTImpl;
import com.etas.amd620.core.ComponentProject.impl.TimetableTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.TransferOptionsTypeImpl;
import com.etas.amd620.core.ComponentProject.impl.ViewTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.util.Diagnostician;
import org.eclipse.emf.ecore.xml.type.XMLTypeFactory;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

public class ComponentProjectFactoryImpl
extends EFactoryImpl
implements ComponentProjectFactory {
    public static ComponentProjectFactory init() {
        try {
            ComponentProjectFactory theComponentProjectFactory = (ComponentProjectFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.etas.com/ascet/amd/620/component_project");
            if (theComponentProjectFactory != null) {
                return theComponentProjectFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ComponentProjectFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAlarmType();
            }
            case 1: {
                return this.createAssignedOperationModesType();
            }
            case 2: {
                return this.createBuildConfigurationType();
            }
            case 3: {
                return this.createBuildSettingsType();
            }
            case 4: {
                return this.createCodeGeneratorType();
            }
            case 5: {
                return this.createCodeVariantT();
            }
            case 6: {
                return this.createColorT();
            }
            case 7: {
                return this.createCompilerType();
            }
            case 8: {
                return this.createDataConfigurationType();
            }
            case 9: {
                return this.createDocumentRoot();
            }
            case 10: {
                return this.createElementInfoT();
            }
            case 11: {
                return this.createERCOSEKT();
            }
            case 12: {
                return this.createFileReferenceT();
            }
            case 13: {
                return this.createFilesType();
            }
            case 14: {
                return this.createFileType();
            }
            case 15: {
                return this.createFormattedTextT();
            }
            case 16: {
                return this.createGenericDataT();
            }
            case 17: {
                return this.createGroupType();
            }
            case 18: {
                return this.createGroupType1();
            }
            case 19: {
                return this.createIconT();
            }
            case 20: {
                return this.createImplementationConfigurationType();
            }
            case 21: {
                return this.createInitType();
            }
            case 22: {
                return this.createInterruptType();
            }
            case 23: {
                return this.createIntervalT();
            }
            case 24: {
                return this.createItemRefT();
            }
            case 25: {
                return this.createMessageTType();
            }
            case 26: {
                return this.createMessageTypeType();
            }
            case 27: {
                return this.createModelConfigurationT();
            }
            case 28: {
                return this.createNotesT();
            }
            case 29: {
                return this.createNoteType();
            }
            case 30: {
                return this.createOperatingSystemType();
            }
            case 31: {
                return this.createOperationModesType();
            }
            case 32: {
                return this.createOperationModeT();
            }
            case 33: {
                return this.createOperationModeType();
            }
            case 34: {
                return this.createOptionT();
            }
            case 35: {
                return this.createOsDescriptionType();
            }
            case 36: {
                return this.createOsEntryType();
            }
            case 37: {
                return this.createOSLogicT();
            }
            case 38: {
                return this.createOsLogicType();
            }
            case 39: {
                return this.createOsSettingsType();
            }
            case 40: {
                return this.createPlatformType();
            }
            case 41: {
                return this.createPointT();
            }
            case 42: {
                return this.createProcessType();
            }
            case 43: {
                return this.createProjectType();
            }
            case 44: {
                return this.createSimulationConfigurationType();
            }
            case 45: {
                return this.createSizeT();
            }
            case 46: {
                return this.createSoftwareType();
            }
            case 47: {
                return this.createTargetKeyType();
            }
            case 48: {
                return this.createTargetType();
            }
            case 49: {
                return this.createTargetType1();
            }
            case 50: {
                return this.createTaskBaseT();
            }
            case 51: {
                return this.createTasksType();
            }
            case 52: {
                return this.createTaskSwBaseT();
            }
            case 53: {
                return this.createTaskType();
            }
            case 54: {
                return this.createTaskTypeType();
            }
            case 55: {
                return this.createTimeStampT();
            }
            case 56: {
                return this.createTimetableType();
            }
            case 57: {
                return this.createTransferOptionsType();
            }
            case 58: {
                return this.createViewType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 59: {
                return this.createCodeGeneratorTFromString(eDataType, initialValue);
            }
            case 60: {
                return this.createExperimentTargetTypeFromString(eDataType, initialValue);
            }
            case 61: {
                return this.createPrePostHooksTypeFromString(eDataType, initialValue);
            }
            case 62: {
                return this.createSchedulingTypeFromString(eDataType, initialValue);
            }
            case 63: {
                return this.createTypeTypeFromString(eDataType, initialValue);
            }
            case 64: {
                return this.createCodeGeneratorTObjectFromString(eDataType, initialValue);
            }
            case 65: {
                return this.createExperimentTargetTypeObjectFromString(eDataType, initialValue);
            }
            case 66: {
                return this.createNumberOrFractionFromString(eDataType, initialValue);
            }
            case 67: {
                return this.createNumberOrFractionMember1FromString(eDataType, initialValue);
            }
            case 68: {
                return this.createNzqrFromString(eDataType, initialValue);
            }
            case 69: {
                return this.createNzqrMember2FromString(eDataType, initialValue);
            }
            case 70: {
                return this.createOIDFromString(eDataType, initialValue);
            }
            case 71: {
                return this.createPrePostHooksTypeObjectFromString(eDataType, initialValue);
            }
            case 72: {
                return this.createSchedulingTypeObjectFromString(eDataType, initialValue);
            }
            case 73: {
                return this.createTypeTypeObjectFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 59: {
                return this.convertCodeGeneratorTToString(eDataType, instanceValue);
            }
            case 60: {
                return this.convertExperimentTargetTypeToString(eDataType, instanceValue);
            }
            case 61: {
                return this.convertPrePostHooksTypeToString(eDataType, instanceValue);
            }
            case 62: {
                return this.convertSchedulingTypeToString(eDataType, instanceValue);
            }
            case 63: {
                return this.convertTypeTypeToString(eDataType, instanceValue);
            }
            case 64: {
                return this.convertCodeGeneratorTObjectToString(eDataType, instanceValue);
            }
            case 65: {
                return this.convertExperimentTargetTypeObjectToString(eDataType, instanceValue);
            }
            case 66: {
                return this.convertNumberOrFractionToString(eDataType, instanceValue);
            }
            case 67: {
                return this.convertNumberOrFractionMember1ToString(eDataType, instanceValue);
            }
            case 68: {
                return this.convertNzqrToString(eDataType, instanceValue);
            }
            case 69: {
                return this.convertNzqrMember2ToString(eDataType, instanceValue);
            }
            case 70: {
                return this.convertOIDToString(eDataType, instanceValue);
            }
            case 71: {
                return this.convertPrePostHooksTypeObjectToString(eDataType, instanceValue);
            }
            case 72: {
                return this.convertSchedulingTypeObjectToString(eDataType, instanceValue);
            }
            case 73: {
                return this.convertTypeTypeObjectToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    @Override
    public AlarmType createAlarmType() {
        AlarmTypeImpl alarmType = new AlarmTypeImpl();
        return alarmType;
    }

    @Override
    public AssignedOperationModesType createAssignedOperationModesType() {
        AssignedOperationModesTypeImpl assignedOperationModesType = new AssignedOperationModesTypeImpl();
        return assignedOperationModesType;
    }

    @Override
    public BuildConfigurationType createBuildConfigurationType() {
        BuildConfigurationTypeImpl buildConfigurationType = new BuildConfigurationTypeImpl();
        return buildConfigurationType;
    }

    @Override
    public BuildSettingsType createBuildSettingsType() {
        BuildSettingsTypeImpl buildSettingsType = new BuildSettingsTypeImpl();
        return buildSettingsType;
    }

    @Override
    public CodeGeneratorType createCodeGeneratorType() {
        CodeGeneratorTypeImpl codeGeneratorType = new CodeGeneratorTypeImpl();
        return codeGeneratorType;
    }

    @Override
    public CodeVariantT createCodeVariantT() {
        CodeVariantTImpl codeVariantT = new CodeVariantTImpl();
        return codeVariantT;
    }

    @Override
    public ColorT createColorT() {
        ColorTImpl colorT = new ColorTImpl();
        return colorT;
    }

    @Override
    public CompilerType createCompilerType() {
        CompilerTypeImpl compilerType = new CompilerTypeImpl();
        return compilerType;
    }

    @Override
    public DataConfigurationType createDataConfigurationType() {
        DataConfigurationTypeImpl dataConfigurationType = new DataConfigurationTypeImpl();
        return dataConfigurationType;
    }

    @Override
    public DocumentRoot createDocumentRoot() {
        DocumentRootImpl documentRoot = new DocumentRootImpl();
        return documentRoot;
    }

    @Override
    public ElementInfoT createElementInfoT() {
        ElementInfoTImpl elementInfoT = new ElementInfoTImpl();
        return elementInfoT;
    }

    @Override
    public ERCOSEKT createERCOSEKT() {
        ERCOSEKTImpl ercosekt = new ERCOSEKTImpl();
        return ercosekt;
    }

    @Override
    public FileReferenceT createFileReferenceT() {
        FileReferenceTImpl fileReferenceT = new FileReferenceTImpl();
        return fileReferenceT;
    }

    @Override
    public FilesType createFilesType() {
        FilesTypeImpl filesType = new FilesTypeImpl();
        return filesType;
    }

    @Override
    public FileType createFileType() {
        FileTypeImpl fileType = new FileTypeImpl();
        return fileType;
    }

    @Override
    public FormattedTextT createFormattedTextT() {
        FormattedTextTImpl formattedTextT = new FormattedTextTImpl();
        return formattedTextT;
    }

    @Override
    public GenericDataT createGenericDataT() {
        GenericDataTImpl genericDataT = new GenericDataTImpl();
        return genericDataT;
    }

    @Override
    public GroupType createGroupType() {
        GroupTypeImpl groupType = new GroupTypeImpl();
        return groupType;
    }

    @Override
    public GroupType1 createGroupType1() {
        GroupType1Impl groupType1 = new GroupType1Impl();
        return groupType1;
    }

    @Override
    public IconT createIconT() {
        IconTImpl iconT = new IconTImpl();
        return iconT;
    }

    @Override
    public ImplementationConfigurationType createImplementationConfigurationType() {
        ImplementationConfigurationTypeImpl implementationConfigurationType = new ImplementationConfigurationTypeImpl();
        return implementationConfigurationType;
    }

    @Override
    public InitType createInitType() {
        InitTypeImpl initType = new InitTypeImpl();
        return initType;
    }

    @Override
    public InterruptType createInterruptType() {
        InterruptTypeImpl interruptType = new InterruptTypeImpl();
        return interruptType;
    }

    @Override
    public IntervalT createIntervalT() {
        IntervalTImpl intervalT = new IntervalTImpl();
        return intervalT;
    }

    @Override
    public ItemRefT createItemRefT() {
        ItemRefTImpl itemRefT = new ItemRefTImpl();
        return itemRefT;
    }

    @Override
    public MessageTType createMessageTType() {
        MessageTTypeImpl messageTType = new MessageTTypeImpl();
        return messageTType;
    }

    @Override
    public MessageTypeType createMessageTypeType() {
        MessageTypeTypeImpl messageTypeType = new MessageTypeTypeImpl();
        return messageTypeType;
    }

    @Override
    public ModelConfigurationT createModelConfigurationT() {
        ModelConfigurationTImpl modelConfigurationT = new ModelConfigurationTImpl();
        return modelConfigurationT;
    }

    @Override
    public NotesT createNotesT() {
        NotesTImpl notesT = new NotesTImpl();
        return notesT;
    }

    @Override
    public NoteType createNoteType() {
        NoteTypeImpl noteType = new NoteTypeImpl();
        return noteType;
    }

    @Override
    public OperatingSystemType createOperatingSystemType() {
        OperatingSystemTypeImpl operatingSystemType = new OperatingSystemTypeImpl();
        return operatingSystemType;
    }

    @Override
    public OperationModesType createOperationModesType() {
        OperationModesTypeImpl operationModesType = new OperationModesTypeImpl();
        return operationModesType;
    }

    @Override
    public OperationModeT createOperationModeT() {
        OperationModeTImpl operationModeT = new OperationModeTImpl();
        return operationModeT;
    }

    @Override
    public OperationModeType createOperationModeType() {
        OperationModeTypeImpl operationModeType = new OperationModeTypeImpl();
        return operationModeType;
    }

    @Override
    public OptionT createOptionT() {
        OptionTImpl optionT = new OptionTImpl();
        return optionT;
    }

    @Override
    public OsDescriptionType createOsDescriptionType() {
        OsDescriptionTypeImpl osDescriptionType = new OsDescriptionTypeImpl();
        return osDescriptionType;
    }

    @Override
    public OsEntryType createOsEntryType() {
        OsEntryTypeImpl osEntryType = new OsEntryTypeImpl();
        return osEntryType;
    }

    @Override
    public OSLogicT createOSLogicT() {
        OSLogicTImpl osLogicT = new OSLogicTImpl();
        return osLogicT;
    }

    @Override
    public OsLogicType createOsLogicType() {
        OsLogicTypeImpl osLogicType = new OsLogicTypeImpl();
        return osLogicType;
    }

    @Override
    public OsSettingsType createOsSettingsType() {
        OsSettingsTypeImpl osSettingsType = new OsSettingsTypeImpl();
        return osSettingsType;
    }

    @Override
    public PlatformType createPlatformType() {
        PlatformTypeImpl platformType = new PlatformTypeImpl();
        return platformType;
    }

    @Override
    public PointT createPointT() {
        PointTImpl pointT = new PointTImpl();
        return pointT;
    }

    @Override
    public ProcessType createProcessType() {
        ProcessTypeImpl processType = new ProcessTypeImpl();
        return processType;
    }

    @Override
    public ProjectType createProjectType() {
        ProjectTypeImpl projectType = new ProjectTypeImpl();
        return projectType;
    }

    @Override
    public SimulationConfigurationType createSimulationConfigurationType() {
        SimulationConfigurationTypeImpl simulationConfigurationType = new SimulationConfigurationTypeImpl();
        return simulationConfigurationType;
    }

    @Override
    public SizeT createSizeT() {
        SizeTImpl sizeT = new SizeTImpl();
        return sizeT;
    }

    @Override
    public SoftwareType createSoftwareType() {
        SoftwareTypeImpl softwareType = new SoftwareTypeImpl();
        return softwareType;
    }

    @Override
    public TargetKeyType createTargetKeyType() {
        TargetKeyTypeImpl targetKeyType = new TargetKeyTypeImpl();
        return targetKeyType;
    }

    @Override
    public TargetType createTargetType() {
        TargetTypeImpl targetType = new TargetTypeImpl();
        return targetType;
    }

    @Override
    public TargetType1 createTargetType1() {
        TargetType1Impl targetType1 = new TargetType1Impl();
        return targetType1;
    }

    @Override
    public TaskBaseT createTaskBaseT() {
        TaskBaseTImpl taskBaseT = new TaskBaseTImpl();
        return taskBaseT;
    }

    @Override
    public TasksType createTasksType() {
        TasksTypeImpl tasksType = new TasksTypeImpl();
        return tasksType;
    }

    @Override
    public TaskSwBaseT createTaskSwBaseT() {
        TaskSwBaseTImpl taskSwBaseT = new TaskSwBaseTImpl();
        return taskSwBaseT;
    }

    @Override
    public TaskType createTaskType() {
        TaskTypeImpl taskType = new TaskTypeImpl();
        return taskType;
    }

    @Override
    public TaskTypeType createTaskTypeType() {
        TaskTypeTypeImpl taskTypeType = new TaskTypeTypeImpl();
        return taskTypeType;
    }

    @Override
    public TimeStampT createTimeStampT() {
        TimeStampTImpl timeStampT = new TimeStampTImpl();
        return timeStampT;
    }

    @Override
    public TimetableType createTimetableType() {
        TimetableTypeImpl timetableType = new TimetableTypeImpl();
        return timetableType;
    }

    @Override
    public TransferOptionsType createTransferOptionsType() {
        TransferOptionsTypeImpl transferOptionsType = new TransferOptionsTypeImpl();
        return transferOptionsType;
    }

    @Override
    public ViewType createViewType() {
        ViewTypeImpl viewType = new ViewTypeImpl();
        return viewType;
    }

    public CodeGeneratorT createCodeGeneratorTFromString(EDataType eDataType, String initialValue) {
        CodeGeneratorT result = CodeGeneratorT.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCodeGeneratorTToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ExperimentTargetType createExperimentTargetTypeFromString(EDataType eDataType, String initialValue) {
        ExperimentTargetType result = ExperimentTargetType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertExperimentTargetTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public PrePostHooksType createPrePostHooksTypeFromString(EDataType eDataType, String initialValue) {
        PrePostHooksType result = PrePostHooksType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertPrePostHooksTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SchedulingType createSchedulingTypeFromString(EDataType eDataType, String initialValue) {
        SchedulingType result = SchedulingType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSchedulingTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TypeType createTypeTypeFromString(EDataType eDataType, String initialValue) {
        TypeType result = TypeType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTypeTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CodeGeneratorT createCodeGeneratorTObjectFromString(EDataType eDataType, String initialValue) {
        return this.createCodeGeneratorTFromString((EDataType)ComponentProjectPackage.Literals.CODE_GENERATOR_T, initialValue);
    }

    public String convertCodeGeneratorTObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertCodeGeneratorTToString((EDataType)ComponentProjectPackage.Literals.CODE_GENERATOR_T, instanceValue);
    }

    public ExperimentTargetType createExperimentTargetTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createExperimentTargetTypeFromString((EDataType)ComponentProjectPackage.Literals.EXPERIMENT_TARGET_TYPE, initialValue);
    }

    public String convertExperimentTargetTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertExperimentTargetTypeToString((EDataType)ComponentProjectPackage.Literals.EXPERIMENT_TARGET_TYPE, instanceValue);
    }

    public Object createNumberOrFractionFromString(EDataType eDataType, String initialValue) {
        if (initialValue == null) {
            return null;
        }
        Object result = null;
        RuntimeException exception = null;
        try {
            result = XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.DOUBLE, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        try {
            result = this.createNumberOrFractionMember1FromString(ComponentProjectPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        if (result != null || exception == null) {
            return result;
        }
        throw exception;
    }

    public String convertNumberOrFractionToString(EDataType eDataType, Object instanceValue) {
        String value;
        if (instanceValue == null) {
            return null;
        }
        if (XMLTypePackage.Literals.DOUBLE.isInstance(instanceValue)) {
            try {
                value = XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.DOUBLE, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        if (ComponentProjectPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(instanceValue)) {
            try {
                value = this.convertNumberOrFractionMember1ToString(ComponentProjectPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        throw new IllegalArgumentException("Invalid value: '" + instanceValue + "' for datatype :" + eDataType.getName());
    }

    public String createNumberOrFractionMember1FromString(EDataType eDataType, String initialValue) {
        return (String)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.STRING, initialValue);
    }

    public String convertNumberOrFractionMember1ToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.STRING, instanceValue);
    }

    public Object createNzqrFromString(EDataType eDataType, String initialValue) {
        if (initialValue == null) {
            return null;
        }
        Object result = null;
        RuntimeException exception = null;
        try {
            result = XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.DOUBLE, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        try {
            result = XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.INT, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        try {
            result = this.createNzqrMember2FromString(ComponentProjectPackage.Literals.NZQR_MEMBER2, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        if (result != null || exception == null) {
            return result;
        }
        throw exception;
    }

    public String convertNzqrToString(EDataType eDataType, Object instanceValue) {
        String value;
        if (instanceValue == null) {
            return null;
        }
        if (XMLTypePackage.Literals.DOUBLE.isInstance(instanceValue)) {
            try {
                value = XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.DOUBLE, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        if (XMLTypePackage.Literals.INT.isInstance(instanceValue)) {
            try {
                value = XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.INT, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        if (ComponentProjectPackage.Literals.NZQR_MEMBER2.isInstance(instanceValue)) {
            try {
                value = this.convertNzqrMember2ToString(ComponentProjectPackage.Literals.NZQR_MEMBER2, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        throw new IllegalArgumentException("Invalid value: '" + instanceValue + "' for datatype :" + eDataType.getName());
    }

    public String createNzqrMember2FromString(EDataType eDataType, String initialValue) {
        return (String)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.STRING, initialValue);
    }

    public String convertNzqrMember2ToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.STRING, instanceValue);
    }

    public String createOIDFromString(EDataType eDataType, String initialValue) {
        return (String)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.STRING, initialValue);
    }

    public String convertOIDToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.STRING, instanceValue);
    }

    public PrePostHooksType createPrePostHooksTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createPrePostHooksTypeFromString((EDataType)ComponentProjectPackage.Literals.PRE_POST_HOOKS_TYPE, initialValue);
    }

    public String convertPrePostHooksTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertPrePostHooksTypeToString((EDataType)ComponentProjectPackage.Literals.PRE_POST_HOOKS_TYPE, instanceValue);
    }

    public SchedulingType createSchedulingTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createSchedulingTypeFromString((EDataType)ComponentProjectPackage.Literals.SCHEDULING_TYPE, initialValue);
    }

    public String convertSchedulingTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertSchedulingTypeToString((EDataType)ComponentProjectPackage.Literals.SCHEDULING_TYPE, instanceValue);
    }

    public TypeType createTypeTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createTypeTypeFromString((EDataType)ComponentProjectPackage.Literals.TYPE_TYPE, initialValue);
    }

    public String convertTypeTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertTypeTypeToString((EDataType)ComponentProjectPackage.Literals.TYPE_TYPE, instanceValue);
    }

    @Override
    public ComponentProjectPackage getComponentProjectPackage() {
        return (ComponentProjectPackage)this.getEPackage();
    }

    @Deprecated
    public static ComponentProjectPackage getPackage() {
        return ComponentProjectPackage.eINSTANCE;
    }
}

