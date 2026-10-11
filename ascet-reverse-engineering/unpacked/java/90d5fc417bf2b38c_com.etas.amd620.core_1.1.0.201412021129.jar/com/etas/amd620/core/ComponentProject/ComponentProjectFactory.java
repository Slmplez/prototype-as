/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.AlarmType;
import com.etas.amd620.core.ComponentProject.AssignedOperationModesType;
import com.etas.amd620.core.ComponentProject.BuildConfigurationType;
import com.etas.amd620.core.ComponentProject.BuildSettingsType;
import com.etas.amd620.core.ComponentProject.CodeGeneratorType;
import com.etas.amd620.core.ComponentProject.CodeVariantT;
import com.etas.amd620.core.ComponentProject.ColorT;
import com.etas.amd620.core.ComponentProject.CompilerType;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.DataConfigurationType;
import com.etas.amd620.core.ComponentProject.DocumentRoot;
import com.etas.amd620.core.ComponentProject.ERCOSEKT;
import com.etas.amd620.core.ComponentProject.ElementInfoT;
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
import com.etas.amd620.core.ComponentProject.ProcessType;
import com.etas.amd620.core.ComponentProject.ProjectType;
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
import com.etas.amd620.core.ComponentProject.ViewType;
import com.etas.amd620.core.ComponentProject.impl.ComponentProjectFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ComponentProjectFactory
extends EFactory {
    public static final ComponentProjectFactory eINSTANCE = ComponentProjectFactoryImpl.init();

    public AlarmType createAlarmType();

    public AssignedOperationModesType createAssignedOperationModesType();

    public BuildConfigurationType createBuildConfigurationType();

    public BuildSettingsType createBuildSettingsType();

    public CodeGeneratorType createCodeGeneratorType();

    public CodeVariantT createCodeVariantT();

    public ColorT createColorT();

    public CompilerType createCompilerType();

    public DataConfigurationType createDataConfigurationType();

    public DocumentRoot createDocumentRoot();

    public ElementInfoT createElementInfoT();

    public ERCOSEKT createERCOSEKT();

    public FileReferenceT createFileReferenceT();

    public FilesType createFilesType();

    public FileType createFileType();

    public FormattedTextT createFormattedTextT();

    public GenericDataT createGenericDataT();

    public GroupType createGroupType();

    public GroupType1 createGroupType1();

    public IconT createIconT();

    public ImplementationConfigurationType createImplementationConfigurationType();

    public InitType createInitType();

    public InterruptType createInterruptType();

    public IntervalT createIntervalT();

    public ItemRefT createItemRefT();

    public MessageTType createMessageTType();

    public MessageTypeType createMessageTypeType();

    public ModelConfigurationT createModelConfigurationT();

    public NotesT createNotesT();

    public NoteType createNoteType();

    public OperatingSystemType createOperatingSystemType();

    public OperationModesType createOperationModesType();

    public OperationModeT createOperationModeT();

    public OperationModeType createOperationModeType();

    public OptionT createOptionT();

    public OsDescriptionType createOsDescriptionType();

    public OsEntryType createOsEntryType();

    public OSLogicT createOSLogicT();

    public OsLogicType createOsLogicType();

    public OsSettingsType createOsSettingsType();

    public PlatformType createPlatformType();

    public PointT createPointT();

    public ProcessType createProcessType();

    public ProjectType createProjectType();

    public SimulationConfigurationType createSimulationConfigurationType();

    public SizeT createSizeT();

    public SoftwareType createSoftwareType();

    public TargetKeyType createTargetKeyType();

    public TargetType createTargetType();

    public TargetType1 createTargetType1();

    public TaskBaseT createTaskBaseT();

    public TasksType createTasksType();

    public TaskSwBaseT createTaskSwBaseT();

    public TaskType createTaskType();

    public TaskTypeType createTaskTypeType();

    public TimeStampT createTimeStampT();

    public TimetableType createTimetableType();

    public TransferOptionsType createTransferOptionsType();

    public ViewType createViewType();

    public ComponentProjectPackage getComponentProjectPackage();
}

