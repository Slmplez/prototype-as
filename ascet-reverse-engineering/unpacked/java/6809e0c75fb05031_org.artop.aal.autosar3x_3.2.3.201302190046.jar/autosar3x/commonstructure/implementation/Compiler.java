/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.implementation;

import autosar3x.commonstructure.implementation.Implementation;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;

public interface Compiler
extends Identifiable {
    public Implementation getImplementation();

    public void setImplementation(Implementation var1);

    public String getName();

    public void setName(String var1);

    public void unsetName();

    public boolean isSetName();

    public String getOptions();

    public void setOptions(String var1);

    public void unsetOptions();

    public boolean isSetOptions();

    public String getVendor();

    public void setVendor(String var1);

    public void unsetVendor();

    public boolean isSetVendor();

    public String getVersion();

    public void setVersion(String var1);

    public void unsetVersion();

    public boolean isSetVersion();
}

