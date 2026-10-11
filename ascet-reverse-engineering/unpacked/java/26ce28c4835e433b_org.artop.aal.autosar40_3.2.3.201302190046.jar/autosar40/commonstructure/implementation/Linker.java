/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.implementation;

import autosar40.commonstructure.implementation.Implementation;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;

public interface Linker
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

