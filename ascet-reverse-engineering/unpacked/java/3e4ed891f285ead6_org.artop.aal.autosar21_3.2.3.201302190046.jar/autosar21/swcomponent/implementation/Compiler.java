/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.implementation;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.implementation.Implementation;

public interface Compiler
extends Identifiable {
    public Implementation getImplementation();

    public void setImplementation(Implementation var1);

    public String getName();

    public void setName(String var1);

    public void unsetName();

    public boolean isSetName();

    public String getVendor();

    public void setVendor(String var1);

    public void unsetVendor();

    public boolean isSetVendor();

    public String getVersion();

    public void setVersion(String var1);

    public void unsetVersion();

    public boolean isSetVersion();
}

