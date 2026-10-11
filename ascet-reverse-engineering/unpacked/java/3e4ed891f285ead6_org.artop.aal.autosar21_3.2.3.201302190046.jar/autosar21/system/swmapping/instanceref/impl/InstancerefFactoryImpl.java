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
package autosar21.system.swmapping.instanceref.impl;

import autosar21.system.swmapping.instanceref.ComponentClusterClusteredComponent;
import autosar21.system.swmapping.instanceref.ComponentSeparationSeparatedComponent;
import autosar21.system.swmapping.instanceref.EcuResourceEstimationEcuInstance;
import autosar21.system.swmapping.instanceref.InstancerefFactory;
import autosar21.system.swmapping.instanceref.InstancerefPackage;
import autosar21.system.swmapping.instanceref.SwCompToEcuMappingComponent;
import autosar21.system.swmapping.instanceref.SwCompToEcuMappingEcuInstance;
import autosar21.system.swmapping.instanceref.SwCompToImplMappingComponent;
import autosar21.system.swmapping.instanceref.impl.ComponentClusterClusteredComponentImpl;
import autosar21.system.swmapping.instanceref.impl.ComponentSeparationSeparatedComponentImpl;
import autosar21.system.swmapping.instanceref.impl.EcuResourceEstimationEcuInstanceImpl;
import autosar21.system.swmapping.instanceref.impl.SwCompToEcuMappingComponentImpl;
import autosar21.system.swmapping.instanceref.impl.SwCompToEcuMappingEcuInstanceImpl;
import autosar21.system.swmapping.instanceref.impl.SwCompToImplMappingComponentImpl;
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
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/s/sw/r");
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
                return this.createComponentClusterClusteredComponent();
            }
            case 1: {
                return this.createComponentSeparationSeparatedComponent();
            }
            case 2: {
                return this.createEcuResourceEstimationEcuInstance();
            }
            case 3: {
                return this.createSwCompToEcuMappingComponent();
            }
            case 4: {
                return this.createSwCompToEcuMappingEcuInstance();
            }
            case 5: {
                return this.createSwCompToImplMappingComponent();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ComponentClusterClusteredComponent createComponentClusterClusteredComponent() {
        ComponentClusterClusteredComponentImpl componentClusterClusteredComponent = new ComponentClusterClusteredComponentImpl();
        return componentClusterClusteredComponent;
    }

    public ComponentSeparationSeparatedComponent createComponentSeparationSeparatedComponent() {
        ComponentSeparationSeparatedComponentImpl componentSeparationSeparatedComponent = new ComponentSeparationSeparatedComponentImpl();
        return componentSeparationSeparatedComponent;
    }

    public EcuResourceEstimationEcuInstance createEcuResourceEstimationEcuInstance() {
        EcuResourceEstimationEcuInstanceImpl ecuResourceEstimationEcuInstance = new EcuResourceEstimationEcuInstanceImpl();
        return ecuResourceEstimationEcuInstance;
    }

    public SwCompToEcuMappingComponent createSwCompToEcuMappingComponent() {
        SwCompToEcuMappingComponentImpl swCompToEcuMappingComponent = new SwCompToEcuMappingComponentImpl();
        return swCompToEcuMappingComponent;
    }

    public SwCompToEcuMappingEcuInstance createSwCompToEcuMappingEcuInstance() {
        SwCompToEcuMappingEcuInstanceImpl swCompToEcuMappingEcuInstance = new SwCompToEcuMappingEcuInstanceImpl();
        return swCompToEcuMappingEcuInstance;
    }

    public SwCompToImplMappingComponent createSwCompToImplMappingComponent() {
        SwCompToImplMappingComponentImpl swCompToImplMappingComponent = new SwCompToImplMappingComponentImpl();
        return swCompToImplMappingComponent;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

