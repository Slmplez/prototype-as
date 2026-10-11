/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar21.ecuresource.peripherals.impl;

import autosar21.ecuresource.peripherals.CommunicationSpeedList;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.impl.CommunicationSpeedImpl;
import java.util.Collection;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CommunicationSpeedListImpl
extends CommunicationSpeedImpl
implements CommunicationSpeedList {
    protected EList<Integer> speeds;

    protected CommunicationSpeedListImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.COMMUNICATION_SPEED_LIST;
    }

    @Override
    public EList<Integer> getSpeeds() {
        if (this.speeds == null) {
            this.speeds = new EDataTypeUniqueEList.Unsettable(Integer.class, (InternalEObject)this, 6);
        }
        return this.speeds;
    }

    @Override
    public void unsetSpeeds() {
        if (this.speeds != null) {
            ((InternalEList.Unsettable)this.speeds).unset();
        }
    }

    @Override
    public boolean isSetSpeeds() {
        return this.speeds != null && ((InternalEList.Unsettable)this.speeds).isSet();
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getSpeeds();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.getSpeeds().clear();
                this.getSpeeds().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetSpeeds();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetSpeeds();
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
        result.append(" (speeds: ");
        result.append(this.speeds);
        result.append(')');
        return result.toString();
    }
}

