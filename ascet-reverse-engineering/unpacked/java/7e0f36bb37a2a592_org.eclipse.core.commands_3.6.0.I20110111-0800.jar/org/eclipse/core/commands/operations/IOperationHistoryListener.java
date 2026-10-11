/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.operations;

import org.eclipse.core.commands.operations.OperationHistoryEvent;

public interface IOperationHistoryListener {
    public void historyNotification(OperationHistoryEvent var1);
}

