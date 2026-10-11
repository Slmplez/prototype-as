/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar40.commonstructure.datadefproperties.impl;

import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar40.commonstructure.datadefproperties.ValueList;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ValueListImpl
extends ARObjectImpl
implements ValueList {
    protected EList<NumericalValueVariationPoint> vfs;
    protected EList<String> vs;

    protected ValueListImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.VALUE_LIST;
    }

    @Override
    public EList<NumericalValueVariationPoint> getVfs() {
        if (this.vfs == null) {
            this.vfs = new EObjectContainmentEList(NumericalValueVariationPoint.class, (InternalEObject)this, 4);
        }
        return this.vfs;
    }

    @Override
    public EList<String> getVs() {
        if (this.vs == null) {
            this.vs = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 5);
        }
        return this.vs;
    }

    @Override
    public void unsetVs() {
        if (this.vs != null) {
            ((InternalEList.Unsettable)this.vs).unset();
        }
    }

    @Override
    public boolean isSetVs() {
        return this.vs != null && ((InternalEList.Unsettable)this.vs).isSet();
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getVfs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getVfs();
            }
            case 5: {
                return this.getVs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getVfs().clear();
                this.getVfs().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.getVs().clear();
                this.getVs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getVfs().clear();
                return;
            }
            case 5: {
                this.unsetVs();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.vfs != null && !this.vfs.isEmpty();
            }
            case 5: {
                return this.isSetVs();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (vs: ");
        result.append(this.vs);
        result.append(')');
        return result.toString();
    }
}

