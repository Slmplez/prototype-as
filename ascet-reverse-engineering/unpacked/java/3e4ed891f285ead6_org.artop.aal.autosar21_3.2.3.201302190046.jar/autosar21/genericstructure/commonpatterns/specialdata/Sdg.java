/*
 * Decompiled with CFR 0.152.
 */
package autosar21.genericstructure.commonpatterns.specialdata;

import autosar21.genericstructure.commonpatterns.specialdata.Caption;
import autosar21.genericstructure.commonpatterns.specialdata.SdgContents;
import autosar21.genericstructure.infrastructure.ARObject;

public interface Sdg
extends ARObject {
    public String getGid();

    public void setGid(String var1);

    public void unsetGid();

    public boolean isSetGid();

    public Caption getSdgCaption();

    public void setSdgCaption(Caption var1);

    public SdgContents getSdgContentsType();

    public void setSdgContentsType(SdgContents var1);
}

