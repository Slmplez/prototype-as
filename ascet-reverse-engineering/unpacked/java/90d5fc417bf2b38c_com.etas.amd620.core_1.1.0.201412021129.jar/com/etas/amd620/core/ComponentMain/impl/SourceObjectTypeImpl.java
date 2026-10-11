/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.InternalAccessType;
import com.etas.amd620.core.ComponentMain.SourceObjectType;
import com.etas.amd620.core.ComponentMain.impl.MappingItemTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SourceObjectTypeImpl
extends MappingItemTImpl
implements SourceObjectType {
    protected static final InternalAccessType INTERNAL_ACCESS_EDEFAULT = InternalAccessType.SEND;
    protected InternalAccessType internalAccess = INTERNAL_ACCESS_EDEFAULT;
    protected boolean internalAccessESet;

    protected SourceObjectTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.SOURCE_OBJECT_TYPE;
    }

    @Override
    public InternalAccessType getInternalAccess() {
        return this.internalAccess;
    }

    @Override
    public void setInternalAccess(InternalAccessType newInternalAccess) {
        InternalAccessType oldInternalAccess = this.internalAccess;
        this.internalAccess = newInternalAccess == null ? INTERNAL_ACCESS_EDEFAULT : newInternalAccess;
        boolean oldInternalAccessESet = this.internalAccessESet;
        this.internalAccessESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldInternalAccess, (Object)this.internalAccess, !oldInternalAccessESet));
        }
    }

    @Override
    public void unsetInternalAccess() {
        InternalAccessType oldInternalAccess = this.internalAccess;
        boolean oldInternalAccessESet = this.internalAccessESet;
        this.internalAccess = INTERNAL_ACCESS_EDEFAULT;
        this.internalAccessESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldInternalAccess, (Object)INTERNAL_ACCESS_EDEFAULT, oldInternalAccessESet));
        }
    }

    @Override
    public boolean isSetInternalAccess() {
        return this.internalAccessESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getInternalAccess();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setInternalAccess((InternalAccessType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetInternalAccess();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetInternalAccess();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (internalAccess: ");
        if (this.internalAccessESet) {
            result.append((Object)this.internalAccess);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

