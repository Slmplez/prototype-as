/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system.swmapping;

import autosar21.system.swmapping.AggregatedStackUsage;
import autosar21.system.swmapping.BSWResourceEstimation;
import autosar21.system.swmapping.ComponentCluster;
import autosar21.system.swmapping.ComponentSeparation;
import autosar21.system.swmapping.EcuResourceEstimation;
import autosar21.system.swmapping.FreeTextMappingConstraint;
import autosar21.system.swmapping.RTERessourceEstimation;
import autosar21.system.swmapping.SwCompToEcuMapping;
import autosar21.system.swmapping.SwCompToImplMapping;
import autosar21.system.swmapping.SwmappingPackage;
import autosar21.system.swmapping.impl.SwmappingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SwmappingFactory
extends EFactory {
    public static final SwmappingFactory eINSTANCE = SwmappingFactoryImpl.init();

    public AggregatedStackUsage createAggregatedStackUsage();

    public BSWResourceEstimation createBSWResourceEstimation();

    public ComponentCluster createComponentCluster();

    public ComponentSeparation createComponentSeparation();

    public EcuResourceEstimation createEcuResourceEstimation();

    public RTERessourceEstimation createRTERessourceEstimation();

    public FreeTextMappingConstraint createFreeTextMappingConstraint();

    public SwCompToImplMapping createSwCompToImplMapping();

    public SwCompToEcuMapping createSwCompToEcuMapping();

    public SwmappingPackage getSwmappingPackage();
}

