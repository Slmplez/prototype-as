/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.emf.transaction.impl;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.transaction.impl.ReadWriteValidatorImpl;

public class ReadOnlyValidatorImpl
extends ReadWriteValidatorImpl {
    public IStatus validate() {
        return Status.OK_STATUS;
    }
}

