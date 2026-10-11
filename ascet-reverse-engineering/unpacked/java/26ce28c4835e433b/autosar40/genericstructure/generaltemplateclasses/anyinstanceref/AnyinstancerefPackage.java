/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.anyinstanceref;

import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyinstancerefFactory;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.impl.AnyinstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface AnyinstancerefPackage
extends EPackage {
    public static final String eNAME = "anyinstanceref";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/air";
    public static final String eNS_PREFIX = "";
    public static final AnyinstancerefPackage eINSTANCE = AnyinstancerefPackageImpl.init();
    public static final int ANY_INSTANCE_REF = 0;
    public static final int ANY_INSTANCE_REF__GCHECKSUM = 0;
    public static final int ANY_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int ANY_INSTANCE_REF__CHECKSUM = 2;
    public static final int ANY_INSTANCE_REF__TIMESTAMP = 3;
    public static final int ANY_INSTANCE_REF__BASE = 4;
    public static final int ANY_INSTANCE_REF__CONTEXT_ELEMENTS = 5;
    public static final int ANY_INSTANCE_REF__TARGET = 6;
    public static final int ANY_INSTANCE_REF_FEATURE_COUNT = 7;

    public EClass getAnyInstanceRef();

    public EReference getAnyInstanceRef_Base();

    public EReference getAnyInstanceRef_ContextElements();

    public EReference getAnyInstanceRef_Target();

    public AnyinstancerefFactory getAnyinstancerefFactory();

    public static interface Literals {
        public static final EClass ANY_INSTANCE_REF = eINSTANCE.getAnyInstanceRef();
        public static final EReference ANY_INSTANCE_REF__BASE = eINSTANCE.getAnyInstanceRef_Base();
        public static final EReference ANY_INSTANCE_REF__CONTEXT_ELEMENTS = eINSTANCE.getAnyInstanceRef_ContextElements();
        public static final EReference ANY_INSTANCE_REF__TARGET = eINSTANCE.getAnyInstanceRef_Target();
    }
}

