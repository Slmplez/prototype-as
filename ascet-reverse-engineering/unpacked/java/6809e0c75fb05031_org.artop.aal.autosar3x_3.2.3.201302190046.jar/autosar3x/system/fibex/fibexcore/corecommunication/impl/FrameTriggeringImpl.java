/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.Frame;
import autosar3x.system.fibex.fibexcore.corecommunication.FramePort;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTriggering;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FrameTriggeringImpl
extends IdentifiableImpl
implements FrameTriggering,
IReferringClass {
    protected EList<FramePort> framePorts;
    protected Frame frame;
    protected EList<IPduTriggering> iPduTriggerings;

    protected FrameTriggeringImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.FRAME_TRIGGERING;
    }

    @Override
    public PhysicalChannel getPhysicalChannel() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (PhysicalChannel)this.eContainer();
    }

    public NotificationChain basicSetPhysicalChannel(PhysicalChannel newPhysicalChannel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPhysicalChannel, 17, msgs);
        return msgs;
    }

    @Override
    public void setPhysicalChannel(PhysicalChannel newPhysicalChannel) {
        if (newPhysicalChannel != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newPhysicalChannel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPhysicalChannel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPhysicalChannel != null) {
                msgs = ((InternalEObject)newPhysicalChannel).eInverseAdd((InternalEObject)this, 18, PhysicalChannel.class, msgs);
            }
            if ((msgs = this.basicSetPhysicalChannel(newPhysicalChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newPhysicalChannel, (Object)newPhysicalChannel));
        }
    }

    @Override
    public EList<FramePort> getFramePorts() {
        if (this.framePorts == null) {
            this.framePorts = new EObjectResolvingReferringEList(FramePort.class, (InternalEObject)this, 18);
        }
        return this.framePorts;
    }

    @Override
    public Frame getFrame() {
        if (this.frame != null && this.frame.eIsProxy()) {
            InternalEObject oldFrame = (InternalEObject)this.frame;
            this.frame = (Frame)this.eResolveProxy(oldFrame);
            if (this.frame != oldFrame && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldFrame, (Object)this.frame));
            }
        }
        return this.frame;
    }

    public Frame basicGetFrame() {
        return this.frame;
    }

    @Override
    public void setFrame(Frame newFrame) {
        Frame oldFrame = this.frame;
        this.frame = newFrame;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldFrame, (Object)this.frame));
        }
    }

    @Override
    public EList<IPduTriggering> getIPduTriggerings() {
        if (this.iPduTriggerings == null) {
            this.iPduTriggerings = new EObjectResolvingReferringEList(IPduTriggering.class, (InternalEObject)this, 20);
        }
        return this.iPduTriggerings;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPhysicalChannel((PhysicalChannel)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetPhysicalChannel(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, PhysicalChannel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getPhysicalChannel();
            }
            case 18: {
                return this.getFramePorts();
            }
            case 19: {
                if (resolve) {
                    return this.getFrame();
                }
                return this.basicGetFrame();
            }
            case 20: {
                return this.getIPduTriggerings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setPhysicalChannel((PhysicalChannel)newValue);
                return;
            }
            case 18: {
                this.getFramePorts().clear();
                this.getFramePorts().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.setFrame((Frame)newValue);
                return;
            }
            case 20: {
                this.getIPduTriggerings().clear();
                this.getIPduTriggerings().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setPhysicalChannel(null);
                return;
            }
            case 18: {
                this.getFramePorts().clear();
                return;
            }
            case 19: {
                this.setFrame(null);
                return;
            }
            case 20: {
                this.getIPduTriggerings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getPhysicalChannel() != null;
            }
            case 18: {
                return this.framePorts != null && !this.framePorts.isEmpty();
            }
            case 19: {
                return this.frame != null;
            }
            case 20: {
                return this.iPduTriggerings != null && !this.iPduTriggerings.isEmpty();
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

