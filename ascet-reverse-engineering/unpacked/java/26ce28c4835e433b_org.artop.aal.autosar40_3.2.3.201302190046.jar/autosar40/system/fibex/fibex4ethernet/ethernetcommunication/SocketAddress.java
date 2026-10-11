/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConfig;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationConnector;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface SocketAddress
extends Identifiable {
    public SoAdConfig getSoAdConfig();

    public void setSoAdConfig(SoAdConfig var1);

    public EthernetCommunicationConnector getConnector();

    public void setConnector(EthernetCommunicationConnector var1);

    public String getIpAddress();

    public void setIpAddress(String var1);

    public void unsetIpAddress();

    public boolean isSetIpAddress();

    public Integer getPortAddress();

    public void setPortAddress(Integer var1);

    public void unsetPortAddress();

    public boolean isSetPortAddress();

    public IntegerDatatype getPortAddressData();

    public void setPortAddressData(IntegerDatatype var1);
}

