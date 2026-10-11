/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.service;

import org.eclipse.emf.validation.internal.util.DisabledConstraint;
import org.eclipse.emf.validation.internal.util.XmlConstraintFactory;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IConstraintDescriptor;
import org.eclipse.emf.validation.xml.IXmlConstraintDescriptor;

public abstract class ConstraintFactory {
    private static ConstraintFactory instance = new XmlConstraintFactory();

    protected ConstraintFactory() {
    }

    public static ConstraintFactory getInstance() {
        return instance;
    }

    @Deprecated
    public final IModelConstraint newConstraint(IXmlConstraintDescriptor descriptor) {
        if (descriptor.isError()) {
            return new DisabledConstraint(descriptor, descriptor.getException());
        }
        return this.createConstraint(descriptor);
    }

    @Deprecated
    protected abstract IModelConstraint createConstraint(IXmlConstraintDescriptor var1);

    public final IModelConstraint newConstraint(IConstraintDescriptor descriptor) {
        if (descriptor.isError()) {
            return new DisabledConstraint(descriptor, descriptor.getException());
        }
        return this.createConstraint(descriptor);
    }

    protected abstract IModelConstraint createConstraint(IConstraintDescriptor var1);
}

