/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gswcomponents.gcomposition.ginstancerefs;

import gautosar.gswcomponents.gcomposition.ginstancerefs.GinstancerefsFactory;
import gautosar.gswcomponents.gcomposition.ginstancerefs.impl.GinstancerefsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GinstancerefsPackage
extends EPackage {
    public static final String eNAME = "ginstancerefs";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/composition/ir";
    public static final String eNS_PREFIX = "";
    public static final GinstancerefsPackage eINSTANCE = GinstancerefsPackageImpl.init();
    public static final int GP_PORT_IN_COMPOSITION_IREF = 0;
    public static final int GP_PORT_IN_COMPOSITION_IREF__GCHECKSUM = 0;
    public static final int GP_PORT_IN_COMPOSITION_IREF__GTIMESTAMP = 1;
    public static final int GP_PORT_IN_COMPOSITION_IREF__GTARGET_PPORT = 2;
    public static final int GP_PORT_IN_COMPOSITION_IREF__GCONTEXT_COMPONENT = 3;
    public static final int GP_PORT_IN_COMPOSITION_IREF_FEATURE_COUNT = 4;
    public static final int GR_PORT_IN_COMPOSITION_IREF = 1;
    public static final int GR_PORT_IN_COMPOSITION_IREF__GCHECKSUM = 0;
    public static final int GR_PORT_IN_COMPOSITION_IREF__GTIMESTAMP = 1;
    public static final int GR_PORT_IN_COMPOSITION_IREF__GTARGET_RPORT = 2;
    public static final int GR_PORT_IN_COMPOSITION_IREF__GCONTEXT_COMPONENT = 3;
    public static final int GR_PORT_IN_COMPOSITION_IREF_FEATURE_COUNT = 4;
    public static final int GASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER_IREF = 2;
    public static final int GASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER_IREF__GCHECKSUM = 0;
    public static final int GASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER_IREF__GTIMESTAMP = 1;
    public static final int GASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER_IREF__GTARGET_RPORT = 2;
    public static final int GASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER_IREF__GCONTEXT_COMPONENT = 3;
    public static final int GASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER_IREF_FEATURE_COUNT = 4;
    public static final int GASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER_IREF = 3;
    public static final int GASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER_IREF__GCHECKSUM = 0;
    public static final int GASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER_IREF__GTIMESTAMP = 1;
    public static final int GASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER_IREF__GTARGET_PPORT = 2;
    public static final int GASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER_IREF__GCONTEXT_COMPONENT = 3;
    public static final int GASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER_IREF_FEATURE_COUNT = 4;

    public EClass getGPPortInCompositionIRef();

    public EReference getGPPortInCompositionIRef_GTargetPPort();

    public EReference getGPPortInCompositionIRef_GContextComponent();

    public EClass getGRPortInCompositionIRef();

    public EReference getGRPortInCompositionIRef_GTargetRPort();

    public EReference getGRPortInCompositionIRef_GContextComponent();

    public EClass getGAssemblyConnectorPrototypeRequesterIRef();

    public EClass getGAssemblyConnectorPrototypeProviderIRef();

    public GinstancerefsFactory getGinstancerefsFactory();

    public static interface Literals {
        public static final EClass GP_PORT_IN_COMPOSITION_IREF = eINSTANCE.getGPPortInCompositionIRef();
        public static final EReference GP_PORT_IN_COMPOSITION_IREF__GTARGET_PPORT = eINSTANCE.getGPPortInCompositionIRef_GTargetPPort();
        public static final EReference GP_PORT_IN_COMPOSITION_IREF__GCONTEXT_COMPONENT = eINSTANCE.getGPPortInCompositionIRef_GContextComponent();
        public static final EClass GR_PORT_IN_COMPOSITION_IREF = eINSTANCE.getGRPortInCompositionIRef();
        public static final EReference GR_PORT_IN_COMPOSITION_IREF__GTARGET_RPORT = eINSTANCE.getGRPortInCompositionIRef_GTargetRPort();
        public static final EReference GR_PORT_IN_COMPOSITION_IREF__GCONTEXT_COMPONENT = eINSTANCE.getGRPortInCompositionIRef_GContextComponent();
        public static final EClass GASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER_IREF = eINSTANCE.getGAssemblyConnectorPrototypeRequesterIRef();
        public static final EClass GASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER_IREF = eINSTANCE.getGAssemblyConnectorPrototypeProviderIRef();
    }
}

