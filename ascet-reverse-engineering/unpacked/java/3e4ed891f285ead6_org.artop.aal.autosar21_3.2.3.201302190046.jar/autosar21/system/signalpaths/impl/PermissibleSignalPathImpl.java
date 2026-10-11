/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.signalpaths.impl;

import autosar21.system.signalpaths.PermissibleSignalPath;
import autosar21.system.signalpaths.SignalpathsPackage;
import autosar21.system.signalpaths.SwcToSwcOperationArguments;
import autosar21.system.signalpaths.SwcToSwcSignal;
import autosar21.system.signalpaths.impl.SignalPathConstraintImpl;
import autosar21.system.signalpaths.instanceref.PermissibleSignalPathEcuCommunicationPort;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PermissibleSignalPathImpl
extends SignalPathConstraintImpl
implements PermissibleSignalPath {
    protected EList<PermissibleSignalPathEcuCommunicationPort> ecuCommunicationPorts;
    protected EList<SwcToSwcOperationArguments> operations;
    protected EList<SwcToSwcSignal> signals;

    protected PermissibleSignalPathImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SignalpathsPackage.Literals.PERMISSIBLE_SIGNAL_PATH;
    }

    @Override
    public EList<PermissibleSignalPathEcuCommunicationPort> getEcuCommunicationPorts() {
        if (this.ecuCommunicationPorts == null) {
            this.ecuCommunicationPorts = new EObjectContainmentWithInverseEList(PermissibleSignalPathEcuCommunicationPort.class, (InternalEObject)this, 5, 4);
        }
        return this.ecuCommunicationPorts;
    }

    @Override
    public EList<SwcToSwcOperationArguments> getOperations() {
        if (this.operations == null) {
            this.operations = new EObjectContainmentEList(SwcToSwcOperationArguments.class, (InternalEObject)this, 6);
        }
        return this.operations;
    }

    @Override
    public EList<SwcToSwcSignal> getSignals() {
        if (this.signals == null) {
            this.signals = new EObjectContainmentEList(SwcToSwcSignal.class, (InternalEObject)this, 7);
        }
        return this.signals;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getEcuCommunicationPorts()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getEcuCommunicationPorts()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getOperations()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getSignals()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getEcuCommunicationPorts();
            }
            case 6: {
                return this.getOperations();
            }
            case 7: {
                return this.getSignals();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.getEcuCommunicationPorts().clear();
                this.getEcuCommunicationPorts().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getOperations().clear();
                this.getOperations().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getSignals().clear();
                this.getSignals().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.getEcuCommunicationPorts().clear();
                return;
            }
            case 6: {
                this.getOperations().clear();
                return;
            }
            case 7: {
                this.getSignals().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.ecuCommunicationPorts != null && !this.ecuCommunicationPorts.isEmpty();
            }
            case 6: {
                return this.operations != null && !this.operations.isEmpty();
            }
            case 7: {
                return this.signals != null && !this.signals.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

