/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GArgumentDataPrototype
 */
package autosar40.swcomponent.portinterface;

import autosar40.genericstructure.generaltemplateclasses.primitivetypes.ArgumentDirectionEnum;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import autosar40.swcomponent.portinterface.ServerArgumentImplPolicyEnum;
import gautosar.gswcomponents.gportinterface.GArgumentDataPrototype;

public interface ArgumentDataPrototype
extends AutosarDataPrototype,
GArgumentDataPrototype {
    public ClientServerOperation getClientServerOperation();

    public void setClientServerOperation(ClientServerOperation var1);

    public ArgumentDirectionEnum getDirection();

    public void setDirection(ArgumentDirectionEnum var1);

    public void unsetDirection();

    public boolean isSetDirection();

    public ServerArgumentImplPolicyEnum getServerArgumentImplPolicy();

    public void setServerArgumentImplPolicy(ServerArgumentImplPolicyEnum var1);

    public void unsetServerArgumentImplPolicy();

    public boolean isSetServerArgumentImplPolicy();
}

