/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.Asap2ItemType;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.FileReferenceT;
import com.etas.amd620.core.ComponentMain.impl.ItemTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class Asap2ItemTypeImpl
extends ItemTImpl
implements Asap2ItemType {
    protected FileReferenceT file;
    protected static final String ORIGINAL_LOCATION_EDEFAULT = null;
    protected String originalLocation = ORIGINAL_LOCATION_EDEFAULT;

    protected Asap2ItemTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.ASAP2_ITEM_TYPE;
    }

    @Override
    public FileReferenceT getFile() {
        return this.file;
    }

    public NotificationChain basicSetFile(FileReferenceT newFile, NotificationChain msgs) {
        FileReferenceT oldFile = this.file;
        this.file = newFile;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldFile, (Object)newFile);
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
                msgs = ((InternalEObject)this.file).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newFile != null) {
                msgs = ((InternalEObject)newFile).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetFile(newFile, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newFile, (Object)newFile));
        }
    }

    @Override
    public String getOriginalLocation() {
        return this.originalLocation;
    }

    @Override
    public void setOriginalLocation(String newOriginalLocation) {
        String oldOriginalLocation = this.originalLocation;
        this.originalLocation = newOriginalLocation;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldOriginalLocation, (Object)this.originalLocation));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 11: {
                return this.basicSetFile(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 11: {
                return this.getFile();
            }
            case 12: {
                return this.getOriginalLocation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 11: {
                this.setFile((FileReferenceT)newValue);
                return;
            }
            case 12: {
                this.setOriginalLocation((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 11: {
                this.setFile(null);
                return;
            }
            case 12: {
                this.setOriginalLocation(ORIGINAL_LOCATION_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 11: {
                return this.file != null;
            }
            case 12: {
                return ORIGINAL_LOCATION_EDEFAULT == null ? this.originalLocation != null : !ORIGINAL_LOCATION_EDEFAULT.equals(this.originalLocation);
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
        result.append(" (originalLocation: ");
        result.append(this.originalLocation);
        result.append(')');
        return result.toString();
    }
}

