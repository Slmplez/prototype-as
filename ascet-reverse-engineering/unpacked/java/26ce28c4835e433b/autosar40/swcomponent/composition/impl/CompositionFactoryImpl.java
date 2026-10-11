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
package autosar40.swcomponent.composition.impl;

import autosar40.swcomponent.composition.AssemblySwConnector;
import autosar40.swcomponent.composition.CompositionFactory;
import autosar40.swcomponent.composition.CompositionPackage;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import autosar40.swcomponent.composition.DelegationSwConnector;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.composition.impl.AssemblySwConnectorImpl;
import autosar40.swcomponent.composition.impl.CompositionSwComponentTypeImpl;
import autosar40.swcomponent.composition.impl.DelegationSwConnectorImpl;
import autosar40.swcomponent.composition.impl.SwComponentPrototypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class CompositionFactoryImpl
extends EFactoryImpl
implements CompositionFactory {
    public static CompositionFactory init() {
        try {
            CompositionFactory theCompositionFactory = (CompositionFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/composition");
            if (theCompositionFactory != null) {
                return theCompositionFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new CompositionFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAssemblySwConnector();
            }
            case 2: {
                return this.createSwComponentPrototype();
            }
            case 3: {
                return this.createDelegationSwConnector();
            }
            case 4: {
                return this.createCompositionSwComponentType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AssemblySwConnector createAssemblySwConnector() {
        AssemblySwConnectorImpl assemblySwConnector = new AssemblySwConnectorImpl();
        return assemblySwConnector;
    }

    public SwComponentPrototype createSwComponentPrototype() {
        SwComponentPrototypeImpl swComponentPrototype = new SwComponentPrototypeImpl();
        return swComponentPrototype;
    }

    public DelegationSwConnector createDelegationSwConnector() {
        DelegationSwConnectorImpl delegationSwConnector = new DelegationSwConnectorImpl();
        return delegationSwConnector;
    }

    public CompositionSwComponentType createCompositionSwComponentType() {
        CompositionSwComponentTypeImpl compositionSwComponentType = new CompositionSwComponentTypeImpl();
        return compositionSwComponentType;
    }

    public CompositionPackage getCompositionPackage() {
        return (CompositionPackage)this.getEPackage();
    }

    @Deprecated
    public static CompositionPackage getPackage() {
        return CompositionPackage.eINSTANCE;
    }
}

