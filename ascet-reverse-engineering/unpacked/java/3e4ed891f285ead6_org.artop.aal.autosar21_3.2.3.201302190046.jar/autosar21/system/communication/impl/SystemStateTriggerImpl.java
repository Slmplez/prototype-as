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
package autosar21.system.communication.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.SystemStateTrigger;
import java.util.Collection;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SystemStateTriggerImpl
extends ARObjectImpl
implements SystemStateTrigger {
    protected EList<String> systemStateConditions;

    protected SystemStateTriggerImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.SYSTEM_STATE_TRIGGER;
    }

    @Override
    public EList<String> getSystemStateConditions() {
        if (this.systemStateConditions == null) {
            this.systemStateConditions = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 4);
        }
        return this.systemStateConditions;
    }

    @Override
    public void unsetSystemStateConditions() {
        if (this.systemStateConditions != null) {
            ((InternalEList.Unsettable)this.systemStateConditions).unset();
        }
    }

    @Override
    public boolean isSetSystemStateConditions() {
        return this.systemStateConditions != null && ((InternalEList.Unsettable)this.systemStateConditions).isSet();
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSystemStateConditions();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getSystemStateConditions().clear();
                this.getSystemStateConditions().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetSystemStateConditions();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetSystemStateConditions();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (systemStateConditions: ");
        result.append(this.systemStateConditions);
        result.append(')');
        return result.toString();
    }
}

