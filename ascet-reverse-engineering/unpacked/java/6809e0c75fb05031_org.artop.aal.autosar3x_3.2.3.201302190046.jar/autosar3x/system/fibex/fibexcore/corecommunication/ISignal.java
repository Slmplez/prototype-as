/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.corecommunication.AbstractSignal;

public interface ISignal
extends FibexElement {
    public AbstractSignal getSystemSignal();

    public void setSystemSignal(AbstractSignal var1);
}

