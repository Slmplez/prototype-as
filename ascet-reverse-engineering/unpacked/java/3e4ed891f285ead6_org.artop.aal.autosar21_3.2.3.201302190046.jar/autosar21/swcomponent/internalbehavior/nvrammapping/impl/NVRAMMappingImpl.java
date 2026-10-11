/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.internalbehavior.nvrammapping.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.components.PPortPrototype;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.internalbehavior.nvrammapping.NVRAMMapping;
import autosar21.swcomponent.internalbehavior.nvrammapping.NvrammappingPackage;
import autosar21.swcomponent.internalbehavior.perinstancememory.PerInstanceMemory;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class NVRAMMappingImpl
extends IdentifiableImpl
implements NVRAMMapping,
IReferringClass {
    protected CalprmElementPrototype defaultBlock;
    protected PerInstanceMemory mirrorBlock;
    protected PPortPrototype nvramNotification;
    protected RPortPrototype nvramPort;

    protected NVRAMMappingImpl() {
    }

    protected EClass eStaticClass() {
        return NvrammappingPackage.Literals.NVRAM_MAPPING;
    }

    public InternalBehavior getInternalBehavior() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (InternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetInternalBehavior(InternalBehavior newInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newInternalBehavior, 16, msgs);
        return msgs;
    }

    public void setInternalBehavior(InternalBehavior newInternalBehavior) {
        if (newInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newInternalBehavior != null) {
                msgs = ((InternalEObject)newInternalBehavior).eInverseAdd((InternalEObject)this, 28, InternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetInternalBehavior(newInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newInternalBehavior, (Object)newInternalBehavior));
        }
    }

    public CalprmElementPrototype getDefaultBlock() {
        if (this.defaultBlock != null && this.defaultBlock.eIsProxy()) {
            InternalEObject oldDefaultBlock = (InternalEObject)this.defaultBlock;
            this.defaultBlock = (CalprmElementPrototype)this.eResolveProxy(oldDefaultBlock);
            if (this.defaultBlock != oldDefaultBlock && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 17, (Object)oldDefaultBlock, (Object)this.defaultBlock));
            }
        }
        return this.defaultBlock;
    }

    public CalprmElementPrototype basicGetDefaultBlock() {
        return this.defaultBlock;
    }

    public void setDefaultBlock(CalprmElementPrototype newDefaultBlock) {
        CalprmElementPrototype oldDefaultBlock = this.defaultBlock;
        this.defaultBlock = newDefaultBlock;
        AutosarObjectUtil.setDest((EObject)this, (int)17, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldDefaultBlock, (Object)this.defaultBlock));
        }
    }

    public PerInstanceMemory getMirrorBlock() {
        if (this.mirrorBlock != null && this.mirrorBlock.eIsProxy()) {
            InternalEObject oldMirrorBlock = (InternalEObject)this.mirrorBlock;
            this.mirrorBlock = (PerInstanceMemory)this.eResolveProxy(oldMirrorBlock);
            if (this.mirrorBlock != oldMirrorBlock && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldMirrorBlock, (Object)this.mirrorBlock));
            }
        }
        return this.mirrorBlock;
    }

    public PerInstanceMemory basicGetMirrorBlock() {
        return this.mirrorBlock;
    }

    public void setMirrorBlock(PerInstanceMemory newMirrorBlock) {
        PerInstanceMemory oldMirrorBlock = this.mirrorBlock;
        this.mirrorBlock = newMirrorBlock;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldMirrorBlock, (Object)this.mirrorBlock));
        }
    }

    public PPortPrototype getNVRAMNotification() {
        if (this.nvramNotification != null && this.nvramNotification.eIsProxy()) {
            InternalEObject oldNVRAMNotification = (InternalEObject)this.nvramNotification;
            this.nvramNotification = (PPortPrototype)this.eResolveProxy(oldNVRAMNotification);
            if (this.nvramNotification != oldNVRAMNotification && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldNVRAMNotification, (Object)this.nvramNotification));
            }
        }
        return this.nvramNotification;
    }

    public PPortPrototype basicGetNVRAMNotification() {
        return this.nvramNotification;
    }

    public void setNVRAMNotification(PPortPrototype newNVRAMNotification) {
        PPortPrototype oldNVRAMNotification = this.nvramNotification;
        this.nvramNotification = newNVRAMNotification;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldNVRAMNotification, (Object)this.nvramNotification));
        }
    }

    public RPortPrototype getNVRAMPort() {
        if (this.nvramPort != null && this.nvramPort.eIsProxy()) {
            InternalEObject oldNVRAMPort = (InternalEObject)this.nvramPort;
            this.nvramPort = (RPortPrototype)this.eResolveProxy(oldNVRAMPort);
            if (this.nvramPort != oldNVRAMPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldNVRAMPort, (Object)this.nvramPort));
            }
        }
        return this.nvramPort;
    }

    public RPortPrototype basicGetNVRAMPort() {
        return this.nvramPort;
    }

    public void setNVRAMPort(RPortPrototype newNVRAMPort) {
        RPortPrototype oldNVRAMPort = this.nvramPort;
        this.nvramPort = newNVRAMPort;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldNVRAMPort, (Object)this.nvramPort));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetInternalBehavior((InternalBehavior)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetInternalBehavior(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 28, InternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getInternalBehavior();
            }
            case 17: {
                if (resolve) {
                    return this.getDefaultBlock();
                }
                return this.basicGetDefaultBlock();
            }
            case 18: {
                if (resolve) {
                    return this.getMirrorBlock();
                }
                return this.basicGetMirrorBlock();
            }
            case 19: {
                if (resolve) {
                    return this.getNVRAMNotification();
                }
                return this.basicGetNVRAMNotification();
            }
            case 20: {
                if (resolve) {
                    return this.getNVRAMPort();
                }
                return this.basicGetNVRAMPort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setInternalBehavior((InternalBehavior)newValue);
                return;
            }
            case 17: {
                this.setDefaultBlock((CalprmElementPrototype)newValue);
                return;
            }
            case 18: {
                this.setMirrorBlock((PerInstanceMemory)newValue);
                return;
            }
            case 19: {
                this.setNVRAMNotification((PPortPrototype)newValue);
                return;
            }
            case 20: {
                this.setNVRAMPort((RPortPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setInternalBehavior(null);
                return;
            }
            case 17: {
                this.setDefaultBlock(null);
                return;
            }
            case 18: {
                this.setMirrorBlock(null);
                return;
            }
            case 19: {
                this.setNVRAMNotification(null);
                return;
            }
            case 20: {
                this.setNVRAMPort(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getInternalBehavior() != null;
            }
            case 17: {
                return this.defaultBlock != null;
            }
            case 18: {
                return this.mirrorBlock != null;
            }
            case 19: {
                return this.nvramNotification != null;
            }
            case 20: {
                return this.nvramPort != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

