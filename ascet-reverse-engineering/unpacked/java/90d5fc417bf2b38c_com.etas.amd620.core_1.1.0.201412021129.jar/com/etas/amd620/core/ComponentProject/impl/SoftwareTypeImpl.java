/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.SoftwareType;
import com.etas.amd620.core.ComponentProject.impl.TaskSwBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SoftwareTypeImpl
extends TaskSwBaseTImpl
implements SoftwareType {
    protected static final boolean AUTOSTART_EDEFAULT = false;
    protected boolean autostart = false;
    protected boolean autostartESet;

    protected SoftwareTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.SOFTWARE_TYPE;
    }

    @Override
    public boolean isAutostart() {
        return this.autostart;
    }

    @Override
    public void setAutostart(boolean newAutostart) {
        boolean oldAutostart = this.autostart;
        this.autostart = newAutostart;
        boolean oldAutostartESet = this.autostartESet;
        this.autostartESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, oldAutostart, this.autostart, !oldAutostartESet));
        }
    }

    @Override
    public void unsetAutostart() {
        boolean oldAutostart = this.autostart;
        boolean oldAutostartESet = this.autostartESet;
        this.autostart = false;
        this.autostartESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, oldAutostart, false, oldAutostartESet));
        }
    }

    @Override
    public boolean isSetAutostart() {
        return this.autostartESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.isAutostart();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setAutostart((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetAutostart();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetAutostart();
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
        result.append(" (autostart: ");
        if (this.autostartESet) {
            result.append(this.autostart);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

