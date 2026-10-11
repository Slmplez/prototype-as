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
package autosar21.swcomponent.composition.impl;

import autosar21.swcomponent.composition.AssemblyConnectorPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.composition.CompositionFactory;
import autosar21.swcomponent.composition.CompositionPackage;
import autosar21.swcomponent.composition.CompositionType;
import autosar21.swcomponent.composition.DelegationConnectorPrototype;
import autosar21.swcomponent.composition.ServiceConnectorPrototype;
import autosar21.swcomponent.composition.impl.AssemblyConnectorPrototypeImpl;
import autosar21.swcomponent.composition.impl.ComponentPrototypeImpl;
import autosar21.swcomponent.composition.impl.CompositionTypeImpl;
import autosar21.swcomponent.composition.impl.DelegationConnectorPrototypeImpl;
import autosar21.swcomponent.composition.impl.ServiceConnectorPrototypeImpl;
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
            CompositionFactory theCompositionFactory = (CompositionFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/composition");
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
                return this.createAssemblyConnectorPrototype();
            }
            case 2: {
                return this.createCompositionType();
            }
            case 3: {
                return this.createServiceConnectorPrototype();
            }
            case 4: {
                return this.createDelegationConnectorPrototype();
            }
            case 5: {
                return this.createComponentPrototype();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AssemblyConnectorPrototype createAssemblyConnectorPrototype() {
        AssemblyConnectorPrototypeImpl assemblyConnectorPrototype = new AssemblyConnectorPrototypeImpl();
        return assemblyConnectorPrototype;
    }

    public CompositionType createCompositionType() {
        CompositionTypeImpl compositionType = new CompositionTypeImpl();
        return compositionType;
    }

    public ServiceConnectorPrototype createServiceConnectorPrototype() {
        ServiceConnectorPrototypeImpl serviceConnectorPrototype = new ServiceConnectorPrototypeImpl();
        return serviceConnectorPrototype;
    }

    public DelegationConnectorPrototype createDelegationConnectorPrototype() {
        DelegationConnectorPrototypeImpl delegationConnectorPrototype = new DelegationConnectorPrototypeImpl();
        return delegationConnectorPrototype;
    }

    public ComponentPrototype createComponentPrototype() {
        ComponentPrototypeImpl componentPrototype = new ComponentPrototypeImpl();
        return componentPrototype;
    }

    public CompositionPackage getCompositionPackage() {
        return (CompositionPackage)this.getEPackage();
    }

    @Deprecated
    public static CompositionPackage getPackage() {
        return CompositionPackage.eINSTANCE;
    }
}

