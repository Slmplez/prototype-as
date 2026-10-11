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
import autosar3x.system.swmapping.SwcToImplMapping;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwCompToImplMappingComponent
extends ARObject {
    public SwcToImplMapping getSwcToImplMapping();

    public void setSwcToImplMapping(SwcToImplMapping var1);

    public SoftwareComposition getSoftwareComposition();

    public void setSoftwareComposition(SoftwareComposition var1);

    public EList<ComponentPrototype> getComponentPrototypes();

    public ComponentPrototype getTargetComponentPrototype();

    public void setTargetComponentPrototype(ComponentPrototype var1);
}

