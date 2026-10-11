/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.swmapping.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.system.SoftwareComposition;
import autosar3x.system.swmapping.ComponentClustering;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ComponentClusteringClusteredComponent
extends ARObject {
    public ComponentClustering getComponentClustering();

    public void setComponentClustering(ComponentClustering var1);

    public SoftwareComposition getSoftwareComposition();

    public void setSoftwareComposition(SoftwareComposition var1);

    public EList<ComponentPrototype> getComponentPrototypes();

    public ComponentPrototype getClusteredComponent();

    public void setClusteredComponent(ComponentPrototype var1);
}

