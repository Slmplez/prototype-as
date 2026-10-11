/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.swcinternalbehavior.trigger;

import autosar40.swcomponent.swcinternalbehavior.trigger.TriggerFactory;
import autosar40.swcomponent.swcinternalbehavior.trigger.impl.TriggerPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TriggerPackage
extends EPackage {
    public static final String eNAME = "trigger";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/sib/t";
    public static final String eNS_PREFIX = "";
    public static final TriggerPackage eINSTANCE = TriggerPackageImpl.init();
    public static final int EXTERNAL_TRIGGERING_POINT = 0;
    public static final int EXTERNAL_TRIGGERING_POINT__GCHECKSUM = 0;
    public static final int EXTERNAL_TRIGGERING_POINT__GTIMESTAMP = 1;
    public static final int EXTERNAL_TRIGGERING_POINT__CHECKSUM = 2;
    public static final int EXTERNAL_TRIGGERING_POINT__TIMESTAMP = 3;
    public static final int EXTERNAL_TRIGGERING_POINT__RUNNABLE_ENTITY = 4;
    public static final int EXTERNAL_TRIGGERING_POINT__TRIGGER = 5;
    public static final int EXTERNAL_TRIGGERING_POINT__VARIATION_POINT = 6;
    public static final int EXTERNAL_TRIGGERING_POINT_FEATURE_COUNT = 7;
    public static final int INTERNAL_TRIGGERING_POINT = 1;
    public static final int INTERNAL_TRIGGERING_POINT__GCHECKSUM = 0;
    public static final int INTERNAL_TRIGGERING_POINT__GTIMESTAMP = 1;
    public static final int INTERNAL_TRIGGERING_POINT__CHECKSUM = 2;
    public static final int INTERNAL_TRIGGERING_POINT__TIMESTAMP = 3;
    public static final int INTERNAL_TRIGGERING_POINT__GSHORT_NAME = 4;
    public static final int INTERNAL_TRIGGERING_POINT__SHORT_NAME = 5;
    public static final int INTERNAL_TRIGGERING_POINT__LONG_NAME = 6;
    public static final int INTERNAL_TRIGGERING_POINT__GUUID = 7;
    public static final int INTERNAL_TRIGGERING_POINT__GCATEGORY = 8;
    public static final int INTERNAL_TRIGGERING_POINT__GDESC = 9;
    public static final int INTERNAL_TRIGGERING_POINT__DESC = 10;
    public static final int INTERNAL_TRIGGERING_POINT__CATEGORY = 11;
    public static final int INTERNAL_TRIGGERING_POINT__ADMIN_DATA = 12;
    public static final int INTERNAL_TRIGGERING_POINT__INTRODUCTION = 13;
    public static final int INTERNAL_TRIGGERING_POINT__ANNOTATIONS = 14;
    public static final int INTERNAL_TRIGGERING_POINT__UUID = 15;
    public static final int INTERNAL_TRIGGERING_POINT__ALL_EXTENSIONS = 16;
    public static final int INTERNAL_TRIGGERING_POINT__CONTAINED_EXTENSIONS = 17;
    public static final int INTERNAL_TRIGGERING_POINT__RUNNABLE_ENTITY = 18;
    public static final int INTERNAL_TRIGGERING_POINT__SW_IMPL_POLICY = 19;
    public static final int INTERNAL_TRIGGERING_POINT__VARIATION_POINT = 20;
    public static final int INTERNAL_TRIGGERING_POINT_FEATURE_COUNT = 21;

    public EClass getExternalTriggeringPoint();

    public EReference getExternalTriggeringPoint_RunnableEntity();

    public EReference getExternalTriggeringPoint_Trigger();

    public EReference getExternalTriggeringPoint_VariationPoint();

    public EClass getInternalTriggeringPoint();

    public EReference getInternalTriggeringPoint_RunnableEntity();

    public EAttribute getInternalTriggeringPoint_SwImplPolicy();

    public EReference getInternalTriggeringPoint_VariationPoint();

    public TriggerFactory getTriggerFactory();

    public static interface Literals {
        public static final EClass EXTERNAL_TRIGGERING_POINT = eINSTANCE.getExternalTriggeringPoint();
        public static final EReference EXTERNAL_TRIGGERING_POINT__RUNNABLE_ENTITY = eINSTANCE.getExternalTriggeringPoint_RunnableEntity();
        public static final EReference EXTERNAL_TRIGGERING_POINT__TRIGGER = eINSTANCE.getExternalTriggeringPoint_Trigger();
        public static final EReference EXTERNAL_TRIGGERING_POINT__VARIATION_POINT = eINSTANCE.getExternalTriggeringPoint_VariationPoint();
        public static final EClass INTERNAL_TRIGGERING_POINT = eINSTANCE.getInternalTriggeringPoint();
        public static final EReference INTERNAL_TRIGGERING_POINT__RUNNABLE_ENTITY = eINSTANCE.getInternalTriggeringPoint_RunnableEntity();
        public static final EAttribute INTERNAL_TRIGGERING_POINT__SW_IMPL_POLICY = eINSTANCE.getInternalTriggeringPoint_SwImplPolicy();
        public static final EReference INTERNAL_TRIGGERING_POINT__VARIATION_POINT = eINSTANCE.getInternalTriggeringPoint_VariationPoint();
    }
}

