/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.genericstructure.commonpatterns.multilanguagedata;

import autosar3x.genericstructure.commonpatterns.admindata.AdminData;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel10;

public interface MlData10
extends MlDataModel10 {
    public AdminData getAdminData();

    public void setAdminData(AdminData var1);
}

