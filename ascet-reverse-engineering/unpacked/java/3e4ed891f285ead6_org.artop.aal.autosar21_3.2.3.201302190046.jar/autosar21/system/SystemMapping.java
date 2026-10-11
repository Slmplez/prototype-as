/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.System;
import autosar21.system.datamapping.DataMapping;
import autosar21.system.signalpaths.SignalPathConstraint;
import autosar21.system.swmapping.EcuResourceEstimation;
import autosar21.system.swmapping.MappingConstraint;
import autosar21.system.swmapping.SwCompToEcuMapping;
import autosar21.system.swmapping.SwCompToImplMapping;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SystemMapping
extends Identifiable {
    public System getSystem();

    public void setSystem(System var1);

    public EList<DataMapping> getDataMappings();

    public EList<MappingConstraint> getMappingConstraints();

    public EList<EcuResourceEstimation> getResourceEstimations();

    public EList<SignalPathConstraint> getSignalPathConstraints();

    public EList<SwCompToImplMapping> getSwImplMappings();

    public EList<SwCompToEcuMapping> getSwMappings();
}

