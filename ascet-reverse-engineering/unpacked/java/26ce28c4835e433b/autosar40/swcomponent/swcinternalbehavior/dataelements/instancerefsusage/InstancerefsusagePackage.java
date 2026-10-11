/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage;

import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.InstancerefsusageFactory;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.impl.InstancerefsusagePackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefsusagePackage
extends EPackage {
    public static final String eNAME = "instancerefsusage";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/sib/de/iru";
    public static final String eNS_PREFIX = "";
    public static final InstancerefsusagePackage eINSTANCE = InstancerefsusagePackageImpl.init();
    public static final int VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF = 0;
    public static final int VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__GCHECKSUM = 0;
    public static final int VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__CHECKSUM = 2;
    public static final int VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__TIMESTAMP = 3;
    public static final int VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__AUTOSAR_VARIABLE_REF = 4;
    public static final int VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__BASE = 5;
    public static final int VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__PORT_PROTOTYPE = 6;
    public static final int VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__ROOT_VARIABLE_DATA_PROTOTYPE = 7;
    public static final int VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__CONTEXT_DATA_PROTOTYPES = 8;
    public static final int VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__TARGET_DATA_PROTOTYPE = 9;
    public static final int VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF_FEATURE_COUNT = 10;
    public static final int PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF = 1;
    public static final int PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__GCHECKSUM = 0;
    public static final int PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__CHECKSUM = 2;
    public static final int PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__TIMESTAMP = 3;
    public static final int PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__GCONTEXT_PORT = 4;
    public static final int PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__GTARGET_PARAMETER = 5;
    public static final int PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__AUTOSAR_PARAMETER_REF = 6;
    public static final int PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__BASE = 7;
    public static final int PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__PORT_PROTOTYPE = 8;
    public static final int PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__ROOT_PARAMETER_DATA_PROTOTYPE = 9;
    public static final int PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__CONTEXT_DATA_PROTOTYPES = 10;
    public static final int PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__TARGET_DATA_PROTOTYPE = 11;
    public static final int PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF_FEATURE_COUNT = 12;

    public EClass getVariableInAtomicSWCTypeInstanceRef();

    public EReference getVariableInAtomicSWCTypeInstanceRef_AutosarVariableRef();

    public EReference getVariableInAtomicSWCTypeInstanceRef_Base();

    public EReference getVariableInAtomicSWCTypeInstanceRef_PortPrototype();

    public EReference getVariableInAtomicSWCTypeInstanceRef_RootVariableDataPrototype();

    public EReference getVariableInAtomicSWCTypeInstanceRef_ContextDataPrototypes();

    public EReference getVariableInAtomicSWCTypeInstanceRef_TargetDataPrototype();

    public EClass getParameterInAtomicSWCTypeInstanceRef();

    public EReference getParameterInAtomicSWCTypeInstanceRef_AutosarParameterRef();

    public EReference getParameterInAtomicSWCTypeInstanceRef_Base();

    public EReference getParameterInAtomicSWCTypeInstanceRef_PortPrototype();

    public EReference getParameterInAtomicSWCTypeInstanceRef_RootParameterDataPrototype();

    public EReference getParameterInAtomicSWCTypeInstanceRef_ContextDataPrototypes();

    public EReference getParameterInAtomicSWCTypeInstanceRef_TargetDataPrototype();

    public InstancerefsusageFactory getInstancerefsusageFactory();

    public static interface Literals {
        public static final EClass VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF = eINSTANCE.getVariableInAtomicSWCTypeInstanceRef();
        public static final EReference VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__AUTOSAR_VARIABLE_REF = eINSTANCE.getVariableInAtomicSWCTypeInstanceRef_AutosarVariableRef();
        public static final EReference VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__BASE = eINSTANCE.getVariableInAtomicSWCTypeInstanceRef_Base();
        public static final EReference VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__PORT_PROTOTYPE = eINSTANCE.getVariableInAtomicSWCTypeInstanceRef_PortPrototype();
        public static final EReference VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__ROOT_VARIABLE_DATA_PROTOTYPE = eINSTANCE.getVariableInAtomicSWCTypeInstanceRef_RootVariableDataPrototype();
        public static final EReference VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__CONTEXT_DATA_PROTOTYPES = eINSTANCE.getVariableInAtomicSWCTypeInstanceRef_ContextDataPrototypes();
        public static final EReference VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__TARGET_DATA_PROTOTYPE = eINSTANCE.getVariableInAtomicSWCTypeInstanceRef_TargetDataPrototype();
        public static final EClass PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF = eINSTANCE.getParameterInAtomicSWCTypeInstanceRef();
        public static final EReference PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__AUTOSAR_PARAMETER_REF = eINSTANCE.getParameterInAtomicSWCTypeInstanceRef_AutosarParameterRef();
        public static final EReference PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__BASE = eINSTANCE.getParameterInAtomicSWCTypeInstanceRef_Base();
        public static final EReference PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__PORT_PROTOTYPE = eINSTANCE.getParameterInAtomicSWCTypeInstanceRef_PortPrototype();
        public static final EReference PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__ROOT_PARAMETER_DATA_PROTOTYPE = eINSTANCE.getParameterInAtomicSWCTypeInstanceRef_RootParameterDataPrototype();
        public static final EReference PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__CONTEXT_DATA_PROTOTYPES = eINSTANCE.getParameterInAtomicSWCTypeInstanceRef_ContextDataPrototypes();
        public static final EReference PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__TARGET_DATA_PROTOTYPE = eINSTANCE.getParameterInAtomicSWCTypeInstanceRef_TargetDataPrototype();
    }
}

