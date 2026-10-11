/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GArgumentDataPrototype
 */
package autosar21.swcomponent.portinterface;

import autosar21.swcomponent.datatype.datatypes.DataPrototype;
import autosar21.swcomponent.portinterface.DirectionKind;
import autosar21.swcomponent.portinterface.OperationPrototype;
import gautosar.gswcomponents.gportinterface.GArgumentDataPrototype;

public interface ArgumentPrototype
extends DataPrototype,
GArgumentDataPrototype {
    public OperationPrototype getOperationPrototype();

    public void setOperationPrototype(OperationPrototype var1);

    public DirectionKind getDirection();

    public void setDirection(DirectionKind var1);

    public void unsetDirection();

    public boolean isSetDirection();
}

