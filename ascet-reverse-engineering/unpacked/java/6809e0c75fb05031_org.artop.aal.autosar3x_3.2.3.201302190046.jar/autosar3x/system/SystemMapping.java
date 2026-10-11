/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.System;
import autosar3x.system.datamapping.DataMapping;
import autosar3x.system.ecuresourcemapping.ECUMapping;
import autosar3x.system.signalpaths.SignalPathConstraint;
import autosar3x.system.swmapping.EcuResourceEstimation;
import autosar3x.system.swmapping.MappingConstraint;
import autosar3x.system.swmapping.PncMapping;
import autosar3x.system.swmapping.SwcToEcuMapping;
import autosar3x.system.swmapping.SwcToImplMapping;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SystemMapping
extends Identifiable {
    public System getSystem();

    public void setSystem(System var1);

    public EList<DataMapping> getDataMappings();

    public EList<ECUMapping> getEcuResourceMappings();

    public EList<MappingConstraint> getMappingConstraints();

    public EList<PncMapping> getPncMappings();

    public EList<EcuResourceEstimation> getResourceEstimations();

    public EList<SignalPathConstraint> getSignalPathConstraints();

    public EList<SwcToImplMapping> getSwImplMappings();

    public EList<SwcToEcuMapping> getSwMappings();
}

