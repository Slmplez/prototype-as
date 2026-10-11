/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm;

import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.ComponentlocalcalprmFactory;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.impl.ComponentlocalcalprmPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ComponentlocalcalprmPackage
extends EPackage {
    public static final String eNAME = "componentlocalcalprm";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/sib/clc";
    public static final String eNS_PREFIX = "";
    public static final ComponentlocalcalprmPackage eINSTANCE = ComponentlocalcalprmPackageImpl.init();
    public static final int INIT_VALUE_ASSIGNMENT = 1;
    public static final int INIT_VALUE_ASSIGNMENT__GCHECKSUM = 0;
    public static final int INIT_VALUE_ASSIGNMENT__GTIMESTAMP = 1;
    public static final int INIT_VALUE_ASSIGNMENT__CHECKSUM = 2;
    public static final int INIT_VALUE_ASSIGNMENT__TIMESTAMP = 3;
    public static final int INIT_VALUE_ASSIGNMENT__INIT_VALUE = 4;
    public static final int INIT_VALUE_ASSIGNMENT__PARAMETER = 5;
    public static final int INIT_VALUE_ASSIGNMENT_FEATURE_COUNT = 6;
    public static final int LOCAL_PARAMETER_INIT_VALUE_ASSIGNMENT = 0;
    public static final int LOCAL_PARAMETER_INIT_VALUE_ASSIGNMENT__GCHECKSUM = 0;
    public static final int LOCAL_PARAMETER_INIT_VALUE_ASSIGNMENT__GTIMESTAMP = 1;
    public static final int LOCAL_PARAMETER_INIT_VALUE_ASSIGNMENT__CHECKSUM = 2;
    public static final int LOCAL_PARAMETER_INIT_VALUE_ASSIGNMENT__TIMESTAMP = 3;
    public static final int LOCAL_PARAMETER_INIT_VALUE_ASSIGNMENT__INIT_VALUE = 4;
    public static final int LOCAL_PARAMETER_INIT_VALUE_ASSIGNMENT__PARAMETER = 5;
    public static final int LOCAL_PARAMETER_INIT_VALUE_ASSIGNMENT__INTERNAL_BEHAVIOR = 6;
    public static final int LOCAL_PARAMETER_INIT_VALUE_ASSIGNMENT_FEATURE_COUNT = 7;

    public EClass getLocalParameterInitValueAssignment();

    public EReference getLocalParameterInitValueAssignment_InternalBehavior();

    public EClass getInitValueAssignment();

    public EReference getInitValueAssignment_InitValue();

    public EReference getInitValueAssignment_Parameter();

    public ComponentlocalcalprmFactory getComponentlocalcalprmFactory();

    public static interface Literals {
        public static final EClass LOCAL_PARAMETER_INIT_VALUE_ASSIGNMENT = eINSTANCE.getLocalParameterInitValueAssignment();
        public static final EReference LOCAL_PARAMETER_INIT_VALUE_ASSIGNMENT__INTERNAL_BEHAVIOR = eINSTANCE.getLocalParameterInitValueAssignment_InternalBehavior();
        public static final EClass INIT_VALUE_ASSIGNMENT = eINSTANCE.getInitValueAssignment();
        public static final EReference INIT_VALUE_ASSIGNMENT__INIT_VALUE = eINSTANCE.getInitValueAssignment_InitValue();
        public static final EReference INIT_VALUE_ASSIGNMENT__PARAMETER = eINSTANCE.getInitValueAssignment_Parameter();
    }
}

