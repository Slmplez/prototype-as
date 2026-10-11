/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnection;
import autosar40.system.fibex.fibexcore.corecommunication.Pdu;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface SocketConnectionIpduIdentifier
extends ARObject {
    public SocketConnection getSocketConnection();

    public void setSocketConnection(SocketConnection var1);

    public Long getHeaderId();

    public void setHeaderId(Long var1);

    public void unsetHeaderId();

    public boolean isSetHeaderId();

    public Pdu getPdu();

    public void setPdu(Pdu var1);

    public PositiveIntegerDatatype getHeaderIdData();

    public void setHeaderIdData(PositiveIntegerDatatype var1);
}

