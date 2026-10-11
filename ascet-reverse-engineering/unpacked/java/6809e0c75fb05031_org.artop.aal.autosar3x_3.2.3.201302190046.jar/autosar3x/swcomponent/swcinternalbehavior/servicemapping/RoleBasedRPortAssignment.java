/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.swcinternalbehavior.servicemapping;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.RPortPrototype;

public interface RoleBasedRPortAssignment
extends ARObject {
    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);

    public String getRole();

    public void setRole(String var1);

    public void unsetRole();

    public boolean isSetRole();
}

