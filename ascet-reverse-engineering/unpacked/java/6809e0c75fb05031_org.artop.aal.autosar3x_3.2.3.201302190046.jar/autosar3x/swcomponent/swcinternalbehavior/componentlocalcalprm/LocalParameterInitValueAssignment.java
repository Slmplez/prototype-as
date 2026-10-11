/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm;

import autosar3x.swcomponent.swcinternalbehavior.InternalBehavior;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.InitValueAssignment;

public interface LocalParameterInitValueAssignment
extends InitValueAssignment {
    public InternalBehavior getInternalBehavior();

    public void setInternalBehavior(InternalBehavior var1);
}

