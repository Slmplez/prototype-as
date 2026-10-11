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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.Frame;
import autosar40.system.fibex.fibexcore.corecommunication.FramePort;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
import autosar40.system.fibex.fibexcore.corecommunication.PduTriggeringRefConditional;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;
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
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FrameTriggeringImpl
extends IdentifiableImpl
implements FrameTriggering,
IReferringClass {
    protected EList<FramePort> framePorts;
    protected Frame frame;
    protected EList<PduTriggeringRefConditional> pduTriggerings;
    protected VariationPoint variationPoint;

    protected FrameTriggeringImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.FRAME_TRIGGERING;
    }

    @Override
    public PhysicalChannel getPhysicalChannel() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (PhysicalChannel)this.eContainer();
    }

    public NotificationChain basicSetPhysicalChannel(PhysicalChannel newPhysicalChannel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPhysicalChannel, 18, msgs);
        return msgs;
    }

    @Override
    public void setPhysicalChannel(PhysicalChannel newPhysicalChannel) {
        if (newPhysicalChannel != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newPhysicalChannel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPhysicalChannel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPhysicalChannel != null) {
                msgs = ((InternalEObject)newPhysicalChannel).eInverseAdd((InternalEObject)this, 20, PhysicalChannel.class, msgs);
            }
            if ((msgs = this.basicSetPhysicalChannel(newPhysicalChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newPhysicalChannel, (Object)newPhysicalChannel));
        }
    }

    @Override
    public EList<FramePort> getFramePorts() {
        if (this.framePorts == null) {
            this.framePorts = new EObjectResolvingReferringEList(FramePort.class, (InternalEObject)this, 19);
        }
        return this.framePorts;
    }

    @Override
    public Frame getFrame() {
        if (this.frame != null && this.frame.eIsProxy()) {
            InternalEObject oldFrame = (InternalEObject)this.frame;
            this.frame = (Frame)this.eResolveProxy(oldFrame);
            if (this.frame != oldFrame && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldFrame, (Object)this.frame));
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
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldFrame, (Object)this.frame));
        }
    }

    @Override
    public EList<PduTriggeringRefConditional> getPduTriggerings() {
        if (this.pduTriggerings == null) {
            this.pduTriggerings = new EObjectContainmentEList(PduTriggeringRefConditional.class, (InternalEObject)this, 21);
        }
        return this.pduTriggerings;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
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
            case 18: {
                return this.basicSetPhysicalChannel(null, msgs);
            }
            case 21: {
                return ((InternalEList)this.getPduTriggerings()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, PhysicalChannel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getPhysicalChannel();
            }
            case 19: {
                return this.getFramePorts();
            }
            case 20: {
                if (resolve) {
                    return this.getFrame();
                }
                return this.basicGetFrame();
            }
            case 21: {
                return this.getPduTriggerings();
            }
            case 22: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setPhysicalChannel((PhysicalChannel)newValue);
                return;
            }
            case 19: {
                this.getFramePorts().clear();
                this.getFramePorts().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.setFrame((Frame)newValue);
                return;
            }
            case 21: {
                this.getPduTriggerings().clear();
                this.getPduTriggerings().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setPhysicalChannel(null);
                return;
            }
            case 19: {
                this.getFramePorts().clear();
                return;
            }
            case 20: {
                this.setFrame(null);
                return;
            }
            case 21: {
                this.getPduTriggerings().clear();
                return;
            }
            case 22: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getPhysicalChannel() != null;
            }
            case 19: {
                return this.framePorts != null && !this.framePorts.isEmpty();
            }
            case 20: {
                return this.frame != null;
            }
            case 21: {
                return this.pduTriggerings != null && !this.pduTriggerings.isEmpty();
            }
            case 22: {
                return this.variationPoint != null;
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

