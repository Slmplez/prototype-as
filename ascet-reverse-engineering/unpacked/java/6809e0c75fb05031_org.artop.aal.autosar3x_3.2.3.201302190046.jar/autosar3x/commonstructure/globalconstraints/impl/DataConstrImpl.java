/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.commonstructure.globalconstraints.impl;

import autosar3x.commonstructure.globalconstraints.DataConstr;
import autosar3x.commonstructure.globalconstraints.DataConstrRule;
import autosar3x.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DataConstrImpl
extends ARElementImpl
implements DataConstr {
    protected EList<DataConstrRule> dataConstrRules;

    protected DataConstrImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return GlobalconstraintsPackage.Literals.DATA_CONSTR;
    }

    @Override
    public EList<DataConstrRule> getDataConstrRules() {
        if (this.dataConstrRules == null) {
            this.dataConstrRules = new EObjectContainmentWithInverseEList(DataConstrRule.class, (InternalEObject)this, 19, 4);
        }
        return this.dataConstrRules;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getDataConstrRules()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getDataConstrRules()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getDataConstrRules();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.getDataConstrRules().clear();
                this.getDataConstrRules().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.getDataConstrRules().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.dataConstrRules != null && !this.dataConstrRules.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

