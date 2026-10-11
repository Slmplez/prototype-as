/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.genericstructure.commonpatterns.admindata;

import autosar3x.genericstructure.commonpatterns.admindata.AdminData;
import autosar3x.genericstructure.commonpatterns.admindata.Modification;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData10;
import autosar3x.genericstructure.infrastructure.ARObject;
import javax.xml.datatype.XMLGregorianCalendar;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DocRevision
extends ARObject {
    public AdminData getAdminData();

    public void setAdminData(AdminData var1);

    public String getRevisionLabel();

    public void setRevisionLabel(String var1);

    public void unsetRevisionLabel();

    public boolean isSetRevisionLabel();

    public String getRevisionLabelP1();

    public void setRevisionLabelP1(String var1);

    public void unsetRevisionLabelP1();

    public boolean isSetRevisionLabelP1();

    public String getRevisionLabelP2();

    public void setRevisionLabelP2(String var1);

    public void unsetRevisionLabelP2();

    public boolean isSetRevisionLabelP2();

    public SlData10 getState();

    public void setState(SlData10 var1);

    public SlData10 getIssuedBy();

    public void setIssuedBy(SlData10 var1);

    public XMLGregorianCalendar getDate();

    public void setDate(XMLGregorianCalendar var1);

    public void unsetDate();

    public boolean isSetDate();

    public EList<Modification> getModifications();
}

