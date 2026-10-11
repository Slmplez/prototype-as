/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.specialdata;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SdgContents;

public interface Sd
extends ARObject {
    public SdgContents getSdgContents();

    public void setSdgContents(SdgContents var1);

    public String getGid();

    public void setGid(String var1);

    public void unsetGid();

    public boolean isSetGid();

    public String getValue();

    public void setValue(String var1);

    public void unsetValue();

    public boolean isSetValue();
}

