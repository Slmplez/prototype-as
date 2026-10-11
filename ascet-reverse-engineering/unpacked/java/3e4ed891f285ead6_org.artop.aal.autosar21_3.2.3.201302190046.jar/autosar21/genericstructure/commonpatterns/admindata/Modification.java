/*
 * Decompiled with CFR 0.152.
 */
package autosar21.genericstructure.commonpatterns.admindata;

import autosar21.genericstructure.commonpatterns.admindata.DocRevision;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData2;
import autosar21.genericstructure.infrastructure.ARObject;

public interface Modification
extends ARObject {
    public DocRevision getDocRevision();

    public void setDocRevision(DocRevision var1);

    public MlData2 getChange();

    public void setChange(MlData2 var1);

    public MlData2 getReason();

    public void setReason(MlData2 var1);
}

