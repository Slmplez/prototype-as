/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.internalbehavior.exclusivearea;

import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveareaFactory;
import autosar21.swcomponent.internalbehavior.exclusivearea.impl.ExclusiveareaPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ExclusiveareaPackage
extends EPackage {
    public static final String eNAME = "exclusivearea";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/ib/ea";
    public static final String eNS_PREFIX = "";
    public static final ExclusiveareaPackage eINSTANCE = ExclusiveareaPackageImpl.init();
    public static final int RUNNABLE_ENTITY_CAN_ENTER_EXCLUSIVE_AREA = 0;
    public static final int RUNNABLE_ENTITY_CAN_ENTER_EXCLUSIVE_AREA__GCHECKSUM = 0;
    public static final int RUNNABLE_ENTITY_CAN_ENTER_EXCLUSIVE_AREA__GTIMESTAMP = 1;
    public static final int RUNNABLE_ENTITY_CAN_ENTER_EXCLUSIVE_AREA__CHECKSUM = 2;
    public static final int RUNNABLE_ENTITY_CAN_ENTER_EXCLUSIVE_AREA__TIMESTAMP = 3;
    public static final int RUNNABLE_ENTITY_CAN_ENTER_EXCLUSIVE_AREA__RUNNABLE_ENTITY = 4;
    public static final int RUNNABLE_ENTITY_CAN_ENTER_EXCLUSIVE_AREA__EXCLUSIVE_AREA = 5;
    public static final int RUNNABLE_ENTITY_CAN_ENTER_EXCLUSIVE_AREA_FEATURE_COUNT = 6;
    public static final int RUNNABLE_ENTITY_RUNS_IN_EXCLUSIVE_AREA = 1;
    public static final int RUNNABLE_ENTITY_RUNS_IN_EXCLUSIVE_AREA__GCHECKSUM = 0;
    public static final int RUNNABLE_ENTITY_RUNS_IN_EXCLUSIVE_AREA__GTIMESTAMP = 1;
    public static final int RUNNABLE_ENTITY_RUNS_IN_EXCLUSIVE_AREA__CHECKSUM = 2;
    public static final int RUNNABLE_ENTITY_RUNS_IN_EXCLUSIVE_AREA__TIMESTAMP = 3;
    public static final int RUNNABLE_ENTITY_RUNS_IN_EXCLUSIVE_AREA__RUNNABLE_ENTITY = 4;
    public static final int RUNNABLE_ENTITY_RUNS_IN_EXCLUSIVE_AREA__EXCLUSIVE_AREA = 5;
    public static final int RUNNABLE_ENTITY_RUNS_IN_EXCLUSIVE_AREA_FEATURE_COUNT = 6;
    public static final int EXCLUSIVE_AREA = 2;
    public static final int EXCLUSIVE_AREA__GCHECKSUM = 0;
    public static final int EXCLUSIVE_AREA__GTIMESTAMP = 1;
    public static final int EXCLUSIVE_AREA__CHECKSUM = 2;
    public static final int EXCLUSIVE_AREA__TIMESTAMP = 3;
    public static final int EXCLUSIVE_AREA__GSHORT_NAME = 4;
    public static final int EXCLUSIVE_AREA__GUUID = 5;
    public static final int EXCLUSIVE_AREA__GCATEGORY = 6;
    public static final int EXCLUSIVE_AREA__GDESC = 7;
    public static final int EXCLUSIVE_AREA__SHORT_NAME = 8;
    public static final int EXCLUSIVE_AREA__LONG_NAME = 9;
    public static final int EXCLUSIVE_AREA__DESC = 10;
    public static final int EXCLUSIVE_AREA__CATEGORY = 11;
    public static final int EXCLUSIVE_AREA__ADMIN_DATA = 12;
    public static final int EXCLUSIVE_AREA__UUID = 13;
    public static final int EXCLUSIVE_AREA__ALL_EXTENSIONS = 14;
    public static final int EXCLUSIVE_AREA__CONTAINED_EXTENSIONS = 15;
    public static final int EXCLUSIVE_AREA__INTERNAL_BEHAVIOR = 16;
    public static final int EXCLUSIVE_AREA_FEATURE_COUNT = 17;

    public EClass getRunnableEntityCanEnterExclusiveArea();

    public EReference getRunnableEntityCanEnterExclusiveArea_RunnableEntity();

    public EReference getRunnableEntityCanEnterExclusiveArea_ExclusiveArea();

    public EClass getRunnableEntityRunsInExclusiveArea();

    public EReference getRunnableEntityRunsInExclusiveArea_RunnableEntity();

    public EReference getRunnableEntityRunsInExclusiveArea_ExclusiveArea();

    public EClass getExclusiveArea();

    public EReference getExclusiveArea_InternalBehavior();

    public ExclusiveareaFactory getExclusiveareaFactory();

    public static interface Literals {
        public static final EClass RUNNABLE_ENTITY_CAN_ENTER_EXCLUSIVE_AREA = eINSTANCE.getRunnableEntityCanEnterExclusiveArea();
        public static final EReference RUNNABLE_ENTITY_CAN_ENTER_EXCLUSIVE_AREA__RUNNABLE_ENTITY = eINSTANCE.getRunnableEntityCanEnterExclusiveArea_RunnableEntity();
        public static final EReference RUNNABLE_ENTITY_CAN_ENTER_EXCLUSIVE_AREA__EXCLUSIVE_AREA = eINSTANCE.getRunnableEntityCanEnterExclusiveArea_ExclusiveArea();
        public static final EClass RUNNABLE_ENTITY_RUNS_IN_EXCLUSIVE_AREA = eINSTANCE.getRunnableEntityRunsInExclusiveArea();
        public static final EReference RUNNABLE_ENTITY_RUNS_IN_EXCLUSIVE_AREA__RUNNABLE_ENTITY = eINSTANCE.getRunnableEntityRunsInExclusiveArea_RunnableEntity();
        public static final EReference RUNNABLE_ENTITY_RUNS_IN_EXCLUSIVE_AREA__EXCLUSIVE_AREA = eINSTANCE.getRunnableEntityRunsInExclusiveArea_ExclusiveArea();
        public static final EClass EXCLUSIVE_AREA = eINSTANCE.getExclusiveArea();
        public static final EReference EXCLUSIVE_AREA__INTERNAL_BEHAVIOR = eINSTANCE.getExclusiveArea_InternalBehavior();
    }
}

