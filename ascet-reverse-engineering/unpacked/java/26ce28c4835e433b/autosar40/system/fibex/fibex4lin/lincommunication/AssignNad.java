/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import autosar40.system.fibex.fibex4lin.lincommunication.LinConfigurationEntry;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface AssignNad
extends LinConfigurationEntry {
    public Integer getNewNad();

    public void setNewNad(Integer var1);

    public void unsetNewNad();

    public boolean isSetNewNad();

    public IntegerDatatype getNewNadData();

    public void setNewNadData(IntegerDatatype var1);
}

