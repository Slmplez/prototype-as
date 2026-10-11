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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.commonstructure.axis.impl;

import autosar3x.commonstructure.axis.AxisPackage;
import autosar3x.commonstructure.axis.SwAxisGeneric;
import autosar3x.commonstructure.axis.SwAxisIndividual;
import autosar3x.commonstructure.axis.SwAxisType;
import autosar3x.commonstructure.axis.SwGenericAxisParam;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
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
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwAxisGenericImpl
extends ARObjectImpl
implements SwAxisGeneric,
IReferringClass {
    protected SwAxisType swAxisType;
    protected EList<SwGenericAxisParam> swGenericAxisParams;

    protected SwAxisGenericImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return AxisPackage.Literals.SW_AXIS_GENERIC;
    }

    @Override
    public SwAxisIndividual getSwAxisIndividual() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwAxisIndividual)this.eContainer();
    }

    public NotificationChain basicSetSwAxisIndividual(SwAxisIndividual newSwAxisIndividual, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwAxisIndividual, 4, msgs);
        return msgs;
    }

    @Override
    public void setSwAxisIndividual(SwAxisIndividual newSwAxisIndividual) {
        if (newSwAxisIndividual != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwAxisIndividual != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwAxisIndividual)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwAxisIndividual != null) {
                msgs = ((InternalEObject)newSwAxisIndividual).eInverseAdd((InternalEObject)this, 11, SwAxisIndividual.class, msgs);
            }
            if ((msgs = this.basicSetSwAxisIndividual(newSwAxisIndividual, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwAxisIndividual, (Object)newSwAxisIndividual));
        }
    }

    @Override
    public SwAxisType getSwAxisType() {
        if (this.swAxisType != null && this.swAxisType.eIsProxy()) {
            InternalEObject oldSwAxisType = (InternalEObject)this.swAxisType;
            this.swAxisType = (SwAxisType)this.eResolveProxy(oldSwAxisType);
            if (this.swAxisType != oldSwAxisType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldSwAxisType, (Object)this.swAxisType));
            }
        }
        return this.swAxisType;
    }

    public SwAxisType basicGetSwAxisType() {
        return this.swAxisType;
    }

    @Override
    public void setSwAxisType(SwAxisType newSwAxisType) {
        SwAxisType oldSwAxisType = this.swAxisType;
        this.swAxisType = newSwAxisType;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwAxisType, (Object)this.swAxisType));
        }
    }

    @Override
    public EList<SwGenericAxisParam> getSwGenericAxisParams() {
        if (this.swGenericAxisParams == null) {
            this.swGenericAxisParams = new EObjectContainmentWithInverseEList(SwGenericAxisParam.class, (InternalEObject)this, 6, 4);
        }
        return this.swGenericAxisParams;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwAxisIndividual((SwAxisIndividual)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getSwGenericAxisParams()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwAxisIndividual(null, msgs);
            }
            case 6: {
                return ((InternalEList)this.getSwGenericAxisParams()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 11, SwAxisIndividual.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwAxisIndividual();
            }
            case 5: {
                if (resolve) {
                    return this.getSwAxisType();
                }
                return this.basicGetSwAxisType();
            }
            case 6: {
                return this.getSwGenericAxisParams();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwAxisIndividual((SwAxisIndividual)newValue);
                return;
            }
            case 5: {
                this.setSwAxisType((SwAxisType)newValue);
                return;
            }
            case 6: {
                this.getSwGenericAxisParams().clear();
                this.getSwGenericAxisParams().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwAxisIndividual(null);
                return;
            }
            case 5: {
                this.setSwAxisType(null);
                return;
            }
            case 6: {
                this.getSwGenericAxisParams().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwAxisIndividual() != null;
            }
            case 5: {
                return this.swAxisType != null;
            }
            case 6: {
                return this.swGenericAxisParams != null && !this.swGenericAxisParams.isEmpty();
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

