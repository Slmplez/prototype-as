/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.components.instancerefs;

import autosar40.swcomponent.components.instancerefs.InnerPortGroupInCompositionInstanceRef;
import autosar40.swcomponent.components.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.components.instancerefs.PModeGroupInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.POperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.PTriggerInAtomicSwcTypeInstanceRef;
import autosar40.swcomponent.components.instancerefs.PVariableInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.RModeGroupInAtomicSWCInstanceRef;
import autosar40.swcomponent.components.instancerefs.RModeInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.ROperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.RTriggerInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.RVariableInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.impl.InstancerefsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefsFactory
extends EFactory {
    public static final InstancerefsFactory eINSTANCE = InstancerefsFactoryImpl.init();

    public PModeGroupInAtomicSwcInstanceRef createPModeGroupInAtomicSwcInstanceRef();

    public POperationInAtomicSwcInstanceRef createPOperationInAtomicSwcInstanceRef();

    public PTriggerInAtomicSwcTypeInstanceRef createPTriggerInAtomicSwcTypeInstanceRef();

    public PVariableInAtomicSwcInstanceRef createPVariableInAtomicSwcInstanceRef();

    public RModeGroupInAtomicSWCInstanceRef createRModeGroupInAtomicSWCInstanceRef();

    public RModeInAtomicSwcInstanceRef createRModeInAtomicSwcInstanceRef();

    public ROperationInAtomicSwcInstanceRef createROperationInAtomicSwcInstanceRef();

    public RTriggerInAtomicSwcInstanceRef createRTriggerInAtomicSwcInstanceRef();

    public RVariableInAtomicSwcInstanceRef createRVariableInAtomicSwcInstanceRef();

    public InnerPortGroupInCompositionInstanceRef createInnerPortGroupInCompositionInstanceRef();

    public InstancerefsPackage getInstancerefsPackage();
}

