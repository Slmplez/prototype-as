/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.genericstructure.commonpatterns.specialdata;

import autosar3x.genericstructure.commonpatterns.specialdata.SdgCaption;
import autosar3x.genericstructure.commonpatterns.specialdata.SdgContents;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface Sdg
extends ARObject {
    public String getGid();

    public void setGid(String var1);

    public void unsetGid();

    public boolean isSetGid();

    public SdgCaption getSdgCaption();

    public void setSdgCaption(SdgCaption var1);

    public SdgCaption getSdgCaptionRef();

    public void setSdgCaptionRef(SdgCaption var1);

    public SdgContents getSdgContentsType();

    public void setSdgContentsType(SdgContents var1);
}

