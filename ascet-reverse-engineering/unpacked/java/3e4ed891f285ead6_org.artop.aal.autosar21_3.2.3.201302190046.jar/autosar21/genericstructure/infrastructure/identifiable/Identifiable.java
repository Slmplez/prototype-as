/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 */
package autosar21.genericstructure.infrastructure.identifiable;

import autosar21.genericstructure.commonpatterns.admindata.AdminData;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData2;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData4;
import autosar21.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import java.util.Map;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Identifiable
extends ARObject,
GIdentifiable {
    public String getShortName();

    public void setShortName(String var1);

    public void unsetShortName();

    public boolean isSetShortName();

    public MlData4 getLongName();

    public void setLongName(MlData4 var1);

    public MlData2 getDesc();

    public void setDesc(MlData2 var1);

    public String getCategory();

    public void setCategory(String var1);

    public void unsetCategory();

    public boolean isSetCategory();

    public AdminData getAdminData();

    public void setAdminData(AdminData var1);

    public String getUuid();

    public void setUuid(String var1);

    public void unsetUuid();

    public boolean isSetUuid();

    public Map<String, Object> getExtensions();
}

