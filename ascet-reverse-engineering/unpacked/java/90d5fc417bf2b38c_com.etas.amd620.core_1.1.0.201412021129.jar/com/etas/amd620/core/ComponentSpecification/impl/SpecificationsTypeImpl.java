/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.EventSpecificationT;
import com.etas.amd620.core.ComponentSpecification.FileListSpecificationT;
import com.etas.amd620.core.ComponentSpecification.LayoutT;
import com.etas.amd620.core.ComponentSpecification.SpecificationType;
import com.etas.amd620.core.ComponentSpecification.SpecificationsType;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;
import org.w3._2000._09.xmldsig.SignatureType;

public class SpecificationsTypeImpl
extends MinimalEObjectImpl.Container
implements SpecificationsType {
    protected LayoutT layout;
    protected EList<SpecificationType> specification;
    protected EventSpecificationT eventSpecification;
    protected FileListSpecificationT fileListSpecification;
    protected SignatureType signature;
    protected static final String SCHEMA_VERSION_EDEFAULT = null;
    protected String schemaVersion = SCHEMA_VERSION_EDEFAULT;
    protected static final String TOOL_VERSION_EDEFAULT = null;
    protected String toolVersion = TOOL_VERSION_EDEFAULT;

    protected SpecificationsTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getSpecificationsType();
    }

    @Override
    public LayoutT getLayout() {
        return this.layout;
    }

    public NotificationChain basicSetLayout(LayoutT newLayout, NotificationChain msgs) {
        LayoutT oldLayout = this.layout;
        this.layout = newLayout;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldLayout, (Object)newLayout);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLayout(LayoutT newLayout) {
        if (newLayout != this.layout) {
            NotificationChain msgs = null;
            if (this.layout != null) {
                msgs = ((InternalEObject)this.layout).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newLayout != null) {
                msgs = ((InternalEObject)newLayout).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetLayout(newLayout, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newLayout, (Object)newLayout));
        }
    }

    @Override
    public EList<SpecificationType> getSpecification() {
        if (this.specification == null) {
            this.specification = new EObjectContainmentEList(SpecificationType.class, (InternalEObject)this, 1);
        }
        return this.specification;
    }

    @Override
    public EventSpecificationT getEventSpecification() {
        return this.eventSpecification;
    }

    public NotificationChain basicSetEventSpecification(EventSpecificationT newEventSpecification, NotificationChain msgs) {
        EventSpecificationT oldEventSpecification = this.eventSpecification;
        this.eventSpecification = newEventSpecification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldEventSpecification, (Object)newEventSpecification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEventSpecification(EventSpecificationT newEventSpecification) {
        if (newEventSpecification != this.eventSpecification) {
            NotificationChain msgs = null;
            if (this.eventSpecification != null) {
                msgs = ((InternalEObject)this.eventSpecification).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newEventSpecification != null) {
                msgs = ((InternalEObject)newEventSpecification).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetEventSpecification(newEventSpecification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newEventSpecification, (Object)newEventSpecification));
        }
    }

    @Override
    public FileListSpecificationT getFileListSpecification() {
        return this.fileListSpecification;
    }

    public NotificationChain basicSetFileListSpecification(FileListSpecificationT newFileListSpecification, NotificationChain msgs) {
        FileListSpecificationT oldFileListSpecification = this.fileListSpecification;
        this.fileListSpecification = newFileListSpecification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldFileListSpecification, (Object)newFileListSpecification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFileListSpecification(FileListSpecificationT newFileListSpecification) {
        if (newFileListSpecification != this.fileListSpecification) {
            NotificationChain msgs = null;
            if (this.fileListSpecification != null) {
                msgs = ((InternalEObject)this.fileListSpecification).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newFileListSpecification != null) {
                msgs = ((InternalEObject)newFileListSpecification).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetFileListSpecification(newFileListSpecification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newFileListSpecification, (Object)newFileListSpecification));
        }
    }

    @Override
    public SignatureType getSignature() {
        return this.signature;
    }

    public NotificationChain basicSetSignature(SignatureType newSignature, NotificationChain msgs) {
        SignatureType oldSignature = this.signature;
        this.signature = newSignature;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldSignature, (Object)newSignature);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSignature(SignatureType newSignature) {
        if (newSignature != this.signature) {
            NotificationChain msgs = null;
            if (this.signature != null) {
                msgs = ((InternalEObject)this.signature).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newSignature != null) {
                msgs = ((InternalEObject)newSignature).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetSignature(newSignature, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSignature, (Object)newSignature));
        }
    }

    @Override
    public String getSchemaVersion() {
        return this.schemaVersion;
    }

    @Override
    public void setSchemaVersion(String newSchemaVersion) {
        String oldSchemaVersion = this.schemaVersion;
        this.schemaVersion = newSchemaVersion;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSchemaVersion, (Object)this.schemaVersion));
        }
    }

    @Override
    public String getToolVersion() {
        return this.toolVersion;
    }

    @Override
    public void setToolVersion(String newToolVersion) {
        String oldToolVersion = this.toolVersion;
        this.toolVersion = newToolVersion;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldToolVersion, (Object)this.toolVersion));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetLayout(null, msgs);
            }
            case 1: {
                return ((InternalEList)this.getSpecification()).basicRemove((Object)otherEnd, msgs);
            }
            case 2: {
                return this.basicSetEventSpecification(null, msgs);
            }
            case 3: {
                return this.basicSetFileListSpecification(null, msgs);
            }
            case 4: {
                return this.basicSetSignature(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getLayout();
            }
            case 1: {
                return this.getSpecification();
            }
            case 2: {
                return this.getEventSpecification();
            }
            case 3: {
                return this.getFileListSpecification();
            }
            case 4: {
                return this.getSignature();
            }
            case 5: {
                return this.getSchemaVersion();
            }
            case 6: {
                return this.getToolVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setLayout((LayoutT)newValue);
                return;
            }
            case 1: {
                this.getSpecification().clear();
                this.getSpecification().addAll((Collection)newValue);
                return;
            }
            case 2: {
                this.setEventSpecification((EventSpecificationT)newValue);
                return;
            }
            case 3: {
                this.setFileListSpecification((FileListSpecificationT)newValue);
                return;
            }
            case 4: {
                this.setSignature((SignatureType)newValue);
                return;
            }
            case 5: {
                this.setSchemaVersion((String)newValue);
                return;
            }
            case 6: {
                this.setToolVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setLayout(null);
                return;
            }
            case 1: {
                this.getSpecification().clear();
                return;
            }
            case 2: {
                this.setEventSpecification(null);
                return;
            }
            case 3: {
                this.setFileListSpecification(null);
                return;
            }
            case 4: {
                this.setSignature(null);
                return;
            }
            case 5: {
                this.setSchemaVersion(SCHEMA_VERSION_EDEFAULT);
                return;
            }
            case 6: {
                this.setToolVersion(TOOL_VERSION_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.layout != null;
            }
            case 1: {
                return this.specification != null && !this.specification.isEmpty();
            }
            case 2: {
                return this.eventSpecification != null;
            }
            case 3: {
                return this.fileListSpecification != null;
            }
            case 4: {
                return this.signature != null;
            }
            case 5: {
                return SCHEMA_VERSION_EDEFAULT == null ? this.schemaVersion != null : !SCHEMA_VERSION_EDEFAULT.equals(this.schemaVersion);
            }
            case 6: {
                return TOOL_VERSION_EDEFAULT == null ? this.toolVersion != null : !TOOL_VERSION_EDEFAULT.equals(this.toolVersion);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (schemaVersion: ");
        result.append(this.schemaVersion);
        result.append(", toolVersion: ");
        result.append(this.toolVersion);
        result.append(')');
        return result.toString();
    }
}

