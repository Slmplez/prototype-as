/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectResolvingEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.validation.internal.modeled.model.validation.Category;
import org.eclipse.emf.validation.internal.modeled.model.validation.Constraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.Constraints;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ConstraintsImpl
extends EObjectImpl
implements Constraints {
    protected EList<Constraint> constraints;
    protected EList<String> include;
    protected EList<Category> categories;

    protected ConstraintsImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.CONSTRAINTS;
    }

    @Override
    public EList<Constraint> getConstraints() {
        if (this.constraints == null) {
            this.constraints = new EObjectContainmentEList(Constraint.class, (InternalEObject)this, 0);
        }
        return this.constraints;
    }

    @Override
    public EList<String> getInclude() {
        if (this.include == null) {
            this.include = new EDataTypeUniqueEList(String.class, (InternalEObject)this, 1);
        }
        return this.include;
    }

    @Override
    public EList<Category> getCategories() {
        if (this.categories == null) {
            this.categories = new EObjectResolvingEList(Category.class, (InternalEObject)this, 2);
        }
        return this.categories;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getConstraints()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getConstraints();
            }
            case 1: {
                return this.getInclude();
            }
            case 2: {
                return this.getCategories();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getConstraints().clear();
                this.getConstraints().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.getInclude().clear();
                this.getInclude().addAll((Collection)newValue);
                return;
            }
            case 2: {
                this.getCategories().clear();
                this.getCategories().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getConstraints().clear();
                return;
            }
            case 1: {
                this.getInclude().clear();
                return;
            }
            case 2: {
                this.getCategories().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.constraints != null && !this.constraints.isEmpty();
            }
            case 1: {
                return this.include != null && !this.include.isEmpty();
            }
            case 2: {
                return this.categories != null && !this.categories.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (include: ");
        result.append(this.include);
        result.append(')');
        return result.toString();
    }
}

