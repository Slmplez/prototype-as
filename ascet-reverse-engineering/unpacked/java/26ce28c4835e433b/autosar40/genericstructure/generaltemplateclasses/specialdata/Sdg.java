/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.specialdata;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SdgCaption;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SdgContents;

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

