/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.swmapping;

import autosar21.system.swmapping.EcuResourceEstimation;
import autosar21.system.swmapping.ResourceEstimationDetails;

public interface RTERessourceEstimation
extends ResourceEstimationDetails {
    public EcuResourceEstimation getEcuResourceEstimation();

    public void setEcuResourceEstimation(EcuResourceEstimation var1);
}

