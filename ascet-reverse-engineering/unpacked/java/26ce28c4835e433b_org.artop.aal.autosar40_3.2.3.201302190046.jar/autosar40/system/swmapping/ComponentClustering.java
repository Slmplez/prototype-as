/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.swmapping;

import autosar40.system.instancerefs.ComponentInSystemInstanceRef;
import autosar40.system.swmapping.MappingConstraint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ComponentClustering
extends MappingConstraint {
    public EList<ComponentInSystemInstanceRef> getClusteredComponents();
}

