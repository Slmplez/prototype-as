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
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.Asap2ItemType;
import com.etas.amd620.core.ComponentMain.AtomicSoftwareComponentT;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.ComponentMainType;
import com.etas.amd620.core.ComponentMain.ComponentT;
import com.etas.amd620.core.ComponentMain.ContainerType;
import com.etas.amd620.core.ComponentMain.EnumerationType;
import com.etas.amd620.core.ComponentMain.GenericComponentT;
import com.etas.amd620.core.ComponentMain.ImageType;
import com.etas.amd620.core.ComponentMain.ItemBaseT;
import com.etas.amd620.core.ComponentMain.ModeGroupType;
import com.etas.amd620.core.ComponentMain.SignalType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.w3._2000._09.xmldsig.SignatureType;

public class ComponentMainTypeImpl
extends MinimalEObjectImpl.Container
implements ComponentMainType {
    protected ComponentT component;
    protected GenericComponentT genericComponent;
    protected AtomicSoftwareComponentT atomicSoftwareComponent;
    protected EnumerationType enumeration;
    protected ModeGroupType modeGroup;
    protected ImageType image;
    protected SignalType signal;
    protected Asap2ItemType asap2Item;
    protected ContainerType container;
    protected ItemBaseT folder;
    protected SignatureType signature;
    protected static final String SCHEMA_VERSION_EDEFAULT = null;
    protected String schemaVersion = SCHEMA_VERSION_EDEFAULT;
    protected static final String TOOL_VERSION_EDEFAULT = null;
    protected String toolVersion = TOOL_VERSION_EDEFAULT;

    protected ComponentMainTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.COMPONENT_MAIN_TYPE;
    }

    @Override
    public ComponentT getComponent() {
        return this.component;
    }

    public NotificationChain basicSetComponent(ComponentT newComponent, NotificationChain msgs) {
        ComponentT oldComponent = this.component;
        this.component = newComponent;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldComponent, (Object)newComponent);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComponent(ComponentT newComponent) {
        if (newComponent != this.component) {
            NotificationChain msgs = null;
            if (this.component != null) {
                msgs = ((InternalEObject)this.component).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newComponent != null) {
                msgs = ((InternalEObject)newComponent).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetComponent(newComponent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newComponent, (Object)newComponent));
        }
    }

    @Override
    public GenericComponentT getGenericComponent() {
        return this.genericComponent;
    }

    public NotificationChain basicSetGenericComponent(GenericComponentT newGenericComponent, NotificationChain msgs) {
        GenericComponentT oldGenericComponent = this.genericComponent;
        this.genericComponent = newGenericComponent;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldGenericComponent, (Object)newGenericComponent);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setGenericComponent(GenericComponentT newGenericComponent) {
        if (newGenericComponent != this.genericComponent) {
            NotificationChain msgs = null;
            if (this.genericComponent != null) {
                msgs = ((InternalEObject)this.genericComponent).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newGenericComponent != null) {
                msgs = ((InternalEObject)newGenericComponent).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetGenericComponent(newGenericComponent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newGenericComponent, (Object)newGenericComponent));
        }
    }

    @Override
    public AtomicSoftwareComponentT getAtomicSoftwareComponent() {
        return this.atomicSoftwareComponent;
    }

    public NotificationChain basicSetAtomicSoftwareComponent(AtomicSoftwareComponentT newAtomicSoftwareComponent, NotificationChain msgs) {
        AtomicSoftwareComponentT oldAtomicSoftwareComponent = this.atomicSoftwareComponent;
        this.atomicSoftwareComponent = newAtomicSoftwareComponent;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldAtomicSoftwareComponent, (Object)newAtomicSoftwareComponent);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setAtomicSoftwareComponent(AtomicSoftwareComponentT newAtomicSoftwareComponent) {
        if (newAtomicSoftwareComponent != this.atomicSoftwareComponent) {
            NotificationChain msgs = null;
            if (this.atomicSoftwareComponent != null) {
                msgs = ((InternalEObject)this.atomicSoftwareComponent).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newAtomicSoftwareComponent != null) {
                msgs = ((InternalEObject)newAtomicSoftwareComponent).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetAtomicSoftwareComponent(newAtomicSoftwareComponent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newAtomicSoftwareComponent, (Object)newAtomicSoftwareComponent));
        }
    }

    @Override
    public EnumerationType getEnumeration() {
        return this.enumeration;
    }

    public NotificationChain basicSetEnumeration(EnumerationType newEnumeration, NotificationChain msgs) {
        EnumerationType oldEnumeration = this.enumeration;
        this.enumeration = newEnumeration;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldEnumeration, (Object)newEnumeration);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEnumeration(EnumerationType newEnumeration) {
        if (newEnumeration != this.enumeration) {
            NotificationChain msgs = null;
            if (this.enumeration != null) {
                msgs = ((InternalEObject)this.enumeration).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newEnumeration != null) {
                msgs = ((InternalEObject)newEnumeration).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetEnumeration(newEnumeration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newEnumeration, (Object)newEnumeration));
        }
    }

    @Override
    public ModeGroupType getModeGroup() {
        return this.modeGroup;
    }

    public NotificationChain basicSetModeGroup(ModeGroupType newModeGroup, NotificationChain msgs) {
        ModeGroupType oldModeGroup = this.modeGroup;
        this.modeGroup = newModeGroup;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldModeGroup, (Object)newModeGroup);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setModeGroup(ModeGroupType newModeGroup) {
        if (newModeGroup != this.modeGroup) {
            NotificationChain msgs = null;
            if (this.modeGroup != null) {
                msgs = ((InternalEObject)this.modeGroup).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newModeGroup != null) {
                msgs = ((InternalEObject)newModeGroup).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetModeGroup(newModeGroup, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newModeGroup, (Object)newModeGroup));
        }
    }

    @Override
    public ImageType getImage() {
        return this.image;
    }

    public NotificationChain basicSetImage(ImageType newImage, NotificationChain msgs) {
        ImageType oldImage = this.image;
        this.image = newImage;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldImage, (Object)newImage);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setImage(ImageType newImage) {
        if (newImage != this.image) {
            NotificationChain msgs = null;
            if (this.image != null) {
                msgs = ((InternalEObject)this.image).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newImage != null) {
                msgs = ((InternalEObject)newImage).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetImage(newImage, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newImage, (Object)newImage));
        }
    }

    @Override
    public SignalType getSignal() {
        return this.signal;
    }

    public NotificationChain basicSetSignal(SignalType newSignal, NotificationChain msgs) {
        SignalType oldSignal = this.signal;
        this.signal = newSignal;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSignal, (Object)newSignal);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSignal(SignalType newSignal) {
        if (newSignal != this.signal) {
            NotificationChain msgs = null;
            if (this.signal != null) {
                msgs = ((InternalEObject)this.signal).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newSignal != null) {
                msgs = ((InternalEObject)newSignal).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetSignal(newSignal, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSignal, (Object)newSignal));
        }
    }

    @Override
    public Asap2ItemType getAsap2Item() {
        return this.asap2Item;
    }

    public NotificationChain basicSetAsap2Item(Asap2ItemType newAsap2Item, NotificationChain msgs) {
        Asap2ItemType oldAsap2Item = this.asap2Item;
        this.asap2Item = newAsap2Item;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldAsap2Item, (Object)newAsap2Item);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setAsap2Item(Asap2ItemType newAsap2Item) {
        if (newAsap2Item != this.asap2Item) {
            NotificationChain msgs = null;
            if (this.asap2Item != null) {
                msgs = ((InternalEObject)this.asap2Item).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newAsap2Item != null) {
                msgs = ((InternalEObject)newAsap2Item).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetAsap2Item(newAsap2Item, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newAsap2Item, (Object)newAsap2Item));
        }
    }

    @Override
    public ContainerType getContainer() {
        return this.container;
    }

    public NotificationChain basicSetContainer(ContainerType newContainer, NotificationChain msgs) {
        ContainerType oldContainer = this.container;
        this.container = newContainer;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldContainer, (Object)newContainer);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setContainer(ContainerType newContainer) {
        if (newContainer != this.container) {
            NotificationChain msgs = null;
            if (this.container != null) {
                msgs = ((InternalEObject)this.container).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newContainer != null) {
                msgs = ((InternalEObject)newContainer).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetContainer(newContainer, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newContainer, (Object)newContainer));
        }
    }

    @Override
    public ItemBaseT getFolder() {
        return this.folder;
    }

    public NotificationChain basicSetFolder(ItemBaseT newFolder, NotificationChain msgs) {
        ItemBaseT oldFolder = this.folder;
        this.folder = newFolder;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldFolder, (Object)newFolder);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFolder(ItemBaseT newFolder) {
        if (newFolder != this.folder) {
            NotificationChain msgs = null;
            if (this.folder != null) {
                msgs = ((InternalEObject)this.folder).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newFolder != null) {
                msgs = ((InternalEObject)newFolder).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetFolder(newFolder, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newFolder, (Object)newFolder));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldSignature, (Object)newSignature);
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
                msgs = ((InternalEObject)this.signature).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newSignature != null) {
                msgs = ((InternalEObject)newSignature).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetSignature(newSignature, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newSignature, (Object)newSignature));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldSchemaVersion, (Object)this.schemaVersion));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldToolVersion, (Object)this.toolVersion));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetComponent(null, msgs);
            }
            case 1: {
                return this.basicSetGenericComponent(null, msgs);
            }
            case 2: {
                return this.basicSetAtomicSoftwareComponent(null, msgs);
            }
            case 3: {
                return this.basicSetEnumeration(null, msgs);
            }
            case 4: {
                return this.basicSetModeGroup(null, msgs);
            }
            case 5: {
                return this.basicSetImage(null, msgs);
            }
            case 6: {
                return this.basicSetSignal(null, msgs);
            }
            case 7: {
                return this.basicSetAsap2Item(null, msgs);
            }
            case 8: {
                return this.basicSetContainer(null, msgs);
            }
            case 9: {
                return this.basicSetFolder(null, msgs);
            }
            case 10: {
                return this.basicSetSignature(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getComponent();
            }
            case 1: {
                return this.getGenericComponent();
            }
            case 2: {
                return this.getAtomicSoftwareComponent();
            }
            case 3: {
                return this.getEnumeration();
            }
            case 4: {
                return this.getModeGroup();
            }
            case 5: {
                return this.getImage();
            }
            case 6: {
                return this.getSignal();
            }
            case 7: {
                return this.getAsap2Item();
            }
            case 8: {
                return this.getContainer();
            }
            case 9: {
                return this.getFolder();
            }
            case 10: {
                return this.getSignature();
            }
            case 11: {
                return this.getSchemaVersion();
            }
            case 12: {
                return this.getToolVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setComponent((ComponentT)newValue);
                return;
            }
            case 1: {
                this.setGenericComponent((GenericComponentT)newValue);
                return;
            }
            case 2: {
                this.setAtomicSoftwareComponent((AtomicSoftwareComponentT)newValue);
                return;
            }
            case 3: {
                this.setEnumeration((EnumerationType)newValue);
                return;
            }
            case 4: {
                this.setModeGroup((ModeGroupType)newValue);
                return;
            }
            case 5: {
                this.setImage((ImageType)newValue);
                return;
            }
            case 6: {
                this.setSignal((SignalType)newValue);
                return;
            }
            case 7: {
                this.setAsap2Item((Asap2ItemType)newValue);
                return;
            }
            case 8: {
                this.setContainer((ContainerType)newValue);
                return;
            }
            case 9: {
                this.setFolder((ItemBaseT)newValue);
                return;
            }
            case 10: {
                this.setSignature((SignatureType)newValue);
                return;
            }
            case 11: {
                this.setSchemaVersion((String)newValue);
                return;
            }
            case 12: {
                this.setToolVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setComponent(null);
                return;
            }
            case 1: {
                this.setGenericComponent(null);
                return;
            }
            case 2: {
                this.setAtomicSoftwareComponent(null);
                return;
            }
            case 3: {
                this.setEnumeration(null);
                return;
            }
            case 4: {
                this.setModeGroup(null);
                return;
            }
            case 5: {
                this.setImage(null);
                return;
            }
            case 6: {
                this.setSignal(null);
                return;
            }
            case 7: {
                this.setAsap2Item(null);
                return;
            }
            case 8: {
                this.setContainer(null);
                return;
            }
            case 9: {
                this.setFolder(null);
                return;
            }
            case 10: {
                this.setSignature(null);
                return;
            }
            case 11: {
                this.setSchemaVersion(SCHEMA_VERSION_EDEFAULT);
                return;
            }
            case 12: {
                this.setToolVersion(TOOL_VERSION_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.component != null;
            }
            case 1: {
                return this.genericComponent != null;
            }
            case 2: {
                return this.atomicSoftwareComponent != null;
            }
            case 3: {
                return this.enumeration != null;
            }
            case 4: {
                return this.modeGroup != null;
            }
            case 5: {
                return this.image != null;
            }
            case 6: {
                return this.signal != null;
            }
            case 7: {
                return this.asap2Item != null;
            }
            case 8: {
                return this.container != null;
            }
            case 9: {
                return this.folder != null;
            }
            case 10: {
                return this.signature != null;
            }
            case 11: {
                return SCHEMA_VERSION_EDEFAULT == null ? this.schemaVersion != null : !SCHEMA_VERSION_EDEFAULT.equals(this.schemaVersion);
            }
            case 12: {
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

