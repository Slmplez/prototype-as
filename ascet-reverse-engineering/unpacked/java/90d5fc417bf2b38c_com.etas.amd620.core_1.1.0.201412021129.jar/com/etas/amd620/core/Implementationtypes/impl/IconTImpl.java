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
package com.etas.amd620.core.Implementationtypes.impl;

import com.etas.amd620.core.Implementationtypes.FileReferenceT;
import com.etas.amd620.core.Implementationtypes.IconT;
import com.etas.amd620.core.Implementationtypes.ImplementationtypesPackage;
import com.etas.amd620.core.Implementationtypes.SizeT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class IconTImpl
extends MinimalEObjectImpl.Container
implements IconT {
    protected FileReferenceT iconFile;
    protected SizeT size;
    protected static final String ICON_NAME_EDEFAULT = null;
    protected String iconName = ICON_NAME_EDEFAULT;
    protected static final String ICON_OID_EDEFAULT = null;
    protected String iconOID = ICON_OID_EDEFAULT;

    protected IconTImpl() {
    }

    protected EClass eStaticClass() {
        return ImplementationtypesPackage.Literals.ICON_T;
    }

    @Override
    public FileReferenceT getIconFile() {
        return this.iconFile;
    }

    public NotificationChain basicSetIconFile(FileReferenceT newIconFile, NotificationChain msgs) {
        FileReferenceT oldIconFile = this.iconFile;
        this.iconFile = newIconFile;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldIconFile, (Object)newIconFile);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setIconFile(FileReferenceT newIconFile) {
        if (newIconFile != this.iconFile) {
            NotificationChain msgs = null;
            if (this.iconFile != null) {
                msgs = ((InternalEObject)this.iconFile).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newIconFile != null) {
                msgs = ((InternalEObject)newIconFile).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetIconFile(newIconFile, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newIconFile, (Object)newIconFile));
        }
    }

    @Override
    public SizeT getSize() {
        return this.size;
    }

    public NotificationChain basicSetSize(SizeT newSize, NotificationChain msgs) {
        SizeT oldSize = this.size;
        this.size = newSize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldSize, (Object)newSize);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSize(SizeT newSize) {
        if (newSize != this.size) {
            NotificationChain msgs = null;
            if (this.size != null) {
                msgs = ((InternalEObject)this.size).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newSize != null) {
                msgs = ((InternalEObject)newSize).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetSize(newSize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newSize, (Object)newSize));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldIconName, (Object)this.iconName));
        }
    }

    @Override
    public String getIconOID() {
        return this.iconOID;
    }

    @Override
    public void setIconOID(String newIconOID) {
        String oldIconOID = this.iconOID;
        this.iconOID = newIconOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldIconOID, (Object)this.iconOID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetIconFile(null, msgs);
            }
            case 1: {
                return this.basicSetSize(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getIconFile();
            }
            case 1: {
                return this.getSize();
            }
            case 2: {
                return this.getIconName();
            }
            case 3: {
                return this.getIconOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setIconFile((FileReferenceT)newValue);
                return;
            }
            case 1: {
                this.setSize((SizeT)newValue);
                return;
            }
            case 2: {
                this.setIconName((String)newValue);
                return;
            }
            case 3: {
                this.setIconOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setIconFile(null);
                return;
            }
            case 1: {
                this.setSize(null);
                return;
            }
            case 2: {
                this.setIconName(ICON_NAME_EDEFAULT);
                return;
            }
            case 3: {
                this.setIconOID(ICON_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.iconFile != null;
            }
            case 1: {
                return this.size != null;
            }
            case 2: {
                return ICON_NAME_EDEFAULT == null ? this.iconName != null : !ICON_NAME_EDEFAULT.equals(this.iconName);
            }
            case 3: {
                return ICON_OID_EDEFAULT == null ? this.iconOID != null : !ICON_OID_EDEFAULT.equals(this.iconOID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (iconName: ");
        result.append(this.iconName);
        result.append(", iconOID: ");
        result.append(this.iconOID);
        result.append(')');
        return result.toString();
    }
}

