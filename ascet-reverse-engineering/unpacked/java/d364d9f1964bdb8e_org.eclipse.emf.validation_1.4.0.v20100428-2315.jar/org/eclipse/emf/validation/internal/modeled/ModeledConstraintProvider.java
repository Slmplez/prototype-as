/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.internal.modeled;

import java.util.ArrayList;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.internal.modeled.model.validation.Constraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.ConstraintProvider;
import org.eclipse.emf.validation.internal.modeled.model.validation.Constraints;
import org.eclipse.emf.validation.internal.modeled.model.validation.ModeEnum;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.ConstraintFactory;
import org.eclipse.emf.validation.service.ConstraintRegistry;
import org.eclipse.emf.validation.service.IConstraintDescriptor;
import org.eclipse.emf.validation.service.IModelConstraintProvider;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModeledConstraintProvider
implements IModelConstraintProvider {
    private ConstraintProvider provider;
    private ArrayList<IModelConstraint> constraints = null;

    public void setConstraintProviderModel(ConstraintProvider provider) {
        this.provider = provider;
    }

    @Override
    public Collection<IModelConstraint> getBatchConstraints(EObject eObject, Collection<IModelConstraint> ret) {
        if (ret == null) {
            ret = new ArrayList<IModelConstraint>();
        }
        if (this.constraints == null) {
            this.constraints = new ArrayList(this.provider.getConstraints().size());
            ConstraintFactory factory = ConstraintFactory.getInstance();
            for (Constraints cons : this.provider.getConstraints()) {
                for (Constraint constraint : cons.getConstraints()) {
                    IConstraintDescriptor descriptor = ConstraintRegistry.getInstance().getDescriptor(this.provider.getPluginId(), constraint.getId());
                    assert (descriptor != null);
                    this.constraints.add(factory.newConstraint(descriptor));
                }
            }
            this.constraints.trimToSize();
        }
        ret.addAll(this.constraints);
        return ret;
    }

    @Override
    public Collection<IModelConstraint> getLiveConstraints(Notification notification, Collection<IModelConstraint> constraints) {
        return null;
    }

    public ConstraintProvider getModel() {
        return this.provider;
    }

    public boolean isLive() {
        return ModeEnum.LIVE.equals((Object)this.provider.getMode());
    }
}

