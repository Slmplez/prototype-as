/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.FileReferenceT;
import com.etas.amd620.core.ComponentSpecification.HeaderFileType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class HeaderFileTypeImpl
extends MinimalEObjectImpl.Container
implements HeaderFileType {
    protected FileReferenceT file;
    protected static final boolean USE_GLOBAL_EDEFAULT = false;
    protected boolean useGlobal = false;
    protected boolean useGlobalESet;

    protected HeaderFileTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getHeaderFileType();
    }

    @Override
    public FileReferenceT getFile() {
        return this.file;
    }

    public NotificationChain basicSetFile(FileReferenceT newFile, NotificationChain msgs) {
        FileReferenceT oldFile = this.file;
        this.file = newFile;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldFile, (Object)newFile);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFile(FileReferenceT newFile) {
        if (newFile != this.file) {
            NotificationChain msgs = null;
            if (this.file != null) {
                msgs = ((InternalEObject)this.file).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newFile != null) {
                msgs = ((InternalEObject)newFile).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetFile(newFile, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newFile, (Object)newFile));
        }
    }

    @Override
    public boolean isUseGlobal() {
        return this.useGlobal;
    }

    @Override
    public void setUseGlobal(boolean newUseGlobal) {
        boolean oldUseGlobal = this.useGlobal;
        this.useGlobal = newUseGlobal;
        boolean oldUseGlobalESet = this.useGlobalESet;
        this.useGlobalESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, oldUseGlobal, this.useGlobal, !oldUseGlobalESet));
        }
    }

    @Override
    public void unsetUseGlobal() {
        boolean oldUseGlobal = this.useGlobal;
        boolean oldUseGlobalESet = this.useGlobalESet;
        this.useGlobal = false;
        this.useGlobalESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 1, oldUseGlobal, false, oldUseGlobalESet));
        }
    }

    @Override
    public boolean isSetUseGlobal() {
        return this.useGlobalESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetFile(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getFile();
            }
            case 1: {
                return this.isUseGlobal();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setFile((FileReferenceT)newValue);
                return;
            }
            case 1: {
                this.setUseGlobal((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setFile(null);
                return;
            }
            case 1: {
                this.unsetUseGlobal();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.file != null;
            }
            case 1: {
                return this.isSetUseGlobal();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (useGlobal: ");
        if (this.useGlobalESet) {
            result.append(this.useGlobal);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

