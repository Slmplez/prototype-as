/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.swmapping;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcimplementation.SwcImplementation;
import autosar40.system.SystemMapping;
import autosar40.system.instancerefs.ComponentInSystemInstanceRef;
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

    public EList<ComponentInSystemInstanceRef> getComponents();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

