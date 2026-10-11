/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.measurementandcalibration.datadefproperties.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.DatadefpropertiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDefProps;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependency;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependencyArgs;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwDataDependencyImpl
extends ARObjectImpl
implements SwDataDependency {
    protected static final String SW_DATA_DEPENDENCY_FORMULA_EDEFAULT = "";
    protected String swDataDependencyFormula = "";
    protected boolean swDataDependencyFormulaESet;
    protected SwDataDependencyArgs swDataDependencyArgs;

    protected SwDataDependencyImpl() {
    }

    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.SW_DATA_DEPENDENCY;
    }

    public SwDataDefProps getSwDataDefProps() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwDataDefProps)this.eContainer();
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwDataDefProps, 4, msgs);
        return msgs;
    }

    public void setSwDataDefProps(SwDataDefProps newSwDataDefProps) {
        if (newSwDataDefProps != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwDataDefProps != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwDataDefProps)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, 18, SwDataDefProps.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    public String getSwDataDependencyFormula() {
        return this.swDataDependencyFormula;
    }

    public void setSwDataDependencyFormula(String newSwDataDependencyFormula) {
        String oldSwDataDependencyFormula = this.swDataDependencyFormula;
        this.swDataDependencyFormula = newSwDataDependencyFormula;
        boolean oldSwDataDependencyFormulaESet = this.swDataDependencyFormulaESet;
        this.swDataDependencyFormulaESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwDataDependencyFormula, (Object)this.swDataDependencyFormula, !oldSwDataDependencyFormulaESet));
        }
    }

    public void unsetSwDataDependencyFormula() {
        String oldSwDataDependencyFormula = this.swDataDependencyFormula;
        boolean oldSwDataDependencyFormulaESet = this.swDataDependencyFormulaESet;
        this.swDataDependencyFormula = SW_DATA_DEPENDENCY_FORMULA_EDEFAULT;
        this.swDataDependencyFormulaESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldSwDataDependencyFormula, (Object)SW_DATA_DEPENDENCY_FORMULA_EDEFAULT, oldSwDataDependencyFormulaESet));
        }
    }

    public boolean isSetSwDataDependencyFormula() {
        return this.swDataDependencyFormulaESet;
    }

    public SwDataDependencyArgs getSwDataDependencyArgs() {
        return this.swDataDependencyArgs;
    }

    public NotificationChain basicSetSwDataDependencyArgs(SwDataDependencyArgs newSwDataDependencyArgs, NotificationChain msgs) {
        SwDataDependencyArgs oldSwDataDependencyArgs = this.swDataDependencyArgs;
        this.swDataDependencyArgs = newSwDataDependencyArgs;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwDataDependencyArgs, (Object)newSwDataDependencyArgs);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwDataDependencyArgs(SwDataDependencyArgs newSwDataDependencyArgs) {
        if (newSwDataDependencyArgs != this.swDataDependencyArgs) {
            NotificationChain msgs = null;
            if (this.swDataDependencyArgs != null) {
                msgs = ((InternalEObject)this.swDataDependencyArgs).eInverseRemove((InternalEObject)this, 4, SwDataDependencyArgs.class, msgs);
            }
            if (newSwDataDependencyArgs != null) {
                msgs = ((InternalEObject)newSwDataDependencyArgs).eInverseAdd((InternalEObject)this, 4, SwDataDependencyArgs.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDependencyArgs(newSwDataDependencyArgs, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSwDataDependencyArgs, (Object)newSwDataDependencyArgs));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwDataDefProps((SwDataDefProps)otherEnd, msgs);
            }
            case 6: {
                if (this.swDataDependencyArgs != null) {
                    msgs = ((InternalEObject)this.swDataDependencyArgs).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetSwDataDependencyArgs((SwDataDependencyArgs)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
            case 6: {
                return this.basicSetSwDataDependencyArgs(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, SwDataDefProps.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDefProps();
            }
            case 5: {
                return this.getSwDataDependencyFormula();
            }
            case 6: {
                return this.getSwDataDependencyArgs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
            case 5: {
                this.setSwDataDependencyFormula((String)newValue);
                return;
            }
            case 6: {
                this.setSwDataDependencyArgs((SwDataDependencyArgs)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwDataDefProps(null);
                return;
            }
            case 5: {
                this.unsetSwDataDependencyFormula();
                return;
            }
            case 6: {
                this.setSwDataDependencyArgs(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDefProps() != null;
            }
            case 5: {
                return this.isSetSwDataDependencyFormula();
            }
            case 6: {
                return this.swDataDependencyArgs != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (swDataDependencyFormula: ");
        if (this.swDataDependencyFormulaESet) {
            result.append(this.swDataDependencyFormula);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

