/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.System;
import autosar40.system.datamapping.DataMapping;
import autosar40.system.ecuresourcemapping.ECUMapping;
import autosar40.system.pncmapping.PncMapping;
import autosar40.system.signalpaths.SignalPathConstraint;
import autosar40.system.swmapping.EcuResourceEstimation;
import autosar40.system.swmapping.MappingConstraint;
import autosar40.system.swmapping.SwcToEcuMapping;
import autosar40.system.swmapping.SwcToImplMapping;
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

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

