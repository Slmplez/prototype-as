/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.Parser;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;

public class ParserImpl
extends EObjectImpl
implements Parser {
    protected static final String LANGUAGE_EDEFAULT = null;
    protected String language = LANGUAGE_EDEFAULT;
    protected static final String CLASS_NAME_EDEFAULT = null;
    protected String className = CLASS_NAME_EDEFAULT;

    protected ParserImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.PARSER;
    }

    public String getLanguage() {
        return this.language;
    }

    public void setLanguage(String newLanguage) {
        String oldLanguage = this.language;
        this.language = newLanguage;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldLanguage, (Object)this.language));
        }
    }

    public String getClassName() {
        return this.className;
    }

    public void setClassName(String newClassName) {
        String oldClassName = this.className;
        this.className = newClassName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldClassName, (Object)this.className));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getLanguage();
            }
            case 1: {
                return this.getClassName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setLanguage((String)newValue);
                return;
            }
            case 1: {
                this.setClassName((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setLanguage(LANGUAGE_EDEFAULT);
                return;
            }
            case 1: {
                this.setClassName(CLASS_NAME_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return LANGUAGE_EDEFAULT == null ? this.language != null : !LANGUAGE_EDEFAULT.equals(this.language);
            }
            case 1: {
                return CLASS_NAME_EDEFAULT == null ? this.className != null : !CLASS_NAME_EDEFAULT.equals(this.className);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (language: ");
        result.append(this.language);
        result.append(", className: ");
        result.append(this.className);
        result.append(')');
        return result.toString();
    }
}

