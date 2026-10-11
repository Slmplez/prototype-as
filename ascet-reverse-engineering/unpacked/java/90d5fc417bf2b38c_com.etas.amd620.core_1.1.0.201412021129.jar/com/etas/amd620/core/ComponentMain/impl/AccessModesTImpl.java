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
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.AccessModesT;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class AccessModesTImpl
extends MinimalEObjectImpl.Container
implements AccessModesT {
    protected static final boolean IMPORT_EDEFAULT = false;
    protected boolean import_ = false;
    protected boolean importESet;
    protected static final boolean READ_EDEFAULT = false;
    protected boolean read = false;
    protected boolean readESet;
    protected static final boolean WRITE_EDEFAULT = false;
    protected boolean write = false;
    protected boolean writeESet;

    protected AccessModesTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.ACCESS_MODES_T;
    }

    @Override
    public boolean isImport() {
        return this.import_;
    }

    @Override
    public void setImport(boolean newImport) {
        boolean oldImport = this.import_;
        this.import_ = newImport;
        boolean oldImportESet = this.importESet;
        this.importESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, oldImport, this.import_, !oldImportESet));
        }
    }

    @Override
    public void unsetImport() {
        boolean oldImport = this.import_;
        boolean oldImportESet = this.importESet;
        this.import_ = false;
        this.importESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 0, oldImport, false, oldImportESet));
        }
    }

    @Override
    public boolean isSetImport() {
        return this.importESet;
    }

    @Override
    public boolean isRead() {
        return this.read;
    }

    @Override
    public void setRead(boolean newRead) {
        boolean oldRead = this.read;
        this.read = newRead;
        boolean oldReadESet = this.readESet;
        this.readESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, oldRead, this.read, !oldReadESet));
        }
    }

    @Override
    public void unsetRead() {
        boolean oldRead = this.read;
        boolean oldReadESet = this.readESet;
        this.read = false;
        this.readESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 1, oldRead, false, oldReadESet));
        }
    }

    @Override
    public boolean isSetRead() {
        return this.readESet;
    }

    @Override
    public boolean isWrite() {
        return this.write;
    }

    @Override
    public void setWrite(boolean newWrite) {
        boolean oldWrite = this.write;
        this.write = newWrite;
        boolean oldWriteESet = this.writeESet;
        this.writeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, oldWrite, this.write, !oldWriteESet));
        }
    }

    @Override
    public void unsetWrite() {
        boolean oldWrite = this.write;
        boolean oldWriteESet = this.writeESet;
        this.write = false;
        this.writeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 2, oldWrite, false, oldWriteESet));
        }
    }

    @Override
    public boolean isSetWrite() {
        return this.writeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.isImport();
            }
            case 1: {
                return this.isRead();
            }
            case 2: {
                return this.isWrite();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setImport((Boolean)newValue);
                return;
            }
            case 1: {
                this.setRead((Boolean)newValue);
                return;
            }
            case 2: {
                this.setWrite((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.unsetImport();
                return;
            }
            case 1: {
                this.unsetRead();
                return;
            }
            case 2: {
                this.unsetWrite();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.isSetImport();
            }
            case 1: {
                return this.isSetRead();
            }
            case 2: {
                return this.isSetWrite();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (import: ");
        if (this.importESet) {
            result.append(this.import_);
        } else {
            result.append("<unset>");
        }
        result.append(", read: ");
        if (this.readESet) {
            result.append(this.read);
        } else {
            result.append("<unset>");
        }
        result.append(", write: ");
        if (this.writeESet) {
            result.append(this.write);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

