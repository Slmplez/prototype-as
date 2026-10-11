/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.datatype.datatypes.impl;

import autosar3x.swcomponent.datatype.datatypes.ARLimit;
import autosar3x.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar3x.swcomponent.datatype.datatypes.IntegerType;
import autosar3x.swcomponent.datatype.datatypes.Range;
import autosar3x.swcomponent.datatype.datatypes.impl.PrimitiveTypeImpl;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IntegerTypeImpl
extends PrimitiveTypeImpl
implements IntegerType {
    protected ARLimit lowerLimit;
    protected ARLimit upperLimit;

    protected IntegerTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatatypesPackage.Literals.INTEGER_TYPE;
    }

    @Override
    public ARLimit getLowerLimit() {
        return this.lowerLimit;
    }

    public NotificationChain basicSetLowerLimit(ARLimit newLowerLimit, NotificationChain msgs) {
        ARLimit oldLowerLimit = this.lowerLimit;
        this.lowerLimit = newLowerLimit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldLowerLimit, (Object)newLowerLimit);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLowerLimit(ARLimit newLowerLimit) {
        if (newLowerLimit != this.lowerLimit) {
            NotificationChain msgs = null;
            if (this.lowerLimit != null) {
                msgs = ((InternalEObject)this.lowerLimit).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newLowerLimit != null) {
                msgs = ((InternalEObject)newLowerLimit).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetLowerLimit(newLowerLimit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newLowerLimit, (Object)newLowerLimit));
        }
    }

    @Override
    public ARLimit getUpperLimit() {
        return this.upperLimit;
    }

    public NotificationChain basicSetUpperLimit(ARLimit newUpperLimit, NotificationChain msgs) {
        ARLimit oldUpperLimit = this.upperLimit;
        this.upperLimit = newUpperLimit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldUpperLimit, (Object)newUpperLimit);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setUpperLimit(ARLimit newUpperLimit) {
        if (newUpperLimit != this.upperLimit) {
            NotificationChain msgs = null;
            if (this.upperLimit != null) {
                msgs = ((InternalEObject)this.upperLimit).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newUpperLimit != null) {
                msgs = ((InternalEObject)newUpperLimit).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetUpperLimit(newUpperLimit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newUpperLimit, (Object)newUpperLimit));
        }
    }

    @Override
    public boolean defvaluesvaluesInRangeintersectInteger(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean defvaluesInRangeSetFloat(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean lowerLimitupperLimit(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetLowerLimit(null, msgs);
            }
            case 21: {
                return this.basicSetUpperLimit(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getLowerLimit();
            }
            case 21: {
                return this.getUpperLimit();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setLowerLimit((ARLimit)newValue);
                return;
            }
            case 21: {
                this.setUpperLimit((ARLimit)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.setLowerLimit(null);
                return;
            }
            case 21: {
                this.setUpperLimit(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.lowerLimit != null;
            }
            case 21: {
                return this.upperLimit != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == Range.class) {
            switch (derivedFeatureID) {
                case 20: {
                    return 4;
                }
                case 21: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == Range.class) {
            switch (baseFeatureID) {
                case 4: {
                    return 20;
                }
                case 5: {
                    return 21;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

