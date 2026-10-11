/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.swcinternalbehavior.includeddatatypes;

import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.IncludeddatatypesFactory;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.impl.IncludeddatatypesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface IncludeddatatypesPackage
extends EPackage {
    public static final String eNAME = "includeddatatypes";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/sib/idt";
    public static final String eNS_PREFIX = "";
    public static final IncludeddatatypesPackage eINSTANCE = IncludeddatatypesPackageImpl.init();
    public static final int INCLUDED_DATA_TYPE_SET = 0;
    public static final int INCLUDED_DATA_TYPE_SET__GCHECKSUM = 0;
    public static final int INCLUDED_DATA_TYPE_SET__GTIMESTAMP = 1;
    public static final int INCLUDED_DATA_TYPE_SET__CHECKSUM = 2;
    public static final int INCLUDED_DATA_TYPE_SET__TIMESTAMP = 3;
    public static final int INCLUDED_DATA_TYPE_SET__SWC_INTERNAL_BEHAVIOR = 4;
    public static final int INCLUDED_DATA_TYPE_SET__DATA_TYPES = 5;
    public static final int INCLUDED_DATA_TYPE_SET__LITERAL_PREFIX = 6;
    public static final int INCLUDED_DATA_TYPE_SET_FEATURE_COUNT = 7;

    public EClass getIncludedDataTypeSet();

    public EReference getIncludedDataTypeSet_SwcInternalBehavior();

    public EReference getIncludedDataTypeSet_DataTypes();

    public EAttribute getIncludedDataTypeSet_LiteralPrefix();

    public IncludeddatatypesFactory getIncludeddatatypesFactory();

    public static interface Literals {
        public static final EClass INCLUDED_DATA_TYPE_SET = eINSTANCE.getIncludedDataTypeSet();
        public static final EReference INCLUDED_DATA_TYPE_SET__SWC_INTERNAL_BEHAVIOR = eINSTANCE.getIncludedDataTypeSet_SwcInternalBehavior();
        public static final EReference INCLUDED_DATA_TYPE_SET__DATA_TYPES = eINSTANCE.getIncludedDataTypeSet_DataTypes();
        public static final EAttribute INCLUDED_DATA_TYPE_SET__LITERAL_PREFIX = eINSTANCE.getIncludedDataTypeSet_LiteralPrefix();
    }
}

