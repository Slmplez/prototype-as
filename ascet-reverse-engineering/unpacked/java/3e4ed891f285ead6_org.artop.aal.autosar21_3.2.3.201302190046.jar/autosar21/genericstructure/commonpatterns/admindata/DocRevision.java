/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.genericstructure.commonpatterns.admindata;

import autosar21.genericstructure.commonpatterns.admindata.AdminData;
import autosar21.genericstructure.commonpatterns.admindata.Modification;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData10;
import autosar21.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DocRevision
extends ARObject {
    public AdminData getAdminData();

    public void setAdminData(AdminData var1);

    public MlData10 getRevisionLabel();

    public void setRevisionLabel(MlData10 var1);

    public String getRevisionLabelP1();

    public void setRevisionLabelP1(String var1);

    public void unsetRevisionLabelP1();

    public boolean isSetRevisionLabelP1();

    public String getRevisionLabelP2();

    public void setRevisionLabelP2(String var1);

    public void unsetRevisionLabelP2();

    public boolean isSetRevisionLabelP2();

    public MlData10 getState();

    public void setState(MlData10 var1);

    public MlData10 getIssuedBy();

    public void setIssuedBy(MlData10 var1);

    public MlData10 getDate();

    public void setDate(MlData10 var1);

    public EList<Modification> getModifications();
}

