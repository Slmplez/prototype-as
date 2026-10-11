/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.ComponentProjectFactory;
import com.etas.amd620.core.ComponentProject.impl.ComponentProjectPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ComponentProjectPackage
extends EPackage {
    public static final String eNAME = "ComponentProject";
    public static final String eNS_URI = "http://www.etas.com/ascet/amd/620/component_project";
    public static final String eNS_PREFIX = "ComponentProject";
    public static final ComponentProjectPackage eINSTANCE = ComponentProjectPackageImpl.init();
    public static final int TASK_BASE_T = 50;
    public static final int TASK_BASE_T__PRE_POST_HOOKS = 0;
    public static final int TASK_BASE_T__PRIORITY = 1;
    public static final int TASK_BASE_T_FEATURE_COUNT = 2;
    public static final int TASK_BASE_T_OPERATION_COUNT = 0;
    public static final int TASK_SW_BASE_T = 52;
    public static final int TASK_SW_BASE_T__PRE_POST_HOOKS = 0;
    public static final int TASK_SW_BASE_T__PRIORITY = 1;
    public static final int TASK_SW_BASE_T__DEADLINE = 2;
    public static final int TASK_SW_BASE_T__DEADLINE_VALUE = 3;
    public static final int TASK_SW_BASE_T__MAX_NO_ACTIVATIONS = 4;
    public static final int TASK_SW_BASE_T__SCHEDULING = 5;
    public static final int TASK_SW_BASE_T_FEATURE_COUNT = 6;
    public static final int TASK_SW_BASE_T_OPERATION_COUNT = 0;
    public static final int ALARM_TYPE = 0;
    public static final int ALARM_TYPE__PRE_POST_HOOKS = 0;
    public static final int ALARM_TYPE__PRIORITY = 1;
    public static final int ALARM_TYPE__DEADLINE = 2;
    public static final int ALARM_TYPE__DEADLINE_VALUE = 3;
    public static final int ALARM_TYPE__MAX_NO_ACTIVATIONS = 4;
    public static final int ALARM_TYPE__SCHEDULING = 5;
    public static final int ALARM_TYPE__DELAY = 6;
    public static final int ALARM_TYPE__PERIOD = 7;
    public static final int ALARM_TYPE__START_ALARM = 8;
    public static final int ALARM_TYPE_FEATURE_COUNT = 9;
    public static final int ALARM_TYPE_OPERATION_COUNT = 0;
    public static final int ASSIGNED_OPERATION_MODES_TYPE = 1;
    public static final int ASSIGNED_OPERATION_MODES_TYPE__OPERATION_MODE = 0;
    public static final int ASSIGNED_OPERATION_MODES_TYPE_FEATURE_COUNT = 1;
    public static final int ASSIGNED_OPERATION_MODES_TYPE_OPERATION_COUNT = 0;
    public static final int BUILD_CONFIGURATION_TYPE = 2;
    public static final int BUILD_CONFIGURATION_TYPE__PLATFORM = 0;
    public static final int BUILD_CONFIGURATION_TYPE__BUILD_SETTINGS = 1;
    public static final int BUILD_CONFIGURATION_TYPE__BUILD_CONFIG_KEY = 2;
    public static final int BUILD_CONFIGURATION_TYPE__CHECKSUM = 3;
    public static final int BUILD_CONFIGURATION_TYPE__CHECKSUM_CODE_RELEVANT = 4;
    public static final int BUILD_CONFIGURATION_TYPE__NAME = 5;
    public static final int BUILD_CONFIGURATION_TYPE_FEATURE_COUNT = 6;
    public static final int BUILD_CONFIGURATION_TYPE_OPERATION_COUNT = 0;
    public static final int BUILD_SETTINGS_TYPE = 3;
    public static final int BUILD_SETTINGS_TYPE__GROUP = 0;
    public static final int BUILD_SETTINGS_TYPE_FEATURE_COUNT = 1;
    public static final int BUILD_SETTINGS_TYPE_OPERATION_COUNT = 0;
    public static final int CODE_GENERATOR_TYPE = 4;
    public static final int CODE_GENERATOR_TYPE__TYPE = 0;
    public static final int CODE_GENERATOR_TYPE_FEATURE_COUNT = 1;
    public static final int CODE_GENERATOR_TYPE_OPERATION_COUNT = 0;
    public static final int CODE_VARIANT_T = 5;
    public static final int CODE_VARIANT_T_FEATURE_COUNT = 0;
    public static final int CODE_VARIANT_T_OPERATION_COUNT = 0;
    public static final int COLOR_T = 6;
    public static final int COLOR_T__BLUE = 0;
    public static final int COLOR_T__GREEN = 1;
    public static final int COLOR_T__RED = 2;
    public static final int COLOR_T_FEATURE_COUNT = 3;
    public static final int COLOR_T_OPERATION_COUNT = 0;
    public static final int COMPILER_TYPE = 7;
    public static final int COMPILER_TYPE__NAME = 0;
    public static final int COMPILER_TYPE__PATH = 1;
    public static final int COMPILER_TYPE_FEATURE_COUNT = 2;
    public static final int COMPILER_TYPE_OPERATION_COUNT = 0;
    public static final int DATA_CONFIGURATION_TYPE = 8;
    public static final int DATA_CONFIGURATION_TYPE__DATA_SET_NAME = 0;
    public static final int DATA_CONFIGURATION_TYPE__DATA_SET_OID = 1;
    public static final int DATA_CONFIGURATION_TYPE_FEATURE_COUNT = 2;
    public static final int DATA_CONFIGURATION_TYPE_OPERATION_COUNT = 0;
    public static final int DOCUMENT_ROOT = 9;
    public static final int DOCUMENT_ROOT__MIXED = 0;
    public static final int DOCUMENT_ROOT__XMLNS_PREFIX_MAP = 1;
    public static final int DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = 2;
    public static final int DOCUMENT_ROOT__PROJECT = 3;
    public static final int DOCUMENT_ROOT_FEATURE_COUNT = 4;
    public static final int DOCUMENT_ROOT_OPERATION_COUNT = 0;
    public static final int ELEMENT_INFO_T = 10;
    public static final int ELEMENT_INFO_T__ELEMENT_ID = 0;
    public static final int ELEMENT_INFO_T__NAME = 1;
    public static final int ELEMENT_INFO_T_FEATURE_COUNT = 2;
    public static final int ELEMENT_INFO_T_OPERATION_COUNT = 0;
    public static final int ERCOSEKT = 11;
    public static final int ERCOSEKT_FEATURE_COUNT = 0;
    public static final int ERCOSEKT_OPERATION_COUNT = 0;
    public static final int FILE_REFERENCE_T = 12;
    public static final int FILE_REFERENCE_T__VALUE = 0;
    public static final int FILE_REFERENCE_T__CHECKSUM = 1;
    public static final int FILE_REFERENCE_T__TYPE = 2;
    public static final int FILE_REFERENCE_T_FEATURE_COUNT = 3;
    public static final int FILE_REFERENCE_T_OPERATION_COUNT = 0;
    public static final int FILES_TYPE = 13;
    public static final int FILES_TYPE__TARGET = 0;
    public static final int FILES_TYPE_FEATURE_COUNT = 1;
    public static final int FILES_TYPE_OPERATION_COUNT = 0;
    public static final int FILE_TYPE = 14;
    public static final int FILE_TYPE__NAME = 0;
    public static final int FILE_TYPE__LOCATION = 1;
    public static final int FILE_TYPE__ABSTRACT_LOCATION = 2;
    public static final int FILE_TYPE__ORIGINAL_LOCATION = 3;
    public static final int FILE_TYPE__TIME_STAMP = 4;
    public static final int FILE_TYPE_FEATURE_COUNT = 5;
    public static final int FILE_TYPE_OPERATION_COUNT = 0;
    public static final int FORMATTED_TEXT_T = 15;
    public static final int FORMATTED_TEXT_T__VALUE = 0;
    public static final int FORMATTED_TEXT_T_FEATURE_COUNT = 1;
    public static final int FORMATTED_TEXT_T_OPERATION_COUNT = 0;
    public static final int GENERIC_DATA_T = 16;
    public static final int GENERIC_DATA_T__ANY = 0;
    public static final int GENERIC_DATA_T__NAME = 1;
    public static final int GENERIC_DATA_T_FEATURE_COUNT = 2;
    public static final int GENERIC_DATA_T_OPERATION_COUNT = 0;
    public static final int GROUP_TYPE = 17;
    public static final int GROUP_TYPE__OPTION = 0;
    public static final int GROUP_TYPE__NAME = 1;
    public static final int GROUP_TYPE_FEATURE_COUNT = 2;
    public static final int GROUP_TYPE_OPERATION_COUNT = 0;
    public static final int GROUP_TYPE1 = 18;
    public static final int GROUP_TYPE1__OPTION = 0;
    public static final int GROUP_TYPE1__NAME = 1;
    public static final int GROUP_TYPE1_FEATURE_COUNT = 2;
    public static final int GROUP_TYPE1_OPERATION_COUNT = 0;
    public static final int ICON_T = 19;
    public static final int ICON_T__ICON_FILE = 0;
    public static final int ICON_T__SIZE = 1;
    public static final int ICON_T__ICON_NAME = 2;
    public static final int ICON_T__ICON_OID = 3;
    public static final int ICON_T_FEATURE_COUNT = 4;
    public static final int ICON_T_OPERATION_COUNT = 0;
    public static final int IMPLEMENTATION_CONFIGURATION_TYPE = 20;
    public static final int IMPLEMENTATION_CONFIGURATION_TYPE__IMPLEMENTATION_SET_NAME = 0;
    public static final int IMPLEMENTATION_CONFIGURATION_TYPE__IMPLEMENTATION_SET_OID = 1;
    public static final int IMPLEMENTATION_CONFIGURATION_TYPE_FEATURE_COUNT = 2;
    public static final int IMPLEMENTATION_CONFIGURATION_TYPE_OPERATION_COUNT = 0;
    public static final int INIT_TYPE = 21;
    public static final int INIT_TYPE_FEATURE_COUNT = 0;
    public static final int INIT_TYPE_OPERATION_COUNT = 0;
    public static final int INTERRUPT_TYPE = 22;
    public static final int INTERRUPT_TYPE__PRE_POST_HOOKS = 0;
    public static final int INTERRUPT_TYPE__PRIORITY = 1;
    public static final int INTERRUPT_TYPE__EVENT_ID = 2;
    public static final int INTERRUPT_TYPE__ISR_SOURCE = 3;
    public static final int INTERRUPT_TYPE__MAX_PRIO = 4;
    public static final int INTERRUPT_TYPE__MINIMUM_PERIOD = 5;
    public static final int INTERRUPT_TYPE__MINIMUM_PERIOD_VALUE = 6;
    public static final int INTERRUPT_TYPE__MIN_PRIO = 7;
    public static final int INTERRUPT_TYPE_FEATURE_COUNT = 8;
    public static final int INTERRUPT_TYPE_OPERATION_COUNT = 0;
    public static final int INTERVAL_T = 23;
    public static final int INTERVAL_T__MAX = 0;
    public static final int INTERVAL_T__MIN = 1;
    public static final int INTERVAL_T_FEATURE_COUNT = 2;
    public static final int INTERVAL_T_OPERATION_COUNT = 0;
    public static final int ITEM_REF_T = 24;
    public static final int ITEM_REF_T__NAME = 0;
    public static final int ITEM_REF_T__OID = 1;
    public static final int ITEM_REF_T_FEATURE_COUNT = 2;
    public static final int ITEM_REF_T_OPERATION_COUNT = 0;
    public static final int MESSAGE_TTYPE = 25;
    public static final int MESSAGE_TTYPE__MESSAGE_TYPE = 0;
    public static final int MESSAGE_TTYPE_FEATURE_COUNT = 1;
    public static final int MESSAGE_TTYPE_OPERATION_COUNT = 0;
    public static final int MESSAGE_TYPE_TYPE = 26;
    public static final int MESSAGE_TYPE_TYPE__LABEL = 0;
    public static final int MESSAGE_TYPE_TYPE_FEATURE_COUNT = 1;
    public static final int MESSAGE_TYPE_TYPE_OPERATION_COUNT = 0;
    public static final int MODEL_CONFIGURATION_T = 27;
    public static final int MODEL_CONFIGURATION_T__FORMULAS_FILE = 0;
    public static final int MODEL_CONFIGURATION_T__IMPLEMENTATION_TYPES_FILE = 1;
    public static final int MODEL_CONFIGURATION_T_FEATURE_COUNT = 2;
    public static final int MODEL_CONFIGURATION_T_OPERATION_COUNT = 0;
    public static final int NOTES_T = 28;
    public static final int NOTES_T__NOTE = 0;
    public static final int NOTES_T_FEATURE_COUNT = 1;
    public static final int NOTES_T_OPERATION_COUNT = 0;
    public static final int NOTE_TYPE = 29;
    public static final int NOTE_TYPE__TEXT = 0;
    public static final int NOTE_TYPE__VIEW = 1;
    public static final int NOTE_TYPE__NAME = 2;
    public static final int NOTE_TYPE_FEATURE_COUNT = 3;
    public static final int NOTE_TYPE_OPERATION_COUNT = 0;
    public static final int OPERATING_SYSTEM_TYPE = 30;
    public static final int OPERATING_SYSTEM_TYPE__TYPE = 0;
    public static final int OPERATING_SYSTEM_TYPE_FEATURE_COUNT = 1;
    public static final int OPERATING_SYSTEM_TYPE_OPERATION_COUNT = 0;
    public static final int OPERATION_MODES_TYPE = 31;
    public static final int OPERATION_MODES_TYPE__OPERATION_MODE = 0;
    public static final int OPERATION_MODES_TYPE_FEATURE_COUNT = 1;
    public static final int OPERATION_MODES_TYPE_OPERATION_COUNT = 0;
    public static final int OPERATION_MODE_T = 32;
    public static final int OPERATION_MODE_T__ID = 0;
    public static final int OPERATION_MODE_T__IS_CT_MODE = 1;
    public static final int OPERATION_MODE_T__IS_START_MODE = 2;
    public static final int OPERATION_MODE_T__NAME = 3;
    public static final int OPERATION_MODE_T_FEATURE_COUNT = 4;
    public static final int OPERATION_MODE_T_OPERATION_COUNT = 0;
    public static final int OPERATION_MODE_TYPE = 33;
    public static final int OPERATION_MODE_TYPE__NAME = 0;
    public static final int OPERATION_MODE_TYPE_FEATURE_COUNT = 1;
    public static final int OPERATION_MODE_TYPE_OPERATION_COUNT = 0;
    public static final int OPTION_T = 34;
    public static final int OPTION_T__NAME = 0;
    public static final int OPTION_T__TYPE = 1;
    public static final int OPTION_T__VALUE = 2;
    public static final int OPTION_T_FEATURE_COUNT = 3;
    public static final int OPTION_T_OPERATION_COUNT = 0;
    public static final int OS_DESCRIPTION_TYPE = 35;
    public static final int OS_DESCRIPTION_TYPE__OPERATION_MODES = 0;
    public static final int OS_DESCRIPTION_TYPE__TASKS = 1;
    public static final int OS_DESCRIPTION_TYPE__OS_SETTINGS = 2;
    public static final int OS_DESCRIPTION_TYPE__COOP_LEVELS = 3;
    public static final int OS_DESCRIPTION_TYPE__ENABLE_MONITORING = 4;
    public static final int OS_DESCRIPTION_TYPE__ENABLE_TICK_DURATION = 5;
    public static final int OS_DESCRIPTION_TYPE__EVENT_LEVELS = 6;
    public static final int OS_DESCRIPTION_TYPE__OID = 7;
    public static final int OS_DESCRIPTION_TYPE__PREEMP_LEVELS = 8;
    public static final int OS_DESCRIPTION_TYPE__TICK_DURATION = 9;
    public static final int OS_DESCRIPTION_TYPE_FEATURE_COUNT = 10;
    public static final int OS_DESCRIPTION_TYPE_OPERATION_COUNT = 0;
    public static final int OS_ENTRY_TYPE = 36;
    public static final int OS_ENTRY_TYPE__TARGET_KEY = 0;
    public static final int OS_ENTRY_TYPE__OS_DESCRIPTION = 1;
    public static final int OS_ENTRY_TYPE_FEATURE_COUNT = 2;
    public static final int OS_ENTRY_TYPE_OPERATION_COUNT = 0;
    public static final int OS_LOGIC_T = 37;
    public static final int OS_LOGIC_T__OS_ENTRY = 0;
    public static final int OS_LOGIC_T_FEATURE_COUNT = 1;
    public static final int OS_LOGIC_T_OPERATION_COUNT = 0;
    public static final int OS_LOGIC_TYPE = 38;
    public static final int OS_LOGIC_TYPE__OS_ENTRY = 0;
    public static final int OS_LOGIC_TYPE_FEATURE_COUNT = 1;
    public static final int OS_LOGIC_TYPE_OPERATION_COUNT = 0;
    public static final int OS_SETTINGS_TYPE = 39;
    public static final int OS_SETTINGS_TYPE__GROUP = 0;
    public static final int OS_SETTINGS_TYPE_FEATURE_COUNT = 1;
    public static final int OS_SETTINGS_TYPE_OPERATION_COUNT = 0;
    public static final int PLATFORM_TYPE = 40;
    public static final int PLATFORM_TYPE__TARGET = 0;
    public static final int PLATFORM_TYPE__COMPILER = 1;
    public static final int PLATFORM_TYPE__CODE_GENERATOR = 2;
    public static final int PLATFORM_TYPE__OPERATING_SYSTEM = 3;
    public static final int PLATFORM_TYPE__PLATFORM_KEY = 4;
    public static final int PLATFORM_TYPE_FEATURE_COUNT = 5;
    public static final int PLATFORM_TYPE_OPERATION_COUNT = 0;
    public static final int POINT_T = 41;
    public static final int POINT_T__X = 0;
    public static final int POINT_T__Y = 1;
    public static final int POINT_T_FEATURE_COUNT = 2;
    public static final int POINT_T_OPERATION_COUNT = 0;
    public static final int PROCESS_TYPE = 42;
    public static final int PROCESS_TYPE__DEFAULT = 0;
    public static final int PROCESS_TYPE__ELEMENT_NAME = 1;
    public static final int PROCESS_TYPE__ELEMENT_OID = 2;
    public static final int PROCESS_TYPE__INDEX = 3;
    public static final int PROCESS_TYPE__METHOD_NAME = 4;
    public static final int PROCESS_TYPE__METHOD_OID = 5;
    public static final int PROCESS_TYPE_FEATURE_COUNT = 6;
    public static final int PROCESS_TYPE_OPERATION_COUNT = 0;
    public static final int PROJECT_TYPE = 43;
    public static final int PROJECT_TYPE__IMPLEMENTATION_CONFIGURATION = 0;
    public static final int PROJECT_TYPE__DATA_CONFIGURATION = 1;
    public static final int PROJECT_TYPE__OS_LOGIC = 2;
    public static final int PROJECT_TYPE__MODEL_CONFIGURATION = 3;
    public static final int PROJECT_TYPE__BUILD_CONFIGURATION = 4;
    public static final int PROJECT_TYPE__SIMULATION_CONFIGURATION = 5;
    public static final int PROJECT_TYPE__HIDDEN_MESSAGE_TYPES = 6;
    public static final int PROJECT_TYPE__IGNORED_MESSAGE_TYPES = 7;
    public static final int PROJECT_TYPE__PROMOTED_TO_ERROR_MESSAGE_TYPES = 8;
    public static final int PROJECT_TYPE__PROMOTED_TO_WARNING_MESSAGE_TYPES = 9;
    public static final int PROJECT_TYPE__TRANSFER_OPTIONS = 10;
    public static final int PROJECT_TYPE__FILES = 11;
    public static final int PROJECT_TYPE__SIGNATURE = 12;
    public static final int PROJECT_TYPE__BUILD_CONFIG_KEY = 13;
    public static final int PROJECT_TYPE__SCHEMA_VERSION = 14;
    public static final int PROJECT_TYPE__TOOL_VERSION = 15;
    public static final int PROJECT_TYPE_FEATURE_COUNT = 16;
    public static final int PROJECT_TYPE_OPERATION_COUNT = 0;
    public static final int SIMULATION_CONFIGURATION_TYPE = 44;
    public static final int SIMULATION_CONFIGURATION_TYPE__EXPERIMENT_TARGET = 0;
    public static final int SIMULATION_CONFIGURATION_TYPE_FEATURE_COUNT = 1;
    public static final int SIMULATION_CONFIGURATION_TYPE_OPERATION_COUNT = 0;
    public static final int SIZE_T = 45;
    public static final int SIZE_T__X = 0;
    public static final int SIZE_T__Y = 1;
    public static final int SIZE_T_FEATURE_COUNT = 2;
    public static final int SIZE_T_OPERATION_COUNT = 0;
    public static final int SOFTWARE_TYPE = 46;
    public static final int SOFTWARE_TYPE__PRE_POST_HOOKS = 0;
    public static final int SOFTWARE_TYPE__PRIORITY = 1;
    public static final int SOFTWARE_TYPE__DEADLINE = 2;
    public static final int SOFTWARE_TYPE__DEADLINE_VALUE = 3;
    public static final int SOFTWARE_TYPE__MAX_NO_ACTIVATIONS = 4;
    public static final int SOFTWARE_TYPE__SCHEDULING = 5;
    public static final int SOFTWARE_TYPE__AUTOSTART = 6;
    public static final int SOFTWARE_TYPE_FEATURE_COUNT = 7;
    public static final int SOFTWARE_TYPE_OPERATION_COUNT = 0;
    public static final int TARGET_KEY_TYPE = 47;
    public static final int TARGET_KEY_TYPE__NAME = 0;
    public static final int TARGET_KEY_TYPE_FEATURE_COUNT = 1;
    public static final int TARGET_KEY_TYPE_OPERATION_COUNT = 0;
    public static final int TARGET_TYPE = 48;
    public static final int TARGET_TYPE__FILE = 0;
    public static final int TARGET_TYPE__KEY = 1;
    public static final int TARGET_TYPE_FEATURE_COUNT = 2;
    public static final int TARGET_TYPE_OPERATION_COUNT = 0;
    public static final int TARGET_TYPE1 = 49;
    public static final int TARGET_TYPE1__KEY = 0;
    public static final int TARGET_TYPE1__NAME = 1;
    public static final int TARGET_TYPE1_FEATURE_COUNT = 2;
    public static final int TARGET_TYPE1_OPERATION_COUNT = 0;
    public static final int TASKS_TYPE = 51;
    public static final int TASKS_TYPE__TASK = 0;
    public static final int TASKS_TYPE_FEATURE_COUNT = 1;
    public static final int TASKS_TYPE_OPERATION_COUNT = 0;
    public static final int TASK_TYPE = 53;
    public static final int TASK_TYPE__PROCESS = 0;
    public static final int TASK_TYPE__ASSIGNED_OPERATION_MODES = 1;
    public static final int TASK_TYPE__TASK_TYPE = 2;
    public static final int TASK_TYPE__ID = 3;
    public static final int TASK_TYPE__IS_CONTINUOUS_TIME = 4;
    public static final int TASK_TYPE__NAME = 5;
    public static final int TASK_TYPE_FEATURE_COUNT = 6;
    public static final int TASK_TYPE_OPERATION_COUNT = 0;
    public static final int TASK_TYPE_TYPE = 54;
    public static final int TASK_TYPE_TYPE__INTERRUPT = 0;
    public static final int TASK_TYPE_TYPE__ALARM = 1;
    public static final int TASK_TYPE_TYPE__TIMETABLE = 2;
    public static final int TASK_TYPE_TYPE__SOFTWARE = 3;
    public static final int TASK_TYPE_TYPE__INIT = 4;
    public static final int TASK_TYPE_TYPE_FEATURE_COUNT = 5;
    public static final int TASK_TYPE_TYPE_OPERATION_COUNT = 0;
    public static final int TIME_STAMP_T = 55;
    public static final int TIME_STAMP_T__TIME_STAMP_COUNTER = 0;
    public static final int TIME_STAMP_T__TIME_STAMP_KEY = 1;
    public static final int TIME_STAMP_T__TIME_STAMP_VALUE = 2;
    public static final int TIME_STAMP_T_FEATURE_COUNT = 3;
    public static final int TIME_STAMP_T_OPERATION_COUNT = 0;
    public static final int TIMETABLE_TYPE = 56;
    public static final int TIMETABLE_TYPE__PRE_POST_HOOKS = 0;
    public static final int TIMETABLE_TYPE__PRIORITY = 1;
    public static final int TIMETABLE_TYPE__DEADLINE = 2;
    public static final int TIMETABLE_TYPE__DEADLINE_VALUE = 3;
    public static final int TIMETABLE_TYPE__MAX_NO_ACTIVATIONS = 4;
    public static final int TIMETABLE_TYPE__SCHEDULING = 5;
    public static final int TIMETABLE_TYPE__DELAY = 6;
    public static final int TIMETABLE_TYPE__PERIOD = 7;
    public static final int TIMETABLE_TYPE_FEATURE_COUNT = 8;
    public static final int TIMETABLE_TYPE_OPERATION_COUNT = 0;
    public static final int TRANSFER_OPTIONS_TYPE = 57;
    public static final int TRANSFER_OPTIONS_TYPE__OPTION = 0;
    public static final int TRANSFER_OPTIONS_TYPE_FEATURE_COUNT = 1;
    public static final int TRANSFER_OPTIONS_TYPE_OPERATION_COUNT = 0;
    public static final int VIEW_TYPE = 58;
    public static final int VIEW_TYPE__NAME = 0;
    public static final int VIEW_TYPE_FEATURE_COUNT = 1;
    public static final int VIEW_TYPE_OPERATION_COUNT = 0;
    public static final int CODE_GENERATOR_T = 59;
    public static final int EXPERIMENT_TARGET_TYPE = 60;
    public static final int PRE_POST_HOOKS_TYPE = 61;
    public static final int SCHEDULING_TYPE = 62;
    public static final int TYPE_TYPE = 63;
    public static final int CODE_GENERATOR_TOBJECT = 64;
    public static final int EXPERIMENT_TARGET_TYPE_OBJECT = 65;
    public static final int NUMBER_OR_FRACTION = 66;
    public static final int NUMBER_OR_FRACTION_MEMBER1 = 67;
    public static final int NZQR = 68;
    public static final int NZQR_MEMBER2 = 69;
    public static final int OID = 70;
    public static final int PRE_POST_HOOKS_TYPE_OBJECT = 71;
    public static final int SCHEDULING_TYPE_OBJECT = 72;
    public static final int TYPE_TYPE_OBJECT = 73;

    public EClass getAlarmType();

    public EAttribute getAlarmType_Delay();

    public EAttribute getAlarmType_Period();

    public EAttribute getAlarmType_StartAlarm();

    public EClass getAssignedOperationModesType();

    public EReference getAssignedOperationModesType_OperationMode();

    public EClass getBuildConfigurationType();

    public EReference getBuildConfigurationType_Platform();

    public EReference getBuildConfigurationType_BuildSettings();

    public EAttribute getBuildConfigurationType_BuildConfigKey();

    public EAttribute getBuildConfigurationType_Checksum();

    public EAttribute getBuildConfigurationType_ChecksumCodeRelevant();

    public EAttribute getBuildConfigurationType_Name();

    public EClass getBuildSettingsType();

    public EReference getBuildSettingsType_Group();

    public EClass getCodeGeneratorType();

    public EAttribute getCodeGeneratorType_Type();

    public EClass getCodeVariantT();

    public EClass getColorT();

    public EAttribute getColorT_Blue();

    public EAttribute getColorT_Green();

    public EAttribute getColorT_Red();

    public EClass getCompilerType();

    public EAttribute getCompilerType_Name();

    public EAttribute getCompilerType_Path();

    public EClass getDataConfigurationType();

    public EAttribute getDataConfigurationType_DataSetName();

    public EAttribute getDataConfigurationType_DataSetOID();

    public EClass getDocumentRoot();

    public EAttribute getDocumentRoot_Mixed();

    public EReference getDocumentRoot_XMLNSPrefixMap();

    public EReference getDocumentRoot_XSISchemaLocation();

    public EReference getDocumentRoot_Project();

    public EClass getElementInfoT();

    public EAttribute getElementInfoT_ElementId();

    public EAttribute getElementInfoT_Name();

    public EClass getERCOSEKT();

    public EClass getFileReferenceT();

    public EAttribute getFileReferenceT_Value();

    public EAttribute getFileReferenceT_Checksum();

    public EAttribute getFileReferenceT_Type();

    public EClass getFilesType();

    public EReference getFilesType_Target();

    public EClass getFileType();

    public EAttribute getFileType_Name();

    public EAttribute getFileType_Location();

    public EAttribute getFileType_AbstractLocation();

    public EAttribute getFileType_OriginalLocation();

    public EAttribute getFileType_TimeStamp();

    public EClass getFormattedTextT();

    public EAttribute getFormattedTextT_Value();

    public EClass getGenericDataT();

    public EAttribute getGenericDataT_Any();

    public EAttribute getGenericDataT_Name();

    public EClass getGroupType();

    public EReference getGroupType_Option();

    public EAttribute getGroupType_Name();

    public EClass getGroupType1();

    public EReference getGroupType1_Option();

    public EAttribute getGroupType1_Name();

    public EClass getIconT();

    public EReference getIconT_IconFile();

    public EReference getIconT_Size();

    public EAttribute getIconT_IconName();

    public EAttribute getIconT_IconOID();

    public EClass getImplementationConfigurationType();

    public EAttribute getImplementationConfigurationType_ImplementationSetName();

    public EAttribute getImplementationConfigurationType_ImplementationSetOID();

    public EClass getInitType();

    public EClass getInterruptType();

    public EAttribute getInterruptType_EventId();

    public EAttribute getInterruptType_IsrSource();

    public EAttribute getInterruptType_MaxPrio();

    public EAttribute getInterruptType_MinimumPeriod();

    public EAttribute getInterruptType_MinimumPeriodValue();

    public EAttribute getInterruptType_MinPrio();

    public EClass getIntervalT();

    public EAttribute getIntervalT_Max();

    public EAttribute getIntervalT_Min();

    public EClass getItemRefT();

    public EAttribute getItemRefT_Name();

    public EAttribute getItemRefT_OID();

    public EClass getMessageTType();

    public EReference getMessageTType_MessageType();

    public EClass getMessageTypeType();

    public EAttribute getMessageTypeType_Label();

    public EClass getModelConfigurationT();

    public EReference getModelConfigurationT_FormulasFile();

    public EReference getModelConfigurationT_ImplementationTypesFile();

    public EClass getNotesT();

    public EReference getNotesT_Note();

    public EClass getNoteType();

    public EReference getNoteType_Text();

    public EReference getNoteType_View();

    public EAttribute getNoteType_Name();

    public EClass getOperatingSystemType();

    public EAttribute getOperatingSystemType_Type();

    public EClass getOperationModesType();

    public EReference getOperationModesType_OperationMode();

    public EClass getOperationModeT();

    public EAttribute getOperationModeT_Id();

    public EAttribute getOperationModeT_IsCTMode();

    public EAttribute getOperationModeT_IsStartMode();

    public EAttribute getOperationModeT_Name();

    public EClass getOperationModeType();

    public EAttribute getOperationModeType_Name();

    public EClass getOptionT();

    public EAttribute getOptionT_Name();

    public EAttribute getOptionT_Type();

    public EAttribute getOptionT_Value();

    public EClass getOsDescriptionType();

    public EReference getOsDescriptionType_OperationModes();

    public EReference getOsDescriptionType_Tasks();

    public EReference getOsDescriptionType_OsSettings();

    public EAttribute getOsDescriptionType_CoopLevels();

    public EAttribute getOsDescriptionType_EnableMonitoring();

    public EAttribute getOsDescriptionType_EnableTickDuration();

    public EAttribute getOsDescriptionType_EventLevels();

    public EAttribute getOsDescriptionType_OID();

    public EAttribute getOsDescriptionType_PreempLevels();

    public EAttribute getOsDescriptionType_TickDuration();

    public EClass getOsEntryType();

    public EReference getOsEntryType_TargetKey();

    public EReference getOsEntryType_OsDescription();

    public EClass getOSLogicT();

    public EReference getOSLogicT_OsEntry();

    public EClass getOsLogicType();

    public EClass getOsSettingsType();

    public EReference getOsSettingsType_Group();

    public EClass getPlatformType();

    public EReference getPlatformType_Target();

    public EReference getPlatformType_Compiler();

    public EReference getPlatformType_CodeGenerator();

    public EReference getPlatformType_OperatingSystem();

    public EAttribute getPlatformType_PlatformKey();

    public EClass getPointT();

    public EAttribute getPointT_X();

    public EAttribute getPointT_Y();

    public EClass getProcessType();

    public EAttribute getProcessType_Default();

    public EAttribute getProcessType_ElementName();

    public EAttribute getProcessType_ElementOID();

    public EAttribute getProcessType_Index();

    public EAttribute getProcessType_MethodName();

    public EAttribute getProcessType_MethodOID();

    public EClass getProjectType();

    public EReference getProjectType_ImplementationConfiguration();

    public EReference getProjectType_DataConfiguration();

    public EReference getProjectType_OsLogic();

    public EReference getProjectType_ModelConfiguration();

    public EReference getProjectType_BuildConfiguration();

    public EReference getProjectType_SimulationConfiguration();

    public EReference getProjectType_HiddenMessageTypes();

    public EReference getProjectType_IgnoredMessageTypes();

    public EReference getProjectType_PromotedToErrorMessageTypes();

    public EReference getProjectType_PromotedToWarningMessageTypes();

    public EReference getProjectType_TransferOptions();

    public EReference getProjectType_Files();

    public EReference getProjectType_Signature();

    public EAttribute getProjectType_BuildConfigKey();

    public EAttribute getProjectType_SchemaVersion();

    public EAttribute getProjectType_ToolVersion();

    public EClass getSimulationConfigurationType();

    public EAttribute getSimulationConfigurationType_ExperimentTarget();

    public EClass getSizeT();

    public EAttribute getSizeT_X();

    public EAttribute getSizeT_Y();

    public EClass getSoftwareType();

    public EAttribute getSoftwareType_Autostart();

    public EClass getTargetKeyType();

    public EAttribute getTargetKeyType_Name();

    public EClass getTargetType();

    public EReference getTargetType_File();

    public EAttribute getTargetType_Key();

    public EClass getTargetType1();

    public EAttribute getTargetType1_Key();

    public EAttribute getTargetType1_Name();

    public EClass getTaskBaseT();

    public EAttribute getTaskBaseT_PrePostHooks();

    public EAttribute getTaskBaseT_Priority();

    public EClass getTasksType();

    public EReference getTasksType_Task();

    public EClass getTaskSwBaseT();

    public EAttribute getTaskSwBaseT_Deadline();

    public EAttribute getTaskSwBaseT_DeadlineValue();

    public EAttribute getTaskSwBaseT_MaxNoActivations();

    public EAttribute getTaskSwBaseT_Scheduling();

    public EClass getTaskType();

    public EReference getTaskType_Process();

    public EReference getTaskType_AssignedOperationModes();

    public EReference getTaskType_TaskType();

    public EAttribute getTaskType_Id();

    public EAttribute getTaskType_IsContinuousTime();

    public EAttribute getTaskType_Name();

    public EClass getTaskTypeType();

    public EReference getTaskTypeType_Interrupt();

    public EReference getTaskTypeType_Alarm();

    public EReference getTaskTypeType_Timetable();

    public EReference getTaskTypeType_Software();

    public EReference getTaskTypeType_Init();

    public EClass getTimeStampT();

    public EAttribute getTimeStampT_TimeStampCounter();

    public EAttribute getTimeStampT_TimeStampKey();

    public EAttribute getTimeStampT_TimeStampValue();

    public EClass getTimetableType();

    public EAttribute getTimetableType_Delay();

    public EAttribute getTimetableType_Period();

    public EClass getTransferOptionsType();

    public EReference getTransferOptionsType_Option();

    public EClass getViewType();

    public EAttribute getViewType_Name();

    public EEnum getCodeGeneratorT();

    public EEnum getExperimentTargetType();

    public EEnum getPrePostHooksType();

    public EEnum getSchedulingType();

    public EEnum getTypeType();

    public EDataType getCodeGeneratorTObject();

    public EDataType getExperimentTargetTypeObject();

    public EDataType getNumberOrFraction();

    public EDataType getNumberOrFractionMember1();

    public EDataType getNzqr();

    public EDataType getNzqrMember2();

    public EDataType getOID();

    public EDataType getPrePostHooksTypeObject();

    public EDataType getSchedulingTypeObject();

    public EDataType getTypeTypeObject();

    public ComponentProjectFactory getComponentProjectFactory();

    public static interface Literals {
        public static final EClass ALARM_TYPE = eINSTANCE.getAlarmType();
        public static final EAttribute ALARM_TYPE__DELAY = eINSTANCE.getAlarmType_Delay();
        public static final EAttribute ALARM_TYPE__PERIOD = eINSTANCE.getAlarmType_Period();
        public static final EAttribute ALARM_TYPE__START_ALARM = eINSTANCE.getAlarmType_StartAlarm();
        public static final EClass ASSIGNED_OPERATION_MODES_TYPE = eINSTANCE.getAssignedOperationModesType();
        public static final EReference ASSIGNED_OPERATION_MODES_TYPE__OPERATION_MODE = eINSTANCE.getAssignedOperationModesType_OperationMode();
        public static final EClass BUILD_CONFIGURATION_TYPE = eINSTANCE.getBuildConfigurationType();
        public static final EReference BUILD_CONFIGURATION_TYPE__PLATFORM = eINSTANCE.getBuildConfigurationType_Platform();
        public static final EReference BUILD_CONFIGURATION_TYPE__BUILD_SETTINGS = eINSTANCE.getBuildConfigurationType_BuildSettings();
        public static final EAttribute BUILD_CONFIGURATION_TYPE__BUILD_CONFIG_KEY = eINSTANCE.getBuildConfigurationType_BuildConfigKey();
        public static final EAttribute BUILD_CONFIGURATION_TYPE__CHECKSUM = eINSTANCE.getBuildConfigurationType_Checksum();
        public static final EAttribute BUILD_CONFIGURATION_TYPE__CHECKSUM_CODE_RELEVANT = eINSTANCE.getBuildConfigurationType_ChecksumCodeRelevant();
        public static final EAttribute BUILD_CONFIGURATION_TYPE__NAME = eINSTANCE.getBuildConfigurationType_Name();
        public static final EClass BUILD_SETTINGS_TYPE = eINSTANCE.getBuildSettingsType();
        public static final EReference BUILD_SETTINGS_TYPE__GROUP = eINSTANCE.getBuildSettingsType_Group();
        public static final EClass CODE_GENERATOR_TYPE = eINSTANCE.getCodeGeneratorType();
        public static final EAttribute CODE_GENERATOR_TYPE__TYPE = eINSTANCE.getCodeGeneratorType_Type();
        public static final EClass CODE_VARIANT_T = eINSTANCE.getCodeVariantT();
        public static final EClass COLOR_T = eINSTANCE.getColorT();
        public static final EAttribute COLOR_T__BLUE = eINSTANCE.getColorT_Blue();
        public static final EAttribute COLOR_T__GREEN = eINSTANCE.getColorT_Green();
        public static final EAttribute COLOR_T__RED = eINSTANCE.getColorT_Red();
        public static final EClass COMPILER_TYPE = eINSTANCE.getCompilerType();
        public static final EAttribute COMPILER_TYPE__NAME = eINSTANCE.getCompilerType_Name();
        public static final EAttribute COMPILER_TYPE__PATH = eINSTANCE.getCompilerType_Path();
        public static final EClass DATA_CONFIGURATION_TYPE = eINSTANCE.getDataConfigurationType();
        public static final EAttribute DATA_CONFIGURATION_TYPE__DATA_SET_NAME = eINSTANCE.getDataConfigurationType_DataSetName();
        public static final EAttribute DATA_CONFIGURATION_TYPE__DATA_SET_OID = eINSTANCE.getDataConfigurationType_DataSetOID();
        public static final EClass DOCUMENT_ROOT = eINSTANCE.getDocumentRoot();
        public static final EAttribute DOCUMENT_ROOT__MIXED = eINSTANCE.getDocumentRoot_Mixed();
        public static final EReference DOCUMENT_ROOT__XMLNS_PREFIX_MAP = eINSTANCE.getDocumentRoot_XMLNSPrefixMap();
        public static final EReference DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = eINSTANCE.getDocumentRoot_XSISchemaLocation();
        public static final EReference DOCUMENT_ROOT__PROJECT = eINSTANCE.getDocumentRoot_Project();
        public static final EClass ELEMENT_INFO_T = eINSTANCE.getElementInfoT();
        public static final EAttribute ELEMENT_INFO_T__ELEMENT_ID = eINSTANCE.getElementInfoT_ElementId();
        public static final EAttribute ELEMENT_INFO_T__NAME = eINSTANCE.getElementInfoT_Name();
        public static final EClass ERCOSEKT = eINSTANCE.getERCOSEKT();
        public static final EClass FILE_REFERENCE_T = eINSTANCE.getFileReferenceT();
        public static final EAttribute FILE_REFERENCE_T__VALUE = eINSTANCE.getFileReferenceT_Value();
        public static final EAttribute FILE_REFERENCE_T__CHECKSUM = eINSTANCE.getFileReferenceT_Checksum();
        public static final EAttribute FILE_REFERENCE_T__TYPE = eINSTANCE.getFileReferenceT_Type();
        public static final EClass FILES_TYPE = eINSTANCE.getFilesType();
        public static final EReference FILES_TYPE__TARGET = eINSTANCE.getFilesType_Target();
        public static final EClass FILE_TYPE = eINSTANCE.getFileType();
        public static final EAttribute FILE_TYPE__NAME = eINSTANCE.getFileType_Name();
        public static final EAttribute FILE_TYPE__LOCATION = eINSTANCE.getFileType_Location();
        public static final EAttribute FILE_TYPE__ABSTRACT_LOCATION = eINSTANCE.getFileType_AbstractLocation();
        public static final EAttribute FILE_TYPE__ORIGINAL_LOCATION = eINSTANCE.getFileType_OriginalLocation();
        public static final EAttribute FILE_TYPE__TIME_STAMP = eINSTANCE.getFileType_TimeStamp();
        public static final EClass FORMATTED_TEXT_T = eINSTANCE.getFormattedTextT();
        public static final EAttribute FORMATTED_TEXT_T__VALUE = eINSTANCE.getFormattedTextT_Value();
        public static final EClass GENERIC_DATA_T = eINSTANCE.getGenericDataT();
        public static final EAttribute GENERIC_DATA_T__ANY = eINSTANCE.getGenericDataT_Any();
        public static final EAttribute GENERIC_DATA_T__NAME = eINSTANCE.getGenericDataT_Name();
        public static final EClass GROUP_TYPE = eINSTANCE.getGroupType();
        public static final EReference GROUP_TYPE__OPTION = eINSTANCE.getGroupType_Option();
        public static final EAttribute GROUP_TYPE__NAME = eINSTANCE.getGroupType_Name();
        public static final EClass GROUP_TYPE1 = eINSTANCE.getGroupType1();
        public static final EReference GROUP_TYPE1__OPTION = eINSTANCE.getGroupType1_Option();
        public static final EAttribute GROUP_TYPE1__NAME = eINSTANCE.getGroupType1_Name();
        public static final EClass ICON_T = eINSTANCE.getIconT();
        public static final EReference ICON_T__ICON_FILE = eINSTANCE.getIconT_IconFile();
        public static final EReference ICON_T__SIZE = eINSTANCE.getIconT_Size();
        public static final EAttribute ICON_T__ICON_NAME = eINSTANCE.getIconT_IconName();
        public static final EAttribute ICON_T__ICON_OID = eINSTANCE.getIconT_IconOID();
        public static final EClass IMPLEMENTATION_CONFIGURATION_TYPE = eINSTANCE.getImplementationConfigurationType();
        public static final EAttribute IMPLEMENTATION_CONFIGURATION_TYPE__IMPLEMENTATION_SET_NAME = eINSTANCE.getImplementationConfigurationType_ImplementationSetName();
        public static final EAttribute IMPLEMENTATION_CONFIGURATION_TYPE__IMPLEMENTATION_SET_OID = eINSTANCE.getImplementationConfigurationType_ImplementationSetOID();
        public static final EClass INIT_TYPE = eINSTANCE.getInitType();
        public static final EClass INTERRUPT_TYPE = eINSTANCE.getInterruptType();
        public static final EAttribute INTERRUPT_TYPE__EVENT_ID = eINSTANCE.getInterruptType_EventId();
        public static final EAttribute INTERRUPT_TYPE__ISR_SOURCE = eINSTANCE.getInterruptType_IsrSource();
        public static final EAttribute INTERRUPT_TYPE__MAX_PRIO = eINSTANCE.getInterruptType_MaxPrio();
        public static final EAttribute INTERRUPT_TYPE__MINIMUM_PERIOD = eINSTANCE.getInterruptType_MinimumPeriod();
        public static final EAttribute INTERRUPT_TYPE__MINIMUM_PERIOD_VALUE = eINSTANCE.getInterruptType_MinimumPeriodValue();
        public static final EAttribute INTERRUPT_TYPE__MIN_PRIO = eINSTANCE.getInterruptType_MinPrio();
        public static final EClass INTERVAL_T = eINSTANCE.getIntervalT();
        public static final EAttribute INTERVAL_T__MAX = eINSTANCE.getIntervalT_Max();
        public static final EAttribute INTERVAL_T__MIN = eINSTANCE.getIntervalT_Min();
        public static final EClass ITEM_REF_T = eINSTANCE.getItemRefT();
        public static final EAttribute ITEM_REF_T__NAME = eINSTANCE.getItemRefT_Name();
        public static final EAttribute ITEM_REF_T__OID = eINSTANCE.getItemRefT_OID();
        public static final EClass MESSAGE_TTYPE = eINSTANCE.getMessageTType();
        public static final EReference MESSAGE_TTYPE__MESSAGE_TYPE = eINSTANCE.getMessageTType_MessageType();
        public static final EClass MESSAGE_TYPE_TYPE = eINSTANCE.getMessageTypeType();
        public static final EAttribute MESSAGE_TYPE_TYPE__LABEL = eINSTANCE.getMessageTypeType_Label();
        public static final EClass MODEL_CONFIGURATION_T = eINSTANCE.getModelConfigurationT();
        public static final EReference MODEL_CONFIGURATION_T__FORMULAS_FILE = eINSTANCE.getModelConfigurationT_FormulasFile();
        public static final EReference MODEL_CONFIGURATION_T__IMPLEMENTATION_TYPES_FILE = eINSTANCE.getModelConfigurationT_ImplementationTypesFile();
        public static final EClass NOTES_T = eINSTANCE.getNotesT();
        public static final EReference NOTES_T__NOTE = eINSTANCE.getNotesT_Note();
        public static final EClass NOTE_TYPE = eINSTANCE.getNoteType();
        public static final EReference NOTE_TYPE__TEXT = eINSTANCE.getNoteType_Text();
        public static final EReference NOTE_TYPE__VIEW = eINSTANCE.getNoteType_View();
        public static final EAttribute NOTE_TYPE__NAME = eINSTANCE.getNoteType_Name();
        public static final EClass OPERATING_SYSTEM_TYPE = eINSTANCE.getOperatingSystemType();
        public static final EAttribute OPERATING_SYSTEM_TYPE__TYPE = eINSTANCE.getOperatingSystemType_Type();
        public static final EClass OPERATION_MODES_TYPE = eINSTANCE.getOperationModesType();
        public static final EReference OPERATION_MODES_TYPE__OPERATION_MODE = eINSTANCE.getOperationModesType_OperationMode();
        public static final EClass OPERATION_MODE_T = eINSTANCE.getOperationModeT();
        public static final EAttribute OPERATION_MODE_T__ID = eINSTANCE.getOperationModeT_Id();
        public static final EAttribute OPERATION_MODE_T__IS_CT_MODE = eINSTANCE.getOperationModeT_IsCTMode();
        public static final EAttribute OPERATION_MODE_T__IS_START_MODE = eINSTANCE.getOperationModeT_IsStartMode();
        public static final EAttribute OPERATION_MODE_T__NAME = eINSTANCE.getOperationModeT_Name();
        public static final EClass OPERATION_MODE_TYPE = eINSTANCE.getOperationModeType();
        public static final EAttribute OPERATION_MODE_TYPE__NAME = eINSTANCE.getOperationModeType_Name();
        public static final EClass OPTION_T = eINSTANCE.getOptionT();
        public static final EAttribute OPTION_T__NAME = eINSTANCE.getOptionT_Name();
        public static final EAttribute OPTION_T__TYPE = eINSTANCE.getOptionT_Type();
        public static final EAttribute OPTION_T__VALUE = eINSTANCE.getOptionT_Value();
        public static final EClass OS_DESCRIPTION_TYPE = eINSTANCE.getOsDescriptionType();
        public static final EReference OS_DESCRIPTION_TYPE__OPERATION_MODES = eINSTANCE.getOsDescriptionType_OperationModes();
        public static final EReference OS_DESCRIPTION_TYPE__TASKS = eINSTANCE.getOsDescriptionType_Tasks();
        public static final EReference OS_DESCRIPTION_TYPE__OS_SETTINGS = eINSTANCE.getOsDescriptionType_OsSettings();
        public static final EAttribute OS_DESCRIPTION_TYPE__COOP_LEVELS = eINSTANCE.getOsDescriptionType_CoopLevels();
        public static final EAttribute OS_DESCRIPTION_TYPE__ENABLE_MONITORING = eINSTANCE.getOsDescriptionType_EnableMonitoring();
        public static final EAttribute OS_DESCRIPTION_TYPE__ENABLE_TICK_DURATION = eINSTANCE.getOsDescriptionType_EnableTickDuration();
        public static final EAttribute OS_DESCRIPTION_TYPE__EVENT_LEVELS = eINSTANCE.getOsDescriptionType_EventLevels();
        public static final EAttribute OS_DESCRIPTION_TYPE__OID = eINSTANCE.getOsDescriptionType_OID();
        public static final EAttribute OS_DESCRIPTION_TYPE__PREEMP_LEVELS = eINSTANCE.getOsDescriptionType_PreempLevels();
        public static final EAttribute OS_DESCRIPTION_TYPE__TICK_DURATION = eINSTANCE.getOsDescriptionType_TickDuration();
        public static final EClass OS_ENTRY_TYPE = eINSTANCE.getOsEntryType();
        public static final EReference OS_ENTRY_TYPE__TARGET_KEY = eINSTANCE.getOsEntryType_TargetKey();
        public static final EReference OS_ENTRY_TYPE__OS_DESCRIPTION = eINSTANCE.getOsEntryType_OsDescription();
        public static final EClass OS_LOGIC_T = eINSTANCE.getOSLogicT();
        public static final EReference OS_LOGIC_T__OS_ENTRY = eINSTANCE.getOSLogicT_OsEntry();
        public static final EClass OS_LOGIC_TYPE = eINSTANCE.getOsLogicType();
        public static final EClass OS_SETTINGS_TYPE = eINSTANCE.getOsSettingsType();
        public static final EReference OS_SETTINGS_TYPE__GROUP = eINSTANCE.getOsSettingsType_Group();
        public static final EClass PLATFORM_TYPE = eINSTANCE.getPlatformType();
        public static final EReference PLATFORM_TYPE__TARGET = eINSTANCE.getPlatformType_Target();
        public static final EReference PLATFORM_TYPE__COMPILER = eINSTANCE.getPlatformType_Compiler();
        public static final EReference PLATFORM_TYPE__CODE_GENERATOR = eINSTANCE.getPlatformType_CodeGenerator();
        public static final EReference PLATFORM_TYPE__OPERATING_SYSTEM = eINSTANCE.getPlatformType_OperatingSystem();
        public static final EAttribute PLATFORM_TYPE__PLATFORM_KEY = eINSTANCE.getPlatformType_PlatformKey();
        public static final EClass POINT_T = eINSTANCE.getPointT();
        public static final EAttribute POINT_T__X = eINSTANCE.getPointT_X();
        public static final EAttribute POINT_T__Y = eINSTANCE.getPointT_Y();
        public static final EClass PROCESS_TYPE = eINSTANCE.getProcessType();
        public static final EAttribute PROCESS_TYPE__DEFAULT = eINSTANCE.getProcessType_Default();
        public static final EAttribute PROCESS_TYPE__ELEMENT_NAME = eINSTANCE.getProcessType_ElementName();
        public static final EAttribute PROCESS_TYPE__ELEMENT_OID = eINSTANCE.getProcessType_ElementOID();
        public static final EAttribute PROCESS_TYPE__INDEX = eINSTANCE.getProcessType_Index();
        public static final EAttribute PROCESS_TYPE__METHOD_NAME = eINSTANCE.getProcessType_MethodName();
        public static final EAttribute PROCESS_TYPE__METHOD_OID = eINSTANCE.getProcessType_MethodOID();
        public static final EClass PROJECT_TYPE = eINSTANCE.getProjectType();
        public static final EReference PROJECT_TYPE__IMPLEMENTATION_CONFIGURATION = eINSTANCE.getProjectType_ImplementationConfiguration();
        public static final EReference PROJECT_TYPE__DATA_CONFIGURATION = eINSTANCE.getProjectType_DataConfiguration();
        public static final EReference PROJECT_TYPE__OS_LOGIC = eINSTANCE.getProjectType_OsLogic();
        public static final EReference PROJECT_TYPE__MODEL_CONFIGURATION = eINSTANCE.getProjectType_ModelConfiguration();
        public static final EReference PROJECT_TYPE__BUILD_CONFIGURATION = eINSTANCE.getProjectType_BuildConfiguration();
        public static final EReference PROJECT_TYPE__SIMULATION_CONFIGURATION = eINSTANCE.getProjectType_SimulationConfiguration();
        public static final EReference PROJECT_TYPE__HIDDEN_MESSAGE_TYPES = eINSTANCE.getProjectType_HiddenMessageTypes();
        public static final EReference PROJECT_TYPE__IGNORED_MESSAGE_TYPES = eINSTANCE.getProjectType_IgnoredMessageTypes();
        public static final EReference PROJECT_TYPE__PROMOTED_TO_ERROR_MESSAGE_TYPES = eINSTANCE.getProjectType_PromotedToErrorMessageTypes();
        public static final EReference PROJECT_TYPE__PROMOTED_TO_WARNING_MESSAGE_TYPES = eINSTANCE.getProjectType_PromotedToWarningMessageTypes();
        public static final EReference PROJECT_TYPE__TRANSFER_OPTIONS = eINSTANCE.getProjectType_TransferOptions();
        public static final EReference PROJECT_TYPE__FILES = eINSTANCE.getProjectType_Files();
        public static final EReference PROJECT_TYPE__SIGNATURE = eINSTANCE.getProjectType_Signature();
        public static final EAttribute PROJECT_TYPE__BUILD_CONFIG_KEY = eINSTANCE.getProjectType_BuildConfigKey();
        public static final EAttribute PROJECT_TYPE__SCHEMA_VERSION = eINSTANCE.getProjectType_SchemaVersion();
        public static final EAttribute PROJECT_TYPE__TOOL_VERSION = eINSTANCE.getProjectType_ToolVersion();
        public static final EClass SIMULATION_CONFIGURATION_TYPE = eINSTANCE.getSimulationConfigurationType();
        public static final EAttribute SIMULATION_CONFIGURATION_TYPE__EXPERIMENT_TARGET = eINSTANCE.getSimulationConfigurationType_ExperimentTarget();
        public static final EClass SIZE_T = eINSTANCE.getSizeT();
        public static final EAttribute SIZE_T__X = eINSTANCE.getSizeT_X();
        public static final EAttribute SIZE_T__Y = eINSTANCE.getSizeT_Y();
        public static final EClass SOFTWARE_TYPE = eINSTANCE.getSoftwareType();
        public static final EAttribute SOFTWARE_TYPE__AUTOSTART = eINSTANCE.getSoftwareType_Autostart();
        public static final EClass TARGET_KEY_TYPE = eINSTANCE.getTargetKeyType();
        public static final EAttribute TARGET_KEY_TYPE__NAME = eINSTANCE.getTargetKeyType_Name();
        public static final EClass TARGET_TYPE = eINSTANCE.getTargetType();
        public static final EReference TARGET_TYPE__FILE = eINSTANCE.getTargetType_File();
        public static final EAttribute TARGET_TYPE__KEY = eINSTANCE.getTargetType_Key();
        public static final EClass TARGET_TYPE1 = eINSTANCE.getTargetType1();
        public static final EAttribute TARGET_TYPE1__KEY = eINSTANCE.getTargetType1_Key();
        public static final EAttribute TARGET_TYPE1__NAME = eINSTANCE.getTargetType1_Name();
        public static final EClass TASK_BASE_T = eINSTANCE.getTaskBaseT();
        public static final EAttribute TASK_BASE_T__PRE_POST_HOOKS = eINSTANCE.getTaskBaseT_PrePostHooks();
        public static final EAttribute TASK_BASE_T__PRIORITY = eINSTANCE.getTaskBaseT_Priority();
        public static final EClass TASKS_TYPE = eINSTANCE.getTasksType();
        public static final EReference TASKS_TYPE__TASK = eINSTANCE.getTasksType_Task();
        public static final EClass TASK_SW_BASE_T = eINSTANCE.getTaskSwBaseT();
        public static final EAttribute TASK_SW_BASE_T__DEADLINE = eINSTANCE.getTaskSwBaseT_Deadline();
        public static final EAttribute TASK_SW_BASE_T__DEADLINE_VALUE = eINSTANCE.getTaskSwBaseT_DeadlineValue();
        public static final EAttribute TASK_SW_BASE_T__MAX_NO_ACTIVATIONS = eINSTANCE.getTaskSwBaseT_MaxNoActivations();
        public static final EAttribute TASK_SW_BASE_T__SCHEDULING = eINSTANCE.getTaskSwBaseT_Scheduling();
        public static final EClass TASK_TYPE = eINSTANCE.getTaskType();
        public static final EReference TASK_TYPE__PROCESS = eINSTANCE.getTaskType_Process();
        public static final EReference TASK_TYPE__ASSIGNED_OPERATION_MODES = eINSTANCE.getTaskType_AssignedOperationModes();
        public static final EReference TASK_TYPE__TASK_TYPE = eINSTANCE.getTaskType_TaskType();
        public static final EAttribute TASK_TYPE__ID = eINSTANCE.getTaskType_Id();
        public static final EAttribute TASK_TYPE__IS_CONTINUOUS_TIME = eINSTANCE.getTaskType_IsContinuousTime();
        public static final EAttribute TASK_TYPE__NAME = eINSTANCE.getTaskType_Name();
        public static final EClass TASK_TYPE_TYPE = eINSTANCE.getTaskTypeType();
        public static final EReference TASK_TYPE_TYPE__INTERRUPT = eINSTANCE.getTaskTypeType_Interrupt();
        public static final EReference TASK_TYPE_TYPE__ALARM = eINSTANCE.getTaskTypeType_Alarm();
        public static final EReference TASK_TYPE_TYPE__TIMETABLE = eINSTANCE.getTaskTypeType_Timetable();
        public static final EReference TASK_TYPE_TYPE__SOFTWARE = eINSTANCE.getTaskTypeType_Software();
        public static final EReference TASK_TYPE_TYPE__INIT = eINSTANCE.getTaskTypeType_Init();
        public static final EClass TIME_STAMP_T = eINSTANCE.getTimeStampT();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_COUNTER = eINSTANCE.getTimeStampT_TimeStampCounter();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_KEY = eINSTANCE.getTimeStampT_TimeStampKey();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_VALUE = eINSTANCE.getTimeStampT_TimeStampValue();
        public static final EClass TIMETABLE_TYPE = eINSTANCE.getTimetableType();
        public static final EAttribute TIMETABLE_TYPE__DELAY = eINSTANCE.getTimetableType_Delay();
        public static final EAttribute TIMETABLE_TYPE__PERIOD = eINSTANCE.getTimetableType_Period();
        public static final EClass TRANSFER_OPTIONS_TYPE = eINSTANCE.getTransferOptionsType();
        public static final EReference TRANSFER_OPTIONS_TYPE__OPTION = eINSTANCE.getTransferOptionsType_Option();
        public static final EClass VIEW_TYPE = eINSTANCE.getViewType();
        public static final EAttribute VIEW_TYPE__NAME = eINSTANCE.getViewType_Name();
        public static final EEnum CODE_GENERATOR_T = eINSTANCE.getCodeGeneratorT();
        public static final EEnum EXPERIMENT_TARGET_TYPE = eINSTANCE.getExperimentTargetType();
        public static final EEnum PRE_POST_HOOKS_TYPE = eINSTANCE.getPrePostHooksType();
        public static final EEnum SCHEDULING_TYPE = eINSTANCE.getSchedulingType();
        public static final EEnum TYPE_TYPE = eINSTANCE.getTypeType();
        public static final EDataType CODE_GENERATOR_TOBJECT = eINSTANCE.getCodeGeneratorTObject();
        public static final EDataType EXPERIMENT_TARGET_TYPE_OBJECT = eINSTANCE.getExperimentTargetTypeObject();
        public static final EDataType NUMBER_OR_FRACTION = eINSTANCE.getNumberOrFraction();
        public static final EDataType NUMBER_OR_FRACTION_MEMBER1 = eINSTANCE.getNumberOrFractionMember1();
        public static final EDataType NZQR = eINSTANCE.getNzqr();
        public static final EDataType NZQR_MEMBER2 = eINSTANCE.getNzqrMember2();
        public static final EDataType OID = eINSTANCE.getOID();
        public static final EDataType PRE_POST_HOOKS_TYPE_OBJECT = eINSTANCE.getPrePostHooksTypeObject();
        public static final EDataType SCHEDULING_TYPE_OBJECT = eINSTANCE.getSchedulingTypeObject();
        public static final EDataType TYPE_TYPE_OBJECT = eINSTANCE.getTypeTypeObject();
    }
}

