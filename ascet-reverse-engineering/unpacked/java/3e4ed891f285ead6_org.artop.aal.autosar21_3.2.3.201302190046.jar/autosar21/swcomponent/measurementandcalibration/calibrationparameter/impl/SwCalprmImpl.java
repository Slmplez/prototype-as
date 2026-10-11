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
package autosar21.swcomponent.measurementandcalibration.calibrationparameter.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.CalibrationparameterPackage;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprm;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwArraysize;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDefProps;
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
public class SwCalprmImpl
extends ARElementImpl
implements SwCalprm {
    protected SwArraysize swArraysize;
    protected SwDataDefProps swDataDefProps;
    protected EList<SwCalprm> swCalprms;

    protected SwCalprmImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CalibrationparameterPackage.Literals.SW_CALPRM;
    }

    @Override
    public SwCalprm getSwCalprm() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (SwCalprm)this.eContainer();
    }

    public NotificationChain basicSetSwCalprm(SwCalprm newSwCalprm, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwCalprm, 18, msgs);
        return msgs;
    }

    @Override
    public void setSwCalprm(SwCalprm newSwCalprm) {
        if (newSwCalprm != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newSwCalprm != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwCalprm)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwCalprm != null) {
                msgs = ((InternalEObject)newSwCalprm).eInverseAdd((InternalEObject)this, 21, SwCalprm.class, msgs);
            }
            if ((msgs = this.basicSetSwCalprm(newSwCalprm, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newSwCalprm, (Object)newSwCalprm));
        }
    }

    @Override
    public SwArraysize getSwArraysize() {
        return this.swArraysize;
    }

    public NotificationChain basicSetSwArraysize(SwArraysize newSwArraysize, NotificationChain msgs) {
        SwArraysize oldSwArraysize = this.swArraysize;
        this.swArraysize = newSwArraysize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldSwArraysize, (Object)newSwArraysize);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwArraysize(SwArraysize newSwArraysize) {
        if (newSwArraysize != this.swArraysize) {
            NotificationChain msgs = null;
            if (this.swArraysize != null) {
                msgs = ((InternalEObject)this.swArraysize).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newSwArraysize != null) {
                msgs = ((InternalEObject)newSwArraysize).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetSwArraysize(newSwArraysize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newSwArraysize, (Object)newSwArraysize));
        }
    }

    @Override
    public SwDataDefProps getSwDataDefProps() {
        return this.swDataDefProps;
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        SwDataDefProps oldSwDataDefProps = this.swDataDefProps;
        this.swDataDefProps = newSwDataDefProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldSwDataDefProps, (Object)newSwDataDefProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwDataDefProps(SwDataDefProps newSwDataDefProps) {
        if (newSwDataDefProps != this.swDataDefProps) {
            NotificationChain msgs = null;
            if (this.swDataDefProps != null) {
                msgs = ((InternalEObject)this.swDataDefProps).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    @Override
    public EList<SwCalprm> getSwCalprms() {
        if (this.swCalprms == null) {
            this.swCalprms = new EObjectContainmentWithInverseEList(SwCalprm.class, (InternalEObject)this, 21, 18);
        }
        return this.swCalprms;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwCalprm((SwCalprm)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getSwCalprms()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetSwCalprm(null, msgs);
            }
            case 19: {
                return this.basicSetSwArraysize(null, msgs);
            }
            case 20: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
            case 21: {
                return ((InternalEList)this.getSwCalprms()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, SwCalprm.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getSwCalprm();
            }
            case 19: {
                return this.getSwArraysize();
            }
            case 20: {
                return this.getSwDataDefProps();
            }
            case 21: {
                return this.getSwCalprms();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setSwCalprm((SwCalprm)newValue);
                return;
            }
            case 19: {
                this.setSwArraysize((SwArraysize)newValue);
                return;
            }
            case 20: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
            case 21: {
                this.getSwCalprms().clear();
                this.getSwCalprms().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setSwCalprm(null);
                return;
            }
            case 19: {
                this.setSwArraysize(null);
                return;
            }
            case 20: {
                this.setSwDataDefProps(null);
                return;
            }
            case 21: {
                this.getSwCalprms().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getSwCalprm() != null;
            }
            case 19: {
                return this.swArraysize != null;
            }
            case 20: {
                return this.swDataDefProps != null;
            }
            case 21: {
                return this.swCalprms != null && !this.swCalprms.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

