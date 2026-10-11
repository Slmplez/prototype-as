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
package autosar40.swcomponent.portinterface.instancerefs.impl;

import autosar40.swcomponent.portinterface.instancerefs.ApplicationCompositeElementInPortInterfaceInstanceRef;
import autosar40.swcomponent.portinterface.instancerefs.InstancerefsFactory;
import autosar40.swcomponent.portinterface.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.portinterface.instancerefs.impl.ApplicationCompositeElementInPortInterfaceInstanceRefImpl;
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
            InstancerefsFactory theInstancerefsFactory = (InstancerefsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/pi/ir");
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
                return this.createApplicationCompositeElementInPortInterfaceInstanceRef();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ApplicationCompositeElementInPortInterfaceInstanceRef createApplicationCompositeElementInPortInterfaceInstanceRef() {
        ApplicationCompositeElementInPortInterfaceInstanceRefImpl applicationCompositeElementInPortInterfaceInstanceRef = new ApplicationCompositeElementInPortInterfaceInstanceRefImpl();
        return applicationCompositeElementInPortInterfaceInstanceRef;
    }

    public InstancerefsPackage getInstancerefsPackage() {
        return (InstancerefsPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefsPackage getPackage() {
        return InstancerefsPackage.eINSTANCE;
    }
}

