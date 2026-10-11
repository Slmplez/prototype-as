/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.swmapping;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.SystemMapping;
import autosar21.system.swmapping.BSWResourceEstimation;
import autosar21.system.swmapping.RTERessourceEstimation;
import autosar21.system.swmapping.SwCompToEcuMapping;
import autosar21.system.swmapping.instanceref.EcuResourceEstimationEcuInstance;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcuResourceEstimation
extends ARObject {
    public SystemMapping getSystemMapping();

    public void setSystemMapping(SystemMapping var1);

    public BSWResourceEstimation getBswResourceEstimation();

    public void setBswResourceEstimation(BSWResourceEstimation var1);

    public EcuResourceEstimationEcuInstance getEcuInstance();

    public void setEcuInstance(EcuResourceEstimationEcuInstance var1);

    public RTERessourceEstimation getRteRessourceEstimation();

    public void setRteRessourceEstimation(RTERessourceEstimation var1);

    public EList<SwCompToEcuMapping> getSwCompToEcuMappings();
}

