/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.genericstructure.commonpatterns.admindata;

import autosar3x.genericstructure.commonpatterns.admindata.DocRevision;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData2;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface Modification
extends ARObject {
    public DocRevision getDocRevision();

    public void setDocRevision(DocRevision var1);

    public MlData2 getChange();

    public void setChange(MlData2 var1);

    public MlData2 getReason();

    public void setReason(MlData2 var1);
}

