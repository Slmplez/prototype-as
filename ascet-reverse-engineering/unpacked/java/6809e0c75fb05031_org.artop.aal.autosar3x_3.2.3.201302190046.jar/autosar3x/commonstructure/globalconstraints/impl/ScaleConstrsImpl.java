/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.commonstructure.globalconstraints.impl;

import autosar3x.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar3x.commonstructure.globalconstraints.ScaleConstr;
import autosar3x.commonstructure.globalconstraints.ScaleConstrs;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ScaleConstrsImpl
extends ARObjectImpl
implements ScaleConstrs {
    protected EList<ScaleConstr> scaleConstrs;

    protected ScaleConstrsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return GlobalconstraintsPackage.Literals.SCALE_CONSTRS;
    }

    @Override
    public EList<ScaleConstr> getScaleConstrs() {
        if (this.scaleConstrs == null) {
            this.scaleConstrs = new EObjectContainmentEList(ScaleConstr.class, (InternalEObject)this, 4);
        }
        return this.scaleConstrs;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getScaleConstrs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getScaleConstrs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getScaleConstrs().clear();
                this.getScaleConstrs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getScaleConstrs().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.scaleConstrs != null && !this.scaleConstrs.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

