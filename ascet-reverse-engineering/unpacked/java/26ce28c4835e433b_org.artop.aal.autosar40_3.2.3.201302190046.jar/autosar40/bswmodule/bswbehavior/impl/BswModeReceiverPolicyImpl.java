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
package autosar40.bswmodule.bswbehavior.impl;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswbehavior.BswModeReceiverPolicy;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class BswModeReceiverPolicyImpl
extends ARObjectImpl
implements BswModeReceiverPolicy,
IReferringClass {
    protected static final Boolean ENHANCED_MODE_API_EDEFAULT = Boolean.FALSE;
    protected Boolean enhancedModeApi = ENHANCED_MODE_API_EDEFAULT;
    protected boolean enhancedModeApiESet;
    protected ModeDeclarationGroupPrototype requiredModeGroup;
    protected static final Boolean SUPPORTS_ASYNCHRONOUS_MODE_SWITCH_EDEFAULT = Boolean.FALSE;
    protected Boolean supportsAsynchronousModeSwitch = SUPPORTS_ASYNCHRONOUS_MODE_SWITCH_EDEFAULT;
    protected boolean supportsAsynchronousModeSwitchESet;
    protected VariationPoint variationPoint;

    protected BswModeReceiverPolicyImpl() {
    }

    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_MODE_RECEIVER_POLICY;
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
                msgs = ((InternalEObject)newBswInternalBehavior).eInverseAdd((InternalEObject)this, 31, BswInternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetBswInternalBehavior(newBswInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newBswInternalBehavior, (Object)newBswInternalBehavior));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldEnhancedModeApi, (Object)this.enhancedModeApi, !oldEnhancedModeApiESet));
        }
    }

    public void unsetEnhancedModeApi() {
        Boolean oldEnhancedModeApi = this.enhancedModeApi;
        boolean oldEnhancedModeApiESet = this.enhancedModeApiESet;
        this.enhancedModeApi = ENHANCED_MODE_API_EDEFAULT;
        this.enhancedModeApiESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldEnhancedModeApi, (Object)ENHANCED_MODE_API_EDEFAULT, oldEnhancedModeApiESet));
        }
    }

    public boolean isSetEnhancedModeApi() {
        return this.enhancedModeApiESet;
    }

    public ModeDeclarationGroupPrototype getRequiredModeGroup() {
        if (this.requiredModeGroup != null && this.requiredModeGroup.eIsProxy()) {
            InternalEObject oldRequiredModeGroup = (InternalEObject)this.requiredModeGroup;
            this.requiredModeGroup = (ModeDeclarationGroupPrototype)this.eResolveProxy(oldRequiredModeGroup);
            if (this.requiredModeGroup != oldRequiredModeGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldRequiredModeGroup, (Object)this.requiredModeGroup));
            }
        }
        return this.requiredModeGroup;
    }

    public ModeDeclarationGroupPrototype basicGetRequiredModeGroup() {
        return this.requiredModeGroup;
    }

    public void setRequiredModeGroup(ModeDeclarationGroupPrototype newRequiredModeGroup) {
        ModeDeclarationGroupPrototype oldRequiredModeGroup = this.requiredModeGroup;
        this.requiredModeGroup = newRequiredModeGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldRequiredModeGroup, (Object)this.requiredModeGroup));
        }
    }

    public Boolean getSupportsAsynchronousModeSwitch() {
        return this.supportsAsynchronousModeSwitch;
    }

    public void setSupportsAsynchronousModeSwitch(Boolean newSupportsAsynchronousModeSwitch) {
        Boolean oldSupportsAsynchronousModeSwitch = this.supportsAsynchronousModeSwitch;
        this.supportsAsynchronousModeSwitch = newSupportsAsynchronousModeSwitch;
        boolean oldSupportsAsynchronousModeSwitchESet = this.supportsAsynchronousModeSwitchESet;
        this.supportsAsynchronousModeSwitchESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSupportsAsynchronousModeSwitch, (Object)this.supportsAsynchronousModeSwitch, !oldSupportsAsynchronousModeSwitchESet));
        }
    }

    public void unsetSupportsAsynchronousModeSwitch() {
        Boolean oldSupportsAsynchronousModeSwitch = this.supportsAsynchronousModeSwitch;
        boolean oldSupportsAsynchronousModeSwitchESet = this.supportsAsynchronousModeSwitchESet;
        this.supportsAsynchronousModeSwitch = SUPPORTS_ASYNCHRONOUS_MODE_SWITCH_EDEFAULT;
        this.supportsAsynchronousModeSwitchESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldSupportsAsynchronousModeSwitch, (Object)SUPPORTS_ASYNCHRONOUS_MODE_SWITCH_EDEFAULT, oldSupportsAsynchronousModeSwitchESet));
        }
    }

    public boolean isSetSupportsAsynchronousModeSwitch() {
        return this.supportsAsynchronousModeSwitchESet;
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
                return this.basicSetBswInternalBehavior((BswInternalBehavior)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetBswInternalBehavior(null, msgs);
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 31, BswInternalBehavior.class, msgs);
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
                return this.getEnhancedModeApi();
            }
            case 6: {
                if (resolve) {
                    return this.getRequiredModeGroup();
                }
                return this.basicGetRequiredModeGroup();
            }
            case 7: {
                return this.getSupportsAsynchronousModeSwitch();
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
                this.setBswInternalBehavior((BswInternalBehavior)newValue);
                return;
            }
            case 5: {
                this.setEnhancedModeApi((Boolean)newValue);
                return;
            }
            case 6: {
                this.setRequiredModeGroup((ModeDeclarationGroupPrototype)newValue);
                return;
            }
            case 7: {
                this.setSupportsAsynchronousModeSwitch((Boolean)newValue);
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
                this.setBswInternalBehavior(null);
                return;
            }
            case 5: {
                this.unsetEnhancedModeApi();
                return;
            }
            case 6: {
                this.setRequiredModeGroup(null);
                return;
            }
            case 7: {
                this.unsetSupportsAsynchronousModeSwitch();
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
                return this.getBswInternalBehavior() != null;
            }
            case 5: {
                return this.isSetEnhancedModeApi();
            }
            case 6: {
                return this.requiredModeGroup != null;
            }
            case 7: {
                return this.isSetSupportsAsynchronousModeSwitch();
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
        result.append(", supportsAsynchronousModeSwitch: ");
        if (this.supportsAsynchronousModeSwitchESet) {
            result.append(this.supportsAsynchronousModeSwitch);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

