/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.activities;

import org.eclipse.ui.activities.ICategory;

public final class CategoryEvent {
    private ICategory category;
    private boolean categoryActivityBindingsChanged;
    private boolean definedChanged;
    private boolean nameChanged;
    private boolean descriptionChanged;

    public CategoryEvent(ICategory category, boolean categoryActivityBindingsChanged, boolean definedChanged, boolean descriptionChanged, boolean nameChanged) {
        if (category == null) {
            throw new NullPointerException();
        }
        this.category = category;
        this.categoryActivityBindingsChanged = categoryActivityBindingsChanged;
        this.definedChanged = definedChanged;
        this.nameChanged = nameChanged;
        this.descriptionChanged = descriptionChanged;
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

    public boolean hasDescriptionChanged() {
        return this.descriptionChanged;
    }

    public boolean haveCategoryActivityBindingsChanged() {
        return this.categoryActivityBindingsChanged;
    }
}

