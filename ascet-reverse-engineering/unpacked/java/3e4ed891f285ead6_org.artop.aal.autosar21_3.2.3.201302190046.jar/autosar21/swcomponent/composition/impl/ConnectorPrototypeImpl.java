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
package autosar21.swcomponent.composition.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.composition.CompositionPackage;
import autosar21.swcomponent.composition.CompositionType;
import autosar21.swcomponent.composition.ConnectorPrototype;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.Measurable;
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
public abstract class ConnectorPrototypeImpl
extends IdentifiableImpl
implements ConnectorPrototype {
    protected EList<Measurable> measurables;

    protected ConnectorPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CompositionPackage.Literals.CONNECTOR_PROTOTYPE;
    }

    @Override
    public CompositionType getCompositionType() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (CompositionType)this.eContainer();
    }

    public NotificationChain basicSetCompositionType(CompositionType newCompositionType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCompositionType, 16, msgs);
        return msgs;
    }

    @Override
    public void setCompositionType(CompositionType newCompositionType) {
        if (newCompositionType != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newCompositionType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCompositionType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCompositionType != null) {
                msgs = ((InternalEObject)newCompositionType).eInverseAdd((InternalEObject)this, 22, CompositionType.class, msgs);
            }
            if ((msgs = this.basicSetCompositionType(newCompositionType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newCompositionType, (Object)newCompositionType));
        }
    }

    @Override
    public EList<Measurable> getMeasurables() {
        if (this.measurables == null) {
            this.measurables = new EObjectContainmentEList(Measurable.class, (InternalEObject)this, 17);
        }
        return this.measurables;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCompositionType((CompositionType)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetCompositionType(null, msgs);
            }
            case 17: {
                return ((InternalEList)this.getMeasurables()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, CompositionType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getCompositionType();
            }
            case 17: {
                return this.getMeasurables();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setCompositionType((CompositionType)newValue);
                return;
            }
            case 17: {
                this.getMeasurables().clear();
                this.getMeasurables().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setCompositionType(null);
                return;
            }
            case 17: {
                this.getMeasurables().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getCompositionType() != null;
            }
            case 17: {
                return this.measurables != null && !this.measurables.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

