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
package autosar3x.system.swmapping.impl;

import autosar3x.system.swmapping.ComponentClustering;
import autosar3x.system.swmapping.ComponentSeparation;
import autosar3x.system.swmapping.EcuResourceEstimation;
import autosar3x.system.swmapping.PncMapping;
import autosar3x.system.swmapping.SwcToEcuMapping;
import autosar3x.system.swmapping.SwcToEcuMappingConstraint;
import autosar3x.system.swmapping.SwcToEcuMappingConstraintType;
import autosar3x.system.swmapping.SwcToImplMapping;
import autosar3x.system.swmapping.SwmappingFactory;
import autosar3x.system.swmapping.SwmappingPackage;
import autosar3x.system.swmapping.impl.ComponentClusteringImpl;
import autosar3x.system.swmapping.impl.ComponentSeparationImpl;
import autosar3x.system.swmapping.impl.EcuResourceEstimationImpl;
import autosar3x.system.swmapping.impl.PncMappingImpl;
import autosar3x.system.swmapping.impl.SwcToEcuMappingConstraintImpl;
import autosar3x.system.swmapping.impl.SwcToEcuMappingImpl;
import autosar3x.system.swmapping.impl.SwcToImplMappingImpl;
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
            SwmappingFactory theSwmappingFactory = (SwmappingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/sw");
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
                return this.createEcuResourceEstimation();
            }
            case 4: {
                return this.createSwcToEcuMapping();
            }
            case 5: {
                return this.createPncMapping();
            }
            case 6: {
                return this.createSwcToEcuMappingConstraint();
            }
            case 7: {
                return this.createSwcToImplMapping();
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

    public EcuResourceEstimation createEcuResourceEstimation() {
        EcuResourceEstimationImpl ecuResourceEstimation = new EcuResourceEstimationImpl();
        return ecuResourceEstimation;
    }

    public SwcToEcuMapping createSwcToEcuMapping() {
        SwcToEcuMappingImpl swcToEcuMapping = new SwcToEcuMappingImpl();
        return swcToEcuMapping;
    }

    public PncMapping createPncMapping() {
        PncMappingImpl pncMapping = new PncMappingImpl();
        return pncMapping;
    }

    public SwcToEcuMappingConstraint createSwcToEcuMappingConstraint() {
        SwcToEcuMappingConstraintImpl swcToEcuMappingConstraint = new SwcToEcuMappingConstraintImpl();
        return swcToEcuMappingConstraint;
    }

    public SwcToImplMapping createSwcToImplMapping() {
        SwcToImplMappingImpl swcToImplMapping = new SwcToImplMappingImpl();
        return swcToImplMapping;
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

