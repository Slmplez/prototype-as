/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.equinox.internal.p2.engine;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.internal.p2.engine.Operand;
import org.eclipse.equinox.internal.p2.engine.PhaseSet;
import org.eclipse.equinox.internal.p2.engine.TransactionEvent;
import org.eclipse.equinox.p2.engine.IEngine;
import org.eclipse.equinox.p2.engine.IProfile;

public class RollbackOperationEvent
extends TransactionEvent {
    private static final long serialVersionUID = -2076492953949691215L;
    private IStatus cause;

    public RollbackOperationEvent(IProfile profile, PhaseSet phaseSet, Operand[] operands, IEngine engine, IStatus cause) {
        super(profile, phaseSet, operands, engine);
        this.cause = cause;
    }

    public IStatus getStatus() {
        return this.cause;
    }
}

