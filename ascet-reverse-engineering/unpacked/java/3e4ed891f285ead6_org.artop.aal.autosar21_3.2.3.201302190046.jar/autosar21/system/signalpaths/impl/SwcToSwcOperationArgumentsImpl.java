/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.signalpaths.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.signalpaths.SignalpathsPackage;
import autosar21.system.signalpaths.SwcToSwcOperationArguments;
import autosar21.system.signalpaths.SwcToSwcOperationArgumentsDirectionEnum;
import autosar21.system.signalpaths.instanceref.SwcToSwcOperationArgumentsOperation;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwcToSwcOperationArgumentsImpl
extends ARObjectImpl
implements SwcToSwcOperationArguments {
    protected static final SwcToSwcOperationArgumentsDirectionEnum DIRECTION_EDEFAULT = SwcToSwcOperationArgumentsDirectionEnum.IN;
    protected SwcToSwcOperationArgumentsDirectionEnum direction = DIRECTION_EDEFAULT;
    protected boolean directionESet;
    protected EList<SwcToSwcOperationArgumentsOperation> operations;

    protected SwcToSwcOperationArgumentsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SignalpathsPackage.Literals.SWC_TO_SWC_OPERATION_ARGUMENTS;
    }

    @Override
    public SwcToSwcOperationArgumentsDirectionEnum getDirection() {
        return this.direction;
    }

    @Override
    public void setDirection(SwcToSwcOperationArgumentsDirectionEnum newDirection) {
        SwcToSwcOperationArgumentsDirectionEnum oldDirection = this.direction;
        this.direction = newDirection == null ? DIRECTION_EDEFAULT : newDirection;
        boolean oldDirectionESet = this.directionESet;
        this.directionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldDirection, (Object)this.direction, !oldDirectionESet));
        }
    }

    @Override
    public void unsetDirection() {
        SwcToSwcOperationArgumentsDirectionEnum oldDirection = this.direction;
        boolean oldDirectionESet = this.directionESet;
        this.direction = DIRECTION_EDEFAULT;
        this.directionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldDirection, (Object)DIRECTION_EDEFAULT, oldDirectionESet));
        }
    }

    @Override
    public boolean isSetDirection() {
        return this.directionESet;
    }

    @Override
    public EList<SwcToSwcOperationArgumentsOperation> getOperations() {
        if (this.operations == null) {
            this.operations = new EObjectContainmentWithInverseEList(SwcToSwcOperationArgumentsOperation.class, (InternalEObject)this, 5, 4);
        }
        return this.operations;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getOperations()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getOperations()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDirection();
            }
            case 5: {
                return this.getOperations();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDirection((SwcToSwcOperationArgumentsDirectionEnum)((Object)newValue));
                return;
            }
            case 5: {
                this.getOperations().clear();
                this.getOperations().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetDirection();
                return;
            }
            case 5: {
                this.getOperations().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetDirection();
            }
            case 5: {
                return this.operations != null && !this.operations.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

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

