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
package autosar40.genericstructure.varianthandling.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.IntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.PostBuildVariantCondition;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterion;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
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

public class PostBuildVariantConditionImpl
extends ARObjectImpl
implements PostBuildVariantCondition,
IReferringClass {
    protected PostBuildVariantCriterion matchingCriterion;
    protected IntegerValueVariationPoint value;

    protected PostBuildVariantConditionImpl() {
    }

    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.POST_BUILD_VARIANT_CONDITION;
    }

    public VariationPoint getVariationPoint() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (VariationPoint)this.eContainer();
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newVariationPoint, 4, msgs);
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newVariationPoint != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newVariationPoint)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, 8, VariationPoint.class, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public PostBuildVariantCriterion getMatchingCriterion() {
        if (this.matchingCriterion != null && this.matchingCriterion.eIsProxy()) {
            InternalEObject oldMatchingCriterion = (InternalEObject)this.matchingCriterion;
            this.matchingCriterion = (PostBuildVariantCriterion)this.eResolveProxy(oldMatchingCriterion);
            if (this.matchingCriterion != oldMatchingCriterion && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldMatchingCriterion, (Object)this.matchingCriterion));
            }
        }
        return this.matchingCriterion;
    }

    public PostBuildVariantCriterion basicGetMatchingCriterion() {
        return this.matchingCriterion;
    }

    public void setMatchingCriterion(PostBuildVariantCriterion newMatchingCriterion) {
        PostBuildVariantCriterion oldMatchingCriterion = this.matchingCriterion;
        this.matchingCriterion = newMatchingCriterion;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMatchingCriterion, (Object)this.matchingCriterion));
        }
    }

    public IntegerValueVariationPoint getValue() {
        return this.value;
    }

    public NotificationChain basicSetValue(IntegerValueVariationPoint newValue, NotificationChain msgs) {
        IntegerValueVariationPoint oldValue = this.value;
        this.value = newValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldValue, (Object)newValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setValue(IntegerValueVariationPoint newValue) {
        if (newValue != this.value) {
            NotificationChain msgs = null;
            if (this.value != null) {
                msgs = ((InternalEObject)this.value).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newValue != null) {
                msgs = ((InternalEObject)newValue).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetValue(newValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newValue, (Object)newValue));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetVariationPoint((VariationPoint)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetVariationPoint(null, msgs);
            }
            case 6: {
                return this.basicSetValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 8, VariationPoint.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getVariationPoint();
            }
            case 5: {
                if (resolve) {
                    return this.getMatchingCriterion();
                }
                return this.basicGetMatchingCriterion();
            }
            case 6: {
                return this.getValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
            case 5: {
                this.setMatchingCriterion((PostBuildVariantCriterion)newValue);
                return;
            }
            case 6: {
                this.setValue((IntegerValueVariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setVariationPoint(null);
                return;
            }
            case 5: {
                this.setMatchingCriterion(null);
                return;
            }
            case 6: {
                this.setValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getVariationPoint() != null;
            }
            case 5: {
                return this.matchingCriterion != null;
            }
            case 6: {
                return this.value != null;
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

