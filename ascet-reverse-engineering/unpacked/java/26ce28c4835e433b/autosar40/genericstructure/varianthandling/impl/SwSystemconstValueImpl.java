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

import autosar40.commonstructure.systemconstant.SwSystemconst;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.genericstructure.varianthandling.SwSystemconstValue;
import autosar40.genericstructure.varianthandling.SwSystemconstantValueSet;
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
public class SwSystemconstValueImpl
extends ARObjectImpl
implements SwSystemconstValue,
IReferringClass {
    protected SwSystemconst swSystemconst;
    protected NumericalValueVariationPoint value;
    protected EList<Annotation> annotations;

    protected SwSystemconstValueImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.SW_SYSTEMCONST_VALUE;
    }

    @Override
    public SwSystemconstantValueSet getSwSystemconstantValueSet() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwSystemconstantValueSet)this.eContainer();
    }

    public NotificationChain basicSetSwSystemconstantValueSet(SwSystemconstantValueSet newSwSystemconstantValueSet, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwSystemconstantValueSet, 4, msgs);
        return msgs;
    }

    @Override
    public void setSwSystemconstantValueSet(SwSystemconstantValueSet newSwSystemconstantValueSet) {
        if (newSwSystemconstantValueSet != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwSystemconstantValueSet != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwSystemconstantValueSet)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwSystemconstantValueSet != null) {
                msgs = ((InternalEObject)newSwSystemconstantValueSet).eInverseAdd((InternalEObject)this, 21, SwSystemconstantValueSet.class, msgs);
            }
            if ((msgs = this.basicSetSwSystemconstantValueSet(newSwSystemconstantValueSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwSystemconstantValueSet, (Object)newSwSystemconstantValueSet));
        }
    }

    @Override
    public SwSystemconst getSwSystemconst() {
        if (this.swSystemconst != null && this.swSystemconst.eIsProxy()) {
            InternalEObject oldSwSystemconst = (InternalEObject)this.swSystemconst;
            this.swSystemconst = (SwSystemconst)this.eResolveProxy(oldSwSystemconst);
            if (this.swSystemconst != oldSwSystemconst && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldSwSystemconst, (Object)this.swSystemconst));
            }
        }
        return this.swSystemconst;
    }

    public SwSystemconst basicGetSwSystemconst() {
        return this.swSystemconst;
    }

    @Override
    public void setSwSystemconst(SwSystemconst newSwSystemconst) {
        SwSystemconst oldSwSystemconst = this.swSystemconst;
        this.swSystemconst = newSwSystemconst;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwSystemconst, (Object)this.swSystemconst));
        }
    }

    @Override
    public NumericalValueVariationPoint getValue() {
        return this.value;
    }

    public NotificationChain basicSetValue(NumericalValueVariationPoint newValue, NotificationChain msgs) {
        NumericalValueVariationPoint oldValue = this.value;
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
    public void setValue(NumericalValueVariationPoint newValue) {
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
                return this.basicSetSwSystemconstantValueSet((SwSystemconstantValueSet)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwSystemconstantValueSet(null, msgs);
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, SwSystemconstantValueSet.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwSystemconstantValueSet();
            }
            case 5: {
                if (resolve) {
                    return this.getSwSystemconst();
                }
                return this.basicGetSwSystemconst();
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
                this.setSwSystemconstantValueSet((SwSystemconstantValueSet)newValue);
                return;
            }
            case 5: {
                this.setSwSystemconst((SwSystemconst)newValue);
                return;
            }
            case 6: {
                this.setValue((NumericalValueVariationPoint)newValue);
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
                this.setSwSystemconstantValueSet(null);
                return;
            }
            case 5: {
                this.setSwSystemconst(null);
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
                return this.getSwSystemconstantValueSet() != null;
            }
            case 5: {
                return this.swSystemconst != null;
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

