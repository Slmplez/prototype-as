/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.internal.modeled.model.validation;

import org.eclipse.emf.validation.internal.modeled.model.validation.EventTypesEnum;
import org.eclipse.emf.validation.internal.modeled.model.validation.Target;

public interface Event
extends Target {
    public EventTypesEnum getName();

    public void setName(EventTypesEnum var1);
}

