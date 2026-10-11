/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.triggerdeclaration;

import autosar40.commonstructure.triggerdeclaration.TriggerdeclarationFactory;
import autosar40.commonstructure.triggerdeclaration.impl.TriggerdeclarationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TriggerdeclarationPackage
extends EPackage {
    public static final String eNAME = "triggerdeclaration";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/td";
    public static final String eNS_PREFIX = "";
    public static final TriggerdeclarationPackage eINSTANCE = TriggerdeclarationPackageImpl.init();
    public static final int TRIGGER = 0;
    public static final int TRIGGER__GCHECKSUM = 0;
    public static final int TRIGGER__GTIMESTAMP = 1;
    public static final int TRIGGER__CHECKSUM = 2;
    public static final int TRIGGER__TIMESTAMP = 3;
    public static final int TRIGGER__GSHORT_NAME = 4;
    public static final int TRIGGER__SHORT_NAME = 5;
    public static final int TRIGGER__LONG_NAME = 6;
    public static final int TRIGGER__GUUID = 7;
    public static final int TRIGGER__GCATEGORY = 8;
    public static final int TRIGGER__GDESC = 9;
    public static final int TRIGGER__DESC = 10;
    public static final int TRIGGER__CATEGORY = 11;
    public static final int TRIGGER__ADMIN_DATA = 12;
    public static final int TRIGGER__INTRODUCTION = 13;
    public static final int TRIGGER__ANNOTATIONS = 14;
    public static final int TRIGGER__UUID = 15;
    public static final int TRIGGER__ALL_EXTENSIONS = 16;
    public static final int TRIGGER__CONTAINED_EXTENSIONS = 17;
    public static final int TRIGGER__ATP_CLASSIFIER = 18;
    public static final int TRIGGER__SW_IMPL_POLICY = 19;
    public static final int TRIGGER__TRIGGER_PERIOD = 20;
    public static final int TRIGGER__VARIATION_POINT = 21;
    public static final int TRIGGER_FEATURE_COUNT = 22;
    public static final int TRIGGER_MAPPING = 1;
    public static final int TRIGGER_MAPPING__GCHECKSUM = 0;
    public static final int TRIGGER_MAPPING__GTIMESTAMP = 1;
    public static final int TRIGGER_MAPPING__CHECKSUM = 2;
    public static final int TRIGGER_MAPPING__TIMESTAMP = 3;
    public static final int TRIGGER_MAPPING__TRIGGER_INTERFACE_MAPPING = 4;
    public static final int TRIGGER_MAPPING__FIRST_TRIGGER = 5;
    public static final int TRIGGER_MAPPING__SECOND_TRIGGER = 6;
    public static final int TRIGGER_MAPPING_FEATURE_COUNT = 7;
    public static final int TRIGGER_REF_CONDITIONAL = 2;
    public static final int TRIGGER_REF_CONDITIONAL__GCHECKSUM = 0;
    public static final int TRIGGER_REF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int TRIGGER_REF_CONDITIONAL__CHECKSUM = 2;
    public static final int TRIGGER_REF_CONDITIONAL__TIMESTAMP = 3;
    public static final int TRIGGER_REF_CONDITIONAL__BSW_MODULE_ENTITY = 4;
    public static final int TRIGGER_REF_CONDITIONAL__TRIGGER = 5;
    public static final int TRIGGER_REF_CONDITIONAL__VARIATION_POINT = 6;
    public static final int TRIGGER_REF_CONDITIONAL_FEATURE_COUNT = 7;

    public EClass getTrigger();

    public EAttribute getTrigger_SwImplPolicy();

    public EReference getTrigger_TriggerPeriod();

    public EReference getTrigger_VariationPoint();

    public EClass getTriggerMapping();

    public EReference getTriggerMapping_TriggerInterfaceMapping();

    public EReference getTriggerMapping_FirstTrigger();

    public EReference getTriggerMapping_SecondTrigger();

    public EClass getTriggerRefConditional();

    public EReference getTriggerRefConditional_BswModuleEntity();

    public EReference getTriggerRefConditional_Trigger();

    public EReference getTriggerRefConditional_VariationPoint();

    public TriggerdeclarationFactory getTriggerdeclarationFactory();

    public static interface Literals {
        public static final EClass TRIGGER = eINSTANCE.getTrigger();
        public static final EAttribute TRIGGER__SW_IMPL_POLICY = eINSTANCE.getTrigger_SwImplPolicy();
        public static final EReference TRIGGER__TRIGGER_PERIOD = eINSTANCE.getTrigger_TriggerPeriod();
        public static final EReference TRIGGER__VARIATION_POINT = eINSTANCE.getTrigger_VariationPoint();
        public static final EClass TRIGGER_MAPPING = eINSTANCE.getTriggerMapping();
        public static final EReference TRIGGER_MAPPING__TRIGGER_INTERFACE_MAPPING = eINSTANCE.getTriggerMapping_TriggerInterfaceMapping();
        public static final EReference TRIGGER_MAPPING__FIRST_TRIGGER = eINSTANCE.getTriggerMapping_FirstTrigger();
        public static final EReference TRIGGER_MAPPING__SECOND_TRIGGER = eINSTANCE.getTriggerMapping_SecondTrigger();
        public static final EClass TRIGGER_REF_CONDITIONAL = eINSTANCE.getTriggerRefConditional();
        public static final EReference TRIGGER_REF_CONDITIONAL__BSW_MODULE_ENTITY = eINSTANCE.getTriggerRefConditional_BswModuleEntity();
        public static final EReference TRIGGER_REF_CONDITIONAL__TRIGGER = eINSTANCE.getTriggerRefConditional_Trigger();
        public static final EReference TRIGGER_REF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getTriggerRefConditional_VariationPoint();
    }
}

