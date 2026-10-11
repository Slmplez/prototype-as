/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.Event;
import org.eclipse.emf.validation.internal.modeled.model.validation.EventTypesEnum;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.TargetImpl;

public class EventImpl
extends TargetImpl
implements Event {
    protected static final EventTypesEnum NAME_EDEFAULT = EventTypesEnum.ADD;
    protected EventTypesEnum name = NAME_EDEFAULT;

    protected EventImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.EVENT;
    }

    public EventTypesEnum getName() {
        return this.name;
    }

    public void setName(EventTypesEnum newName) {
        EventTypesEnum oldName = this.name;
        EventTypesEnum eventTypesEnum = this.name = newName == null ? NAME_EDEFAULT : newName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldName, (Object)this.name));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 2: {
                return this.getName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 2: {
                this.setName((EventTypesEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 2: {
                this.setName(NAME_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 2: {
                return this.name != NAME_EDEFAULT;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (name: ");
        result.append((Object)this.name);
        result.append(')');
        return result.toString();
    }
}

