/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.engine;

import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.internal.p2.engine.MissingAction;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.osgi.util.NLS;

public class MissingActionsException
extends ProvisionException {
    private static final long serialVersionUID = 8617693596359747490L;
    private final MissingAction[] missingActions;

    public MissingActionsException(MissingAction[] missingActions) {
        super(MissingActionsException.getMissingActionsMessage(missingActions));
        this.missingActions = missingActions;
    }

    private static String getMissingActionsMessage(MissingAction[] missingActions) {
        if (missingActions.length == 0) {
            throw new IllegalArgumentException("Bad exception: No missing actions");
        }
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < missingActions.length) {
            MissingAction missingAction = missingActions[i];
            buffer.append(missingAction.getActionId());
            if (missingAction.getVersionRange() != null) {
                buffer.append("/");
                buffer.append(missingAction.getVersionRange().toString());
            }
            if (i + 1 != missingActions.length) {
                buffer.append(", ");
            }
            ++i;
        }
        return NLS.bind((String)Messages.actions_not_found, (Object)buffer.toString());
    }

    public MissingAction[] getMissingActions() {
        return this.missingActions;
    }
}

