/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.swmapping;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.swmapping.ResourceEstimationDetails;

public interface AggregatedStackUsage
extends ARObject {
    public ResourceEstimationDetails getResourceEstimationDetails();

    public void setResourceEstimationDetails(ResourceEstimationDetails var1);
}

