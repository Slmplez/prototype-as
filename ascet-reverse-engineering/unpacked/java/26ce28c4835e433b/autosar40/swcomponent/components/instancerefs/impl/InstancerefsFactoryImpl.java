/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.swcomponent.components.instancerefs.impl;

import autosar40.swcomponent.components.instancerefs.InnerPortGroupInCompositionInstanceRef;
import autosar40.swcomponent.components.instancerefs.InstancerefsFactory;
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
import autosar40.swcomponent.components.instancerefs.impl.InnerPortGroupInCompositionInstanceRefImpl;
import autosar40.swcomponent.components.instancerefs.impl.PModeGroupInAtomicSwcInstanceRefImpl;
import autosar40.swcomponent.components.instancerefs.impl.POperationInAtomicSwcInstanceRefImpl;
import autosar40.swcomponent.components.instancerefs.impl.PTriggerInAtomicSwcTypeInstanceRefImpl;
import autosar40.swcomponent.components.instancerefs.impl.PVariableInAtomicSwcInstanceRefImpl;
import autosar40.swcomponent.components.instancerefs.impl.RModeGroupInAtomicSWCInstanceRefImpl;
import autosar40.swcomponent.components.instancerefs.impl.RModeInAtomicSwcInstanceRefImpl;
import autosar40.swcomponent.components.instancerefs.impl.ROperationInAtomicSwcInstanceRefImpl;
import autosar40.swcomponent.components.instancerefs.impl.RTriggerInAtomicSwcInstanceRefImpl;
import autosar40.swcomponent.components.instancerefs.impl.RVariableInAtomicSwcInstanceRefImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InstancerefsFactoryImpl
extends EFactoryImpl
implements InstancerefsFactory {
    public static InstancerefsFactory init() {
        try {
            InstancerefsFactory theInstancerefsFactory = (InstancerefsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/components/ir");
            if (theInstancerefsFactory != null) {
                return theInstancerefsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InstancerefsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 2: {
                return this.createPModeGroupInAtomicSwcInstanceRef();
            }
            case 3: {
                return this.createPOperationInAtomicSwcInstanceRef();
            }
            case 4: {
                return this.createPTriggerInAtomicSwcTypeInstanceRef();
            }
            case 6: {
                return this.createPVariableInAtomicSwcInstanceRef();
            }
            case 8: {
                return this.createRModeGroupInAtomicSWCInstanceRef();
            }
            case 9: {
                return this.createRModeInAtomicSwcInstanceRef();
            }
            case 10: {
                return this.createROperationInAtomicSwcInstanceRef();
            }
            case 11: {
                return this.createRTriggerInAtomicSwcInstanceRef();
            }
            case 12: {
                return this.createRVariableInAtomicSwcInstanceRef();
            }
            case 13: {
                return this.createInnerPortGroupInCompositionInstanceRef();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public PModeGroupInAtomicSwcInstanceRef createPModeGroupInAtomicSwcInstanceRef() {
        PModeGroupInAtomicSwcInstanceRefImpl pModeGroupInAtomicSwcInstanceRef = new PModeGroupInAtomicSwcInstanceRefImpl();
        return pModeGroupInAtomicSwcInstanceRef;
    }

    public POperationInAtomicSwcInstanceRef createPOperationInAtomicSwcInstanceRef() {
        POperationInAtomicSwcInstanceRefImpl pOperationInAtomicSwcInstanceRef = new POperationInAtomicSwcInstanceRefImpl();
        return pOperationInAtomicSwcInstanceRef;
    }

    public PTriggerInAtomicSwcTypeInstanceRef createPTriggerInAtomicSwcTypeInstanceRef() {
        PTriggerInAtomicSwcTypeInstanceRefImpl pTriggerInAtomicSwcTypeInstanceRef = new PTriggerInAtomicSwcTypeInstanceRefImpl();
        return pTriggerInAtomicSwcTypeInstanceRef;
    }

    public PVariableInAtomicSwcInstanceRef createPVariableInAtomicSwcInstanceRef() {
        PVariableInAtomicSwcInstanceRefImpl pVariableInAtomicSwcInstanceRef = new PVariableInAtomicSwcInstanceRefImpl();
        return pVariableInAtomicSwcInstanceRef;
    }

    public RModeGroupInAtomicSWCInstanceRef createRModeGroupInAtomicSWCInstanceRef() {
        RModeGroupInAtomicSWCInstanceRefImpl rModeGroupInAtomicSWCInstanceRef = new RModeGroupInAtomicSWCInstanceRefImpl();
        return rModeGroupInAtomicSWCInstanceRef;
    }

    public RModeInAtomicSwcInstanceRef createRModeInAtomicSwcInstanceRef() {
        RModeInAtomicSwcInstanceRefImpl rModeInAtomicSwcInstanceRef = new RModeInAtomicSwcInstanceRefImpl();
        return rModeInAtomicSwcInstanceRef;
    }

    public ROperationInAtomicSwcInstanceRef createROperationInAtomicSwcInstanceRef() {
        ROperationInAtomicSwcInstanceRefImpl rOperationInAtomicSwcInstanceRef = new ROperationInAtomicSwcInstanceRefImpl();
        return rOperationInAtomicSwcInstanceRef;
    }

    public RTriggerInAtomicSwcInstanceRef createRTriggerInAtomicSwcInstanceRef() {
        RTriggerInAtomicSwcInstanceRefImpl rTriggerInAtomicSwcInstanceRef = new RTriggerInAtomicSwcInstanceRefImpl();
        return rTriggerInAtomicSwcInstanceRef;
    }

    public RVariableInAtomicSwcInstanceRef createRVariableInAtomicSwcInstanceRef() {
        RVariableInAtomicSwcInstanceRefImpl rVariableInAtomicSwcInstanceRef = new RVariableInAtomicSwcInstanceRefImpl();
        return rVariableInAtomicSwcInstanceRef;
    }

    public InnerPortGroupInCompositionInstanceRef createInnerPortGroupInCompositionInstanceRef() {
        InnerPortGroupInCompositionInstanceRefImpl innerPortGroupInCompositionInstanceRef = new InnerPortGroupInCompositionInstanceRefImpl();
        return innerPortGroupInCompositionInstanceRef;
    }

    public InstancerefsPackage getInstancerefsPackage() {
        return (InstancerefsPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefsPackage getPackage() {
        return InstancerefsPackage.eINSTANCE;
    }
}

