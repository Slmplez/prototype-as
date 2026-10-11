/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.internal.service;

import org.eclipse.emf.validation.model.IClientSelector;
import org.eclipse.emf.validation.model.IModelConstraint;

public interface IClientContext {
    public String getId();

    public IClientSelector getSelector();

    public boolean isDefault();

    public boolean includes(IModelConstraint var1);
}

