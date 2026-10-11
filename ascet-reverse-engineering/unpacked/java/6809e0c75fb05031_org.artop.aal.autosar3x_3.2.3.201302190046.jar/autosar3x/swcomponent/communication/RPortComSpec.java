/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GRPortComSpec
 */
package autosar3x.swcomponent.communication;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.RPortPrototype;
import gautosar.gswcomponents.gcommunication.GRPortComSpec;

public interface RPortComSpec
extends ARObject,
GRPortComSpec {
    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);
}

