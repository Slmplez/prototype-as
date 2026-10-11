/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.serviceprocesstask.impl;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.datadefproperties.ValueList;
import autosar40.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar40.commonstructure.serviceprocesstask.SwServiceArg;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.ArgumentDirectionEnum;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwServiceArgImpl
extends IdentifiableImpl
implements SwServiceArg {
    protected static final ArgumentDirectionEnum DIRECTION_EDEFAULT = ArgumentDirectionEnum.IN;
    protected ArgumentDirectionEnum direction = DIRECTION_EDEFAULT;
    protected boolean directionESet;
    protected ValueList swArraysize;
    protected SwDataDefProps swDataDefProps;

    protected SwServiceArgImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceprocesstaskPackage.Literals.SW_SERVICE_ARG;
    }

    public ArgumentDirectionEnum getDirection() {
        return this.direction;
    }

    public void setDirection(ArgumentDirectionEnum newDirection) {
        ArgumentDirectionEnum oldDirection = this.direction;
        this.direction = newDirection == null ? DIRECTION_EDEFAULT : newDirection;
        boolean oldDirectionESet = this.directionESet;
        this.directionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldDirection, (Object)this.direction, !oldDirectionESet));
        }
    }

    public void unsetDirection() {
        ArgumentDirectionEnum oldDirection = this.direction;
        boolean oldDirectionESet = this.directionESet;
        this.direction = DIRECTION_EDEFAULT;
        this.directionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldDirection, (Object)DIRECTION_EDEFAULT, oldDirectionESet));
        }
    }

    public boolean isSetDirection() {
        return this.directionESet;
    }

    public ValueList getSwArraysize() {
        return this.swArraysize;
    }

    public NotificationChain basicSetSwArraysize(ValueList newSwArraysize, NotificationChain msgs) {
        ValueList oldSwArraysize = this.swArraysize;
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

    public void setSwArraysize(ValueList newSwArraysize) {
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

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetSwArraysize(null, msgs);
            }
            case 20: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getDirection();
            }
            case 19: {
                return this.getSwArraysize();
            }
            case 20: {
                return this.getSwDataDefProps();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setDirection((ArgumentDirectionEnum)((Object)newValue));
                return;
            }
            case 19: {
                this.setSwArraysize((ValueList)newValue);
                return;
            }
            case 20: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.unsetDirection();
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
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.isSetDirection();
            }
            case 19: {
                return this.swArraysize != null;
            }
            case 20: {
                return this.swDataDefProps != null;
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

