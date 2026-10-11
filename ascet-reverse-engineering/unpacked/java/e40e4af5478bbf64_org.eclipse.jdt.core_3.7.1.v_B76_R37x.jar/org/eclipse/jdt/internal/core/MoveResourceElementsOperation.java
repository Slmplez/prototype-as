/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.core.CopyResourceElementsOperation;
import org.eclipse.jdt.internal.core.util.Messages;

public class MoveResourceElementsOperation
extends CopyResourceElementsOperation {
    public MoveResourceElementsOperation(IJavaElement[] elementsToMove, IJavaElement[] destContainers, boolean force) {
        super(elementsToMove, destContainers, force);
    }

    protected String getMainTaskName() {
        return Messages.operation_moveResourceProgress;
    }

    protected boolean isMove() {
        return true;
    }
}

