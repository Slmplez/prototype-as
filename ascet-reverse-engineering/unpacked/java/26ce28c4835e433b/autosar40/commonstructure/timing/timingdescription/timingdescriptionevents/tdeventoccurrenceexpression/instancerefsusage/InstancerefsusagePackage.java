/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.InstancerefsusageFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.impl.InstancerefsusagePackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefsusagePackage
extends EPackage {
    public static final String eNAME = "instancerefsusage";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe/iru";
    public static final String eNS_PREFIX = "";
    public static final InstancerefsusagePackage eINSTANCE = InstancerefsusagePackageImpl.init();
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE = 0;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__GCHECKSUM = 0;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__GTIMESTAMP = 1;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__CHECKSUM = 2;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__TIMESTAMP = 3;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__GSHORT_NAME = 4;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__SHORT_NAME = 5;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__LONG_NAME = 6;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__GUUID = 7;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__GCATEGORY = 8;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__GDESC = 9;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__DESC = 10;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__CATEGORY = 11;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__ADMIN_DATA = 12;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__INTRODUCTION = 13;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__ANNOTATIONS = 14;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__UUID = 15;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__ALL_EXTENSIONS = 16;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__CONTAINED_EXTENSIONS = 17;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__TD_EVENT_OCCURRENCE_EXPRESSION = 18;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE__OPERATION_ARGUMENT_INSTANCE = 19;
    public static final int AUTOSAR_OPERATION_ARGUMENT_INSTANCE_FEATURE_COUNT = 20;
    public static final int AUTOSAR_VARIABLE_INSTANCE = 1;
    public static final int AUTOSAR_VARIABLE_INSTANCE__GCHECKSUM = 0;
    public static final int AUTOSAR_VARIABLE_INSTANCE__GTIMESTAMP = 1;
    public static final int AUTOSAR_VARIABLE_INSTANCE__CHECKSUM = 2;
    public static final int AUTOSAR_VARIABLE_INSTANCE__TIMESTAMP = 3;
    public static final int AUTOSAR_VARIABLE_INSTANCE__GSHORT_NAME = 4;
    public static final int AUTOSAR_VARIABLE_INSTANCE__SHORT_NAME = 5;
    public static final int AUTOSAR_VARIABLE_INSTANCE__LONG_NAME = 6;
    public static final int AUTOSAR_VARIABLE_INSTANCE__GUUID = 7;
    public static final int AUTOSAR_VARIABLE_INSTANCE__GCATEGORY = 8;
    public static final int AUTOSAR_VARIABLE_INSTANCE__GDESC = 9;
    public static final int AUTOSAR_VARIABLE_INSTANCE__DESC = 10;
    public static final int AUTOSAR_VARIABLE_INSTANCE__CATEGORY = 11;
    public static final int AUTOSAR_VARIABLE_INSTANCE__ADMIN_DATA = 12;
    public static final int AUTOSAR_VARIABLE_INSTANCE__INTRODUCTION = 13;
    public static final int AUTOSAR_VARIABLE_INSTANCE__ANNOTATIONS = 14;
    public static final int AUTOSAR_VARIABLE_INSTANCE__UUID = 15;
    public static final int AUTOSAR_VARIABLE_INSTANCE__ALL_EXTENSIONS = 16;
    public static final int AUTOSAR_VARIABLE_INSTANCE__CONTAINED_EXTENSIONS = 17;
    public static final int AUTOSAR_VARIABLE_INSTANCE__TD_EVENT_OCCURRENCE_EXPRESSION = 18;
    public static final int AUTOSAR_VARIABLE_INSTANCE__VARIABLE_INSTANCE = 19;
    public static final int AUTOSAR_VARIABLE_INSTANCE_FEATURE_COUNT = 20;

    public EClass getAutosarOperationArgumentInstance();

    public EReference getAutosarOperationArgumentInstance_TDEventOccurrenceExpression();

    public EReference getAutosarOperationArgumentInstance_OperationArgumentInstance();

    public EClass getAutosarVariableInstance();

    public EReference getAutosarVariableInstance_TDEventOccurrenceExpression();

    public EReference getAutosarVariableInstance_VariableInstance();

    public InstancerefsusageFactory getInstancerefsusageFactory();

    public static interface Literals {
        public static final EClass AUTOSAR_OPERATION_ARGUMENT_INSTANCE = eINSTANCE.getAutosarOperationArgumentInstance();
        public static final EReference AUTOSAR_OPERATION_ARGUMENT_INSTANCE__TD_EVENT_OCCURRENCE_EXPRESSION = eINSTANCE.getAutosarOperationArgumentInstance_TDEventOccurrenceExpression();
        public static final EReference AUTOSAR_OPERATION_ARGUMENT_INSTANCE__OPERATION_ARGUMENT_INSTANCE = eINSTANCE.getAutosarOperationArgumentInstance_OperationArgumentInstance();
        public static final EClass AUTOSAR_VARIABLE_INSTANCE = eINSTANCE.getAutosarVariableInstance();
        public static final EReference AUTOSAR_VARIABLE_INSTANCE__TD_EVENT_OCCURRENCE_EXPRESSION = eINSTANCE.getAutosarVariableInstance_TDEventOccurrenceExpression();
        public static final EReference AUTOSAR_VARIABLE_INSTANCE__VARIABLE_INSTANCE = eINSTANCE.getAutosarVariableInstance_VariableInstance();
    }
}

