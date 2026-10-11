/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GRPortComSpec
 */
package autosar21.swcomponent.communication;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.RPortPrototype;
import gautosar.gswcomponents.gcommunication.GRPortComSpec;

public interface RPortComSpec
extends ARObject,
GRPortComSpec {
    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);
}

