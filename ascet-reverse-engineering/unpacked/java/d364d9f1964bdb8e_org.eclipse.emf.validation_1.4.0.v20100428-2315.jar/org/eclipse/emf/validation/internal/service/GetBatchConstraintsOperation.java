/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.internal.service;

import java.util.Collection;
import org.eclipse.emf.validation.internal.service.AbstractGetConstraintsOperation;
import org.eclipse.emf.validation.internal.service.AbstractValidationContext;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IModelConstraintProvider;
import org.eclipse.emf.validation.util.FilteredCollection;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GetBatchConstraintsOperation
extends AbstractGetConstraintsOperation {
    private final boolean batchOnly;

    public GetBatchConstraintsOperation(boolean batchOnly) {
        this.batchOnly = batchOnly;
    }

    @Override
    protected void executeImpl(IModelConstraintProvider provider, Collection<IModelConstraint> constraints) {
        assert (provider != null);
        provider.getBatchConstraints(this.getEObject(), constraints);
    }

    @Override
    protected AbstractValidationContext createContext() {
        return new AbstractValidationContext(this){

            @Override
            public FilteredCollection.Filter<IModelConstraint> getConstraintFilter() {
                if (!GetBatchConstraintsOperation.this.batchOnly) {
                    return super.getConstraintFilter();
                }
                /*
                 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
                 */
                class BatchOnlyFilter
                implements FilteredCollection.Filter<IModelConstraint> {
                    private final FilteredCollection.Filter<IModelConstraint> delegate;

                    BatchOnlyFilter(FilteredCollection.Filter<IModelConstraint> delegate) {
                        this.delegate = delegate;
                    }

                    @Override
                    public boolean accept(IModelConstraint element) {
                        return element.getDescriptor().getEvaluationMode().isBatchOnly() && this.delegate.accept(element);
                    }
                }
                return new BatchOnlyFilter(super.getConstraintFilter());
            }
        };
    }
}

