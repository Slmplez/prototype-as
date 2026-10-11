/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gcommonstructure.ginternalbehavior;

import gautosar.gcommonstructure.ginternalbehavior.GinternalbehaviorFactory;
import gautosar.gcommonstructure.ginternalbehavior.impl.GinternalbehaviorPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GinternalbehaviorPackage
extends EPackage {
    public static final String eNAME = "ginternalbehavior";
    public static final String eNS_URI = "http://artop.org/gautosar/cs/ib";
    public static final String eNS_PREFIX = "";
    public static final GinternalbehaviorPackage eINSTANCE = GinternalbehaviorPackageImpl.init();
    public static final int GEXECUTABLE_ENTITY = 0;
    public static final int GEXECUTABLE_ENTITY__GCHECKSUM = 0;
    public static final int GEXECUTABLE_ENTITY__GTIMESTAMP = 1;
    public static final int GEXECUTABLE_ENTITY__GSHORT_NAME = 2;
    public static final int GEXECUTABLE_ENTITY__GUUID = 3;
    public static final int GEXECUTABLE_ENTITY__GCATEGORY = 4;
    public static final int GEXECUTABLE_ENTITY__GDESC = 5;
    public static final int GEXECUTABLE_ENTITY__GRUNS_INSIDE_EXCLUSIVE_AREAS = 6;
    public static final int GEXECUTABLE_ENTITY__GCAN_ENTER_EXCLUSIVE_AREAS = 7;
    public static final int GEXECUTABLE_ENTITY_FEATURE_COUNT = 8;
    public static final int GEXCLUSIVE_AREA = 1;
    public static final int GEXCLUSIVE_AREA__GCHECKSUM = 0;
    public static final int GEXCLUSIVE_AREA__GTIMESTAMP = 1;
    public static final int GEXCLUSIVE_AREA__GSHORT_NAME = 2;
    public static final int GEXCLUSIVE_AREA__GUUID = 3;
    public static final int GEXCLUSIVE_AREA__GCATEGORY = 4;
    public static final int GEXCLUSIVE_AREA__GDESC = 5;
    public static final int GEXCLUSIVE_AREA_FEATURE_COUNT = 6;
    public static final int GINTERNAL_BEHAVIOR = 2;
    public static final int GINTERNAL_BEHAVIOR__GCHECKSUM = 0;
    public static final int GINTERNAL_BEHAVIOR__GTIMESTAMP = 1;
    public static final int GINTERNAL_BEHAVIOR__GSHORT_NAME = 2;
    public static final int GINTERNAL_BEHAVIOR__GUUID = 3;
    public static final int GINTERNAL_BEHAVIOR__GCATEGORY = 4;
    public static final int GINTERNAL_BEHAVIOR__GDESC = 5;
    public static final int GINTERNAL_BEHAVIOR__GEXCLUSIVE_AREAS = 6;
    public static final int GINTERNAL_BEHAVIOR_FEATURE_COUNT = 7;

    public EClass getGExecutableEntity();

    public EReference getGExecutableEntity_GRunsInsideExclusiveAreas();

    public EReference getGExecutableEntity_GCanEnterExclusiveAreas();

    public EClass getGExclusiveArea();

    public EClass getGInternalBehavior();

    public EReference getGInternalBehavior_GExclusiveAreas();

    public GinternalbehaviorFactory getGinternalbehaviorFactory();

    public static interface Literals {
        public static final EClass GEXECUTABLE_ENTITY = eINSTANCE.getGExecutableEntity();
        public static final EReference GEXECUTABLE_ENTITY__GRUNS_INSIDE_EXCLUSIVE_AREAS = eINSTANCE.getGExecutableEntity_GRunsInsideExclusiveAreas();
        public static final EReference GEXECUTABLE_ENTITY__GCAN_ENTER_EXCLUSIVE_AREAS = eINSTANCE.getGExecutableEntity_GCanEnterExclusiveAreas();
        public static final EClass GEXCLUSIVE_AREA = eINSTANCE.getGExclusiveArea();
        public static final EClass GINTERNAL_BEHAVIOR = eINSTANCE.getGInternalBehavior();
        public static final EReference GINTERNAL_BEHAVIOR__GEXCLUSIVE_AREAS = eINSTANCE.getGInternalBehavior_GExclusiveAreas();
    }
}

