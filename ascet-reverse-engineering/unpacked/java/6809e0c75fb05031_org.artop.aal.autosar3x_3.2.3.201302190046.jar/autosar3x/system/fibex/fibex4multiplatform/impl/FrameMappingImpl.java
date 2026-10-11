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
package autosar3x.system.fibex.fibex4multiplatform.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar3x.system.fibex.fibex4multiplatform.FrameMapping;
import autosar3x.system.fibex.fibex4multiplatform.Gateway;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class FrameMappingImpl
extends ARObjectImpl
implements FrameMapping,
IReferringClass {
    protected FrameTriggering sourceFrame;
    protected FrameTriggering targetFrame;

    protected FrameMappingImpl() {
    }

    protected EClass eStaticClass() {
        return Fibex4multiplatformPackage.Literals.FRAME_MAPPING;
    }

    public Gateway getGateway() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Gateway)this.eContainer();
    }

    public NotificationChain basicSetGateway(Gateway newGateway, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newGateway, 4, msgs);
        return msgs;
    }

    public void setGateway(Gateway newGateway) {
        if (newGateway != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newGateway != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newGateway)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newGateway != null) {
                msgs = ((InternalEObject)newGateway).eInverseAdd((InternalEObject)this, 20, Gateway.class, msgs);
            }
            if ((msgs = this.basicSetGateway(newGateway, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newGateway, (Object)newGateway));
        }
    }

    public FrameTriggering getSourceFrame() {
        if (this.sourceFrame != null && this.sourceFrame.eIsProxy()) {
            InternalEObject oldSourceFrame = (InternalEObject)this.sourceFrame;
            this.sourceFrame = (FrameTriggering)this.eResolveProxy(oldSourceFrame);
            if (this.sourceFrame != oldSourceFrame && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldSourceFrame, (Object)this.sourceFrame));
            }
        }
        return this.sourceFrame;
    }

    public FrameTriggering basicGetSourceFrame() {
        return this.sourceFrame;
    }

    public void setSourceFrame(FrameTriggering newSourceFrame) {
        FrameTriggering oldSourceFrame = this.sourceFrame;
        this.sourceFrame = newSourceFrame;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSourceFrame, (Object)this.sourceFrame));
        }
    }

    public FrameTriggering getTargetFrame() {
        if (this.targetFrame != null && this.targetFrame.eIsProxy()) {
            InternalEObject oldTargetFrame = (InternalEObject)this.targetFrame;
            this.targetFrame = (FrameTriggering)this.eResolveProxy(oldTargetFrame);
            if (this.targetFrame != oldTargetFrame && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldTargetFrame, (Object)this.targetFrame));
            }
        }
        return this.targetFrame;
    }

    public FrameTriggering basicGetTargetFrame() {
        return this.targetFrame;
    }

    public void setTargetFrame(FrameTriggering newTargetFrame) {
        FrameTriggering oldTargetFrame = this.targetFrame;
        this.targetFrame = newTargetFrame;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTargetFrame, (Object)this.targetFrame));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetGateway((Gateway)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetGateway(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, Gateway.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getGateway();
            }
            case 5: {
                if (resolve) {
                    return this.getSourceFrame();
                }
                return this.basicGetSourceFrame();
            }
            case 6: {
                if (resolve) {
                    return this.getTargetFrame();
                }
                return this.basicGetTargetFrame();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setGateway((Gateway)newValue);
                return;
            }
            case 5: {
                this.setSourceFrame((FrameTriggering)newValue);
                return;
            }
            case 6: {
                this.setTargetFrame((FrameTriggering)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setGateway(null);
                return;
            }
            case 5: {
                this.setSourceFrame(null);
                return;
            }
            case 6: {
                this.setTargetFrame(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getGateway() != null;
            }
            case 5: {
                return this.sourceFrame != null;
            }
            case 6: {
                return this.targetFrame != null;
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

