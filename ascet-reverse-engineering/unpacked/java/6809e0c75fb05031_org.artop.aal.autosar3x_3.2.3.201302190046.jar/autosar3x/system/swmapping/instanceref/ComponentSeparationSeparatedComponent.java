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
import autosar3x.system.swmapping.ComponentSeparation;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ComponentSeparationSeparatedComponent
extends ARObject {
    public ComponentSeparation getComponentSeparation();

    public void setComponentSeparation(ComponentSeparation var1);

    public SoftwareComposition getSoftwareComposition();

    public void setSoftwareComposition(SoftwareComposition var1);

    public EList<ComponentPrototype> getComponentPrototypes();

    public ComponentPrototype getSeparatedComponent();

    public void setSeparatedComponent(ComponentPrototype var1);
}

