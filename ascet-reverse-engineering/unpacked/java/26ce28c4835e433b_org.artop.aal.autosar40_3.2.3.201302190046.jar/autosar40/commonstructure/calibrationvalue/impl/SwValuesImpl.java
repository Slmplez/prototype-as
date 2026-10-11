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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar40.commonstructure.calibrationvalue.impl;

import autosar40.commonstructure.calibrationvalue.CalibrationvaluePackage;
import autosar40.commonstructure.calibrationvalue.SwValues;
import autosar40.commonstructure.calibrationvalue.ValueGroup;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwValuesImpl
extends ARObjectImpl
implements SwValues {
    protected EList<NumericalValueVariationPoint> vfs;
    protected EList<String> vts;
    protected EList<String> vs;
    protected EList<ValueGroup> vgs;

    protected SwValuesImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CalibrationvaluePackage.Literals.SW_VALUES;
    }

    @Override
    public EList<NumericalValueVariationPoint> getVfs() {
        if (this.vfs == null) {
            this.vfs = new EObjectContainmentEList(NumericalValueVariationPoint.class, (InternalEObject)this, 4);
        }
        return this.vfs;
    }

    @Override
    public EList<String> getVts() {
        if (this.vts == null) {
            this.vts = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 5);
        }
        return this.vts;
    }

    @Override
    public void unsetVts() {
        if (this.vts != null) {
            ((InternalEList.Unsettable)this.vts).unset();
        }
    }

    @Override
    public boolean isSetVts() {
        return this.vts != null && ((InternalEList.Unsettable)this.vts).isSet();
    }

    @Override
    public EList<String> getVs() {
        if (this.vs == null) {
            this.vs = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 6);
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

    @Override
    public EList<ValueGroup> getVgs() {
        if (this.vgs == null) {
            this.vgs = new EObjectContainmentWithInverseEList(ValueGroup.class, (InternalEObject)this, 7, 4);
        }
        return this.vgs;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return ((InternalEList)this.getVgs()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getVfs()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getVgs()).basicRemove((Object)otherEnd, msgs);
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
                return this.getVts();
            }
            case 6: {
                return this.getVs();
            }
            case 7: {
                return this.getVgs();
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
                this.getVts().clear();
                this.getVts().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getVs().clear();
                this.getVs().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getVgs().clear();
                this.getVgs().addAll((Collection)newValue);
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
                this.unsetVts();
                return;
            }
            case 6: {
                this.unsetVs();
                return;
            }
            case 7: {
                this.getVgs().clear();
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
                return this.isSetVts();
            }
            case 6: {
                return this.isSetVs();
            }
            case 7: {
                return this.vgs != null && !this.vgs.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (vts: ");
        result.append(this.vts);
        result.append(", vs: ");
        result.append(this.vs);
        result.append(')');
        return result.toString();
    }
}

