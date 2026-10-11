/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibexcore.coretopology.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalTriggering;
import autosar40.system.fibex.fibexcore.corecommunication.PduTriggering;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationClusterContent;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnectorRefConditional;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PhysicalChannelImpl
extends IdentifiableImpl
implements PhysicalChannel {
    protected EList<CommunicationConnectorRefConditional> commConnectors;
    protected EList<FrameTriggering> frameTriggerings;
    protected EList<ISignalTriggering> iSignalTriggerings;
    protected EList<PduTriggering> pduTriggerings;
    protected VariationPoint variationPoint;

    protected PhysicalChannelImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CoretopologyPackage.Literals.PHYSICAL_CHANNEL;
    }

    @Override
    public CommunicationClusterContent getCommunicationClusterContent() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (CommunicationClusterContent)this.eContainer();
    }

    public NotificationChain basicSetCommunicationClusterContent(CommunicationClusterContent newCommunicationClusterContent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommunicationClusterContent, 18, msgs);
        return msgs;
    }

    @Override
    public void setCommunicationClusterContent(CommunicationClusterContent newCommunicationClusterContent) {
        if (newCommunicationClusterContent != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newCommunicationClusterContent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommunicationClusterContent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommunicationClusterContent != null) {
                msgs = ((InternalEObject)newCommunicationClusterContent).eInverseAdd((InternalEObject)this, 4, CommunicationClusterContent.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationClusterContent(newCommunicationClusterContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newCommunicationClusterContent, (Object)newCommunicationClusterContent));
        }
    }

    @Override
    public EList<CommunicationConnectorRefConditional> getCommConnectors() {
        if (this.commConnectors == null) {
            this.commConnectors = new EObjectContainmentWithInverseEList(CommunicationConnectorRefConditional.class, (InternalEObject)this, 19, 4);
        }
        return this.commConnectors;
    }

    @Override
    public EList<FrameTriggering> getFrameTriggerings() {
        if (this.frameTriggerings == null) {
            this.frameTriggerings = new EObjectContainmentWithInverseEList(FrameTriggering.class, (InternalEObject)this, 20, 18);
        }
        return this.frameTriggerings;
    }

    @Override
    public EList<ISignalTriggering> getISignalTriggerings() {
        if (this.iSignalTriggerings == null) {
            this.iSignalTriggerings = new EObjectContainmentWithInverseEList(ISignalTriggering.class, (InternalEObject)this, 21, 18);
        }
        return this.iSignalTriggerings;
    }

    @Override
    public EList<PduTriggering> getPduTriggerings() {
        if (this.pduTriggerings == null) {
            this.pduTriggerings = new EObjectContainmentWithInverseEList(PduTriggering.class, (InternalEObject)this, 22, 18);
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommunicationClusterContent((CommunicationClusterContent)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getCommConnectors()).basicAdd((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getFrameTriggerings()).basicAdd((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getISignalTriggerings()).basicAdd((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getPduTriggerings()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetCommunicationClusterContent(null, msgs);
            }
            case 19: {
                return ((InternalEList)this.getCommConnectors()).basicRemove((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getFrameTriggerings()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getISignalTriggerings()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getPduTriggerings()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, CommunicationClusterContent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getCommunicationClusterContent();
            }
            case 19: {
                return this.getCommConnectors();
            }
            case 20: {
                return this.getFrameTriggerings();
            }
            case 21: {
                return this.getISignalTriggerings();
            }
            case 22: {
                return this.getPduTriggerings();
            }
            case 23: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setCommunicationClusterContent((CommunicationClusterContent)newValue);
                return;
            }
            case 19: {
                this.getCommConnectors().clear();
                this.getCommConnectors().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getFrameTriggerings().clear();
                this.getFrameTriggerings().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getISignalTriggerings().clear();
                this.getISignalTriggerings().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getPduTriggerings().clear();
                this.getPduTriggerings().addAll((Collection)newValue);
                return;
            }
            case 23: {
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
                this.setCommunicationClusterContent(null);
                return;
            }
            case 19: {
                this.getCommConnectors().clear();
                return;
            }
            case 20: {
                this.getFrameTriggerings().clear();
                return;
            }
            case 21: {
                this.getISignalTriggerings().clear();
                return;
            }
            case 22: {
                this.getPduTriggerings().clear();
                return;
            }
            case 23: {
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
                return this.getCommunicationClusterContent() != null;
            }
            case 19: {
                return this.commConnectors != null && !this.commConnectors.isEmpty();
            }
            case 20: {
                return this.frameTriggerings != null && !this.frameTriggerings.isEmpty();
            }
            case 21: {
                return this.iSignalTriggerings != null && !this.iSignalTriggerings.isEmpty();
            }
            case 22: {
                return this.pduTriggerings != null && !this.pduTriggerings.isEmpty();
            }
            case 23: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

