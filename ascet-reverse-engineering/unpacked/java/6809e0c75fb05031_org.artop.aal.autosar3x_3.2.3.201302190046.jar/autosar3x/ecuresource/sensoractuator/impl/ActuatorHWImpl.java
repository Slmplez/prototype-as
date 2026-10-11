/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecuresource.sensoractuator.impl;

import autosar3x.ecuresource.sensoractuator.ActuatorHW;
import autosar3x.ecuresource.sensoractuator.ActuatorHwDefaultPositioinTypeEnum;
import autosar3x.ecuresource.sensoractuator.ActuatorHwElectricalTypeEnum;
import autosar3x.ecuresource.sensoractuator.ActuatorHwMovementEnum;
import autosar3x.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar3x.ecuresource.sensoractuator.impl.SensorActuatorHWImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ActuatorHWImpl
extends SensorActuatorHWImpl
implements ActuatorHW {
    protected static final ActuatorHwDefaultPositioinTypeEnum DEFAULT_POSITION_TYPE_EDEFAULT = ActuatorHwDefaultPositioinTypeEnum.STABLE;
    protected ActuatorHwDefaultPositioinTypeEnum defaultPositionType = DEFAULT_POSITION_TYPE_EDEFAULT;
    protected boolean defaultPositionTypeESet;
    protected static final String DEFAULT_POSITION_VALUE_EDEFAULT = "";
    protected String defaultPositionValue = "";
    protected boolean defaultPositionValueESet;
    protected static final ActuatorHwElectricalTypeEnum ELECTRICAL_TYPE_EDEFAULT = ActuatorHwElectricalTypeEnum.RESISTIVE;
    protected ActuatorHwElectricalTypeEnum electricalType = ELECTRICAL_TYPE_EDEFAULT;
    protected boolean electricalTypeESet;
    protected static final Integer ENDURANCE_EDEFAULT = new Integer(0);
    protected Integer endurance = ENDURANCE_EDEFAULT;
    protected boolean enduranceESet;
    protected static final ActuatorHwMovementEnum MOVEMENT_EDEFAULT = ActuatorHwMovementEnum.UNIDIRECTIONAL;
    protected ActuatorHwMovementEnum movement = MOVEMENT_EDEFAULT;
    protected boolean movementESet;

    protected ActuatorHWImpl() {
    }

    protected EClass eStaticClass() {
        return SensoractuatorPackage.Literals.ACTUATOR_HW;
    }

    public ActuatorHwDefaultPositioinTypeEnum getDefaultPositionType() {
        return this.defaultPositionType;
    }

    public void setDefaultPositionType(ActuatorHwDefaultPositioinTypeEnum newDefaultPositionType) {
        ActuatorHwDefaultPositioinTypeEnum oldDefaultPositionType = this.defaultPositionType;
        this.defaultPositionType = newDefaultPositionType == null ? DEFAULT_POSITION_TYPE_EDEFAULT : newDefaultPositionType;
        boolean oldDefaultPositionTypeESet = this.defaultPositionTypeESet;
        this.defaultPositionTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldDefaultPositionType, (Object)this.defaultPositionType, !oldDefaultPositionTypeESet));
        }
    }

    public void unsetDefaultPositionType() {
        ActuatorHwDefaultPositioinTypeEnum oldDefaultPositionType = this.defaultPositionType;
        boolean oldDefaultPositionTypeESet = this.defaultPositionTypeESet;
        this.defaultPositionType = DEFAULT_POSITION_TYPE_EDEFAULT;
        this.defaultPositionTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldDefaultPositionType, (Object)DEFAULT_POSITION_TYPE_EDEFAULT, oldDefaultPositionTypeESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldDefaultPositionValue, (Object)this.defaultPositionValue, !oldDefaultPositionValueESet));
        }
    }

    public void unsetDefaultPositionValue() {
        String oldDefaultPositionValue = this.defaultPositionValue;
        boolean oldDefaultPositionValueESet = this.defaultPositionValueESet;
        this.defaultPositionValue = DEFAULT_POSITION_VALUE_EDEFAULT;
        this.defaultPositionValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldDefaultPositionValue, (Object)DEFAULT_POSITION_VALUE_EDEFAULT, oldDefaultPositionValueESet));
        }
    }

    public boolean isSetDefaultPositionValue() {
        return this.defaultPositionValueESet;
    }

    public ActuatorHwElectricalTypeEnum getElectricalType() {
        return this.electricalType;
    }

    public void setElectricalType(ActuatorHwElectricalTypeEnum newElectricalType) {
        ActuatorHwElectricalTypeEnum oldElectricalType = this.electricalType;
        this.electricalType = newElectricalType == null ? ELECTRICAL_TYPE_EDEFAULT : newElectricalType;
        boolean oldElectricalTypeESet = this.electricalTypeESet;
        this.electricalTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldElectricalType, (Object)this.electricalType, !oldElectricalTypeESet));
        }
    }

    public void unsetElectricalType() {
        ActuatorHwElectricalTypeEnum oldElectricalType = this.electricalType;
        boolean oldElectricalTypeESet = this.electricalTypeESet;
        this.electricalType = ELECTRICAL_TYPE_EDEFAULT;
        this.electricalTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldElectricalType, (Object)ELECTRICAL_TYPE_EDEFAULT, oldElectricalTypeESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldEndurance, (Object)this.endurance, !oldEnduranceESet));
        }
    }

    public void unsetEndurance() {
        Integer oldEndurance = this.endurance;
        boolean oldEnduranceESet = this.enduranceESet;
        this.endurance = ENDURANCE_EDEFAULT;
        this.enduranceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldEndurance, (Object)ENDURANCE_EDEFAULT, oldEnduranceESet));
        }
    }

    public boolean isSetEndurance() {
        return this.enduranceESet;
    }

    public ActuatorHwMovementEnum getMovement() {
        return this.movement;
    }

    public void setMovement(ActuatorHwMovementEnum newMovement) {
        ActuatorHwMovementEnum oldMovement = this.movement;
        this.movement = newMovement == null ? MOVEMENT_EDEFAULT : newMovement;
        boolean oldMovementESet = this.movementESet;
        this.movementESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldMovement, (Object)this.movement, !oldMovementESet));
        }
    }

    public void unsetMovement() {
        ActuatorHwMovementEnum oldMovement = this.movement;
        boolean oldMovementESet = this.movementESet;
        this.movement = MOVEMENT_EDEFAULT;
        this.movementESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldMovement, (Object)MOVEMENT_EDEFAULT, oldMovementESet));
        }
    }

    public boolean isSetMovement() {
        return this.movementESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 30: {
                return this.getDefaultPositionType();
            }
            case 31: {
                return this.getDefaultPositionValue();
            }
            case 32: {
                return this.getElectricalType();
            }
            case 33: {
                return this.getEndurance();
            }
            case 34: {
                return this.getMovement();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 30: {
                this.setDefaultPositionType((ActuatorHwDefaultPositioinTypeEnum)((Object)newValue));
                return;
            }
            case 31: {
                this.setDefaultPositionValue((String)newValue);
                return;
            }
            case 32: {
                this.setElectricalType((ActuatorHwElectricalTypeEnum)((Object)newValue));
                return;
            }
            case 33: {
                this.setEndurance((Integer)newValue);
                return;
            }
            case 34: {
                this.setMovement((ActuatorHwMovementEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 30: {
                this.unsetDefaultPositionType();
                return;
            }
            case 31: {
                this.unsetDefaultPositionValue();
                return;
            }
            case 32: {
                this.unsetElectricalType();
                return;
            }
            case 33: {
                this.unsetEndurance();
                return;
            }
            case 34: {
                this.unsetMovement();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 30: {
                return this.isSetDefaultPositionType();
            }
            case 31: {
                return this.isSetDefaultPositionValue();
            }
            case 32: {
                return this.isSetElectricalType();
            }
            case 33: {
                return this.isSetEndurance();
            }
            case 34: {
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

