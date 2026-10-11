/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.swmapping;

import autosar3x.system.swmapping.MappingConstraint;
import autosar3x.system.swmapping.instanceref.ComponentClusteringClusteredComponent;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ComponentClustering
extends MappingConstraint {
    public EList<ComponentClusteringClusteredComponent> getClusteredComponents();
}

