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
package autosar40.swcomponent.portinterface.impl;

import autosar40.commonstructure.triggerdeclaration.TriggerMapping;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.TriggerInterfaceMapping;
import autosar40.swcomponent.portinterface.impl.PortInterfaceMappingImpl;
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
public class TriggerInterfaceMappingImpl
extends PortInterfaceMappingImpl
implements TriggerInterfaceMapping {
    protected EList<TriggerMapping> triggerMappings;

    protected TriggerInterfaceMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.TRIGGER_INTERFACE_MAPPING;
    }

    @Override
    public EList<TriggerMapping> getTriggerMappings() {
        if (this.triggerMappings == null) {
            this.triggerMappings = new EObjectContainmentWithInverseEList(TriggerMapping.class, (InternalEObject)this, 19, 4);
        }
        return this.triggerMappings;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getTriggerMappings()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getTriggerMappings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getTriggerMappings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.getTriggerMappings().clear();
                this.getTriggerMappings().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.getTriggerMappings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.triggerMappings != null && !this.triggerMappings.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

