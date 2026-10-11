/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.measurementandcalibration.characteristic.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmAccess;
import autosar21.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.CalprmAccessCalprmElementPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess;
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
public class CalprmAccessImpl
extends IdentifiableImpl
implements CalprmAccess {
    protected CalprmAccessCalprmElementPrototype calprmAccess;

    protected CalprmAccessImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CharacteristicPackage.Literals.CALPRM_ACCESS;
    }

    public GParameterInAtomicSwcIRef gGetParameter() {
        return this.getCalprmAccess();
    }

    public void gSetParameter(GParameterInAtomicSwcIRef newGParameter) {
        this.setCalprmAccess((CalprmAccessCalprmElementPrototype)newGParameter);
    }

    @Override
    public RunnableEntity getRunnableEntity() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (RunnableEntity)this.eContainer();
    }

    public NotificationChain basicSetRunnableEntity(RunnableEntity newRunnableEntity, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newRunnableEntity, 17, msgs);
        return msgs;
    }

    @Override
    public void setRunnableEntity(RunnableEntity newRunnableEntity) {
        if (newRunnableEntity != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newRunnableEntity != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newRunnableEntity)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newRunnableEntity != null) {
                msgs = ((InternalEObject)newRunnableEntity).eInverseAdd((InternalEObject)this, 28, RunnableEntity.class, msgs);
            }
            if ((msgs = this.basicSetRunnableEntity(newRunnableEntity, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newRunnableEntity, (Object)newRunnableEntity));
        }
    }

    @Override
    public CalprmAccessCalprmElementPrototype getCalprmAccess() {
        return this.calprmAccess;
    }

    public NotificationChain basicSetCalprmAccess(CalprmAccessCalprmElementPrototype newCalprmAccess, NotificationChain msgs) {
        CalprmAccessCalprmElementPrototype oldCalprmAccess = this.calprmAccess;
        this.calprmAccess = newCalprmAccess;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldCalprmAccess, (Object)newCalprmAccess);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCalprmAccess(CalprmAccessCalprmElementPrototype newCalprmAccess) {
        if (newCalprmAccess != this.calprmAccess) {
            NotificationChain msgs = null;
            if (this.calprmAccess != null) {
                msgs = ((InternalEObject)this.calprmAccess).eInverseRemove((InternalEObject)this, 6, CalprmAccessCalprmElementPrototype.class, msgs);
            }
            if (newCalprmAccess != null) {
                msgs = ((InternalEObject)newCalprmAccess).eInverseAdd((InternalEObject)this, 6, CalprmAccessCalprmElementPrototype.class, msgs);
            }
            if ((msgs = this.basicSetCalprmAccess(newCalprmAccess, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newCalprmAccess, (Object)newCalprmAccess));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetRunnableEntity((RunnableEntity)otherEnd, msgs);
            }
            case 18: {
                if (this.calprmAccess != null) {
                    msgs = ((InternalEObject)this.calprmAccess).eInverseRemove((InternalEObject)this, -19, null, msgs);
                }
                return this.basicSetCalprmAccess((CalprmAccessCalprmElementPrototype)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetRunnableEntity(null, msgs);
            }
            case 18: {
                return this.basicSetCalprmAccess(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 28, RunnableEntity.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.gGetParameter();
            }
            case 17: {
                return this.getRunnableEntity();
            }
            case 18: {
                return this.getCalprmAccess();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.gSetParameter((GParameterInAtomicSwcIRef)newValue);
                return;
            }
            case 17: {
                this.setRunnableEntity((RunnableEntity)newValue);
                return;
            }
            case 18: {
                this.setCalprmAccess((CalprmAccessCalprmElementPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.gSetParameter(null);
                return;
            }
            case 17: {
                this.setRunnableEntity(null);
                return;
            }
            case 18: {
                this.setCalprmAccess(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.gGetParameter() != null;
            }
            case 17: {
                return this.getRunnableEntity() != null;
            }
            case 18: {
                return this.calprmAccess != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GParameterAccess.class) {
            switch (derivedFeatureID) {
                case 16: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GParameterAccess.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 16;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

