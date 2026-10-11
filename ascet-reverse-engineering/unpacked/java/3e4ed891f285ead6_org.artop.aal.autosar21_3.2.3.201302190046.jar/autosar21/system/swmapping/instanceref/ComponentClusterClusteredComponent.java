/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.swmapping.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.system.SoftwareComposition;
import autosar21.system.swmapping.ComponentCluster;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ComponentClusterClusteredComponent
extends ARObject {
    public ComponentCluster getComponentCluster();

    public void setComponentCluster(ComponentCluster var1);

    public SoftwareComposition getSoftwareComposition();

    public void setSoftwareComposition(SoftwareComposition var1);

    public EList<ComponentPrototype> getComponentPrototypes();

    public ComponentPrototype getClusteredComponent();

    public void setClusteredComponent(ComponentPrototype var1);
}

