/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GArgumentDataPrototype
 *  gautosar.gswcomponents.gportinterface.GArgumentDirectionEnum
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.swcomponent.portinterface.impl;

import autosar3x.swcomponent.datatype.datatypes.impl.DataPrototypeImpl;
import autosar3x.swcomponent.portinterface.ArgumentPrototype;
import autosar3x.swcomponent.portinterface.DirectionKind;
import autosar3x.swcomponent.portinterface.OperationPrototype;
import autosar3x.swcomponent.portinterface.PortinterfacePackage;
import gautosar.gswcomponents.gportinterface.GArgumentDataPrototype;
import gautosar.gswcomponents.gportinterface.GArgumentDirectionEnum;
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
public class ArgumentPrototypeImpl
extends DataPrototypeImpl
implements ArgumentPrototype {
    protected static final GArgumentDirectionEnum GDIRECTION_EDEFAULT = GArgumentDirectionEnum.IN;
    protected static final DirectionKind DIRECTION_EDEFAULT = DirectionKind.OUT;
    protected DirectionKind direction = DIRECTION_EDEFAULT;
    protected boolean directionESet;

    protected ArgumentPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.ARGUMENT_PROTOTYPE;
    }

    public GArgumentDirectionEnum gGetDirection() {
        return GArgumentDirectionEnum.getByName((String)this.getDirection().getName());
    }

    public void gSetDirection(GArgumentDirectionEnum newGDirection) {
        this.setDirection(DirectionKind.getByName(newGDirection.getName()));
    }

    public void gUnsetDirection() {
        this.unsetDirection();
    }

    public boolean gIsSetDirection() {
        return this.isSetDirection();
    }

    @Override
    public OperationPrototype getOperationPrototype() {
        if (this.eContainerFeatureID() != 22) {
            return null;
        }
        return (OperationPrototype)this.eContainer();
    }

    public NotificationChain basicSetOperationPrototype(OperationPrototype newOperationPrototype, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newOperationPrototype, 22, msgs);
        return msgs;
    }

    @Override
    public void setOperationPrototype(OperationPrototype newOperationPrototype) {
        if (newOperationPrototype != this.eInternalContainer() || this.eContainerFeatureID() != 22 && newOperationPrototype != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newOperationPrototype)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newOperationPrototype != null) {
                msgs = ((InternalEObject)newOperationPrototype).eInverseAdd((InternalEObject)this, 20, OperationPrototype.class, msgs);
            }
            if ((msgs = this.basicSetOperationPrototype(newOperationPrototype, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newOperationPrototype, (Object)newOperationPrototype));
        }
    }

    @Override
    public DirectionKind getDirection() {
        return this.direction;
    }

    @Override
    public void setDirection(DirectionKind newDirection) {
        DirectionKind oldDirection = this.direction;
        this.direction = newDirection == null ? DIRECTION_EDEFAULT : newDirection;
        boolean oldDirectionESet = this.directionESet;
        this.directionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldDirection, (Object)this.direction, !oldDirectionESet));
        }
    }

    @Override
    public void unsetDirection() {
        DirectionKind oldDirection = this.direction;
        boolean oldDirectionESet = this.directionESet;
        this.direction = DIRECTION_EDEFAULT;
        this.directionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldDirection, (Object)DIRECTION_EDEFAULT, oldDirectionESet));
        }
    }

    @Override
    public boolean isSetDirection() {
        return this.directionESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetOperationPrototype((OperationPrototype)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetOperationPrototype(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 22: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, OperationPrototype.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.gGetDirection();
            }
            case 22: {
                return this.getOperationPrototype();
            }
            case 23: {
                return this.getDirection();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.gSetDirection((GArgumentDirectionEnum)newValue);
                return;
            }
            case 22: {
                this.setOperationPrototype((OperationPrototype)newValue);
                return;
            }
            case 23: {
                this.setDirection((DirectionKind)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.gUnsetDirection();
                return;
            }
            case 22: {
                this.setOperationPrototype(null);
                return;
            }
            case 23: {
                this.unsetDirection();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.gIsSetDirection();
            }
            case 22: {
                return this.getOperationPrototype() != null;
            }
            case 23: {
                return this.isSetDirection();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GArgumentDataPrototype.class) {
            switch (derivedFeatureID) {
                case 21: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GArgumentDataPrototype.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 21;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (direction: ");
        if (this.directionESet) {
            result.append((Object)this.direction);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

