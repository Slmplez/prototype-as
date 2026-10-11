/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.service;

import java.util.EventListener;
import org.eclipse.emf.validation.service.ValidationEvent;

public interface IValidationListener
extends EventListener {
    public void validationOccurred(ValidationEvent var1);
}

