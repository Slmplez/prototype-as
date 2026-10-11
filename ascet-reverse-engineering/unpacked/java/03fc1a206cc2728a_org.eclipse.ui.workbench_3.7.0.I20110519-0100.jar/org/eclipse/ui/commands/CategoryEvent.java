/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.commands;

import org.eclipse.ui.commands.ICategory;

public final class CategoryEvent {
    private final ICategory category;
    private final boolean definedChanged;
    private final boolean nameChanged;

    public CategoryEvent(ICategory category, boolean definedChanged, boolean nameChanged) {
        if (category == null) {
            throw new NullPointerException();
        }
        this.category = category;
        this.definedChanged = definedChanged;
        this.nameChanged = nameChanged;
    }

    public ICategory getCategory() {
        return this.category;
    }

    public boolean hasDefinedChanged() {
        return this.definedChanged;
    }

    public boolean hasNameChanged() {
        return this.nameChanged;
    }
}

