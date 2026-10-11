/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConfig;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface LogicAddress
extends Identifiable {
    public SoAdConfig getSoAdConfig();

    public void setSoAdConfig(SoAdConfig var1);

    public Integer getAddress();

    public void setAddress(Integer var1);

    public void unsetAddress();

    public boolean isSetAddress();

    public IntegerDatatype getAddressData();

    public void setAddressData(IntegerDatatype var1);
}

