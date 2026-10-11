/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicDiagnostic
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EValidator$PatternMatcher
 *  org.eclipse.emf.ecore.util.EObjectValidator
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 *  org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil
 *  org.eclipse.emf.ecore.xml.type.util.XMLTypeValidator
 */
package com.etas.amd620.core.ComponentProject.util;

import com.etas.amd620.core.ComponentProject.AlarmType;
import com.etas.amd620.core.ComponentProject.AssignedOperationModesType;
import com.etas.amd620.core.ComponentProject.BuildConfigurationType;
import com.etas.amd620.core.ComponentProject.BuildSettingsType;
import com.etas.amd620.core.ComponentProject.CodeGeneratorT;
import com.etas.amd620.core.ComponentProject.CodeGeneratorType;
import com.etas.amd620.core.ComponentProject.CodeVariantT;
import com.etas.amd620.core.ComponentProject.ColorT;
import com.etas.amd620.core.ComponentProject.CompilerType;
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
import java.util.Map;
import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.util.EObjectValidator;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeValidator;

public class ComponentProjectValidator
extends EObjectValidator {
    public static final ComponentProjectValidator INSTANCE = new ComponentProjectValidator();
    public static final String DIAGNOSTIC_SOURCE = "com.etas.amd620.core.ComponentProject";
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 0;
    protected static final int DIAGNOSTIC_CODE_COUNT = 0;
    protected XMLTypeValidator xmlTypeValidator = XMLTypeValidator.INSTANCE;
    public static final EValidator.PatternMatcher[][] NUMBER_OR_FRACTION_MEMBER1__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"-?\\d*.?\\d*/\\d*\\.?\\d*")}};
    public static final EValidator.PatternMatcher[][] NZQR_MEMBER2__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"-?\\d*/\\d*")}};
    public static final EValidator.PatternMatcher[][] OID__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"(_040|_07v)\\w{26}|_sm")}};

    protected EPackage getEPackage() {
        return ComponentProjectPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateAlarmType((AlarmType)value, diagnostics, context);
            }
            case 1: {
                return this.validateAssignedOperationModesType((AssignedOperationModesType)value, diagnostics, context);
            }
            case 2: {
                return this.validateBuildConfigurationType((BuildConfigurationType)value, diagnostics, context);
            }
            case 3: {
                return this.validateBuildSettingsType((BuildSettingsType)value, diagnostics, context);
            }
            case 4: {
                return this.validateCodeGeneratorType((CodeGeneratorType)value, diagnostics, context);
            }
            case 5: {
                return this.validateCodeVariantT((CodeVariantT)value, diagnostics, context);
            }
            case 6: {
                return this.validateColorT((ColorT)value, diagnostics, context);
            }
            case 7: {
                return this.validateCompilerType((CompilerType)value, diagnostics, context);
            }
            case 8: {
                return this.validateDataConfigurationType((DataConfigurationType)value, diagnostics, context);
            }
            case 9: {
                return this.validateDocumentRoot((DocumentRoot)value, diagnostics, context);
            }
            case 10: {
                return this.validateElementInfoT((ElementInfoT)value, diagnostics, context);
            }
            case 11: {
                return this.validateERCOSEKT((ERCOSEKT)value, diagnostics, context);
            }
            case 12: {
                return this.validateFileReferenceT((FileReferenceT)value, diagnostics, context);
            }
            case 13: {
                return this.validateFilesType((FilesType)value, diagnostics, context);
            }
            case 14: {
                return this.validateFileType((FileType)value, diagnostics, context);
            }
            case 15: {
                return this.validateFormattedTextT((FormattedTextT)value, diagnostics, context);
            }
            case 16: {
                return this.validateGenericDataT((GenericDataT)value, diagnostics, context);
            }
            case 17: {
                return this.validateGroupType((GroupType)value, diagnostics, context);
            }
            case 18: {
                return this.validateGroupType1((GroupType1)value, diagnostics, context);
            }
            case 19: {
                return this.validateIconT((IconT)value, diagnostics, context);
            }
            case 20: {
                return this.validateImplementationConfigurationType((ImplementationConfigurationType)value, diagnostics, context);
            }
            case 21: {
                return this.validateInitType((InitType)value, diagnostics, context);
            }
            case 22: {
                return this.validateInterruptType((InterruptType)value, diagnostics, context);
            }
            case 23: {
                return this.validateIntervalT((IntervalT)value, diagnostics, context);
            }
            case 24: {
                return this.validateItemRefT((ItemRefT)value, diagnostics, context);
            }
            case 25: {
                return this.validateMessageTType((MessageTType)value, diagnostics, context);
            }
            case 26: {
                return this.validateMessageTypeType((MessageTypeType)value, diagnostics, context);
            }
            case 27: {
                return this.validateModelConfigurationT((ModelConfigurationT)value, diagnostics, context);
            }
            case 28: {
                return this.validateNotesT((NotesT)value, diagnostics, context);
            }
            case 29: {
                return this.validateNoteType((NoteType)value, diagnostics, context);
            }
            case 30: {
                return this.validateOperatingSystemType((OperatingSystemType)value, diagnostics, context);
            }
            case 31: {
                return this.validateOperationModesType((OperationModesType)value, diagnostics, context);
            }
            case 32: {
                return this.validateOperationModeT((OperationModeT)value, diagnostics, context);
            }
            case 33: {
                return this.validateOperationModeType((OperationModeType)value, diagnostics, context);
            }
            case 34: {
                return this.validateOptionT((OptionT)value, diagnostics, context);
            }
            case 35: {
                return this.validateOsDescriptionType((OsDescriptionType)value, diagnostics, context);
            }
            case 36: {
                return this.validateOsEntryType((OsEntryType)value, diagnostics, context);
            }
            case 37: {
                return this.validateOSLogicT((OSLogicT)value, diagnostics, context);
            }
            case 38: {
                return this.validateOsLogicType((OsLogicType)value, diagnostics, context);
            }
            case 39: {
                return this.validateOsSettingsType((OsSettingsType)value, diagnostics, context);
            }
            case 40: {
                return this.validatePlatformType((PlatformType)value, diagnostics, context);
            }
            case 41: {
                return this.validatePointT((PointT)value, diagnostics, context);
            }
            case 42: {
                return this.validateProcessType((ProcessType)value, diagnostics, context);
            }
            case 43: {
                return this.validateProjectType((ProjectType)value, diagnostics, context);
            }
            case 44: {
                return this.validateSimulationConfigurationType((SimulationConfigurationType)value, diagnostics, context);
            }
            case 45: {
                return this.validateSizeT((SizeT)value, diagnostics, context);
            }
            case 46: {
                return this.validateSoftwareType((SoftwareType)value, diagnostics, context);
            }
            case 47: {
                return this.validateTargetKeyType((TargetKeyType)value, diagnostics, context);
            }
            case 48: {
                return this.validateTargetType((TargetType)value, diagnostics, context);
            }
            case 49: {
                return this.validateTargetType1((TargetType1)value, diagnostics, context);
            }
            case 50: {
                return this.validateTaskBaseT((TaskBaseT)value, diagnostics, context);
            }
            case 51: {
                return this.validateTasksType((TasksType)value, diagnostics, context);
            }
            case 52: {
                return this.validateTaskSwBaseT((TaskSwBaseT)value, diagnostics, context);
            }
            case 53: {
                return this.validateTaskType((TaskType)value, diagnostics, context);
            }
            case 54: {
                return this.validateTaskTypeType((TaskTypeType)value, diagnostics, context);
            }
            case 55: {
                return this.validateTimeStampT((TimeStampT)value, diagnostics, context);
            }
            case 56: {
                return this.validateTimetableType((TimetableType)value, diagnostics, context);
            }
            case 57: {
                return this.validateTransferOptionsType((TransferOptionsType)value, diagnostics, context);
            }
            case 58: {
                return this.validateViewType((ViewType)value, diagnostics, context);
            }
            case 59: {
                return this.validateCodeGeneratorT((CodeGeneratorT)((Object)value), diagnostics, context);
            }
            case 60: {
                return this.validateExperimentTargetType((ExperimentTargetType)((Object)value), diagnostics, context);
            }
            case 61: {
                return this.validatePrePostHooksType((PrePostHooksType)((Object)value), diagnostics, context);
            }
            case 62: {
                return this.validateSchedulingType((SchedulingType)((Object)value), diagnostics, context);
            }
            case 63: {
                return this.validateTypeType((TypeType)((Object)value), diagnostics, context);
            }
            case 64: {
                return this.validateCodeGeneratorTObject((CodeGeneratorT)((Object)value), diagnostics, context);
            }
            case 65: {
                return this.validateExperimentTargetTypeObject((ExperimentTargetType)((Object)value), diagnostics, context);
            }
            case 66: {
                return this.validateNumberOrFraction(value, diagnostics, context);
            }
            case 67: {
                return this.validateNumberOrFractionMember1((String)value, diagnostics, context);
            }
            case 68: {
                return this.validateNzqr(value, diagnostics, context);
            }
            case 69: {
                return this.validateNzqrMember2((String)value, diagnostics, context);
            }
            case 70: {
                return this.validateOID((String)value, diagnostics, context);
            }
            case 71: {
                return this.validatePrePostHooksTypeObject((PrePostHooksType)((Object)value), diagnostics, context);
            }
            case 72: {
                return this.validateSchedulingTypeObject((SchedulingType)((Object)value), diagnostics, context);
            }
            case 73: {
                return this.validateTypeTypeObject((TypeType)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateAlarmType(AlarmType alarmType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(alarmType, diagnostics, context);
    }

    public boolean validateAssignedOperationModesType(AssignedOperationModesType assignedOperationModesType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(assignedOperationModesType, diagnostics, context);
    }

    public boolean validateBuildConfigurationType(BuildConfigurationType buildConfigurationType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(buildConfigurationType, diagnostics, context);
    }

    public boolean validateBuildSettingsType(BuildSettingsType buildSettingsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(buildSettingsType, diagnostics, context);
    }

    public boolean validateCodeGeneratorType(CodeGeneratorType codeGeneratorType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(codeGeneratorType, diagnostics, context);
    }

    public boolean validateCodeVariantT(CodeVariantT codeVariantT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(codeVariantT, diagnostics, context);
    }

    public boolean validateColorT(ColorT colorT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(colorT, diagnostics, context);
    }

    public boolean validateCompilerType(CompilerType compilerType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(compilerType, diagnostics, context);
    }

    public boolean validateDataConfigurationType(DataConfigurationType dataConfigurationType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(dataConfigurationType, diagnostics, context);
    }

    public boolean validateDocumentRoot(DocumentRoot documentRoot, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(documentRoot, diagnostics, context);
    }

    public boolean validateElementInfoT(ElementInfoT elementInfoT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(elementInfoT, diagnostics, context);
    }

    public boolean validateERCOSEKT(ERCOSEKT ercosekt, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(ercosekt, diagnostics, context);
    }

    public boolean validateFileReferenceT(FileReferenceT fileReferenceT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(fileReferenceT, diagnostics, context);
    }

    public boolean validateFilesType(FilesType filesType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(filesType, diagnostics, context);
    }

    public boolean validateFileType(FileType fileType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(fileType, diagnostics, context);
    }

    public boolean validateFormattedTextT(FormattedTextT formattedTextT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(formattedTextT, diagnostics, context);
    }

    public boolean validateGenericDataT(GenericDataT genericDataT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(genericDataT, diagnostics, context);
    }

    public boolean validateGroupType(GroupType groupType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(groupType, diagnostics, context);
    }

    public boolean validateGroupType1(GroupType1 groupType1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(groupType1, diagnostics, context);
    }

    public boolean validateIconT(IconT iconT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(iconT, diagnostics, context);
    }

    public boolean validateImplementationConfigurationType(ImplementationConfigurationType implementationConfigurationType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(implementationConfigurationType, diagnostics, context);
    }

    public boolean validateInitType(InitType initType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(initType, diagnostics, context);
    }

    public boolean validateInterruptType(InterruptType interruptType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(interruptType, diagnostics, context);
    }

    public boolean validateIntervalT(IntervalT intervalT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(intervalT, diagnostics, context);
    }

    public boolean validateItemRefT(ItemRefT itemRefT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(itemRefT, diagnostics, context);
    }

    public boolean validateMessageTType(MessageTType messageTType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(messageTType, diagnostics, context);
    }

    public boolean validateMessageTypeType(MessageTypeType messageTypeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(messageTypeType, diagnostics, context);
    }

    public boolean validateModelConfigurationT(ModelConfigurationT modelConfigurationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(modelConfigurationT, diagnostics, context);
    }

    public boolean validateNotesT(NotesT notesT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(notesT, diagnostics, context);
    }

    public boolean validateNoteType(NoteType noteType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(noteType, diagnostics, context);
    }

    public boolean validateOperatingSystemType(OperatingSystemType operatingSystemType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(operatingSystemType, diagnostics, context);
    }

    public boolean validateOperationModesType(OperationModesType operationModesType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(operationModesType, diagnostics, context);
    }

    public boolean validateOperationModeT(OperationModeT operationModeT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(operationModeT, diagnostics, context);
    }

    public boolean validateOperationModeType(OperationModeType operationModeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(operationModeType, diagnostics, context);
    }

    public boolean validateOptionT(OptionT optionT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(optionT, diagnostics, context);
    }

    public boolean validateOsDescriptionType(OsDescriptionType osDescriptionType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(osDescriptionType, diagnostics, context);
    }

    public boolean validateOsEntryType(OsEntryType osEntryType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(osEntryType, diagnostics, context);
    }

    public boolean validateOSLogicT(OSLogicT osLogicT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(osLogicT, diagnostics, context);
    }

    public boolean validateOsLogicType(OsLogicType osLogicType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(osLogicType, diagnostics, context);
    }

    public boolean validateOsSettingsType(OsSettingsType osSettingsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(osSettingsType, diagnostics, context);
    }

    public boolean validatePlatformType(PlatformType platformType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(platformType, diagnostics, context);
    }

    public boolean validatePointT(PointT pointT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(pointT, diagnostics, context);
    }

    public boolean validateProcessType(ProcessType processType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(processType, diagnostics, context);
    }

    public boolean validateProjectType(ProjectType projectType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(projectType, diagnostics, context);
    }

    public boolean validateSimulationConfigurationType(SimulationConfigurationType simulationConfigurationType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(simulationConfigurationType, diagnostics, context);
    }

    public boolean validateSizeT(SizeT sizeT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(sizeT, diagnostics, context);
    }

    public boolean validateSoftwareType(SoftwareType softwareType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(softwareType, diagnostics, context);
    }

    public boolean validateTargetKeyType(TargetKeyType targetKeyType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(targetKeyType, diagnostics, context);
    }

    public boolean validateTargetType(TargetType targetType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(targetType, diagnostics, context);
    }

    public boolean validateTargetType1(TargetType1 targetType1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(targetType1, diagnostics, context);
    }

    public boolean validateTaskBaseT(TaskBaseT taskBaseT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(taskBaseT, diagnostics, context);
    }

    public boolean validateTasksType(TasksType tasksType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(tasksType, diagnostics, context);
    }

    public boolean validateTaskSwBaseT(TaskSwBaseT taskSwBaseT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(taskSwBaseT, diagnostics, context);
    }

    public boolean validateTaskType(TaskType taskType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(taskType, diagnostics, context);
    }

    public boolean validateTaskTypeType(TaskTypeType taskTypeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(taskTypeType, diagnostics, context);
    }

    public boolean validateTimeStampT(TimeStampT timeStampT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(timeStampT, diagnostics, context);
    }

    public boolean validateTimetableType(TimetableType timetableType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(timetableType, diagnostics, context);
    }

    public boolean validateTransferOptionsType(TransferOptionsType transferOptionsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(transferOptionsType, diagnostics, context);
    }

    public boolean validateViewType(ViewType viewType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(viewType, diagnostics, context);
    }

    public boolean validateCodeGeneratorT(CodeGeneratorT codeGeneratorT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateExperimentTargetType(ExperimentTargetType experimentTargetType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validatePrePostHooksType(PrePostHooksType prePostHooksType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateSchedulingType(SchedulingType schedulingType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeType(TypeType typeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateCodeGeneratorTObject(CodeGeneratorT codeGeneratorTObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateExperimentTargetTypeObject(ExperimentTargetType experimentTargetTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateNumberOrFraction(Object numberOrFraction, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNumberOrFraction_MemberTypes(numberOrFraction, diagnostics, context);
        return result;
    }

    public boolean validateNumberOrFraction_MemberTypes(Object numberOrFraction, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (diagnostics != null) {
            BasicDiagnostic tempDiagnostics = new BasicDiagnostic();
            if (XMLTypePackage.Literals.DOUBLE.isInstance(numberOrFraction) && this.xmlTypeValidator.validateDouble(((Double)numberOrFraction).doubleValue(), (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            if (ComponentProjectPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(numberOrFraction) && this.validateNumberOrFractionMember1((String)numberOrFraction, (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            for (Diagnostic diagnostic : tempDiagnostics.getChildren()) {
                diagnostics.add(diagnostic);
            }
        } else {
            if (XMLTypePackage.Literals.DOUBLE.isInstance(numberOrFraction) && this.xmlTypeValidator.validateDouble(((Double)numberOrFraction).doubleValue(), null, context)) {
                return true;
            }
            if (ComponentProjectPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(numberOrFraction) && this.validateNumberOrFractionMember1((String)numberOrFraction, null, context)) {
                return true;
            }
        }
        return false;
    }

    public boolean validateNumberOrFractionMember1(String numberOrFractionMember1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNumberOrFractionMember1_Pattern(numberOrFractionMember1, diagnostics, context);
        return result;
    }

    public boolean validateNumberOrFractionMember1_Pattern(String numberOrFractionMember1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(ComponentProjectPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, numberOrFractionMember1, NUMBER_OR_FRACTION_MEMBER1__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateNzqr(Object nzqr, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNzqr_MemberTypes(nzqr, diagnostics, context);
        return result;
    }

    public boolean validateNzqr_MemberTypes(Object nzqr, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (diagnostics != null) {
            BasicDiagnostic tempDiagnostics = new BasicDiagnostic();
            if (XMLTypePackage.Literals.DOUBLE.isInstance(nzqr) && this.xmlTypeValidator.validateDouble(((Double)nzqr).doubleValue(), (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            if (XMLTypePackage.Literals.INT.isInstance(nzqr) && this.xmlTypeValidator.validateInt(((Integer)nzqr).intValue(), (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            if (ComponentProjectPackage.Literals.NZQR_MEMBER2.isInstance(nzqr) && this.validateNzqrMember2((String)nzqr, (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            for (Diagnostic diagnostic : tempDiagnostics.getChildren()) {
                diagnostics.add(diagnostic);
            }
        } else {
            if (XMLTypePackage.Literals.DOUBLE.isInstance(nzqr) && this.xmlTypeValidator.validateDouble(((Double)nzqr).doubleValue(), null, context)) {
                return true;
            }
            if (XMLTypePackage.Literals.INT.isInstance(nzqr) && this.xmlTypeValidator.validateInt(((Integer)nzqr).intValue(), null, context)) {
                return true;
            }
            if (ComponentProjectPackage.Literals.NZQR_MEMBER2.isInstance(nzqr) && this.validateNzqrMember2((String)nzqr, null, context)) {
                return true;
            }
        }
        return false;
    }

    public boolean validateNzqrMember2(String nzqrMember2, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNzqrMember2_Pattern(nzqrMember2, diagnostics, context);
        return result;
    }

    public boolean validateNzqrMember2_Pattern(String nzqrMember2, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(ComponentProjectPackage.Literals.NZQR_MEMBER2, nzqrMember2, NZQR_MEMBER2__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateOID(String oid, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateOID_Pattern(oid, diagnostics, context);
        return result;
    }

    public boolean validateOID_Pattern(String oid, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(ComponentProjectPackage.Literals.OID, oid, OID__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validatePrePostHooksTypeObject(PrePostHooksType prePostHooksTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateSchedulingTypeObject(SchedulingType schedulingTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeTypeObject(TypeType typeTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return super.getResourceLocator();
    }
}

