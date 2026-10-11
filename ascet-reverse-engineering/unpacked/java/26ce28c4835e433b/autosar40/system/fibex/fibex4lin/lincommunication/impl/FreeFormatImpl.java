/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.datatypes.IntegerDatatype$ToIntDelegateEList
 *  org.artop.aal.common.datatypes.ToPrimitiveEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.system.fibex.fibex4lin.lincommunication.FreeFormat;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.FreeFormatEntryImpl;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.datatypes.ToPrimitiveEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FreeFormatImpl
extends FreeFormatEntryImpl
implements FreeFormat {
    protected EList<Integer> byteValues;

    protected FreeFormatImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.FREE_FORMAT;
    }

    @Override
    public EList<Integer> getByteValues() {
        if (this.byteValues == null) {
            this.byteValues = new IntegerDatatype.ToIntDelegateEList((EList)new EDataTypeUniqueEList.Unsettable(IntegerDatatype.class, (InternalEObject)this, 8));
        }
        return this.byteValues;
    }

    @Override
    public void unsetByteValues() {
        if (this.byteValues != null) {
            ((InternalEList.Unsettable)((ToPrimitiveEList)this.byteValues).getDelegationList()).unset();
        }
    }

    @Override
    public boolean isSetByteValues() {
        return this.byteValues != null && ((InternalEList.Unsettable)((ToPrimitiveEList)this.byteValues).getDelegationList()).isSet();
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getByteValues();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.getByteValues().clear();
                this.getByteValues().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.unsetByteValues();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.isSetByteValues();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (byteValues: ");
        result.append(this.byteValues);
        result.append(')');
        return result.toString();
    }
}

