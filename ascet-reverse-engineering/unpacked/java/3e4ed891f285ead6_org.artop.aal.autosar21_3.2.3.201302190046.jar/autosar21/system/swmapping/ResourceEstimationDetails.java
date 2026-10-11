/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.swmapping;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.resources.heapusage.HeapUsage;
import autosar21.system.swmapping.AggregatedStackUsage;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ResourceEstimationDetails
extends ARObject {
    public EList<HeapUsage> getHeapUsages();

    public EList<AggregatedStackUsage> getStackUsages();
}

