/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.system.fibex.fibexcore.FibexElement;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface Pdu
extends FibexElement {
    public Integer getLength();

    public void setLength(Integer var1);

    public void unsetLength();

    public boolean isSetLength();

    public IntegerDatatype getLengthData();

    public void setLengthData(IntegerDatatype var1);
}

