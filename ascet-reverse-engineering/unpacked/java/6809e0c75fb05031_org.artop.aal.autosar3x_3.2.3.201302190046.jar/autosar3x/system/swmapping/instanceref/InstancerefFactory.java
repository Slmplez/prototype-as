/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.swmapping.instanceref;

import autosar3x.system.swmapping.instanceref.ComponentClusteringClusteredComponent;
import autosar3x.system.swmapping.instanceref.ComponentSeparationSeparatedComponent;
import autosar3x.system.swmapping.instanceref.InstancerefPackage;
import autosar3x.system.swmapping.instanceref.PncMappingVfc;
import autosar3x.system.swmapping.instanceref.SwCompToEcuMappingComponent;
import autosar3x.system.swmapping.instanceref.SwCompToImplMappingComponent;
import autosar3x.system.swmapping.instanceref.SwcToEcuMappingConstraintComponent;
import autosar3x.system.swmapping.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public ComponentSeparationSeparatedComponent createComponentSeparationSeparatedComponent();

    public PncMappingVfc createPncMappingVfc();

    public SwCompToEcuMappingComponent createSwCompToEcuMappingComponent();

    public SwCompToImplMappingComponent createSwCompToImplMappingComponent();

    public SwcToEcuMappingConstraintComponent createSwcToEcuMappingConstraintComponent();

    public ComponentClusteringClusteredComponent createComponentClusteringClusteredComponent();

    public InstancerefPackage getInstancerefPackage();
}

