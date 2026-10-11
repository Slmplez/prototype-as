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
package autosar40.system.fibex.fibex4multiplatform.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar40.system.fibex.fibex4multiplatform.FrameMapping;
import autosar40.system.fibex.fibex4multiplatform.Gateway;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
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
    protected DocumentationBlock introduction;
    protected FrameTriggering sourceFrame;
    protected FrameTriggering targetFrame;
    protected VariationPoint variationPoint;

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
                msgs = ((InternalEObject)newGateway).eInverseAdd((InternalEObject)this, 22, Gateway.class, msgs);
            }
            if ((msgs = this.basicSetGateway(newGateway, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newGateway, (Object)newGateway));
        }
    }

    public DocumentationBlock getIntroduction() {
        return this.introduction;
    }

    public NotificationChain basicSetIntroduction(DocumentationBlock newIntroduction, NotificationChain msgs) {
        DocumentationBlock oldIntroduction = this.introduction;
        this.introduction = newIntroduction;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldIntroduction, (Object)newIntroduction);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setIntroduction(DocumentationBlock newIntroduction) {
        if (newIntroduction != this.introduction) {
            NotificationChain msgs = null;
            if (this.introduction != null) {
                msgs = ((InternalEObject)this.introduction).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newIntroduction != null) {
                msgs = ((InternalEObject)newIntroduction).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetIntroduction(newIntroduction, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newIntroduction, (Object)newIntroduction));
        }
    }

    public FrameTriggering getSourceFrame() {
        if (this.sourceFrame != null && this.sourceFrame.eIsProxy()) {
            InternalEObject oldSourceFrame = (InternalEObject)this.sourceFrame;
            this.sourceFrame = (FrameTriggering)this.eResolveProxy(oldSourceFrame);
            if (this.sourceFrame != oldSourceFrame && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldSourceFrame, (Object)this.sourceFrame));
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
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSourceFrame, (Object)this.sourceFrame));
        }
    }

    public FrameTriggering getTargetFrame() {
        if (this.targetFrame != null && this.targetFrame.eIsProxy()) {
            InternalEObject oldTargetFrame = (InternalEObject)this.targetFrame;
            this.targetFrame = (FrameTriggering)this.eResolveProxy(oldTargetFrame);
            if (this.targetFrame != oldTargetFrame && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldTargetFrame, (Object)this.targetFrame));
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
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldTargetFrame, (Object)this.targetFrame));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newVariationPoint, (Object)newVariationPoint));
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
            case 5: {
                return this.basicSetIntroduction(null, msgs);
            }
            case 8: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, Gateway.class, msgs);
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
                return this.getIntroduction();
            }
            case 6: {
                if (resolve) {
                    return this.getSourceFrame();
                }
                return this.basicGetSourceFrame();
            }
            case 7: {
                if (resolve) {
                    return this.getTargetFrame();
                }
                return this.basicGetTargetFrame();
            }
            case 8: {
                return this.getVariationPoint();
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
                this.setIntroduction((DocumentationBlock)newValue);
                return;
            }
            case 6: {
                this.setSourceFrame((FrameTriggering)newValue);
                return;
            }
            case 7: {
                this.setTargetFrame((FrameTriggering)newValue);
                return;
            }
            case 8: {
                this.setVariationPoint((VariationPoint)newValue);
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
                this.setIntroduction(null);
                return;
            }
            case 6: {
                this.setSourceFrame(null);
                return;
            }
            case 7: {
                this.setTargetFrame(null);
                return;
            }
            case 8: {
                this.setVariationPoint(null);
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
                return this.introduction != null;
            }
            case 6: {
                return this.sourceFrame != null;
            }
            case 7: {
                return this.targetFrame != null;
            }
            case 8: {
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

