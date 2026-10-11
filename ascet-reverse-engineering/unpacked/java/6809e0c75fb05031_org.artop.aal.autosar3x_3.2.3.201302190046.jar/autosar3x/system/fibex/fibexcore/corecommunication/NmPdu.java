/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.Pdu;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface NmPdu
extends Pdu {
    public EList<ISignalToIPduMapping> getISignalToIPduMappings();

    public Integer getLength();

    public void setLength(Integer var1);

    public void unsetLength();

    public boolean isSetLength();

    public Integer getNmCbvPosition();

    public void setNmCbvPosition(Integer var1);

    public void unsetNmCbvPosition();

    public boolean isSetNmCbvPosition();

    public Integer getNmNidPosition();

    public void setNmNidPosition(Integer var1);

    public void unsetNmNidPosition();

    public boolean isSetNmNidPosition();

    public Integer getNmUserDataLength();

    public void setNmUserDataLength(Integer var1);

    public void unsetNmUserDataLength();

    public boolean isSetNmUserDataLength();
}

