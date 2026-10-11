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
package autosar3x.swcomponent.composition.instanceref.impl;

import autosar3x.swcomponent.composition.instanceref.AssemblyConnectorPrototypeProvider;
import autosar3x.swcomponent.composition.instanceref.AssemblyConnectorPrototypeRequester;
import autosar3x.swcomponent.composition.instanceref.DelegationConnectorPrototypeInnerPort;
import autosar3x.swcomponent.composition.instanceref.InstancerefFactory;
import autosar3x.swcomponent.composition.instanceref.InstancerefPackage;
import autosar3x.swcomponent.composition.instanceref.ServiceConnectorPrototypeApplicationPort;
import autosar3x.swcomponent.composition.instanceref.ServiceConnectorPrototypeServicePort;
import autosar3x.swcomponent.composition.instanceref.impl.AssemblyConnectorPrototypeProviderImpl;
import autosar3x.swcomponent.composition.instanceref.impl.AssemblyConnectorPrototypeRequesterImpl;
import autosar3x.swcomponent.composition.instanceref.impl.DelegationConnectorPrototypeInnerPortImpl;
import autosar3x.swcomponent.composition.instanceref.impl.ServiceConnectorPrototypeApplicationPortImpl;
import autosar3x.swcomponent.composition.instanceref.impl.ServiceConnectorPrototypeServicePortImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InstancerefFactoryImpl
extends EFactoryImpl
implements InstancerefFactory {
    public static InstancerefFactory init() {
        try {
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/composition/r");
            if (theInstancerefFactory != null) {
                return theInstancerefFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InstancerefFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAssemblyConnectorPrototypeProvider();
            }
            case 1: {
                return this.createAssemblyConnectorPrototypeRequester();
            }
            case 2: {
                return this.createDelegationConnectorPrototypeInnerPort();
            }
            case 3: {
                return this.createServiceConnectorPrototypeApplicationPort();
            }
            case 4: {
                return this.createServiceConnectorPrototypeServicePort();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AssemblyConnectorPrototypeProvider createAssemblyConnectorPrototypeProvider() {
        AssemblyConnectorPrototypeProviderImpl assemblyConnectorPrototypeProvider = new AssemblyConnectorPrototypeProviderImpl();
        return assemblyConnectorPrototypeProvider;
    }

    public AssemblyConnectorPrototypeRequester createAssemblyConnectorPrototypeRequester() {
        AssemblyConnectorPrototypeRequesterImpl assemblyConnectorPrototypeRequester = new AssemblyConnectorPrototypeRequesterImpl();
        return assemblyConnectorPrototypeRequester;
    }

    public DelegationConnectorPrototypeInnerPort createDelegationConnectorPrototypeInnerPort() {
        DelegationConnectorPrototypeInnerPortImpl delegationConnectorPrototypeInnerPort = new DelegationConnectorPrototypeInnerPortImpl();
        return delegationConnectorPrototypeInnerPort;
    }

    public ServiceConnectorPrototypeApplicationPort createServiceConnectorPrototypeApplicationPort() {
        ServiceConnectorPrototypeApplicationPortImpl serviceConnectorPrototypeApplicationPort = new ServiceConnectorPrototypeApplicationPortImpl();
        return serviceConnectorPrototypeApplicationPort;
    }

    public ServiceConnectorPrototypeServicePort createServiceConnectorPrototypeServicePort() {
        ServiceConnectorPrototypeServicePortImpl serviceConnectorPrototypeServicePort = new ServiceConnectorPrototypeServicePortImpl();
        return serviceConnectorPrototypeServicePort;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

