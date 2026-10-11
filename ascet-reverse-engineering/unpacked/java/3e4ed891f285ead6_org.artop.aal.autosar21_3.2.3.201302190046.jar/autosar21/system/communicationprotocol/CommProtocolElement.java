/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communicationprotocol;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.communicationprotocol.CommProtocolElementDirectionEnum;
import autosar21.system.communicationprotocol.CommProtocolType;

public interface CommProtocolElement
extends Identifiable {
    public CommProtocolType getCommProtocolType();

    public void setCommProtocolType(CommProtocolType var1);

    public CommProtocolElementDirectionEnum getDirection();

    public void setDirection(CommProtocolElementDirectionEnum var1);

    public void unsetDirection();

    public boolean isSetDirection();
}

