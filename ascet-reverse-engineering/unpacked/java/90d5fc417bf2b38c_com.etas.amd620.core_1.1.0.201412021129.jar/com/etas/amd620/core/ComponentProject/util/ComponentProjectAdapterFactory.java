/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
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
import com.etas.amd620.core.ComponentProject.util.ComponentProjectSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ComponentProjectAdapterFactory
extends AdapterFactoryImpl {
    protected static ComponentProjectPackage modelPackage;
    protected ComponentProjectSwitch<Adapter> modelSwitch = new ComponentProjectSwitch<Adapter>(){

        @Override
        public Adapter caseAlarmType(AlarmType object) {
            return ComponentProjectAdapterFactory.this.createAlarmTypeAdapter();
        }

        @Override
        public Adapter caseAssignedOperationModesType(AssignedOperationModesType object) {
            return ComponentProjectAdapterFactory.this.createAssignedOperationModesTypeAdapter();
        }

        @Override
        public Adapter caseBuildConfigurationType(BuildConfigurationType object) {
            return ComponentProjectAdapterFactory.this.createBuildConfigurationTypeAdapter();
        }

        @Override
        public Adapter caseBuildSettingsType(BuildSettingsType object) {
            return ComponentProjectAdapterFactory.this.createBuildSettingsTypeAdapter();
        }

        @Override
        public Adapter caseCodeGeneratorType(CodeGeneratorType object) {
            return ComponentProjectAdapterFactory.this.createCodeGeneratorTypeAdapter();
        }

        @Override
        public Adapter caseCodeVariantT(CodeVariantT object) {
            return ComponentProjectAdapterFactory.this.createCodeVariantTAdapter();
        }

        @Override
        public Adapter caseColorT(ColorT object) {
            return ComponentProjectAdapterFactory.this.createColorTAdapter();
        }

        @Override
        public Adapter caseCompilerType(CompilerType object) {
            return ComponentProjectAdapterFactory.this.createCompilerTypeAdapter();
        }

        @Override
        public Adapter caseDataConfigurationType(DataConfigurationType object) {
            return ComponentProjectAdapterFactory.this.createDataConfigurationTypeAdapter();
        }

        @Override
        public Adapter caseDocumentRoot(DocumentRoot object) {
            return ComponentProjectAdapterFactory.this.createDocumentRootAdapter();
        }

        @Override
        public Adapter caseElementInfoT(ElementInfoT object) {
            return ComponentProjectAdapterFactory.this.createElementInfoTAdapter();
        }

        @Override
        public Adapter caseERCOSEKT(ERCOSEKT object) {
            return ComponentProjectAdapterFactory.this.createERCOSEKTAdapter();
        }

        @Override
        public Adapter caseFileReferenceT(FileReferenceT object) {
            return ComponentProjectAdapterFactory.this.createFileReferenceTAdapter();
        }

        @Override
        public Adapter caseFilesType(FilesType object) {
            return ComponentProjectAdapterFactory.this.createFilesTypeAdapter();
        }

        @Override
        public Adapter caseFileType(FileType object) {
            return ComponentProjectAdapterFactory.this.createFileTypeAdapter();
        }

        @Override
        public Adapter caseFormattedTextT(FormattedTextT object) {
            return ComponentProjectAdapterFactory.this.createFormattedTextTAdapter();
        }

        @Override
        public Adapter caseGenericDataT(GenericDataT object) {
            return ComponentProjectAdapterFactory.this.createGenericDataTAdapter();
        }

        @Override
        public Adapter caseGroupType(GroupType object) {
            return ComponentProjectAdapterFactory.this.createGroupTypeAdapter();
        }

        @Override
        public Adapter caseGroupType1(GroupType1 object) {
            return ComponentProjectAdapterFactory.this.createGroupType1Adapter();
        }

        @Override
        public Adapter caseIconT(IconT object) {
            return ComponentProjectAdapterFactory.this.createIconTAdapter();
        }

        @Override
        public Adapter caseImplementationConfigurationType(ImplementationConfigurationType object) {
            return ComponentProjectAdapterFactory.this.createImplementationConfigurationTypeAdapter();
        }

        @Override
        public Adapter caseInitType(InitType object) {
            return ComponentProjectAdapterFactory.this.createInitTypeAdapter();
        }

        @Override
        public Adapter caseInterruptType(InterruptType object) {
            return ComponentProjectAdapterFactory.this.createInterruptTypeAdapter();
        }

        @Override
        public Adapter caseIntervalT(IntervalT object) {
            return ComponentProjectAdapterFactory.this.createIntervalTAdapter();
        }

        @Override
        public Adapter caseItemRefT(ItemRefT object) {
            return ComponentProjectAdapterFactory.this.createItemRefTAdapter();
        }

        @Override
        public Adapter caseMessageTType(MessageTType object) {
            return ComponentProjectAdapterFactory.this.createMessageTTypeAdapter();
        }

        @Override
        public Adapter caseMessageTypeType(MessageTypeType object) {
            return ComponentProjectAdapterFactory.this.createMessageTypeTypeAdapter();
        }

        @Override
        public Adapter caseModelConfigurationT(ModelConfigurationT object) {
            return ComponentProjectAdapterFactory.this.createModelConfigurationTAdapter();
        }

        @Override
        public Adapter caseNotesT(NotesT object) {
            return ComponentProjectAdapterFactory.this.createNotesTAdapter();
        }

        @Override
        public Adapter caseNoteType(NoteType object) {
            return ComponentProjectAdapterFactory.this.createNoteTypeAdapter();
        }

        @Override
        public Adapter caseOperatingSystemType(OperatingSystemType object) {
            return ComponentProjectAdapterFactory.this.createOperatingSystemTypeAdapter();
        }

        @Override
        public Adapter caseOperationModesType(OperationModesType object) {
            return ComponentProjectAdapterFactory.this.createOperationModesTypeAdapter();
        }

        @Override
        public Adapter caseOperationModeT(OperationModeT object) {
            return ComponentProjectAdapterFactory.this.createOperationModeTAdapter();
        }

        @Override
        public Adapter caseOperationModeType(OperationModeType object) {
            return ComponentProjectAdapterFactory.this.createOperationModeTypeAdapter();
        }

        @Override
        public Adapter caseOptionT(OptionT object) {
            return ComponentProjectAdapterFactory.this.createOptionTAdapter();
        }

        @Override
        public Adapter caseOsDescriptionType(OsDescriptionType object) {
            return ComponentProjectAdapterFactory.this.createOsDescriptionTypeAdapter();
        }

        @Override
        public Adapter caseOsEntryType(OsEntryType object) {
            return ComponentProjectAdapterFactory.this.createOsEntryTypeAdapter();
        }

        @Override
        public Adapter caseOSLogicT(OSLogicT object) {
            return ComponentProjectAdapterFactory.this.createOSLogicTAdapter();
        }

        @Override
        public Adapter caseOsLogicType(OsLogicType object) {
            return ComponentProjectAdapterFactory.this.createOsLogicTypeAdapter();
        }

        @Override
        public Adapter caseOsSettingsType(OsSettingsType object) {
            return ComponentProjectAdapterFactory.this.createOsSettingsTypeAdapter();
        }

        @Override
        public Adapter casePlatformType(PlatformType object) {
            return ComponentProjectAdapterFactory.this.createPlatformTypeAdapter();
        }

        @Override
        public Adapter casePointT(PointT object) {
            return ComponentProjectAdapterFactory.this.createPointTAdapter();
        }

        @Override
        public Adapter caseProcessType(ProcessType object) {
            return ComponentProjectAdapterFactory.this.createProcessTypeAdapter();
        }

        @Override
        public Adapter caseProjectType(ProjectType object) {
            return ComponentProjectAdapterFactory.this.createProjectTypeAdapter();
        }

        @Override
        public Adapter caseSimulationConfigurationType(SimulationConfigurationType object) {
            return ComponentProjectAdapterFactory.this.createSimulationConfigurationTypeAdapter();
        }

        @Override
        public Adapter caseSizeT(SizeT object) {
            return ComponentProjectAdapterFactory.this.createSizeTAdapter();
        }

        @Override
        public Adapter caseSoftwareType(SoftwareType object) {
            return ComponentProjectAdapterFactory.this.createSoftwareTypeAdapter();
        }

        @Override
        public Adapter caseTargetKeyType(TargetKeyType object) {
            return ComponentProjectAdapterFactory.this.createTargetKeyTypeAdapter();
        }

        @Override
        public Adapter caseTargetType(TargetType object) {
            return ComponentProjectAdapterFactory.this.createTargetTypeAdapter();
        }

        @Override
        public Adapter caseTargetType1(TargetType1 object) {
            return ComponentProjectAdapterFactory.this.createTargetType1Adapter();
        }

        @Override
        public Adapter caseTaskBaseT(TaskBaseT object) {
            return ComponentProjectAdapterFactory.this.createTaskBaseTAdapter();
        }

        @Override
        public Adapter caseTasksType(TasksType object) {
            return ComponentProjectAdapterFactory.this.createTasksTypeAdapter();
        }

        @Override
        public Adapter caseTaskSwBaseT(TaskSwBaseT object) {
            return ComponentProjectAdapterFactory.this.createTaskSwBaseTAdapter();
        }

        @Override
        public Adapter caseTaskType(TaskType object) {
            return ComponentProjectAdapterFactory.this.createTaskTypeAdapter();
        }

        @Override
        public Adapter caseTaskTypeType(TaskTypeType object) {
            return ComponentProjectAdapterFactory.this.createTaskTypeTypeAdapter();
        }

        @Override
        public Adapter caseTimeStampT(TimeStampT object) {
            return ComponentProjectAdapterFactory.this.createTimeStampTAdapter();
        }

        @Override
        public Adapter caseTimetableType(TimetableType object) {
            return ComponentProjectAdapterFactory.this.createTimetableTypeAdapter();
        }

        @Override
        public Adapter caseTransferOptionsType(TransferOptionsType object) {
            return ComponentProjectAdapterFactory.this.createTransferOptionsTypeAdapter();
        }

        @Override
        public Adapter caseViewType(ViewType object) {
            return ComponentProjectAdapterFactory.this.createViewTypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ComponentProjectAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ComponentProjectAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ComponentProjectPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return (Adapter)this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createAlarmTypeAdapter() {
        return null;
    }

    public Adapter createAssignedOperationModesTypeAdapter() {
        return null;
    }

    public Adapter createBuildConfigurationTypeAdapter() {
        return null;
    }

    public Adapter createBuildSettingsTypeAdapter() {
        return null;
    }

    public Adapter createCodeGeneratorTypeAdapter() {
        return null;
    }

    public Adapter createCodeVariantTAdapter() {
        return null;
    }

    public Adapter createColorTAdapter() {
        return null;
    }

    public Adapter createCompilerTypeAdapter() {
        return null;
    }

    public Adapter createDataConfigurationTypeAdapter() {
        return null;
    }

    public Adapter createDocumentRootAdapter() {
        return null;
    }

    public Adapter createElementInfoTAdapter() {
        return null;
    }

    public Adapter createERCOSEKTAdapter() {
        return null;
    }

    public Adapter createFileReferenceTAdapter() {
        return null;
    }

    public Adapter createFilesTypeAdapter() {
        return null;
    }

    public Adapter createFileTypeAdapter() {
        return null;
    }

    public Adapter createFormattedTextTAdapter() {
        return null;
    }

    public Adapter createGenericDataTAdapter() {
        return null;
    }

    public Adapter createGroupTypeAdapter() {
        return null;
    }

    public Adapter createGroupType1Adapter() {
        return null;
    }

    public Adapter createIconTAdapter() {
        return null;
    }

    public Adapter createImplementationConfigurationTypeAdapter() {
        return null;
    }

    public Adapter createInitTypeAdapter() {
        return null;
    }

    public Adapter createInterruptTypeAdapter() {
        return null;
    }

    public Adapter createIntervalTAdapter() {
        return null;
    }

    public Adapter createItemRefTAdapter() {
        return null;
    }

    public Adapter createMessageTTypeAdapter() {
        return null;
    }

    public Adapter createMessageTypeTypeAdapter() {
        return null;
    }

    public Adapter createModelConfigurationTAdapter() {
        return null;
    }

    public Adapter createNotesTAdapter() {
        return null;
    }

    public Adapter createNoteTypeAdapter() {
        return null;
    }

    public Adapter createOperatingSystemTypeAdapter() {
        return null;
    }

    public Adapter createOperationModesTypeAdapter() {
        return null;
    }

    public Adapter createOperationModeTAdapter() {
        return null;
    }

    public Adapter createOperationModeTypeAdapter() {
        return null;
    }

    public Adapter createOptionTAdapter() {
        return null;
    }

    public Adapter createOsDescriptionTypeAdapter() {
        return null;
    }

    public Adapter createOsEntryTypeAdapter() {
        return null;
    }

    public Adapter createOSLogicTAdapter() {
        return null;
    }

    public Adapter createOsLogicTypeAdapter() {
        return null;
    }

    public Adapter createOsSettingsTypeAdapter() {
        return null;
    }

    public Adapter createPlatformTypeAdapter() {
        return null;
    }

    public Adapter createPointTAdapter() {
        return null;
    }

    public Adapter createProcessTypeAdapter() {
        return null;
    }

    public Adapter createProjectTypeAdapter() {
        return null;
    }

    public Adapter createSimulationConfigurationTypeAdapter() {
        return null;
    }

    public Adapter createSizeTAdapter() {
        return null;
    }

    public Adapter createSoftwareTypeAdapter() {
        return null;
    }

    public Adapter createTargetKeyTypeAdapter() {
        return null;
    }

    public Adapter createTargetTypeAdapter() {
        return null;
    }

    public Adapter createTargetType1Adapter() {
        return null;
    }

    public Adapter createTaskBaseTAdapter() {
        return null;
    }

    public Adapter createTasksTypeAdapter() {
        return null;
    }

    public Adapter createTaskSwBaseTAdapter() {
        return null;
    }

    public Adapter createTaskTypeAdapter() {
        return null;
    }

    public Adapter createTaskTypeTypeAdapter() {
        return null;
    }

    public Adapter createTimeStampTAdapter() {
        return null;
    }

    public Adapter createTimetableTypeAdapter() {
        return null;
    }

    public Adapter createTransferOptionsTypeAdapter() {
        return null;
    }

    public Adapter createViewTypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

