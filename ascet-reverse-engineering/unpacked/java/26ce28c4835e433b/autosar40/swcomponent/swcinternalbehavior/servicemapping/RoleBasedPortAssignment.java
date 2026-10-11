/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.swcinternalbehavior.servicemapping;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.PortPrototype;

public interface RoleBasedPortAssignment
extends ARObject {
    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public String getRole();

    public void setRole(String var1);

    public void unsetRole();

    public boolean isSetRole();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

