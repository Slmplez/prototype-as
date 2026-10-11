/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.ValidationStatusProvider
 */
package org.eclipse.jface.databinding.dialog;

import org.eclipse.core.databinding.ValidationStatusProvider;

public interface IValidationMessageProvider {
    public String getMessage(ValidationStatusProvider var1);

    public int getMessageType(ValidationStatusProvider var1);
}

