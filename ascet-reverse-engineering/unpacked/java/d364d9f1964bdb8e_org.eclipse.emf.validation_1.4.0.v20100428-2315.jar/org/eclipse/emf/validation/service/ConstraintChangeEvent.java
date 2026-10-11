/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.service;

import org.eclipse.emf.validation.model.Category;
import org.eclipse.emf.validation.service.ConstraintChangeEventType;
import org.eclipse.emf.validation.service.IConstraintDescriptor;

public class ConstraintChangeEvent {
    private IConstraintDescriptor constraint;
    private ConstraintChangeEventType eventType;
    private Category category;

    public ConstraintChangeEvent(IConstraintDescriptor constraint, ConstraintChangeEventType eventType, Category category) {
        this.constraint = constraint;
        this.eventType = eventType;
        this.category = category;
    }

    public ConstraintChangeEvent(IConstraintDescriptor constraint, ConstraintChangeEventType eventType) {
        this(constraint, eventType, null);
    }

    public IConstraintDescriptor getConstraint() {
        return this.constraint;
    }

    public ConstraintChangeEventType getEventType() {
        return this.eventType;
    }

    public Category getCategory() {
        return this.category;
    }

    void setConstraint(IConstraintDescriptor constraint) {
        this.constraint = constraint;
    }
}

