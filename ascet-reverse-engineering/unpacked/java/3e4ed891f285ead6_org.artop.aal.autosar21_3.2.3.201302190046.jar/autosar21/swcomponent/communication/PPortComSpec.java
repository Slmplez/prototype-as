/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GPPortComSpec
 */
package autosar21.swcomponent.communication;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.PPortPrototype;
import gautosar.gswcomponents.gcommunication.GPPortComSpec;

public interface PPortComSpec
extends ARObject,
GPPortComSpec {
    public PPortPrototype getPPortPrototype();

    public void setPPortPrototype(PPortPrototype var1);
}

