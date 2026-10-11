/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.validation.internal.modeled.model.validation.Binding;
import org.eclipse.emf.validation.internal.modeled.model.validation.ClientContext;
import org.eclipse.emf.validation.internal.modeled.model.validation.ConstraintBindingsBundle;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ConstraintBindingsBundleImpl
extends EObjectImpl
implements ConstraintBindingsBundle {
    protected EList<ClientContext> clientContexts;
    protected EList<Binding> bindings;

    protected ConstraintBindingsBundleImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.CONSTRAINT_BINDINGS_BUNDLE;
    }

    @Override
    public EList<ClientContext> getClientContexts() {
        if (this.clientContexts == null) {
            this.clientContexts = new EObjectContainmentEList(ClientContext.class, (InternalEObject)this, 0);
        }
        return this.clientContexts;
    }

    @Override
    public EList<Binding> getBindings() {
        if (this.bindings == null) {
            this.bindings = new EObjectContainmentEList(Binding.class, (InternalEObject)this, 1);
        }
        return this.bindings;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getClientContexts()).basicRemove((Object)otherEnd, msgs);
            }
            case 1: {
                return ((InternalEList)this.getBindings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getClientContexts();
            }
            case 1: {
                return this.getBindings();
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
                this.getBindings().clear();
                this.getBindings().addAll((Collection)newValue);
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
                this.getBindings().clear();
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
                return this.bindings != null && !this.bindings.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

