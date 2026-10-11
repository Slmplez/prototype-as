/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.util.EObjectResolvingEList
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;
import org.eclipse.emf.validation.internal.modeled.model.validation.TraversalStrategy;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TraversalStrategyImpl
extends EObjectImpl
implements TraversalStrategy {
    protected static final String CLASS_EDEFAULT = null;
    protected String class_ = CLASS_EDEFAULT;
    protected EList<EPackage> package_;

    protected TraversalStrategyImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.TRAVERSAL_STRATEGY;
    }

    @Override
    public String getClass_() {
        return this.class_;
    }

    @Override
    public void setClass(String newClass) {
        String oldClass = this.class_;
        this.class_ = newClass;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldClass, (Object)this.class_));
        }
    }

    @Override
    public EList<EPackage> getPackage() {
        if (this.package_ == null) {
            this.package_ = new EObjectResolvingEList(EPackage.class, (InternalEObject)this, 1);
        }
        return this.package_;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getClass_();
            }
            case 1: {
                return this.getPackage();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setClass((String)newValue);
                return;
            }
            case 1: {
                this.getPackage().clear();
                this.getPackage().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setClass(CLASS_EDEFAULT);
                return;
            }
            case 1: {
                this.getPackage().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return CLASS_EDEFAULT == null ? this.class_ != null : !CLASS_EDEFAULT.equals(this.class_);
            }
            case 1: {
                return this.package_ != null && !this.package_.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (class: ");
        result.append(this.class_);
        result.append(')');
        return result.toString();
    }
}

