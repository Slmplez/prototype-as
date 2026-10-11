/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.OperationModeT;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class OperationModeTImpl
extends MinimalEObjectImpl.Container
implements OperationModeT {
    protected static final BigInteger ID_EDEFAULT = null;
    protected BigInteger id = ID_EDEFAULT;
    protected static final boolean IS_CT_MODE_EDEFAULT = false;
    protected boolean isCTMode = false;
    protected boolean isCTModeESet;
    protected static final boolean IS_START_MODE_EDEFAULT = false;
    protected boolean isStartMode = false;
    protected boolean isStartModeESet;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;

    protected OperationModeTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.OPERATION_MODE_T;
    }

    @Override
    public BigInteger getId() {
        return this.id;
    }

    @Override
    public void setId(BigInteger newId) {
        BigInteger oldId = this.id;
        this.id = newId;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldId, (Object)this.id));
        }
    }

    @Override
    public boolean isIsCTMode() {
        return this.isCTMode;
    }

    @Override
    public void setIsCTMode(boolean newIsCTMode) {
        boolean oldIsCTMode = this.isCTMode;
        this.isCTMode = newIsCTMode;
        boolean oldIsCTModeESet = this.isCTModeESet;
        this.isCTModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, oldIsCTMode, this.isCTMode, !oldIsCTModeESet));
        }
    }

    @Override
    public void unsetIsCTMode() {
        boolean oldIsCTMode = this.isCTMode;
        boolean oldIsCTModeESet = this.isCTModeESet;
        this.isCTMode = false;
        this.isCTModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 1, oldIsCTMode, false, oldIsCTModeESet));
        }
    }

    @Override
    public boolean isSetIsCTMode() {
        return this.isCTModeESet;
    }

    @Override
    public boolean isIsStartMode() {
        return this.isStartMode;
    }

    @Override
    public void setIsStartMode(boolean newIsStartMode) {
        boolean oldIsStartMode = this.isStartMode;
        this.isStartMode = newIsStartMode;
        boolean oldIsStartModeESet = this.isStartModeESet;
        this.isStartModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, oldIsStartMode, this.isStartMode, !oldIsStartModeESet));
        }
    }

    @Override
    public void unsetIsStartMode() {
        boolean oldIsStartMode = this.isStartMode;
        boolean oldIsStartModeESet = this.isStartModeESet;
        this.isStartMode = false;
        this.isStartModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 2, oldIsStartMode, false, oldIsStartModeESet));
        }
    }

    @Override
    public boolean isSetIsStartMode() {
        return this.isStartModeESet;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldName, (Object)this.name));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getId();
            }
            case 1: {
                return this.isIsCTMode();
            }
            case 2: {
                return this.isIsStartMode();
            }
            case 3: {
                return this.getName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setId((BigInteger)newValue);
                return;
            }
            case 1: {
                this.setIsCTMode((Boolean)newValue);
                return;
            }
            case 2: {
                this.setIsStartMode((Boolean)newValue);
                return;
            }
            case 3: {
                this.setName((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setId(ID_EDEFAULT);
                return;
            }
            case 1: {
                this.unsetIsCTMode();
                return;
            }
            case 2: {
                this.unsetIsStartMode();
                return;
            }
            case 3: {
                this.setName(NAME_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return ID_EDEFAULT == null ? this.id != null : !ID_EDEFAULT.equals(this.id);
            }
            case 1: {
                return this.isSetIsCTMode();
            }
            case 2: {
                return this.isSetIsStartMode();
            }
            case 3: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (id: ");
        result.append(this.id);
        result.append(", isCTMode: ");
        if (this.isCTModeESet) {
            result.append(this.isCTMode);
        } else {
            result.append("<unset>");
        }
        result.append(", isStartMode: ");
        if (this.isStartModeESet) {
            result.append(this.isStartMode);
        } else {
            result.append("<unset>");
        }
        result.append(", name: ");
        result.append(this.name);
        result.append(')');
        return result.toString();
    }
}

