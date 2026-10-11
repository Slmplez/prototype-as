/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gswcomponents.gcomponents.ginstancerefs;

import gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsFactory;
import gautosar.gswcomponents.gcomponents.ginstancerefs.impl.GinstancerefsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GinstancerefsPackage
extends EPackage {
    public static final String eNAME = "ginstancerefs";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/components/ir";
    public static final String eNS_PREFIX = "";
    public static final GinstancerefsPackage eINSTANCE = GinstancerefsPackageImpl.init();
    public static final int GVARIABLE_IN_ATOMIC_SWC_IREF = 0;
    public static final int GVARIABLE_IN_ATOMIC_SWC_IREF__GCHECKSUM = 0;
    public static final int GVARIABLE_IN_ATOMIC_SWC_IREF__GTIMESTAMP = 1;
    public static final int GVARIABLE_IN_ATOMIC_SWC_IREF_FEATURE_COUNT = 2;
    public static final int GR_VARIABLE_IN_ATOMIC_SWC_IREF = 1;
    public static final int GR_VARIABLE_IN_ATOMIC_SWC_IREF__GCHECKSUM = 0;
    public static final int GR_VARIABLE_IN_ATOMIC_SWC_IREF__GTIMESTAMP = 1;
    public static final int GR_VARIABLE_IN_ATOMIC_SWC_IREF__GCONTEXT_RPORT = 2;
    public static final int GR_VARIABLE_IN_ATOMIC_SWC_IREF__GTARGET_DATA_ELEMENT = 3;
    public static final int GR_VARIABLE_IN_ATOMIC_SWC_IREF_FEATURE_COUNT = 4;
    public static final int GP_VARIABLE_IN_ATOMIC_SWC_IREF = 2;
    public static final int GP_VARIABLE_IN_ATOMIC_SWC_IREF__GCHECKSUM = 0;
    public static final int GP_VARIABLE_IN_ATOMIC_SWC_IREF__GTIMESTAMP = 1;
    public static final int GP_VARIABLE_IN_ATOMIC_SWC_IREF__GCONTEXT_PPORT = 2;
    public static final int GP_VARIABLE_IN_ATOMIC_SWC_IREF__GTARGET_DATA_ELEMENT = 3;
    public static final int GP_VARIABLE_IN_ATOMIC_SWC_IREF_FEATURE_COUNT = 4;
    public static final int GOPERATION_IN_ATOMIC_SWC_IREF = 3;
    public static final int GOPERATION_IN_ATOMIC_SWC_IREF__GCHECKSUM = 0;
    public static final int GOPERATION_IN_ATOMIC_SWC_IREF__GTIMESTAMP = 1;
    public static final int GOPERATION_IN_ATOMIC_SWC_IREF_FEATURE_COUNT = 2;
    public static final int GR_OPERATION_IN_ATOMIC_SWC_IREF = 4;
    public static final int GR_OPERATION_IN_ATOMIC_SWC_IREF__GCHECKSUM = 0;
    public static final int GR_OPERATION_IN_ATOMIC_SWC_IREF__GTIMESTAMP = 1;
    public static final int GR_OPERATION_IN_ATOMIC_SWC_IREF__GCONTEXT_RPORT = 2;
    public static final int GR_OPERATION_IN_ATOMIC_SWC_IREF__GTARGET_REQUIRED_OPERATION = 3;
    public static final int GR_OPERATION_IN_ATOMIC_SWC_IREF_FEATURE_COUNT = 4;
    public static final int GP_OPERATION_IN_ATOMIC_SWC_IREF = 5;
    public static final int GP_OPERATION_IN_ATOMIC_SWC_IREF__GCHECKSUM = 0;
    public static final int GP_OPERATION_IN_ATOMIC_SWC_IREF__GTIMESTAMP = 1;
    public static final int GP_OPERATION_IN_ATOMIC_SWC_IREF__GCONTEXT_PPORT = 2;
    public static final int GP_OPERATION_IN_ATOMIC_SWC_IREF__GTARGET_PROVIDED_OPERATION = 3;
    public static final int GP_OPERATION_IN_ATOMIC_SWC_IREF_FEATURE_COUNT = 4;
    public static final int GMODE_GROUP_IN_ATOMIC_SWC_IREF = 6;
    public static final int GMODE_GROUP_IN_ATOMIC_SWC_IREF__GCHECKSUM = 0;
    public static final int GMODE_GROUP_IN_ATOMIC_SWC_IREF__GTIMESTAMP = 1;
    public static final int GMODE_GROUP_IN_ATOMIC_SWC_IREF_FEATURE_COUNT = 2;
    public static final int GR_MODE_GROUP_IN_ATOMIC_SWC_IREF = 7;
    public static final int GR_MODE_GROUP_IN_ATOMIC_SWC_IREF__GCHECKSUM = 0;
    public static final int GR_MODE_GROUP_IN_ATOMIC_SWC_IREF__GTIMESTAMP = 1;
    public static final int GR_MODE_GROUP_IN_ATOMIC_SWC_IREF__GCONTEXT_RPORT = 2;
    public static final int GR_MODE_GROUP_IN_ATOMIC_SWC_IREF__GTARGET_MODE_GROUP = 3;
    public static final int GR_MODE_GROUP_IN_ATOMIC_SWC_IREF_FEATURE_COUNT = 4;
    public static final int GP_MODE_GROUP_IN_ATOMIC_SWC_IREF = 8;
    public static final int GP_MODE_GROUP_IN_ATOMIC_SWC_IREF__GCHECKSUM = 0;
    public static final int GP_MODE_GROUP_IN_ATOMIC_SWC_IREF__GTIMESTAMP = 1;
    public static final int GP_MODE_GROUP_IN_ATOMIC_SWC_IREF__GCONTEXT_PPORT = 2;
    public static final int GP_MODE_GROUP_IN_ATOMIC_SWC_IREF__GTARGET_MODE_GROUP = 3;
    public static final int GP_MODE_GROUP_IN_ATOMIC_SWC_IREF_FEATURE_COUNT = 4;
    public static final int GPARAMETER_IN_ATOMIC_SWC_IREF = 9;
    public static final int GPARAMETER_IN_ATOMIC_SWC_IREF__GCHECKSUM = 0;
    public static final int GPARAMETER_IN_ATOMIC_SWC_IREF__GTIMESTAMP = 1;
    public static final int GPARAMETER_IN_ATOMIC_SWC_IREF__GCONTEXT_PORT = 2;
    public static final int GPARAMETER_IN_ATOMIC_SWC_IREF__GTARGET_PARAMETER = 3;
    public static final int GPARAMETER_IN_ATOMIC_SWC_IREF_FEATURE_COUNT = 4;
    public static final int GR_MODE_IN_ATOMIC_SWC_IREF = 10;
    public static final int GR_MODE_IN_ATOMIC_SWC_IREF__GCHECKSUM = 0;
    public static final int GR_MODE_IN_ATOMIC_SWC_IREF__GTIMESTAMP = 1;
    public static final int GR_MODE_IN_ATOMIC_SWC_IREF__GCONTEXT_RPORT = 2;
    public static final int GR_MODE_IN_ATOMIC_SWC_IREF__GCONTEXT_MODE_DECLARATION_GROUP_PROTOTYPE = 3;
    public static final int GR_MODE_IN_ATOMIC_SWC_IREF__GTARGET_MODE_DECLARATION = 4;
    public static final int GR_MODE_IN_ATOMIC_SWC_IREF_FEATURE_COUNT = 5;

    public EClass getGVariableInAtomicSwcIRef();

    public EClass getGRVariableInAtomicSwcIRef();

    public EReference getGRVariableInAtomicSwcIRef_GContextRPort();

    public EReference getGRVariableInAtomicSwcIRef_GTargetDataElement();

    public EClass getGPVariableInAtomicSwcIRef();

    public EReference getGPVariableInAtomicSwcIRef_GContextPPort();

    public EReference getGPVariableInAtomicSwcIRef_GTargetDataElement();

    public EClass getGOperationInAtomicSwcIRef();

    public EClass getGROperationInAtomicSwcIRef();

    public EReference getGROperationInAtomicSwcIRef_GContextRPort();

    public EReference getGROperationInAtomicSwcIRef_GTargetRequiredOperation();

    public EClass getGPOperationInAtomicSwcIRef();

    public EReference getGPOperationInAtomicSwcIRef_GContextPPort();

    public EReference getGPOperationInAtomicSwcIRef_GTargetProvidedOperation();

    public EClass getGModeGroupInAtomicSwcIRef();

    public EClass getGRModeGroupInAtomicSwcIRef();

    public EReference getGRModeGroupInAtomicSwcIRef_GContextRPort();

    public EReference getGRModeGroupInAtomicSwcIRef_GTargetModeGroup();

    public EClass getGPModeGroupInAtomicSwcIRef();

    public EReference getGPModeGroupInAtomicSwcIRef_GContextPPort();

    public EReference getGPModeGroupInAtomicSwcIRef_GTargetModeGroup();

    public EClass getGParameterInAtomicSwcIRef();

    public EReference getGParameterInAtomicSwcIRef_GContextPort();

    public EReference getGParameterInAtomicSwcIRef_GTargetParameter();

    public EClass getGRModeInAtomicSwcIRef();

    public EReference getGRModeInAtomicSwcIRef_GContextRPort();

    public EReference getGRModeInAtomicSwcIRef_GContextModeDeclarationGroupPrototype();

    public EReference getGRModeInAtomicSwcIRef_GTargetModeDeclaration();

    public GinstancerefsFactory getGinstancerefsFactory();

    public static interface Literals {
        public static final EClass GVARIABLE_IN_ATOMIC_SWC_IREF = eINSTANCE.getGVariableInAtomicSwcIRef();
        public static final EClass GR_VARIABLE_IN_ATOMIC_SWC_IREF = eINSTANCE.getGRVariableInAtomicSwcIRef();
        public static final EReference GR_VARIABLE_IN_ATOMIC_SWC_IREF__GCONTEXT_RPORT = eINSTANCE.getGRVariableInAtomicSwcIRef_GContextRPort();
        public static final EReference GR_VARIABLE_IN_ATOMIC_SWC_IREF__GTARGET_DATA_ELEMENT = eINSTANCE.getGRVariableInAtomicSwcIRef_GTargetDataElement();
        public static final EClass GP_VARIABLE_IN_ATOMIC_SWC_IREF = eINSTANCE.getGPVariableInAtomicSwcIRef();
        public static final EReference GP_VARIABLE_IN_ATOMIC_SWC_IREF__GCONTEXT_PPORT = eINSTANCE.getGPVariableInAtomicSwcIRef_GContextPPort();
        public static final EReference GP_VARIABLE_IN_ATOMIC_SWC_IREF__GTARGET_DATA_ELEMENT = eINSTANCE.getGPVariableInAtomicSwcIRef_GTargetDataElement();
        public static final EClass GOPERATION_IN_ATOMIC_SWC_IREF = eINSTANCE.getGOperationInAtomicSwcIRef();
        public static final EClass GR_OPERATION_IN_ATOMIC_SWC_IREF = eINSTANCE.getGROperationInAtomicSwcIRef();
        public static final EReference GR_OPERATION_IN_ATOMIC_SWC_IREF__GCONTEXT_RPORT = eINSTANCE.getGROperationInAtomicSwcIRef_GContextRPort();
        public static final EReference GR_OPERATION_IN_ATOMIC_SWC_IREF__GTARGET_REQUIRED_OPERATION = eINSTANCE.getGROperationInAtomicSwcIRef_GTargetRequiredOperation();
        public static final EClass GP_OPERATION_IN_ATOMIC_SWC_IREF = eINSTANCE.getGPOperationInAtomicSwcIRef();
        public static final EReference GP_OPERATION_IN_ATOMIC_SWC_IREF__GCONTEXT_PPORT = eINSTANCE.getGPOperationInAtomicSwcIRef_GContextPPort();
        public static final EReference GP_OPERATION_IN_ATOMIC_SWC_IREF__GTARGET_PROVIDED_OPERATION = eINSTANCE.getGPOperationInAtomicSwcIRef_GTargetProvidedOperation();
        public static final EClass GMODE_GROUP_IN_ATOMIC_SWC_IREF = eINSTANCE.getGModeGroupInAtomicSwcIRef();
        public static final EClass GR_MODE_GROUP_IN_ATOMIC_SWC_IREF = eINSTANCE.getGRModeGroupInAtomicSwcIRef();
        public static final EReference GR_MODE_GROUP_IN_ATOMIC_SWC_IREF__GCONTEXT_RPORT = eINSTANCE.getGRModeGroupInAtomicSwcIRef_GContextRPort();
        public static final EReference GR_MODE_GROUP_IN_ATOMIC_SWC_IREF__GTARGET_MODE_GROUP = eINSTANCE.getGRModeGroupInAtomicSwcIRef_GTargetModeGroup();
        public static final EClass GP_MODE_GROUP_IN_ATOMIC_SWC_IREF = eINSTANCE.getGPModeGroupInAtomicSwcIRef();
        public static final EReference GP_MODE_GROUP_IN_ATOMIC_SWC_IREF__GCONTEXT_PPORT = eINSTANCE.getGPModeGroupInAtomicSwcIRef_GContextPPort();
        public static final EReference GP_MODE_GROUP_IN_ATOMIC_SWC_IREF__GTARGET_MODE_GROUP = eINSTANCE.getGPModeGroupInAtomicSwcIRef_GTargetModeGroup();
        public static final EClass GPARAMETER_IN_ATOMIC_SWC_IREF = eINSTANCE.getGParameterInAtomicSwcIRef();
        public static final EReference GPARAMETER_IN_ATOMIC_SWC_IREF__GCONTEXT_PORT = eINSTANCE.getGParameterInAtomicSwcIRef_GContextPort();
        public static final EReference GPARAMETER_IN_ATOMIC_SWC_IREF__GTARGET_PARAMETER = eINSTANCE.getGParameterInAtomicSwcIRef_GTargetParameter();
        public static final EClass GR_MODE_IN_ATOMIC_SWC_IREF = eINSTANCE.getGRModeInAtomicSwcIRef();
        public static final EReference GR_MODE_IN_ATOMIC_SWC_IREF__GCONTEXT_RPORT = eINSTANCE.getGRModeInAtomicSwcIRef_GContextRPort();
        public static final EReference GR_MODE_IN_ATOMIC_SWC_IREF__GCONTEXT_MODE_DECLARATION_GROUP_PROTOTYPE = eINSTANCE.getGRModeInAtomicSwcIRef_GContextModeDeclarationGroupPrototype();
        public static final EReference GR_MODE_IN_ATOMIC_SWC_IREF__GTARGET_MODE_DECLARATION = eINSTANCE.getGRModeInAtomicSwcIRef_GTargetModeDeclaration();
    }
}

