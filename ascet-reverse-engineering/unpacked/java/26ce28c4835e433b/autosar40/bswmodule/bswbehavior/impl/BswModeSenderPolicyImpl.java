/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
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
package autosar40.bswmodule.bswbehavior.impl;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswbehavior.BswModeSenderPolicy;
import autosar40.bswmodule.bswbehavior.BswModeSwitchAckRequest;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class BswModeSenderPolicyImpl
extends ARObjectImpl
implements BswModeSenderPolicy,
IReferringClass {
    protected BswModeSwitchAckRequest ackRequest;
    protected static final Boolean ENHANCED_MODE_API_EDEFAULT = Boolean.FALSE;
    protected Boolean enhancedModeApi = ENHANCED_MODE_API_EDEFAULT;
    protected boolean enhancedModeApiESet;
    protected ModeDeclarationGroupPrototype providedModeGroup;
    protected static final PositiveIntegerDatatype QUEUE_LENGTH_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype queueLength = QUEUE_LENGTH_EDEFAULT.clone();
    protected boolean queueLengthESet;
    protected VariationPoint variationPoint;

    protected BswModeSenderPolicyImpl() {
    }

    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_MODE_SENDER_POLICY;
    }

    public BswInternalBehavior getBswInternalBehavior() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (BswInternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetBswInternalBehavior(BswInternalBehavior newBswInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newBswInternalBehavior, 4, msgs);
        return msgs;
    }

    public void setBswInternalBehavior(BswInternalBehavior newBswInternalBehavior) {
        if (newBswInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newBswInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newBswInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newBswInternalBehavior != null) {
                msgs = ((InternalEObject)newBswInternalBehavior).eInverseAdd((InternalEObject)this, 30, BswInternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetBswInternalBehavior(newBswInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newBswInternalBehavior, (Object)newBswInternalBehavior));
        }
    }

    public BswModeSwitchAckRequest getAckRequest() {
        return this.ackRequest;
    }

    public NotificationChain basicSetAckRequest(BswModeSwitchAckRequest newAckRequest, NotificationChain msgs) {
        BswModeSwitchAckRequest oldAckRequest = this.ackRequest;
        this.ackRequest = newAckRequest;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAckRequest, (Object)newAckRequest);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setAckRequest(BswModeSwitchAckRequest newAckRequest) {
        if (newAckRequest != this.ackRequest) {
            NotificationChain msgs = null;
            if (this.ackRequest != null) {
                msgs = ((InternalEObject)this.ackRequest).eInverseRemove((InternalEObject)this, 4, BswModeSwitchAckRequest.class, msgs);
            }
            if (newAckRequest != null) {
                msgs = ((InternalEObject)newAckRequest).eInverseAdd((InternalEObject)this, 4, BswModeSwitchAckRequest.class, msgs);
            }
            if ((msgs = this.basicSetAckRequest(newAckRequest, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newAckRequest, (Object)newAckRequest));
        }
    }

    public Boolean getEnhancedModeApi() {
        return this.enhancedModeApi;
    }

    public void setEnhancedModeApi(Boolean newEnhancedModeApi) {
        Boolean oldEnhancedModeApi = this.enhancedModeApi;
        this.enhancedModeApi = newEnhancedModeApi;
        boolean oldEnhancedModeApiESet = this.enhancedModeApiESet;
        this.enhancedModeApiESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldEnhancedModeApi, (Object)this.enhancedModeApi, !oldEnhancedModeApiESet));
        }
    }

    public void unsetEnhancedModeApi() {
        Boolean oldEnhancedModeApi = this.enhancedModeApi;
        boolean oldEnhancedModeApiESet = this.enhancedModeApiESet;
        this.enhancedModeApi = ENHANCED_MODE_API_EDEFAULT;
        this.enhancedModeApiESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldEnhancedModeApi, (Object)ENHANCED_MODE_API_EDEFAULT, oldEnhancedModeApiESet));
        }
    }

    public boolean isSetEnhancedModeApi() {
        return this.enhancedModeApiESet;
    }

    public ModeDeclarationGroupPrototype getProvidedModeGroup() {
        if (this.providedModeGroup != null && this.providedModeGroup.eIsProxy()) {
            InternalEObject oldProvidedModeGroup = (InternalEObject)this.providedModeGroup;
            this.providedModeGroup = (ModeDeclarationGroupPrototype)this.eResolveProxy(oldProvidedModeGroup);
            if (this.providedModeGroup != oldProvidedModeGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldProvidedModeGroup, (Object)this.providedModeGroup));
            }
        }
        return this.providedModeGroup;
    }

    public ModeDeclarationGroupPrototype basicGetProvidedModeGroup() {
        return this.providedModeGroup;
    }

    public void setProvidedModeGroup(ModeDeclarationGroupPrototype newProvidedModeGroup) {
        ModeDeclarationGroupPrototype oldProvidedModeGroup = this.providedModeGroup;
        this.providedModeGroup = newProvidedModeGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldProvidedModeGroup, (Object)this.providedModeGroup));
        }
    }

    public Long getQueueLength() {
        return (Long)this.queueLength.basicGetValue();
    }

    public void setQueueLength(Long newQueueLength) {
        Long oldQueueLength = (Long)this.queueLength.basicGetValue();
        this.queueLength.basicSetValue((Object)newQueueLength);
        boolean oldQueueLengthESet = this.queueLengthESet;
        this.queueLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldQueueLength, (Object)newQueueLength, !oldQueueLengthESet));
        }
    }

    public void unsetQueueLength() {
        Long oldQueueLength = (Long)this.queueLength.basicGetValue();
        boolean oldQueueLengthESet = this.queueLengthESet;
        this.queueLength = QUEUE_LENGTH_EDEFAULT.clone();
        this.queueLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldQueueLength, (Object)QUEUE_LENGTH_EDEFAULT, oldQueueLengthESet));
        }
    }

    public boolean isSetQueueLength() {
        return this.queueLengthESet;
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public PositiveIntegerDatatype getQueueLengthData() {
        return this.queueLength.clone();
    }

    public void setQueueLengthData(PositiveIntegerDatatype newQueueLength) {
        this.queueLength.setRadix((int)newQueueLength.getRadix());
        this.queueLength.setNoOfDigits((int)newQueueLength.getNoOfDigits());
        this.setQueueLength(newQueueLength.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetBswInternalBehavior((BswInternalBehavior)otherEnd, msgs);
            }
            case 5: {
                if (this.ackRequest != null) {
                    msgs = ((InternalEObject)this.ackRequest).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetAckRequest((BswModeSwitchAckRequest)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetBswInternalBehavior(null, msgs);
            }
            case 5: {
                return this.basicSetAckRequest(null, msgs);
            }
            case 9: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 30, BswInternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getBswInternalBehavior();
            }
            case 5: {
                return this.getAckRequest();
            }
            case 6: {
                return this.getEnhancedModeApi();
            }
            case 7: {
                if (resolve) {
                    return this.getProvidedModeGroup();
                }
                return this.basicGetProvidedModeGroup();
            }
            case 8: {
                return this.getQueueLength();
            }
            case 9: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setBswInternalBehavior((BswInternalBehavior)newValue);
                return;
            }
            case 5: {
                this.setAckRequest((BswModeSwitchAckRequest)newValue);
                return;
            }
            case 6: {
                this.setEnhancedModeApi((Boolean)newValue);
                return;
            }
            case 7: {
                this.setProvidedModeGroup((ModeDeclarationGroupPrototype)newValue);
                return;
            }
            case 8: {
                this.setQueueLength((Long)newValue);
                return;
            }
            case 9: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setBswInternalBehavior(null);
                return;
            }
            case 5: {
                this.setAckRequest(null);
                return;
            }
            case 6: {
                this.unsetEnhancedModeApi();
                return;
            }
            case 7: {
                this.setProvidedModeGroup(null);
                return;
            }
            case 8: {
                this.unsetQueueLength();
                return;
            }
            case 9: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getBswInternalBehavior() != null;
            }
            case 5: {
                return this.ackRequest != null;
            }
            case 6: {
                return this.isSetEnhancedModeApi();
            }
            case 7: {
                return this.providedModeGroup != null;
            }
            case 8: {
                return this.isSetQueueLength();
            }
            case 9: {
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (enhancedModeApi: ");
        if (this.enhancedModeApiESet) {
            result.append(this.enhancedModeApi);
        } else {
            result.append("<unset>");
        }
        result.append(", queueLength: ");
        if (this.queueLengthESet) {
            result.append(this.queueLength);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

