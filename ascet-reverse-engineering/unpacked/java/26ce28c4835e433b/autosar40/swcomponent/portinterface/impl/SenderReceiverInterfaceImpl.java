/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 *  gautosar.gswcomponents.gportinterface.GSenderReceiverInterface
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.portinterface.impl;

import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.portinterface.InvalidationPolicy;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.SenderReceiverInterface;
import autosar40.swcomponent.portinterface.impl.DataInterfaceImpl;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import gautosar.gswcomponents.gportinterface.GSenderReceiverInterface;
import java.util.Collection;
import java.util.Map;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SenderReceiverInterfaceImpl
extends DataInterfaceImpl
implements SenderReceiverInterface {
    protected EList<VariableDataPrototype> dataElements;
    protected EList<InvalidationPolicy> invalidationPolicies;

    protected SenderReceiverInterfaceImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.SENDER_RECEIVER_INTERFACE;
    }

    public EList<GVariableDataPrototype> gGetDataElements() {
        EList<VariableDataPrototype> untypedList = this.getDataElements();
        return untypedList;
    }

    @Override
    public EList<VariableDataPrototype> getDataElements() {
        if (this.dataElements == null) {
            this.dataElements = new EObjectContainmentEList(VariableDataPrototype.class, (InternalEObject)this, 26);
        }
        return this.dataElements;
    }

    @Override
    public EList<InvalidationPolicy> getInvalidationPolicies() {
        if (this.invalidationPolicies == null) {
            this.invalidationPolicies = new EObjectContainmentWithInverseEList(InvalidationPolicy.class, (InternalEObject)this, 27, 4);
        }
        return this.invalidationPolicies;
    }

    @Override
    public boolean atleastonedataelementormodegroup(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                return ((InternalEList)this.getInvalidationPolicies()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 26: {
                return ((InternalEList)this.getDataElements()).basicRemove((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getInvalidationPolicies()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 25: {
                return this.gGetDataElements();
            }
            case 26: {
                return this.getDataElements();
            }
            case 27: {
                return this.getInvalidationPolicies();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 25: {
                this.gGetDataElements().clear();
                this.gGetDataElements().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getDataElements().clear();
                this.getDataElements().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.getInvalidationPolicies().clear();
                this.getInvalidationPolicies().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 25: {
                this.gGetDataElements().clear();
                return;
            }
            case 26: {
                this.getDataElements().clear();
                return;
            }
            case 27: {
                this.getInvalidationPolicies().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 25: {
                return !this.gGetDataElements().isEmpty();
            }
            case 26: {
                return this.dataElements != null && !this.dataElements.isEmpty();
            }
            case 27: {
                return this.invalidationPolicies != null && !this.invalidationPolicies.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GSenderReceiverInterface.class) {
            switch (derivedFeatureID) {
                case 25: {
                    return 8;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GSenderReceiverInterface.class) {
            switch (baseFeatureID) {
                case 8: {
                    return 25;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

