/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.filebuffers;

import org.eclipse.core.runtime.IStatus;

public interface IStateValidationSupport {
    public void validationStateAboutToBeChanged();

    public void validationStateChanged(boolean var1, IStatus var2);

    public void validationStateChangeFailed();
}

