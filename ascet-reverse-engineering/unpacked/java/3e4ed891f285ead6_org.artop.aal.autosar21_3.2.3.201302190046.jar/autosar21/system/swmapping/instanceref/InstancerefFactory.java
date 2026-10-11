/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system.swmapping.instanceref;

import autosar21.system.swmapping.instanceref.ComponentClusterClusteredComponent;
import autosar21.system.swmapping.instanceref.ComponentSeparationSeparatedComponent;
import autosar21.system.swmapping.instanceref.EcuResourceEstimationEcuInstance;
import autosar21.system.swmapping.instanceref.InstancerefPackage;
import autosar21.system.swmapping.instanceref.SwCompToEcuMappingComponent;
import autosar21.system.swmapping.instanceref.SwCompToEcuMappingEcuInstance;
import autosar21.system.swmapping.instanceref.SwCompToImplMappingComponent;
import autosar21.system.swmapping.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public ComponentClusterClusteredComponent createComponentClusterClusteredComponent();

    public ComponentSeparationSeparatedComponent createComponentSeparationSeparatedComponent();

    public EcuResourceEstimationEcuInstance createEcuResourceEstimationEcuInstance();

    public SwCompToEcuMappingComponent createSwCompToEcuMappingComponent();

    public SwCompToEcuMappingEcuInstance createSwCompToEcuMappingEcuInstance();

    public SwCompToImplMappingComponent createSwCompToImplMappingComponent();

    public InstancerefPackage getInstancerefPackage();
}

