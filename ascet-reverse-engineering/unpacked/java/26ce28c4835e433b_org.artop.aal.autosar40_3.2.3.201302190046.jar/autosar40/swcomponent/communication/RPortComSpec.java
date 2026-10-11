/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GRPortComSpec
 */
package autosar40.swcomponent.communication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.components.RPortPrototype;
import gautosar.gswcomponents.gcommunication.GRPortComSpec;

public interface RPortComSpec
extends ARObject,
GRPortComSpec {
    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);
}

