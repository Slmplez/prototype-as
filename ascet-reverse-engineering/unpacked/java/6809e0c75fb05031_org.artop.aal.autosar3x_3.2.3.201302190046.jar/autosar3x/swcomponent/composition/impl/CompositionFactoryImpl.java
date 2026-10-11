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
package autosar3x.swcomponent.composition.impl;

import autosar3x.swcomponent.composition.AssemblyConnectorPrototype;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.composition.CompositionFactory;
import autosar3x.swcomponent.composition.CompositionPackage;
import autosar3x.swcomponent.composition.CompositionType;
import autosar3x.swcomponent.composition.DelegationConnectorPrototype;
import autosar3x.swcomponent.composition.ServiceConnectorPrototype;
import autosar3x.swcomponent.composition.impl.AssemblyConnectorPrototypeImpl;
import autosar3x.swcomponent.composition.impl.ComponentPrototypeImpl;
import autosar3x.swcomponent.composition.impl.CompositionTypeImpl;
import autosar3x.swcomponent.composition.impl.DelegationConnectorPrototypeImpl;
import autosar3x.swcomponent.composition.impl.ServiceConnectorPrototypeImpl;
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
            CompositionFactory theCompositionFactory = (CompositionFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/composition");
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
                return this.createServiceConnectorPrototype();
            }
            case 2: {
                return this.createCompositionType();
            }
            case 3: {
                return this.createAssemblyConnectorPrototype();
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

    public ServiceConnectorPrototype createServiceConnectorPrototype() {
        ServiceConnectorPrototypeImpl serviceConnectorPrototype = new ServiceConnectorPrototypeImpl();
        return serviceConnectorPrototype;
    }

    public CompositionType createCompositionType() {
        CompositionTypeImpl compositionType = new CompositionTypeImpl();
        return compositionType;
    }

    public AssemblyConnectorPrototype createAssemblyConnectorPrototype() {
        AssemblyConnectorPrototypeImpl assemblyConnectorPrototype = new AssemblyConnectorPrototypeImpl();
        return assemblyConnectorPrototype;
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

