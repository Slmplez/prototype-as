/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GApplicationError
 */
package autosar21.swcomponent.vfberrors;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.portinterface.ClientServerInterface;
import gautosar.gswcomponents.gportinterface.GApplicationError;

public interface ApplicationError
extends Identifiable,
GApplicationError {
    public ClientServerInterface getClientServerInterface();

    public void setClientServerInterface(ClientServerInterface var1);

    public Integer getErrorCode();

    public void setErrorCode(Integer var1);

    public void unsetErrorCode();

    public boolean isSetErrorCode();
}

