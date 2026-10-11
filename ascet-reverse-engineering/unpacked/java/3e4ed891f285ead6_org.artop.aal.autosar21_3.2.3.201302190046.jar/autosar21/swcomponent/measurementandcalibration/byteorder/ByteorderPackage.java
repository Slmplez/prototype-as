/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.measurementandcalibration.byteorder;

import autosar21.swcomponent.measurementandcalibration.byteorder.ByteorderFactory;
import autosar21.swcomponent.measurementandcalibration.byteorder.impl.ByteorderPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ByteorderPackage
extends EPackage {
    public static final String eNAME = "byteorder";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/mac/bo";
    public static final String eNS_PREFIX = "";
    public static final ByteorderPackage eINSTANCE = ByteorderPackageImpl.init();
    public static final int BYTE_ORDER = 0;
    public static final int BYTE_ORDER__GCHECKSUM = 0;
    public static final int BYTE_ORDER__GTIMESTAMP = 1;
    public static final int BYTE_ORDER__CHECKSUM = 2;
    public static final int BYTE_ORDER__TIMESTAMP = 3;
    public static final int BYTE_ORDER__BASE_TYPE_DIRECT_DEFINITION = 4;
    public static final int BYTE_ORDER__CONTENT = 5;
    public static final int BYTE_ORDER_FEATURE_COUNT = 6;

    public EClass getByteOrder();

    public EReference getByteOrder_BaseTypeDirectDefinition();

    public EAttribute getByteOrder_Content();

    public ByteorderFactory getByteorderFactory();

    public static interface Literals {
        public static final EClass BYTE_ORDER = eINSTANCE.getByteOrder();
        public static final EReference BYTE_ORDER__BASE_TYPE_DIRECT_DEFINITION = eINSTANCE.getByteOrder_BaseTypeDirectDefinition();
        public static final EAttribute BYTE_ORDER__CONTENT = eINSTANCE.getByteOrder_Content();
    }
}

