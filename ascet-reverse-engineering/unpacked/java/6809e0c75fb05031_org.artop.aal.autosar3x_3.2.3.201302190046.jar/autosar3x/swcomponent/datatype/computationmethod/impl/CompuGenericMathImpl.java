/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 */
package autosar3x.swcomponent.datatype.computationmethod.impl;

import autosar3x.commonstructure.datadefproperties.SwDataDependency;
import autosar3x.swcomponent.datatype.computationmethod.CompuGenericMath;
import autosar3x.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar3x.swcomponent.datatype.valuemodel.impl.ValueByFormulaImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.FeatureMap;

public class CompuGenericMathImpl
extends ValueByFormulaImpl
implements CompuGenericMath {
    protected static final String LEVEL_EDEFAULT = "";
    protected String level = "";
    protected boolean levelESet;

    protected CompuGenericMathImpl() {
    }

    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_GENERIC_MATH;
    }

    public SwDataDependency getSwDataDependency() {
        return (SwDataDependency)this.getMixed().get((EStructuralFeature)ComputationmethodPackage.Literals.COMPU_GENERIC_MATH__SW_DATA_DEPENDENCY, true);
    }

    public void setSwDataDependency(SwDataDependency newSwDataDependency) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)ComputationmethodPackage.Literals.COMPU_GENERIC_MATH__SW_DATA_DEPENDENCY, (Object)newSwDataDependency);
    }

    public String getLevel() {
        return this.level;
    }

    public void setLevel(String newLevel) {
        String oldLevel = this.level;
        this.level = newLevel;
        boolean oldLevelESet = this.levelESet;
        this.levelESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldLevel, (Object)this.level, !oldLevelESet));
        }
    }

    public void unsetLevel() {
        String oldLevel = this.level;
        boolean oldLevelESet = this.levelESet;
        this.level = LEVEL_EDEFAULT;
        this.levelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldLevel, (Object)LEVEL_EDEFAULT, oldLevelESet));
        }
    }

    public boolean isSetLevel() {
        return this.levelESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 5, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.eBasicSetContainer(null, 5, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 5: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, SwDataDependency.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getSwDataDependency();
            }
            case 6: {
                return this.getLevel();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setSwDataDependency((SwDataDependency)newValue);
                return;
            }
            case 6: {
                this.setLevel((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setSwDataDependency(null);
                return;
            }
            case 6: {
                this.unsetLevel();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.getSwDataDependency() != null;
            }
            case 6: {
                return this.isSetLevel();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (level: ");
        if (this.levelESet) {
            result.append(this.level);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

