/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.util.Switch
 */
package com.etas.amd620.core.ComponentProject.util;

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
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.Switch;

public class ComponentProjectSwitch<T>
extends Switch<T> {
    protected static ComponentProjectPackage modelPackage;

    public ComponentProjectSwitch() {
        if (modelPackage == null) {
            modelPackage = ComponentProjectPackage.eINSTANCE;
        }
    }

    protected boolean isSwitchFor(EPackage ePackage) {
        return ePackage == modelPackage;
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                AlarmType alarmType = (AlarmType)theEObject;
                T result = this.caseAlarmType(alarmType);
                if (result == null) {
                    result = this.caseTaskSwBaseT(alarmType);
                }
                if (result == null) {
                    result = this.caseTaskBaseT(alarmType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                AssignedOperationModesType assignedOperationModesType = (AssignedOperationModesType)theEObject;
                T result = this.caseAssignedOperationModesType(assignedOperationModesType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                BuildConfigurationType buildConfigurationType = (BuildConfigurationType)theEObject;
                T result = this.caseBuildConfigurationType(buildConfigurationType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                BuildSettingsType buildSettingsType = (BuildSettingsType)theEObject;
                T result = this.caseBuildSettingsType(buildSettingsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                CodeGeneratorType codeGeneratorType = (CodeGeneratorType)theEObject;
                T result = this.caseCodeGeneratorType(codeGeneratorType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                CodeVariantT codeVariantT = (CodeVariantT)theEObject;
                T result = this.caseCodeVariantT(codeVariantT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                ColorT colorT = (ColorT)theEObject;
                T result = this.caseColorT(colorT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                CompilerType compilerType = (CompilerType)theEObject;
                T result = this.caseCompilerType(compilerType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                DataConfigurationType dataConfigurationType = (DataConfigurationType)theEObject;
                T result = this.caseDataConfigurationType(dataConfigurationType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                DocumentRoot documentRoot = (DocumentRoot)theEObject;
                T result = this.caseDocumentRoot(documentRoot);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                ElementInfoT elementInfoT = (ElementInfoT)theEObject;
                T result = this.caseElementInfoT(elementInfoT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                ERCOSEKT ercosekt = (ERCOSEKT)theEObject;
                T result = this.caseERCOSEKT(ercosekt);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                FileReferenceT fileReferenceT = (FileReferenceT)theEObject;
                T result = this.caseFileReferenceT(fileReferenceT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                FilesType filesType = (FilesType)theEObject;
                T result = this.caseFilesType(filesType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                FileType fileType = (FileType)theEObject;
                T result = this.caseFileType(fileType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                FormattedTextT formattedTextT = (FormattedTextT)theEObject;
                T result = this.caseFormattedTextT(formattedTextT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                GenericDataT genericDataT = (GenericDataT)theEObject;
                T result = this.caseGenericDataT(genericDataT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                GroupType groupType = (GroupType)theEObject;
                T result = this.caseGroupType(groupType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                GroupType1 groupType1 = (GroupType1)theEObject;
                T result = this.caseGroupType1(groupType1);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                IconT iconT = (IconT)theEObject;
                T result = this.caseIconT(iconT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                ImplementationConfigurationType implementationConfigurationType = (ImplementationConfigurationType)theEObject;
                T result = this.caseImplementationConfigurationType(implementationConfigurationType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                InitType initType = (InitType)theEObject;
                T result = this.caseInitType(initType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 22: {
                InterruptType interruptType = (InterruptType)theEObject;
                T result = this.caseInterruptType(interruptType);
                if (result == null) {
                    result = this.caseTaskBaseT(interruptType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 23: {
                IntervalT intervalT = (IntervalT)theEObject;
                T result = this.caseIntervalT(intervalT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 24: {
                ItemRefT itemRefT = (ItemRefT)theEObject;
                T result = this.caseItemRefT(itemRefT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 25: {
                MessageTType messageTType = (MessageTType)theEObject;
                T result = this.caseMessageTType(messageTType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 26: {
                MessageTypeType messageTypeType = (MessageTypeType)theEObject;
                T result = this.caseMessageTypeType(messageTypeType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 27: {
                ModelConfigurationT modelConfigurationT = (ModelConfigurationT)theEObject;
                T result = this.caseModelConfigurationT(modelConfigurationT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 28: {
                NotesT notesT = (NotesT)theEObject;
                T result = this.caseNotesT(notesT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 29: {
                NoteType noteType = (NoteType)theEObject;
                T result = this.caseNoteType(noteType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 30: {
                OperatingSystemType operatingSystemType = (OperatingSystemType)theEObject;
                T result = this.caseOperatingSystemType(operatingSystemType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 31: {
                OperationModesType operationModesType = (OperationModesType)theEObject;
                T result = this.caseOperationModesType(operationModesType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 32: {
                OperationModeT operationModeT = (OperationModeT)theEObject;
                T result = this.caseOperationModeT(operationModeT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 33: {
                OperationModeType operationModeType = (OperationModeType)theEObject;
                T result = this.caseOperationModeType(operationModeType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 34: {
                OptionT optionT = (OptionT)theEObject;
                T result = this.caseOptionT(optionT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 35: {
                OsDescriptionType osDescriptionType = (OsDescriptionType)theEObject;
                T result = this.caseOsDescriptionType(osDescriptionType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 36: {
                OsEntryType osEntryType = (OsEntryType)theEObject;
                T result = this.caseOsEntryType(osEntryType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 37: {
                OSLogicT osLogicT = (OSLogicT)theEObject;
                T result = this.caseOSLogicT(osLogicT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 38: {
                OsLogicType osLogicType = (OsLogicType)theEObject;
                T result = this.caseOsLogicType(osLogicType);
                if (result == null) {
                    result = this.caseOSLogicT(osLogicType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 39: {
                OsSettingsType osSettingsType = (OsSettingsType)theEObject;
                T result = this.caseOsSettingsType(osSettingsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 40: {
                PlatformType platformType = (PlatformType)theEObject;
                T result = this.casePlatformType(platformType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 41: {
                PointT pointT = (PointT)theEObject;
                T result = this.casePointT(pointT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 42: {
                ProcessType processType = (ProcessType)theEObject;
                T result = this.caseProcessType(processType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 43: {
                ProjectType projectType = (ProjectType)theEObject;
                T result = this.caseProjectType(projectType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 44: {
                SimulationConfigurationType simulationConfigurationType = (SimulationConfigurationType)theEObject;
                T result = this.caseSimulationConfigurationType(simulationConfigurationType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 45: {
                SizeT sizeT = (SizeT)theEObject;
                T result = this.caseSizeT(sizeT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 46: {
                SoftwareType softwareType = (SoftwareType)theEObject;
                T result = this.caseSoftwareType(softwareType);
                if (result == null) {
                    result = this.caseTaskSwBaseT(softwareType);
                }
                if (result == null) {
                    result = this.caseTaskBaseT(softwareType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 47: {
                TargetKeyType targetKeyType = (TargetKeyType)theEObject;
                T result = this.caseTargetKeyType(targetKeyType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 48: {
                TargetType targetType = (TargetType)theEObject;
                T result = this.caseTargetType(targetType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 49: {
                TargetType1 targetType1 = (TargetType1)theEObject;
                T result = this.caseTargetType1(targetType1);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 50: {
                TaskBaseT taskBaseT = (TaskBaseT)theEObject;
                T result = this.caseTaskBaseT(taskBaseT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 51: {
                TasksType tasksType = (TasksType)theEObject;
                T result = this.caseTasksType(tasksType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 52: {
                TaskSwBaseT taskSwBaseT = (TaskSwBaseT)theEObject;
                T result = this.caseTaskSwBaseT(taskSwBaseT);
                if (result == null) {
                    result = this.caseTaskBaseT(taskSwBaseT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 53: {
                TaskType taskType = (TaskType)theEObject;
                T result = this.caseTaskType(taskType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 54: {
                TaskTypeType taskTypeType = (TaskTypeType)theEObject;
                T result = this.caseTaskTypeType(taskTypeType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 55: {
                TimeStampT timeStampT = (TimeStampT)theEObject;
                T result = this.caseTimeStampT(timeStampT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 56: {
                TimetableType timetableType = (TimetableType)theEObject;
                T result = this.caseTimetableType(timetableType);
                if (result == null) {
                    result = this.caseTaskSwBaseT(timetableType);
                }
                if (result == null) {
                    result = this.caseTaskBaseT(timetableType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 57: {
                TransferOptionsType transferOptionsType = (TransferOptionsType)theEObject;
                T result = this.caseTransferOptionsType(transferOptionsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 58: {
                ViewType viewType = (ViewType)theEObject;
                T result = this.caseViewType(viewType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAlarmType(AlarmType object) {
        return null;
    }

    public T caseAssignedOperationModesType(AssignedOperationModesType object) {
        return null;
    }

    public T caseBuildConfigurationType(BuildConfigurationType object) {
        return null;
    }

    public T caseBuildSettingsType(BuildSettingsType object) {
        return null;
    }

    public T caseCodeGeneratorType(CodeGeneratorType object) {
        return null;
    }

    public T caseCodeVariantT(CodeVariantT object) {
        return null;
    }

    public T caseColorT(ColorT object) {
        return null;
    }

    public T caseCompilerType(CompilerType object) {
        return null;
    }

    public T caseDataConfigurationType(DataConfigurationType object) {
        return null;
    }

    public T caseDocumentRoot(DocumentRoot object) {
        return null;
    }

    public T caseElementInfoT(ElementInfoT object) {
        return null;
    }

    public T caseERCOSEKT(ERCOSEKT object) {
        return null;
    }

    public T caseFileReferenceT(FileReferenceT object) {
        return null;
    }

    public T caseFilesType(FilesType object) {
        return null;
    }

    public T caseFileType(FileType object) {
        return null;
    }

    public T caseFormattedTextT(FormattedTextT object) {
        return null;
    }

    public T caseGenericDataT(GenericDataT object) {
        return null;
    }

    public T caseGroupType(GroupType object) {
        return null;
    }

    public T caseGroupType1(GroupType1 object) {
        return null;
    }

    public T caseIconT(IconT object) {
        return null;
    }

    public T caseImplementationConfigurationType(ImplementationConfigurationType object) {
        return null;
    }

    public T caseInitType(InitType object) {
        return null;
    }

    public T caseInterruptType(InterruptType object) {
        return null;
    }

    public T caseIntervalT(IntervalT object) {
        return null;
    }

    public T caseItemRefT(ItemRefT object) {
        return null;
    }

    public T caseMessageTType(MessageTType object) {
        return null;
    }

    public T caseMessageTypeType(MessageTypeType object) {
        return null;
    }

    public T caseModelConfigurationT(ModelConfigurationT object) {
        return null;
    }

    public T caseNotesT(NotesT object) {
        return null;
    }

    public T caseNoteType(NoteType object) {
        return null;
    }

    public T caseOperatingSystemType(OperatingSystemType object) {
        return null;
    }

    public T caseOperationModesType(OperationModesType object) {
        return null;
    }

    public T caseOperationModeT(OperationModeT object) {
        return null;
    }

    public T caseOperationModeType(OperationModeType object) {
        return null;
    }

    public T caseOptionT(OptionT object) {
        return null;
    }

    public T caseOsDescriptionType(OsDescriptionType object) {
        return null;
    }

    public T caseOsEntryType(OsEntryType object) {
        return null;
    }

    public T caseOSLogicT(OSLogicT object) {
        return null;
    }

    public T caseOsLogicType(OsLogicType object) {
        return null;
    }

    public T caseOsSettingsType(OsSettingsType object) {
        return null;
    }

    public T casePlatformType(PlatformType object) {
        return null;
    }

    public T casePointT(PointT object) {
        return null;
    }

    public T caseProcessType(ProcessType object) {
        return null;
    }

    public T caseProjectType(ProjectType object) {
        return null;
    }

    public T caseSimulationConfigurationType(SimulationConfigurationType object) {
        return null;
    }

    public T caseSizeT(SizeT object) {
        return null;
    }

    public T caseSoftwareType(SoftwareType object) {
        return null;
    }

    public T caseTargetKeyType(TargetKeyType object) {
        return null;
    }

    public T caseTargetType(TargetType object) {
        return null;
    }

    public T caseTargetType1(TargetType1 object) {
        return null;
    }

    public T caseTaskBaseT(TaskBaseT object) {
        return null;
    }

    public T caseTasksType(TasksType object) {
        return null;
    }

    public T caseTaskSwBaseT(TaskSwBaseT object) {
        return null;
    }

    public T caseTaskType(TaskType object) {
        return null;
    }

    public T caseTaskTypeType(TaskTypeType object) {
        return null;
    }

    public T caseTimeStampT(TimeStampT object) {
        return null;
    }

    public T caseTimetableType(TimetableType object) {
        return null;
    }

    public T caseTransferOptionsType(TransferOptionsType object) {
        return null;
    }

    public T caseViewType(ViewType object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

