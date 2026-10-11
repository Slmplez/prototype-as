/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.util.EObjectResolvingEList
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import java.util.Collection;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;
import org.eclipse.emf.validation.internal.modeled.model.validation.Binding;
import org.eclipse.emf.validation.internal.modeled.model.validation.Category;
import org.eclipse.emf.validation.internal.modeled.model.validation.ClientContext;
import org.eclipse.emf.validation.internal.modeled.model.validation.Constraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BindingImpl
extends EObjectImpl
implements Binding {
    protected EList<ClientContext> clientContexts;
    protected EList<Constraint> constraints;
    protected EList<Constraint> excludedConstraints;
    protected EList<Category> categories;
    protected EList<Category> excludedCategories;

    protected BindingImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.BINDING;
    }

    @Override
    public EList<ClientContext> getClientContexts() {
        if (this.clientContexts == null) {
            this.clientContexts = new EObjectResolvingEList(ClientContext.class, (InternalEObject)this, 0);
        }
        return this.clientContexts;
    }

    @Override
    public EList<Constraint> getConstraints() {
        if (this.constraints == null) {
            this.constraints = new EObjectResolvingEList(Constraint.class, (InternalEObject)this, 1);
        }
        return this.constraints;
    }

    @Override
    public EList<Constraint> getExcludedConstraints() {
        if (this.excludedConstraints == null) {
            this.excludedConstraints = new EObjectResolvingEList(Constraint.class, (InternalEObject)this, 2);
        }
        return this.excludedConstraints;
    }

    @Override
    public EList<Category> getCategories() {
        if (this.categories == null) {
            this.categories = new EObjectResolvingEList(Category.class, (InternalEObject)this, 3);
        }
        return this.categories;
    }

    @Override
    public EList<Category> getExcludedCategories() {
        if (this.excludedCategories == null) {
            this.excludedCategories = new EObjectResolvingEList(Category.class, (InternalEObject)this, 4);
        }
        return this.excludedCategories;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getClientContexts();
            }
            case 1: {
                return this.getConstraints();
            }
            case 2: {
                return this.getExcludedConstraints();
            }
            case 3: {
                return this.getCategories();
            }
            case 4: {
                return this.getExcludedCategories();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getClientContexts().clear();
                this.getClientContexts().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.getConstraints().clear();
                this.getConstraints().addAll((Collection)newValue);
                return;
            }
            case 2: {
                this.getExcludedConstraints().clear();
                this.getExcludedConstraints().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.getCategories().clear();
                this.getCategories().addAll((Collection)newValue);
                return;
            }
            case 4: {
                this.getExcludedCategories().clear();
                this.getExcludedCategories().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getClientContexts().clear();
                return;
            }
            case 1: {
                this.getConstraints().clear();
                return;
            }
            case 2: {
                this.getExcludedConstraints().clear();
                return;
            }
            case 3: {
                this.getCategories().clear();
                return;
            }
            case 4: {
                this.getExcludedCategories().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.clientContexts != null && !this.clientContexts.isEmpty();
            }
            case 1: {
                return this.constraints != null && !this.constraints.isEmpty();
            }
            case 2: {
                return this.excludedConstraints != null && !this.excludedConstraints.isEmpty();
            }
            case 3: {
                return this.categories != null && !this.categories.isEmpty();
            }
            case 4: {
                return this.excludedCategories != null && !this.excludedCategories.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

