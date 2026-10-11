/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.Category;
import org.eclipse.core.commands.common.AbstractNamedHandleEvent;

public final class CategoryEvent
extends AbstractNamedHandleEvent {
    private final Category category;

    public CategoryEvent(Category category, boolean definedChanged, boolean descriptionChanged, boolean nameChanged) {
        super(definedChanged, descriptionChanged, nameChanged);
        if (category == null) {
            throw new NullPointerException();
        }
        this.category = category;
    }

    public final Category getCategory() {
        return this.category;
    }
}

