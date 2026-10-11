/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.internal.service;

import java.util.ArrayList;
import java.util.Collection;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.service.AbstractValidationContext;
import org.eclipse.emf.validation.internal.service.IProviderOperation;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IModelConstraintProvider;
import org.eclipse.emf.validation.util.FilteredCollection;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractGetConstraintsOperation
implements IProviderOperation<Collection<IModelConstraint>> {
    private EObject eObject;
    private final Collection<IModelConstraint> myConstraints = new ArrayList<IModelConstraint>();
    private Collection<IModelConstraint> filteredConstraints;
    private AbstractValidationContext context;

    protected final void setTarget(EObject eObject) {
        assert (eObject != null);
        this.eObject = eObject;
        this.myConstraints.clear();
    }

    @Override
    public final EObject getEObject() {
        return this.eObject;
    }

    final AbstractValidationContext getContext() {
        this.maybeInitializeContext();
        return this.context;
    }

    private void maybeInitializeContext() {
        if (this.context == null) {
            this.context = this.createContext();
            this.filteredConstraints = new FilteredCollection<IModelConstraint>(this.getUnfilteredConstraints(), this.context.getConstraintFilter());
        }
    }

    @Override
    public final Collection<IModelConstraint> getConstraints() {
        return this.filteredConstraints;
    }

    protected Collection<IModelConstraint> getUnfilteredConstraints() {
        return this.myConstraints;
    }

    @Override
    public Collection<IModelConstraint> execute(IModelConstraintProvider provider) {
        Trace.entering(EMFModelValidationDebugOptions.PROVIDERS, this.getClass(), "execute", provider);
        this.maybeInitializeContext();
        this.executeImpl(provider, this.getUnfilteredConstraints());
        Trace.exiting(EMFModelValidationDebugOptions.PROVIDERS, this.getClass(), "execute");
        return this.getUnfilteredConstraints();
    }

    protected abstract AbstractValidationContext createContext();

    protected abstract void executeImpl(IModelConstraintProvider var1, Collection<IModelConstraint> var2);
}

