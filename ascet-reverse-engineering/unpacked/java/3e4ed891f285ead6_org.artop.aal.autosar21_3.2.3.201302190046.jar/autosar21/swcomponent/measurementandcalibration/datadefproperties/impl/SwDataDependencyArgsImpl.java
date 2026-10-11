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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.swcomponent.measurementandcalibration.datadefproperties.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.DatadefpropertiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependency;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependencyArgs;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwCalprmRefProxy;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefProxy;
import java.util.Collection;
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
public class SwDataDependencyArgsImpl
extends ARObjectImpl
implements SwDataDependencyArgs {
    protected EList<SwCalprmRefProxy> swCalprms;
    protected EList<SwVariableRefProxy> swVariableRefs;

    protected SwDataDependencyArgsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.SW_DATA_DEPENDENCY_ARGS;
    }

    @Override
    public SwDataDependency getSwDataDependency() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwDataDependency)this.eContainer();
    }

    public NotificationChain basicSetSwDataDependency(SwDataDependency newSwDataDependency, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwDataDependency, 4, msgs);
        return msgs;
    }

    @Override
    public void setSwDataDependency(SwDataDependency newSwDataDependency) {
        if (newSwDataDependency != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwDataDependency != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwDataDependency)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwDataDependency != null) {
                msgs = ((InternalEObject)newSwDataDependency).eInverseAdd((InternalEObject)this, 6, SwDataDependency.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDependency(newSwDataDependency, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwDataDependency, (Object)newSwDataDependency));
        }
    }

    @Override
    public EList<SwCalprmRefProxy> getSwCalprms() {
        if (this.swCalprms == null) {
            this.swCalprms = new EObjectContainmentEList(SwCalprmRefProxy.class, (InternalEObject)this, 5);
        }
        return this.swCalprms;
    }

    @Override
    public EList<SwVariableRefProxy> getSwVariableRefs() {
        if (this.swVariableRefs == null) {
            this.swVariableRefs = new EObjectContainmentEList(SwVariableRefProxy.class, (InternalEObject)this, 6);
        }
        return this.swVariableRefs;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwDataDependency((SwDataDependency)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwDataDependency(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getSwCalprms()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getSwVariableRefs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, SwDataDependency.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDependency();
            }
            case 5: {
                return this.getSwCalprms();
            }
            case 6: {
                return this.getSwVariableRefs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwDataDependency((SwDataDependency)newValue);
                return;
            }
            case 5: {
                this.getSwCalprms().clear();
                this.getSwCalprms().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getSwVariableRefs().clear();
                this.getSwVariableRefs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwDataDependency(null);
                return;
            }
            case 5: {
                this.getSwCalprms().clear();
                return;
            }
            case 6: {
                this.getSwVariableRefs().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDependency() != null;
            }
            case 5: {
                return this.swCalprms != null && !this.swCalprms.isEmpty();
            }
            case 6: {
                return this.swVariableRefs != null && !this.swVariableRefs.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

