/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.engine;

import org.eclipse.equinox.internal.p2.engine.Operand;
import org.eclipse.equinox.internal.p2.engine.PhaseSet;
import org.eclipse.equinox.internal.p2.engine.TransactionEvent;
import org.eclipse.equinox.p2.engine.IEngine;
import org.eclipse.equinox.p2.engine.IProfile;

public class CommitOperationEvent
extends TransactionEvent {
    private static final long serialVersionUID = -523967775426133720L;

    public CommitOperationEvent(IProfile profile, PhaseSet phaseSet, Operand[] operands, IEngine engine) {
        super(profile, phaseSet, operands, engine);
    }
}

