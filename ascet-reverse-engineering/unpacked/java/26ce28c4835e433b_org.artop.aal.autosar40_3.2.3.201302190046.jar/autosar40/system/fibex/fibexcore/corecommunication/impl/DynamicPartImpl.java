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
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.DynamicPart;
import autosar40.system.fibex.fibexcore.corecommunication.DynamicPartAlternative;
import autosar40.system.fibex.fibexcore.corecommunication.MultiplexedIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.impl.MultiplexedPartImpl;
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
public class DynamicPartImpl
extends MultiplexedPartImpl
implements DynamicPart {
    protected EList<DynamicPartAlternative> dynamicPartAlternatives;
    protected VariationPoint variationPoint;

    protected DynamicPartImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.DYNAMIC_PART;
    }

    @Override
    public MultiplexedIPdu getMultiplexedIPdu() {
        if (this.eContainerFeatureID() != 5) {
            return null;
        }
        return (MultiplexedIPdu)this.eContainer();
    }

    public NotificationChain basicSetMultiplexedIPdu(MultiplexedIPdu newMultiplexedIPdu, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMultiplexedIPdu, 5, msgs);
        return msgs;
    }

    @Override
    public void setMultiplexedIPdu(MultiplexedIPdu newMultiplexedIPdu) {
        if (newMultiplexedIPdu != this.eInternalContainer() || this.eContainerFeatureID() != 5 && newMultiplexedIPdu != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMultiplexedIPdu)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMultiplexedIPdu != null) {
                msgs = ((InternalEObject)newMultiplexedIPdu).eInverseAdd((InternalEObject)this, 22, MultiplexedIPdu.class, msgs);
            }
            if ((msgs = this.basicSetMultiplexedIPdu(newMultiplexedIPdu, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newMultiplexedIPdu, (Object)newMultiplexedIPdu));
        }
    }

    @Override
    public EList<DynamicPartAlternative> getDynamicPartAlternatives() {
        if (this.dynamicPartAlternatives == null) {
            this.dynamicPartAlternatives = new EObjectContainmentWithInverseEList(DynamicPartAlternative.class, (InternalEObject)this, 6, 4);
        }
        return this.dynamicPartAlternatives;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMultiplexedIPdu((MultiplexedIPdu)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getDynamicPartAlternatives()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetMultiplexedIPdu(null, msgs);
            }
            case 6: {
                return ((InternalEList)this.getDynamicPartAlternatives()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 5: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, MultiplexedIPdu.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getMultiplexedIPdu();
            }
            case 6: {
                return this.getDynamicPartAlternatives();
            }
            case 7: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setMultiplexedIPdu((MultiplexedIPdu)newValue);
                return;
            }
            case 6: {
                this.getDynamicPartAlternatives().clear();
                this.getDynamicPartAlternatives().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setMultiplexedIPdu(null);
                return;
            }
            case 6: {
                this.getDynamicPartAlternatives().clear();
                return;
            }
            case 7: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.getMultiplexedIPdu() != null;
            }
            case 6: {
                return this.dynamicPartAlternatives != null && !this.dynamicPartAlternatives.isEmpty();
            }
            case 7: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

