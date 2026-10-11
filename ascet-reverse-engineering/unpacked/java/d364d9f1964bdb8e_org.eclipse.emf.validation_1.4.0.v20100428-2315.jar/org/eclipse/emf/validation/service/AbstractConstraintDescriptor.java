/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.service;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.emf.validation.model.Category;
import org.eclipse.emf.validation.model.CategoryManager;
import org.eclipse.emf.validation.service.ConstraintChangeEvent;
import org.eclipse.emf.validation.service.ConstraintChangeEventType;
import org.eclipse.emf.validation.service.ConstraintRegistry;
import org.eclipse.emf.validation.service.IConstraintDescriptor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractConstraintDescriptor
implements IConstraintDescriptor {
    private final Set<Category> categories = new HashSet<Category>();
    private final Set<Category> unmodCategories = Collections.unmodifiableSet(this.categories);
    private Throwable exception;
    private boolean enabled = true;

    protected AbstractConstraintDescriptor() {
        this.categories.add(CategoryManager.getInstance().getDefaultCategory());
    }

    @Override
    public final boolean isError() {
        return this.getException() != null;
    }

    @Override
    public final Throwable getException() {
        return this.exception;
    }

    @Override
    public final void setError(Throwable exception) {
        assert (exception != null);
        this.exception = exception;
    }

    @Override
    public final boolean isEnabled() {
        return !this.isError() && this.enabled;
    }

    @Override
    public final void setEnabled(boolean enabled) {
        if (!enabled) {
            enabled = this.isMandatory();
        }
        if (this.enabled != enabled) {
            this.enabled = enabled;
            ConstraintChangeEventType eventType = this.enabled ? ConstraintChangeEventType.ENABLED : ConstraintChangeEventType.DISABLED;
            ConstraintRegistry.getInstance().broadcastConstraintChangeEvent(new ConstraintChangeEvent(this, eventType));
        }
    }

    private boolean isMandatory() {
        boolean result = false;
        Iterator<Category> iter = this.getCategories().iterator();
        while (!result && iter.hasNext()) {
            result = iter.next().isMandatory();
        }
        return result;
    }

    @Override
    public Set<Category> getCategories() {
        return this.unmodCategories;
    }

    @Override
    public void addCategory(Category category) {
        Category defaultCategory = CategoryManager.getInstance().getDefaultCategory();
        if (category.equals(defaultCategory)) {
            throw new IllegalArgumentException();
        }
        if (this.categories.contains(defaultCategory)) {
            this.categories.remove(defaultCategory);
            ConstraintRegistry.getInstance().broadcastConstraintChangeEvent(new ConstraintChangeEvent(this, ConstraintChangeEventType.REMOVED_CATEGORY, defaultCategory));
        }
        if (!this.categories.contains(category)) {
            this.categories.add(category);
            category.addConstraint(this);
            ConstraintRegistry.getInstance().broadcastConstraintChangeEvent(new ConstraintChangeEvent(this, ConstraintChangeEventType.ADDED_CATEGORY, category));
        }
    }

    @Override
    public void removeCategory(Category category) {
        if (this.categories.contains(category)) {
            this.categories.remove(category);
            category.removeConstraint(this);
            ConstraintRegistry.getInstance().broadcastConstraintChangeEvent(new ConstraintChangeEvent(this, ConstraintChangeEventType.REMOVED_CATEGORY, category));
        }
        if (this.categories.isEmpty()) {
            Category defaultCategory = CategoryManager.getInstance().getDefaultCategory();
            this.categories.add(defaultCategory);
            ConstraintRegistry.getInstance().broadcastConstraintChangeEvent(new ConstraintChangeEvent(this, ConstraintChangeEventType.ADDED_CATEGORY, defaultCategory));
        }
    }

    @Override
    public boolean isBatch() {
        return this.getEvaluationMode().isBatch();
    }

    @Override
    public boolean isLive() {
        return this.getEvaluationMode().isLive();
    }

    public final IConstraintDescriptor getDescriptor() {
        return this;
    }

    public int hashCode() {
        return this.getId() == null ? 0 : this.getId().hashCode();
    }

    public boolean equals(Object other) {
        return other instanceof IConstraintDescriptor && ((IConstraintDescriptor)other).getId().equals(this.getId());
    }

    public String toString() {
        StringBuffer result = new StringBuffer(64);
        if (!this.isEnabled()) {
            result.append("Disabled ");
        }
        result.append("Constraint[id=");
        result.append(this.getId());
        result.append(", code=");
        result.append(this.getStatusCode());
        result.append(", severity=");
        result.append((Object)this.getSeverity());
        result.append(", mode=");
        result.append(this.getEvaluationMode());
        result.append(']');
        return result.toString();
    }
}

