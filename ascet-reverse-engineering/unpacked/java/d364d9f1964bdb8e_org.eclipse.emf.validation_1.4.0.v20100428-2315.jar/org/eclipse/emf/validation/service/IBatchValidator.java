/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.service;

import java.util.Collection;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.service.ITraversalStrategy;
import org.eclipse.emf.validation.service.IValidator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IBatchValidator
extends IValidator<EObject> {
    public static final IValidator.Option<Boolean> OPTION_INCLUDE_LIVE_CONSTRAINTS = IValidator.Option.make(false);
    public static final IValidator.Option<ITraversalStrategy> OPTION_TRAVERSAL_STRATEGY = new IValidator.Option<ITraversalStrategy>(null){

        @Override
        public ITraversalStrategy defaultValue(IValidator<?> validator) {
            return ((IBatchValidator)validator).getDefaultTraversalStrategy();
        }
    };
    public static final IValidator.Option<Boolean> OPTION_TRACK_RESOURCES = IValidator.Option.make(false);

    public boolean isIncludeLiveConstraints();

    public void setIncludeLiveConstraints(boolean var1);

    public ITraversalStrategy getTraversalStrategy();

    public void setTraversalStrategy(ITraversalStrategy var1);

    public ITraversalStrategy getDefaultTraversalStrategy();

    public IStatus validate(EObject var1, IProgressMonitor var2);

    public IStatus validate(Collection<? extends EObject> var1, IProgressMonitor var2);

    @Override
    public IStatus validate(EObject var1);

    @Override
    public IStatus validate(Collection<? extends EObject> var1);
}

