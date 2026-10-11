/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.swmapping;

import autosar40.system.swmapping.ComponentClustering;
import autosar40.system.swmapping.ComponentSeparation;
import autosar40.system.swmapping.EcuPartition;
import autosar40.system.swmapping.EcuResourceEstimation;
import autosar40.system.swmapping.SwcToEcuMapping;
import autosar40.system.swmapping.SwcToEcuMappingConstraint;
import autosar40.system.swmapping.SwcToImplMapping;
import autosar40.system.swmapping.SwmappingPackage;
import autosar40.system.swmapping.impl.SwmappingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SwmappingFactory
extends EFactory {
    public static final SwmappingFactory eINSTANCE = SwmappingFactoryImpl.init();

    public ComponentClustering createComponentClustering();

    public ComponentSeparation createComponentSeparation();

    public EcuPartition createEcuPartition();

    public SwcToEcuMapping createSwcToEcuMapping();

    public SwcToEcuMappingConstraint createSwcToEcuMappingConstraint();

    public SwcToImplMapping createSwcToImplMapping();

    public EcuResourceEstimation createEcuResourceEstimation();

    public SwmappingPackage getSwmappingPackage();
}

