/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gswcomponents.gswcinternalbehavior;

import gautosar.gswcomponents.gswcinternalbehavior.GswcinternalbehaviorFactory;
import gautosar.gswcomponents.gswcinternalbehavior.impl.GswcinternalbehaviorPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GswcinternalbehaviorPackage
extends EPackage {
    public static final String eNAME = "gswcinternalbehavior";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/sib";
    public static final String eNS_PREFIX = "";
    public static final GswcinternalbehaviorPackage eINSTANCE = GswcinternalbehaviorPackageImpl.init();
    public static final int GSWC_INTERNAL_BEHAVIOR = 0;
    public static final int GSWC_INTERNAL_BEHAVIOR__GCHECKSUM = 0;
    public static final int GSWC_INTERNAL_BEHAVIOR__GTIMESTAMP = 1;
    public static final int GSWC_INTERNAL_BEHAVIOR__GSHORT_NAME = 2;
    public static final int GSWC_INTERNAL_BEHAVIOR__GUUID = 3;
    public static final int GSWC_INTERNAL_BEHAVIOR__GCATEGORY = 4;
    public static final int GSWC_INTERNAL_BEHAVIOR__GDESC = 5;
    public static final int GSWC_INTERNAL_BEHAVIOR__GEXCLUSIVE_AREAS = 6;
    public static final int GSWC_INTERNAL_BEHAVIOR__GRUNNABLES = 7;
    public static final int GSWC_INTERNAL_BEHAVIOR__GEVENTS = 8;
    public static final int GSWC_INTERNAL_BEHAVIOR__GPER_INSTANCE_MEMORIES = 9;
    public static final int GSWC_INTERNAL_BEHAVIOR__GCOMPONENT = 10;
    public static final int GSWC_INTERNAL_BEHAVIOR__GSUPPORTS_MULTIPLE_INSTANTIATION = 11;
    public static final int GSWC_INTERNAL_BEHAVIOR_FEATURE_COUNT = 12;
    public static final int GRUNNABLE_ENTITY = 1;
    public static final int GRUNNABLE_ENTITY__GCHECKSUM = 0;
    public static final int GRUNNABLE_ENTITY__GTIMESTAMP = 1;
    public static final int GRUNNABLE_ENTITY__GSHORT_NAME = 2;
    public static final int GRUNNABLE_ENTITY__GUUID = 3;
    public static final int GRUNNABLE_ENTITY__GCATEGORY = 4;
    public static final int GRUNNABLE_ENTITY__GDESC = 5;
    public static final int GRUNNABLE_ENTITY__GRUNS_INSIDE_EXCLUSIVE_AREAS = 6;
    public static final int GRUNNABLE_ENTITY__GCAN_ENTER_EXCLUSIVE_AREAS = 7;
    public static final int GRUNNABLE_ENTITY__GWAIT_POINTS = 8;
    public static final int GRUNNABLE_ENTITY__GSYMBOL = 9;
    public static final int GRUNNABLE_ENTITY__GREAD_VARIABLES = 10;
    public static final int GRUNNABLE_ENTITY__GWRITTEN_VARIABLES = 11;
    public static final int GRUNNABLE_ENTITY__GDATA_READ_ACCESS = 12;
    public static final int GRUNNABLE_ENTITY__GDATA_WRITE_ACCESS = 13;
    public static final int GRUNNABLE_ENTITY__GDATA_SEND_POINTS = 14;
    public static final int GRUNNABLE_ENTITY__GDATA_RECEIVE_POINTS = 15;
    public static final int GRUNNABLE_ENTITY__GSERVER_CALL_POINTS = 16;
    public static final int GRUNNABLE_ENTITY_FEATURE_COUNT = 17;

    public EClass getGSwcInternalBehavior();

    public EReference getGSwcInternalBehavior_GRunnables();

    public EReference getGSwcInternalBehavior_GEvents();

    public EReference getGSwcInternalBehavior_GPerInstanceMemories();

    public EReference getGSwcInternalBehavior_GComponent();

    public EAttribute getGSwcInternalBehavior_GSupportsMultipleInstantiation();

    public EClass getGRunnableEntity();

    public EReference getGRunnableEntity_GWaitPoints();

    public EAttribute getGRunnableEntity_GSymbol();

    public EReference getGRunnableEntity_GReadVariables();

    public EReference getGRunnableEntity_GWrittenVariables();

    public EReference getGRunnableEntity_GDataReadAccess();

    public EReference getGRunnableEntity_GDataWriteAccess();

    public EReference getGRunnableEntity_GDataSendPoints();

    public EReference getGRunnableEntity_GDataReceivePoints();

    public EReference getGRunnableEntity_GServerCallPoints();

    public GswcinternalbehaviorFactory getGswcinternalbehaviorFactory();

    public static interface Literals {
        public static final EClass GSWC_INTERNAL_BEHAVIOR = eINSTANCE.getGSwcInternalBehavior();
        public static final EReference GSWC_INTERNAL_BEHAVIOR__GRUNNABLES = eINSTANCE.getGSwcInternalBehavior_GRunnables();
        public static final EReference GSWC_INTERNAL_BEHAVIOR__GEVENTS = eINSTANCE.getGSwcInternalBehavior_GEvents();
        public static final EReference GSWC_INTERNAL_BEHAVIOR__GPER_INSTANCE_MEMORIES = eINSTANCE.getGSwcInternalBehavior_GPerInstanceMemories();
        public static final EReference GSWC_INTERNAL_BEHAVIOR__GCOMPONENT = eINSTANCE.getGSwcInternalBehavior_GComponent();
        public static final EAttribute GSWC_INTERNAL_BEHAVIOR__GSUPPORTS_MULTIPLE_INSTANTIATION = eINSTANCE.getGSwcInternalBehavior_GSupportsMultipleInstantiation();
        public static final EClass GRUNNABLE_ENTITY = eINSTANCE.getGRunnableEntity();
        public static final EReference GRUNNABLE_ENTITY__GWAIT_POINTS = eINSTANCE.getGRunnableEntity_GWaitPoints();
        public static final EAttribute GRUNNABLE_ENTITY__GSYMBOL = eINSTANCE.getGRunnableEntity_GSymbol();
        public static final EReference GRUNNABLE_ENTITY__GREAD_VARIABLES = eINSTANCE.getGRunnableEntity_GReadVariables();
        public static final EReference GRUNNABLE_ENTITY__GWRITTEN_VARIABLES = eINSTANCE.getGRunnableEntity_GWrittenVariables();
        public static final EReference GRUNNABLE_ENTITY__GDATA_READ_ACCESS = eINSTANCE.getGRunnableEntity_GDataReadAccess();
        public static final EReference GRUNNABLE_ENTITY__GDATA_WRITE_ACCESS = eINSTANCE.getGRunnableEntity_GDataWriteAccess();
        public static final EReference GRUNNABLE_ENTITY__GDATA_SEND_POINTS = eINSTANCE.getGRunnableEntity_GDataSendPoints();
        public static final EReference GRUNNABLE_ENTITY__GDATA_RECEIVE_POINTS = eINSTANCE.getGRunnableEntity_GDataReceivePoints();
        public static final EReference GRUNNABLE_ENTITY__GSERVER_CALL_POINTS = eINSTANCE.getGRunnableEntity_GServerCallPoints();
    }
}

