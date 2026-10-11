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
package autosar3x.system.swmapping.instanceref.impl;

import autosar3x.system.swmapping.instanceref.ComponentClusteringClusteredComponent;
import autosar3x.system.swmapping.instanceref.ComponentSeparationSeparatedComponent;
import autosar3x.system.swmapping.instanceref.InstancerefFactory;
import autosar3x.system.swmapping.instanceref.InstancerefPackage;
import autosar3x.system.swmapping.instanceref.PncMappingVfc;
import autosar3x.system.swmapping.instanceref.SwCompToEcuMappingComponent;
import autosar3x.system.swmapping.instanceref.SwCompToImplMappingComponent;
import autosar3x.system.swmapping.instanceref.SwcToEcuMappingConstraintComponent;
import autosar3x.system.swmapping.instanceref.impl.ComponentClusteringClusteredComponentImpl;
import autosar3x.system.swmapping.instanceref.impl.ComponentSeparationSeparatedComponentImpl;
import autosar3x.system.swmapping.instanceref.impl.PncMappingVfcImpl;
import autosar3x.system.swmapping.instanceref.impl.SwCompToEcuMappingComponentImpl;
import autosar3x.system.swmapping.instanceref.impl.SwCompToImplMappingComponentImpl;
import autosar3x.system.swmapping.instanceref.impl.SwcToEcuMappingConstraintComponentImpl;
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
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/sw/r");
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
                return this.createComponentSeparationSeparatedComponent();
            }
            case 1: {
                return this.createPncMappingVfc();
            }
            case 2: {
                return this.createSwCompToEcuMappingComponent();
            }
            case 3: {
                return this.createSwCompToImplMappingComponent();
            }
            case 4: {
                return this.createSwcToEcuMappingConstraintComponent();
            }
            case 5: {
                return this.createComponentClusteringClusteredComponent();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ComponentSeparationSeparatedComponent createComponentSeparationSeparatedComponent() {
        ComponentSeparationSeparatedComponentImpl componentSeparationSeparatedComponent = new ComponentSeparationSeparatedComponentImpl();
        return componentSeparationSeparatedComponent;
    }

    public PncMappingVfc createPncMappingVfc() {
        PncMappingVfcImpl pncMappingVfc = new PncMappingVfcImpl();
        return pncMappingVfc;
    }

    public SwCompToEcuMappingComponent createSwCompToEcuMappingComponent() {
        SwCompToEcuMappingComponentImpl swCompToEcuMappingComponent = new SwCompToEcuMappingComponentImpl();
        return swCompToEcuMappingComponent;
    }

    public SwCompToImplMappingComponent createSwCompToImplMappingComponent() {
        SwCompToImplMappingComponentImpl swCompToImplMappingComponent = new SwCompToImplMappingComponentImpl();
        return swCompToImplMappingComponent;
    }

    public SwcToEcuMappingConstraintComponent createSwcToEcuMappingConstraintComponent() {
        SwcToEcuMappingConstraintComponentImpl swcToEcuMappingConstraintComponent = new SwcToEcuMappingConstraintComponentImpl();
        return swcToEcuMappingConstraintComponent;
    }

    public ComponentClusteringClusteredComponent createComponentClusteringClusteredComponent() {
        ComponentClusteringClusteredComponentImpl componentClusteringClusteredComponent = new ComponentClusteringClusteredComponentImpl();
        return componentClusteringClusteredComponent;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

