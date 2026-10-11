/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.swmapping;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.swcimplementation.SwcImplementation;
import autosar3x.system.SystemMapping;
import autosar3x.system.swmapping.instanceref.SwCompToImplMappingComponent;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcToImplMapping
extends Identifiable {
    public SystemMapping getSystemMapping();

    public void setSystemMapping(SystemMapping var1);

    public SwcImplementation getComponentImplementation();

    public void setComponentImplementation(SwcImplementation var1);

    public EList<SwCompToImplMappingComponent> getComponents();
}

