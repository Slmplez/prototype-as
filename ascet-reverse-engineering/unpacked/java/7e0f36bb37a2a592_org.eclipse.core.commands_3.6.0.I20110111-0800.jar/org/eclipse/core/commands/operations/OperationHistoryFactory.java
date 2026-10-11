/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.operations;

import org.eclipse.core.commands.operations.DefaultOperationHistory;
import org.eclipse.core.commands.operations.IOperationHistory;

public final class OperationHistoryFactory {
    private static IOperationHistory operationHistory;

    public static IOperationHistory getOperationHistory() {
        if (operationHistory == null) {
            operationHistory = new DefaultOperationHistory();
        }
        return operationHistory;
    }

    public static void setOperationHistory(IOperationHistory history) {
        if (operationHistory == null) {
            operationHistory = history;
        }
    }

    private OperationHistoryFactory() {
    }
}

