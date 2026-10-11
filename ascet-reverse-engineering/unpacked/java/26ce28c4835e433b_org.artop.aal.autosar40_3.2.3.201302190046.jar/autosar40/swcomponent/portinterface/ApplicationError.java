/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GApplicationError
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.swcomponent.portinterface;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.swcomponent.portinterface.ClientServerInterface;
import gautosar.gswcomponents.gportinterface.GApplicationError;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface ApplicationError
extends Identifiable,
GApplicationError {
    public ClientServerInterface getClientServerInterface();

    public void setClientServerInterface(ClientServerInterface var1);

    public Integer getErrorCode();

    public void setErrorCode(Integer var1);

    public void unsetErrorCode();

    public boolean isSetErrorCode();

    public IntegerDatatype getErrorCodeData();

    public void setErrorCodeData(IntegerDatatype var1);
}

