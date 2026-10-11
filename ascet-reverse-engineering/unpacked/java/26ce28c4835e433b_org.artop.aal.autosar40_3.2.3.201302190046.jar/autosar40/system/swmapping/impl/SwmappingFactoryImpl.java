/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.system.swmapping.impl;

import autosar40.system.swmapping.ComponentClustering;
import autosar40.system.swmapping.ComponentSeparation;
import autosar40.system.swmapping.EcuPartition;
import autosar40.system.swmapping.EcuResourceEstimation;
import autosar40.system.swmapping.SwcToEcuMapping;
import autosar40.system.swmapping.SwcToEcuMappingConstraint;
import autosar40.system.swmapping.SwcToEcuMappingConstraintType;
import autosar40.system.swmapping.SwcToImplMapping;
import autosar40.system.swmapping.SwmappingFactory;
import autosar40.system.swmapping.SwmappingPackage;
import autosar40.system.swmapping.impl.ComponentClusteringImpl;
import autosar40.system.swmapping.impl.ComponentSeparationImpl;
import autosar40.system.swmapping.impl.EcuPartitionImpl;
import autosar40.system.swmapping.impl.EcuResourceEstimationImpl;
import autosar40.system.swmapping.impl.SwcToEcuMappingConstraintImpl;
import autosar40.system.swmapping.impl.SwcToEcuMappingImpl;
import autosar40.system.swmapping.impl.SwcToImplMappingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SwmappingFactoryImpl
extends EFactoryImpl
implements SwmappingFactory {
    public static SwmappingFactory init() {
        try {
            SwmappingFactory theSwmappingFactory = (SwmappingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/sw");
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
                return this.createComponentClustering();
            }
            case 2: {
                return this.createComponentSeparation();
            }
            case 3: {
                return this.createEcuPartition();
            }
            case 4: {
                return this.createSwcToEcuMapping();
            }
            case 5: {
                return this.createSwcToEcuMappingConstraint();
            }
            case 6: {
                return this.createSwcToImplMapping();
            }
            case 7: {
                return this.createEcuResourceEstimation();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 8: {
                return this.createSwcToEcuMappingConstraintTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 8: {
                return this.convertSwcToEcuMappingConstraintTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ComponentClustering createComponentClustering() {
        ComponentClusteringImpl componentClustering = new ComponentClusteringImpl();
        return componentClustering;
    }

    public ComponentSeparation createComponentSeparation() {
        ComponentSeparationImpl componentSeparation = new ComponentSeparationImpl();
        return componentSeparation;
    }

    public EcuPartition createEcuPartition() {
        EcuPartitionImpl ecuPartition = new EcuPartitionImpl();
        return ecuPartition;
    }

    public SwcToEcuMapping createSwcToEcuMapping() {
        SwcToEcuMappingImpl swcToEcuMapping = new SwcToEcuMappingImpl();
        return swcToEcuMapping;
    }

    public SwcToEcuMappingConstraint createSwcToEcuMappingConstraint() {
        SwcToEcuMappingConstraintImpl swcToEcuMappingConstraint = new SwcToEcuMappingConstraintImpl();
        return swcToEcuMappingConstraint;
    }

    public SwcToImplMapping createSwcToImplMapping() {
        SwcToImplMappingImpl swcToImplMapping = new SwcToImplMappingImpl();
        return swcToImplMapping;
    }

    public EcuResourceEstimation createEcuResourceEstimation() {
        EcuResourceEstimationImpl ecuResourceEstimation = new EcuResourceEstimationImpl();
        return ecuResourceEstimation;
    }

    public SwcToEcuMappingConstraintType createSwcToEcuMappingConstraintTypeFromString(EDataType eDataType, String initialValue) {
        SwcToEcuMappingConstraintType result = SwcToEcuMappingConstraintType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSwcToEcuMappingConstraintTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SwmappingPackage getSwmappingPackage() {
        return (SwmappingPackage)this.getEPackage();
    }

    @Deprecated
    public static SwmappingPackage getPackage() {
        return SwmappingPackage.eINSTANCE;
    }
}

