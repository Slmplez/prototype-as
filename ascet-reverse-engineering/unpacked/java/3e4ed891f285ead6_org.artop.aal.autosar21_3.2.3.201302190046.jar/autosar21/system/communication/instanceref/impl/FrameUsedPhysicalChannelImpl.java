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
package autosar21.system.communication.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.communication.Frame;
import autosar21.system.communication.instanceref.FrameUsedPhysicalChannel;
import autosar21.system.communication.instanceref.InstancerefPackage;
import autosar21.system.topology.PhysicalChannel;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class FrameUsedPhysicalChannelImpl
extends ARObjectImpl
implements FrameUsedPhysicalChannel,
IReferringClass {
    protected SystemTopologyInstance systemTopologyInstance;
    protected PhysicalChannel physicalChannel;

    protected FrameUsedPhysicalChannelImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.FRAME_USED_PHYSICAL_CHANNEL;
    }

    public Frame getFrame() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Frame)this.eContainer();
    }

    public NotificationChain basicSetFrame(Frame newFrame, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFrame, 4, msgs);
        return msgs;
    }

    public void setFrame(Frame newFrame) {
        if (newFrame != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newFrame != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFrame)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFrame != null) {
                msgs = ((InternalEObject)newFrame).eInverseAdd((InternalEObject)this, 24, Frame.class, msgs);
            }
            if ((msgs = this.basicSetFrame(newFrame, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newFrame, (Object)newFrame));
        }
    }

    public SystemTopologyInstance getSystemTopologyInstance() {
        if (this.systemTopologyInstance != null && this.systemTopologyInstance.eIsProxy()) {
            InternalEObject oldSystemTopologyInstance = (InternalEObject)this.systemTopologyInstance;
            this.systemTopologyInstance = (SystemTopologyInstance)this.eResolveProxy(oldSystemTopologyInstance);
            if (this.systemTopologyInstance != oldSystemTopologyInstance && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldSystemTopologyInstance, (Object)this.systemTopologyInstance));
            }
        }
        return this.systemTopologyInstance;
    }

    public SystemTopologyInstance basicGetSystemTopologyInstance() {
        return this.systemTopologyInstance;
    }

    public void setSystemTopologyInstance(SystemTopologyInstance newSystemTopologyInstance) {
        SystemTopologyInstance oldSystemTopologyInstance = this.systemTopologyInstance;
        this.systemTopologyInstance = newSystemTopologyInstance;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSystemTopologyInstance, (Object)this.systemTopologyInstance));
        }
    }

    public PhysicalChannel getPhysicalChannel() {
        if (this.physicalChannel != null && this.physicalChannel.eIsProxy()) {
            InternalEObject oldPhysicalChannel = (InternalEObject)this.physicalChannel;
            this.physicalChannel = (PhysicalChannel)this.eResolveProxy(oldPhysicalChannel);
            if (this.physicalChannel != oldPhysicalChannel && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldPhysicalChannel, (Object)this.physicalChannel));
            }
        }
        return this.physicalChannel;
    }

    public PhysicalChannel basicGetPhysicalChannel() {
        return this.physicalChannel;
    }

    public void setPhysicalChannel(PhysicalChannel newPhysicalChannel) {
        PhysicalChannel oldPhysicalChannel = this.physicalChannel;
        this.physicalChannel = newPhysicalChannel;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPhysicalChannel, (Object)this.physicalChannel));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFrame((Frame)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetFrame(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, Frame.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getFrame();
            }
            case 5: {
                if (resolve) {
                    return this.getSystemTopologyInstance();
                }
                return this.basicGetSystemTopologyInstance();
            }
            case 6: {
                if (resolve) {
                    return this.getPhysicalChannel();
                }
                return this.basicGetPhysicalChannel();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setFrame((Frame)newValue);
                return;
            }
            case 5: {
                this.setSystemTopologyInstance((SystemTopologyInstance)newValue);
                return;
            }
            case 6: {
                this.setPhysicalChannel((PhysicalChannel)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setFrame(null);
                return;
            }
            case 5: {
                this.setSystemTopologyInstance(null);
                return;
            }
            case 6: {
                this.setPhysicalChannel(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getFrame() != null;
            }
            case 5: {
                return this.systemTopologyInstance != null;
            }
            case 6: {
                return this.physicalChannel != null;
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

