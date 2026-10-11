/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.ecuresource.sensoractuator.impl;

import autosar21.ecuresource.sensoractuator.ActuatorHW;
import autosar21.ecuresource.sensoractuator.ActuatorHWDefaultPositionTypeEnum;
import autosar21.ecuresource.sensoractuator.ActuatorHWElectricalTypeEnum;
import autosar21.ecuresource.sensoractuator.ActuatorHWMovementEnum;
import autosar21.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar21.ecuresource.sensoractuator.impl.SensorActuatorHWImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ActuatorHWImpl
extends SensorActuatorHWImpl
implements ActuatorHW {
    protected static final ActuatorHWDefaultPositionTypeEnum DEFAULT_POSITION_TYPE_EDEFAULT = ActuatorHWDefaultPositionTypeEnum.STABEL;
    protected ActuatorHWDefaultPositionTypeEnum defaultPositionType = DEFAULT_POSITION_TYPE_EDEFAULT;
    protected boolean defaultPositionTypeESet;
    protected static final String DEFAULT_POSITION_VALUE_EDEFAULT = "";
    protected String defaultPositionValue = "";
    protected boolean defaultPositionValueESet;
    protected static final ActuatorHWElectricalTypeEnum ELECTRICAL_TYPE_EDEFAULT = ActuatorHWElectricalTypeEnum.RESISTIVE;
    protected ActuatorHWElectricalTypeEnum electricalType = ELECTRICAL_TYPE_EDEFAULT;
    protected boolean electricalTypeESet;
    protected static final Integer ENDURANCE_EDEFAULT = new Integer(0);
    protected Integer endurance = ENDURANCE_EDEFAULT;
    protected boolean enduranceESet;
    protected static final ActuatorHWMovementEnum MOVEMENT_EDEFAULT = ActuatorHWMovementEnum.UNIDIRECTIONAL;
    protected ActuatorHWMovementEnum movement = MOVEMENT_EDEFAULT;
    protected boolean movementESet;

    protected ActuatorHWImpl() {
    }

    protected EClass eStaticClass() {
        return SensoractuatorPackage.Literals.ACTUATOR_HW;
    }

    public ActuatorHWDefaultPositionTypeEnum getDefaultPositionType() {
        return this.defaultPositionType;
    }

    public void setDefaultPositionType(ActuatorHWDefaultPositionTypeEnum newDefaultPositionType) {
        ActuatorHWDefaultPositionTypeEnum oldDefaultPositionType = this.defaultPositionType;
        this.defaultPositionType = newDefaultPositionType == null ? DEFAULT_POSITION_TYPE_EDEFAULT : newDefaultPositionType;
        boolean oldDefaultPositionTypeESet = this.defaultPositionTypeESet;
        this.defaultPositionTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldDefaultPositionType, (Object)this.defaultPositionType, !oldDefaultPositionTypeESet));
        }
    }

    public void unsetDefaultPositionType() {
        ActuatorHWDefaultPositionTypeEnum oldDefaultPositionType = this.defaultPositionType;
        boolean oldDefaultPositionTypeESet = this.defaultPositionTypeESet;
        this.defaultPositionType = DEFAULT_POSITION_TYPE_EDEFAULT;
        this.defaultPositionTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldDefaultPositionType, (Object)DEFAULT_POSITION_TYPE_EDEFAULT, oldDefaultPositionTypeESet));
        }
    }

    public boolean isSetDefaultPositionType() {
        return this.defaultPositionTypeESet;
    }

    public String getDefaultPositionValue() {
        return this.defaultPositionValue;
    }

    public void setDefaultPositionValue(String newDefaultPositionValue) {
        String oldDefaultPositionValue = this.defaultPositionValue;
        this.defaultPositionValue = newDefaultPositionValue;
        boolean oldDefaultPositionValueESet = this.defaultPositionValueESet;
        this.defaultPositionValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldDefaultPositionValue, (Object)this.defaultPositionValue, !oldDefaultPositionValueESet));
        }
    }

    public void unsetDefaultPositionValue() {
        String oldDefaultPositionValue = this.defaultPositionValue;
        boolean oldDefaultPositionValueESet = this.defaultPositionValueESet;
        this.defaultPositionValue = DEFAULT_POSITION_VALUE_EDEFAULT;
        this.defaultPositionValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldDefaultPositionValue, (Object)DEFAULT_POSITION_VALUE_EDEFAULT, oldDefaultPositionValueESet));
        }
    }

    public boolean isSetDefaultPositionValue() {
        return this.defaultPositionValueESet;
    }

    public ActuatorHWElectricalTypeEnum getElectricalType() {
        return this.electricalType;
    }

    public void setElectricalType(ActuatorHWElectricalTypeEnum newElectricalType) {
        ActuatorHWElectricalTypeEnum oldElectricalType = this.electricalType;
        this.electricalType = newElectricalType == null ? ELECTRICAL_TYPE_EDEFAULT : newElectricalType;
        boolean oldElectricalTypeESet = this.electricalTypeESet;
        this.electricalTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldElectricalType, (Object)this.electricalType, !oldElectricalTypeESet));
        }
    }

    public void unsetElectricalType() {
        ActuatorHWElectricalTypeEnum oldElectricalType = this.electricalType;
        boolean oldElectricalTypeESet = this.electricalTypeESet;
        this.electricalType = ELECTRICAL_TYPE_EDEFAULT;
        this.electricalTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldElectricalType, (Object)ELECTRICAL_TYPE_EDEFAULT, oldElectricalTypeESet));
        }
    }

    public boolean isSetElectricalType() {
        return this.electricalTypeESet;
    }

    public Integer getEndurance() {
        return this.endurance;
    }

    public void setEndurance(Integer newEndurance) {
        Integer oldEndurance = this.endurance;
        this.endurance = newEndurance;
        boolean oldEnduranceESet = this.enduranceESet;
        this.enduranceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldEndurance, (Object)this.endurance, !oldEnduranceESet));
        }
    }

    public void unsetEndurance() {
        Integer oldEndurance = this.endurance;
        boolean oldEnduranceESet = this.enduranceESet;
        this.endurance = ENDURANCE_EDEFAULT;
        this.enduranceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldEndurance, (Object)ENDURANCE_EDEFAULT, oldEnduranceESet));
        }
    }

    public boolean isSetEndurance() {
        return this.enduranceESet;
    }

    public ActuatorHWMovementEnum getMovement() {
        return this.movement;
    }

    public void setMovement(ActuatorHWMovementEnum newMovement) {
        ActuatorHWMovementEnum oldMovement = this.movement;
        this.movement = newMovement == null ? MOVEMENT_EDEFAULT : newMovement;
        boolean oldMovementESet = this.movementESet;
        this.movementESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldMovement, (Object)this.movement, !oldMovementESet));
        }
    }

    public void unsetMovement() {
        ActuatorHWMovementEnum oldMovement = this.movement;
        boolean oldMovementESet = this.movementESet;
        this.movement = MOVEMENT_EDEFAULT;
        this.movementESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldMovement, (Object)MOVEMENT_EDEFAULT, oldMovementESet));
        }
    }

    public boolean isSetMovement() {
        return this.movementESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 29: {
                return this.getDefaultPositionType();
            }
            case 30: {
                return this.getDefaultPositionValue();
            }
            case 31: {
                return this.getElectricalType();
            }
            case 32: {
                return this.getEndurance();
            }
            case 33: {
                return this.getMovement();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 29: {
                this.setDefaultPositionType((ActuatorHWDefaultPositionTypeEnum)((Object)newValue));
                return;
            }
            case 30: {
                this.setDefaultPositionValue((String)newValue);
                return;
            }
            case 31: {
                this.setElectricalType((ActuatorHWElectricalTypeEnum)((Object)newValue));
                return;
            }
            case 32: {
                this.setEndurance((Integer)newValue);
                return;
            }
            case 33: {
                this.setMovement((ActuatorHWMovementEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 29: {
                this.unsetDefaultPositionType();
                return;
            }
            case 30: {
                this.unsetDefaultPositionValue();
                return;
            }
            case 31: {
                this.unsetElectricalType();
                return;
            }
            case 32: {
                this.unsetEndurance();
                return;
            }
            case 33: {
                this.unsetMovement();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 29: {
                return this.isSetDefaultPositionType();
            }
            case 30: {
                return this.isSetDefaultPositionValue();
            }
            case 31: {
                return this.isSetElectricalType();
            }
            case 32: {
                return this.isSetEndurance();
            }
            case 33: {
                return this.isSetMovement();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (defaultPositionType: ");
        if (this.defaultPositionTypeESet) {
            result.append((Object)this.defaultPositionType);
        } else {
            result.append("<unset>");
        }
        result.append(", defaultPositionValue: ");
        if (this.defaultPositionValueESet) {
            result.append(this.defaultPositionValue);
        } else {
            result.append("<unset>");
        }
        result.append(", electricalType: ");
        if (this.electricalTypeESet) {
            result.append((Object)this.electricalType);
        } else {
            result.append("<unset>");
        }
        result.append(", endurance: ");
        if (this.enduranceESet) {
            result.append(this.endurance);
        } else {
            result.append("<unset>");
        }
        result.append(", movement: ");
        if (this.movementESet) {
            result.append((Object)this.movement);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

