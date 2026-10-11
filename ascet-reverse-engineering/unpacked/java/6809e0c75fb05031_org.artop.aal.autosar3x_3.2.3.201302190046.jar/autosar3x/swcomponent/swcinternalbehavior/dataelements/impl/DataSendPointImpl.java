/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.swcomponent.swcinternalbehavior.dataelements.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataSendPoint;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataSendPointDataElement;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DataSendPointImpl
extends IdentifiableImpl
implements DataSendPoint {
    protected DataSendPointDataElement dataElement;

    protected DataSendPointImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DataelementsPackage.Literals.DATA_SEND_POINT;
    }

    public GVariableInAtomicSwcIRef gGetDataElement() {
        return this.getDataElement();
    }

    public void gSetDataElement(GVariableInAtomicSwcIRef newGDataElement) {
        this.setDataElement((DataSendPointDataElement)newGDataElement);
    }

    @Override
    public RunnableEntity getRunnableEntity() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (RunnableEntity)this.eContainer();
    }

    public NotificationChain basicSetRunnableEntity(RunnableEntity newRunnableEntity, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newRunnableEntity, 18, msgs);
        return msgs;
    }

    @Override
    public void setRunnableEntity(RunnableEntity newRunnableEntity) {
        if (newRunnableEntity != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newRunnableEntity != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newRunnableEntity)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newRunnableEntity != null) {
                msgs = ((InternalEObject)newRunnableEntity).eInverseAdd((InternalEObject)this, 35, RunnableEntity.class, msgs);
            }
            if ((msgs = this.basicSetRunnableEntity(newRunnableEntity, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newRunnableEntity, (Object)newRunnableEntity));
        }
    }

    @Override
    public DataSendPointDataElement getDataElement() {
        return this.dataElement;
    }

    public NotificationChain basicSetDataElement(DataSendPointDataElement newDataElement, NotificationChain msgs) {
        DataSendPointDataElement oldDataElement = this.dataElement;
        this.dataElement = newDataElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldDataElement, (Object)newDataElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDataElement(DataSendPointDataElement newDataElement) {
        if (newDataElement != this.dataElement) {
            NotificationChain msgs = null;
            if (this.dataElement != null) {
                msgs = ((InternalEObject)this.dataElement).eInverseRemove((InternalEObject)this, 6, DataSendPointDataElement.class, msgs);
            }
            if (newDataElement != null) {
                msgs = ((InternalEObject)newDataElement).eInverseAdd((InternalEObject)this, 6, DataSendPointDataElement.class, msgs);
            }
            if ((msgs = this.basicSetDataElement(newDataElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newDataElement, (Object)newDataElement));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetRunnableEntity((RunnableEntity)otherEnd, msgs);
            }
            case 19: {
                if (this.dataElement != null) {
                    msgs = ((InternalEObject)this.dataElement).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetDataElement((DataSendPointDataElement)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetRunnableEntity(null, msgs);
            }
            case 19: {
                return this.basicSetDataElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 35, RunnableEntity.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.gGetDataElement();
            }
            case 18: {
                return this.getRunnableEntity();
            }
            case 19: {
                return this.getDataElement();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.gSetDataElement((GVariableInAtomicSwcIRef)newValue);
                return;
            }
            case 18: {
                this.setRunnableEntity((RunnableEntity)newValue);
                return;
            }
            case 19: {
                this.setDataElement((DataSendPointDataElement)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.gSetDataElement(null);
                return;
            }
            case 18: {
                this.setRunnableEntity(null);
                return;
            }
            case 19: {
                this.setDataElement(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.gGetDataElement() != null;
            }
            case 18: {
                return this.getRunnableEntity() != null;
            }
            case 19: {
                return this.dataElement != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GVariableAccess.class) {
            switch (derivedFeatureID) {
                case 17: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GVariableAccess.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 17;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

