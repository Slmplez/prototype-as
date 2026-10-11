/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
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
package autosar40.genericstructure.varianthandling.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.varianthandling.IntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterion;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterionValue;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterionValueSet;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
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
public class PostBuildVariantCriterionValueImpl
extends ARObjectImpl
implements PostBuildVariantCriterionValue,
IReferringClass {
    protected PostBuildVariantCriterion variantCriterion;
    protected IntegerValueVariationPoint value;
    protected EList<Annotation> annotations;

    protected PostBuildVariantCriterionValueImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.POST_BUILD_VARIANT_CRITERION_VALUE;
    }

    @Override
    public PostBuildVariantCriterionValueSet getPostBuildVariantCriterionValueSet() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PostBuildVariantCriterionValueSet)this.eContainer();
    }

    public NotificationChain basicSetPostBuildVariantCriterionValueSet(PostBuildVariantCriterionValueSet newPostBuildVariantCriterionValueSet, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPostBuildVariantCriterionValueSet, 4, msgs);
        return msgs;
    }

    @Override
    public void setPostBuildVariantCriterionValueSet(PostBuildVariantCriterionValueSet newPostBuildVariantCriterionValueSet) {
        if (newPostBuildVariantCriterionValueSet != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPostBuildVariantCriterionValueSet != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPostBuildVariantCriterionValueSet)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPostBuildVariantCriterionValueSet != null) {
                msgs = ((InternalEObject)newPostBuildVariantCriterionValueSet).eInverseAdd((InternalEObject)this, 21, PostBuildVariantCriterionValueSet.class, msgs);
            }
            if ((msgs = this.basicSetPostBuildVariantCriterionValueSet(newPostBuildVariantCriterionValueSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPostBuildVariantCriterionValueSet, (Object)newPostBuildVariantCriterionValueSet));
        }
    }

    @Override
    public PostBuildVariantCriterion getVariantCriterion() {
        if (this.variantCriterion != null && this.variantCriterion.eIsProxy()) {
            InternalEObject oldVariantCriterion = (InternalEObject)this.variantCriterion;
            this.variantCriterion = (PostBuildVariantCriterion)this.eResolveProxy(oldVariantCriterion);
            if (this.variantCriterion != oldVariantCriterion && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldVariantCriterion, (Object)this.variantCriterion));
            }
        }
        return this.variantCriterion;
    }

    public PostBuildVariantCriterion basicGetVariantCriterion() {
        return this.variantCriterion;
    }

    @Override
    public void setVariantCriterion(PostBuildVariantCriterion newVariantCriterion) {
        PostBuildVariantCriterion oldVariantCriterion = this.variantCriterion;
        this.variantCriterion = newVariantCriterion;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldVariantCriterion, (Object)this.variantCriterion));
        }
    }

    @Override
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

    @Override
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

    @Override
    public EList<Annotation> getAnnotations() {
        if (this.annotations == null) {
            this.annotations = new EObjectContainmentEList(Annotation.class, (InternalEObject)this, 7);
        }
        return this.annotations;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPostBuildVariantCriterionValueSet((PostBuildVariantCriterionValueSet)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPostBuildVariantCriterionValueSet(null, msgs);
            }
            case 6: {
                return this.basicSetValue(null, msgs);
            }
            case 7: {
                return ((InternalEList)this.getAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, PostBuildVariantCriterionValueSet.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPostBuildVariantCriterionValueSet();
            }
            case 5: {
                if (resolve) {
                    return this.getVariantCriterion();
                }
                return this.basicGetVariantCriterion();
            }
            case 6: {
                return this.getValue();
            }
            case 7: {
                return this.getAnnotations();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPostBuildVariantCriterionValueSet((PostBuildVariantCriterionValueSet)newValue);
                return;
            }
            case 5: {
                this.setVariantCriterion((PostBuildVariantCriterion)newValue);
                return;
            }
            case 6: {
                this.setValue((IntegerValueVariationPoint)newValue);
                return;
            }
            case 7: {
                this.getAnnotations().clear();
                this.getAnnotations().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPostBuildVariantCriterionValueSet(null);
                return;
            }
            case 5: {
                this.setVariantCriterion(null);
                return;
            }
            case 6: {
                this.setValue(null);
                return;
            }
            case 7: {
                this.getAnnotations().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getPostBuildVariantCriterionValueSet() != null;
            }
            case 5: {
                return this.variantCriterion != null;
            }
            case 6: {
                return this.value != null;
            }
            case 7: {
                return this.annotations != null && !this.annotations.isEmpty();
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

