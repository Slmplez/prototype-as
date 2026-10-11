/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.EventObject;
import org.eclipse.equinox.internal.p2.engine.Operand;
import org.eclipse.equinox.internal.p2.engine.PhaseSet;
import org.eclipse.equinox.p2.engine.IEngine;
import org.eclipse.equinox.p2.engine.IProfile;

public abstract class TransactionEvent
extends EventObject {
    private static final long serialVersionUID = 6278706971855493984L;
    protected IProfile profile;
    protected PhaseSet phaseSet;
    protected Operand[] operands;

    public TransactionEvent(IProfile profile, PhaseSet phaseSet, Operand[] operands, IEngine engine) {
        super(engine);
        this.profile = profile;
        this.phaseSet = phaseSet;
        this.operands = operands;
    }

    public IProfile getProfile() {
        return this.profile;
    }
}

