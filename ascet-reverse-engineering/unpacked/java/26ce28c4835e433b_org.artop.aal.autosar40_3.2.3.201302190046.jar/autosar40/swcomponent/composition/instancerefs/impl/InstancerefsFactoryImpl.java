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
package autosar40.swcomponent.composition.instancerefs.impl;

import autosar40.swcomponent.composition.instancerefs.ComponentInCompositionInstanceRef;
import autosar40.swcomponent.composition.instancerefs.InstancerefsFactory;
import autosar40.swcomponent.composition.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.composition.instancerefs.PPortInCompositionInstanceRef;
import autosar40.swcomponent.composition.instancerefs.RPortInCompositionInstanceRef;
import autosar40.swcomponent.composition.instancerefs.impl.ComponentInCompositionInstanceRefImpl;
import autosar40.swcomponent.composition.instancerefs.impl.PPortInCompositionInstanceRefImpl;
import autosar40.swcomponent.composition.instancerefs.impl.RPortInCompositionInstanceRefImpl;
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
            InstancerefsFactory theInstancerefsFactory = (InstancerefsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/composition/ir");
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
            case 0: {
                return this.createComponentInCompositionInstanceRef();
            }
            case 2: {
                return this.createRPortInCompositionInstanceRef();
            }
            case 3: {
                return this.createPPortInCompositionInstanceRef();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ComponentInCompositionInstanceRef createComponentInCompositionInstanceRef() {
        ComponentInCompositionInstanceRefImpl componentInCompositionInstanceRef = new ComponentInCompositionInstanceRefImpl();
        return componentInCompositionInstanceRef;
    }

    public RPortInCompositionInstanceRef createRPortInCompositionInstanceRef() {
        RPortInCompositionInstanceRefImpl rPortInCompositionInstanceRef = new RPortInCompositionInstanceRefImpl();
        return rPortInCompositionInstanceRef;
    }

    public PPortInCompositionInstanceRef createPPortInCompositionInstanceRef() {
        PPortInCompositionInstanceRefImpl pPortInCompositionInstanceRef = new PPortInCompositionInstanceRefImpl();
        return pPortInCompositionInstanceRef;
    }

    public InstancerefsPackage getInstancerefsPackage() {
        return (InstancerefsPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefsPackage getPackage() {
        return InstancerefsPackage.eINSTANCE;
    }
}

