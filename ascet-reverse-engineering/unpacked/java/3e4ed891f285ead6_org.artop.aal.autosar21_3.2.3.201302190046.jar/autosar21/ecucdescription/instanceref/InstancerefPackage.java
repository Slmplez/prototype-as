/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.ecucdescription.instanceref;

import autosar21.ecucdescription.instanceref.InstancerefFactory;
import autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/ecucd/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int INSTANCE_REFERENCE_VALUE_VALUE = 0;
    public static final int INSTANCE_REFERENCE_VALUE_VALUE__GCHECKSUM = 0;
    public static final int INSTANCE_REFERENCE_VALUE_VALUE__GTIMESTAMP = 1;
    public static final int INSTANCE_REFERENCE_VALUE_VALUE__CHECKSUM = 2;
    public static final int INSTANCE_REFERENCE_VALUE_VALUE__TIMESTAMP = 3;
    public static final int INSTANCE_REFERENCE_VALUE_VALUE__INSTANCE_REFERENCE_VALUE = 4;
    public static final int INSTANCE_REFERENCE_VALUE_VALUE__CONTEXTS = 5;
    public static final int INSTANCE_REFERENCE_VALUE_VALUE__VALUE = 6;
    public static final int INSTANCE_REFERENCE_VALUE_VALUE_FEATURE_COUNT = 7;

    public EClass getInstanceReferenceValueValue();

    public EReference getInstanceReferenceValueValue_InstanceReferenceValue();

    public EReference getInstanceReferenceValueValue_Contexts();

    public EReference getInstanceReferenceValueValue_Value();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass INSTANCE_REFERENCE_VALUE_VALUE = eINSTANCE.getInstanceReferenceValueValue();
        public static final EReference INSTANCE_REFERENCE_VALUE_VALUE__INSTANCE_REFERENCE_VALUE = eINSTANCE.getInstanceReferenceValueValue_InstanceReferenceValue();
        public static final EReference INSTANCE_REFERENCE_VALUE_VALUE__CONTEXTS = eINSTANCE.getInstanceReferenceValueValue_Contexts();
        public static final EReference INSTANCE_REFERENCE_VALUE_VALUE__VALUE = eINSTANCE.getInstanceReferenceValueValue_Value();
    }
}

