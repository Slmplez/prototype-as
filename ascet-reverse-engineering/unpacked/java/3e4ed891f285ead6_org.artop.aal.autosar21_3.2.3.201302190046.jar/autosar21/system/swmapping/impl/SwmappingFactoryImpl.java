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
package autosar21.system.swmapping.impl;

import autosar21.system.swmapping.AggregatedStackUsage;
import autosar21.system.swmapping.BSWResourceEstimation;
import autosar21.system.swmapping.ComponentCluster;
import autosar21.system.swmapping.ComponentSeparation;
import autosar21.system.swmapping.EcuResourceEstimation;
import autosar21.system.swmapping.FreeTextMappingConstraint;
import autosar21.system.swmapping.RTERessourceEstimation;
import autosar21.system.swmapping.SwCompToEcuMapping;
import autosar21.system.swmapping.SwCompToImplMapping;
import autosar21.system.swmapping.SwmappingFactory;
import autosar21.system.swmapping.SwmappingPackage;
import autosar21.system.swmapping.impl.AggregatedStackUsageImpl;
import autosar21.system.swmapping.impl.BSWResourceEstimationImpl;
import autosar21.system.swmapping.impl.ComponentClusterImpl;
import autosar21.system.swmapping.impl.ComponentSeparationImpl;
import autosar21.system.swmapping.impl.EcuResourceEstimationImpl;
import autosar21.system.swmapping.impl.FreeTextMappingConstraintImpl;
import autosar21.system.swmapping.impl.RTERessourceEstimationImpl;
import autosar21.system.swmapping.impl.SwCompToEcuMappingImpl;
import autosar21.system.swmapping.impl.SwCompToImplMappingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SwmappingFactoryImpl
extends EFactoryImpl
implements SwmappingFactory {
    public static SwmappingFactory init() {
        try {
            SwmappingFactory theSwmappingFactory = (SwmappingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/s/sw");
            if (theSwmappingFactory != null) {
                return theSwmappingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SwmappingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAggregatedStackUsage();
            }
            case 1: {
                return this.createBSWResourceEstimation();
            }
            case 3: {
                return this.createComponentCluster();
            }
            case 5: {
                return this.createComponentSeparation();
            }
            case 6: {
                return this.createEcuResourceEstimation();
            }
            case 7: {
                return this.createRTERessourceEstimation();
            }
            case 8: {
                return this.createFreeTextMappingConstraint();
            }
            case 9: {
                return this.createSwCompToImplMapping();
            }
            case 10: {
                return this.createSwCompToEcuMapping();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AggregatedStackUsage createAggregatedStackUsage() {
        AggregatedStackUsageImpl aggregatedStackUsage = new AggregatedStackUsageImpl();
        return aggregatedStackUsage;
    }

    public BSWResourceEstimation createBSWResourceEstimation() {
        BSWResourceEstimationImpl bswResourceEstimation = new BSWResourceEstimationImpl();
        return bswResourceEstimation;
    }

    public ComponentCluster createComponentCluster() {
        ComponentClusterImpl componentCluster = new ComponentClusterImpl();
        return componentCluster;
    }

    public ComponentSeparation createComponentSeparation() {
        ComponentSeparationImpl componentSeparation = new ComponentSeparationImpl();
        return componentSeparation;
    }

    public EcuResourceEstimation createEcuResourceEstimation() {
        EcuResourceEstimationImpl ecuResourceEstimation = new EcuResourceEstimationImpl();
        return ecuResourceEstimation;
    }

    public RTERessourceEstimation createRTERessourceEstimation() {
        RTERessourceEstimationImpl rteRessourceEstimation = new RTERessourceEstimationImpl();
        return rteRessourceEstimation;
    }

    public FreeTextMappingConstraint createFreeTextMappingConstraint() {
        FreeTextMappingConstraintImpl freeTextMappingConstraint = new FreeTextMappingConstraintImpl();
        return freeTextMappingConstraint;
    }

    public SwCompToImplMapping createSwCompToImplMapping() {
        SwCompToImplMappingImpl swCompToImplMapping = new SwCompToImplMappingImpl();
        return swCompToImplMapping;
    }

    public SwCompToEcuMapping createSwCompToEcuMapping() {
        SwCompToEcuMappingImpl swCompToEcuMapping = new SwCompToEcuMappingImpl();
        return swCompToEcuMapping;
    }

    public SwmappingPackage getSwmappingPackage() {
        return (SwmappingPackage)this.getEPackage();
    }

    @Deprecated
    public static SwmappingPackage getPackage() {
        return SwmappingPackage.eINSTANCE;
    }
}

