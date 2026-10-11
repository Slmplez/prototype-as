/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.triggerdeclaration;

import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.portinterface.TriggerInterfaceMapping;

public interface TriggerMapping
extends ARObject {
    public TriggerInterfaceMapping getTriggerInterfaceMapping();

    public void setTriggerInterfaceMapping(TriggerInterfaceMapping var1);

    public Trigger getFirstTrigger();

    public void setFirstTrigger(Trigger var1);

    public Trigger getSecondTrigger();

    public void setSecondTrigger(Trigger var1);
}

