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
import com.etas.amd620.core.ComponentMain.GenericComponentT;
import com.etas.amd620.core.ComponentMain.impl.ComponentTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class GenericComponentTImpl
extends ComponentTImpl
implements GenericComponentT {
    protected static final String FACTORY_KEY_EDEFAULT = null;
    protected String factoryKey = FACTORY_KEY_EDEFAULT;
    protected static final String ICON_NAME_EDEFAULT = null;
    protected String iconName = ICON_NAME_EDEFAULT;

    protected GenericComponentTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.GENERIC_COMPONENT_T;
    }

    @Override
    public String getFactoryKey() {
        return this.factoryKey;
    }

    @Override
    public void setFactoryKey(String newFactoryKey) {
        String oldFactoryKey = this.factoryKey;
        this.factoryKey = newFactoryKey;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldFactoryKey, (Object)this.factoryKey));
        }
    }

    @Override
    public String getIconName() {
        return this.iconName;
    }

    @Override
    public void setIconName(String newIconName) {
        String oldIconName = this.iconName;
        this.iconName = newIconName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldIconName, (Object)this.iconName));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getFactoryKey();
            }
            case 20: {
                return this.getIconName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setFactoryKey((String)newValue);
                return;
            }
            case 20: {
                this.setIconName((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.setFactoryKey(FACTORY_KEY_EDEFAULT);
                return;
            }
            case 20: {
                this.setIconName(ICON_NAME_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return FACTORY_KEY_EDEFAULT == null ? this.factoryKey != null : !FACTORY_KEY_EDEFAULT.equals(this.factoryKey);
            }
            case 20: {
                return ICON_NAME_EDEFAULT == null ? this.iconName != null : !ICON_NAME_EDEFAULT.equals(this.iconName);
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
        result.append(" (factoryKey: ");
        result.append(this.factoryKey);
        result.append(", iconName: ");
        result.append(this.iconName);
        result.append(')');
        return result.toString();
    }
}

