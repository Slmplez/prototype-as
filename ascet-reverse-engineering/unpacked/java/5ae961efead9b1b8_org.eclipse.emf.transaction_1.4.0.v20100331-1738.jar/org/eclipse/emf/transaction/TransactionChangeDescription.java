/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.change.ChangeDescription
 */
package org.eclipse.emf.transaction;

import org.eclipse.emf.ecore.change.ChangeDescription;

public interface TransactionChangeDescription
extends ChangeDescription {
    public boolean canApply();

    public boolean isEmpty();
}

