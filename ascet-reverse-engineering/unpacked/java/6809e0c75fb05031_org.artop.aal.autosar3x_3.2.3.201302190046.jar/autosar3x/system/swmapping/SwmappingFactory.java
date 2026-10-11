/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.swmapping;

import autosar3x.system.swmapping.ComponentClustering;
import autosar3x.system.swmapping.ComponentSeparation;
import autosar3x.system.swmapping.EcuResourceEstimation;
import autosar3x.system.swmapping.PncMapping;
import autosar3x.system.swmapping.SwcToEcuMapping;
import autosar3x.system.swmapping.SwcToEcuMappingConstraint;
import autosar3x.system.swmapping.SwcToImplMapping;
import autosar3x.system.swmapping.SwmappingPackage;
import autosar3x.system.swmapping.impl.SwmappingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SwmappingFactory
extends EFactory {
    public static final SwmappingFactory eINSTANCE = SwmappingFactoryImpl.init();

    public ComponentClustering createComponentClustering();

    public ComponentSeparation createComponentSeparation();

    public EcuResourceEstimation createEcuResourceEstimation();

    public SwcToEcuMapping createSwcToEcuMapping();

    public PncMapping createPncMapping();

    public SwcToEcuMappingConstraint createSwcToEcuMappingConstraint();

    public SwcToImplMapping createSwcToImplMapping();

    public SwmappingPackage getSwmappingPackage();
}

