/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 *  gautosar.gswcomponents.gportinterface.GModeSwitchInterface
 *  gautosar.gswcomponents.gportinterface.GSenderReceiverInterface
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.swcomponent.portinterface.impl;

import autosar3x.swcomponent.portinterface.DataElementPrototype;
import autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar3x.swcomponent.portinterface.PortinterfacePackage;
import autosar3x.swcomponent.portinterface.SenderReceiverInterface;
import autosar3x.swcomponent.portinterface.impl.PortInterfaceImpl;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import gautosar.gswcomponents.gportinterface.GModeSwitchInterface;
import gautosar.gswcomponents.gportinterface.GSenderReceiverInterface;
import java.util.Collection;
import java.util.Map;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SenderReceiverInterfaceImpl
extends PortInterfaceImpl
implements SenderReceiverInterface {
    protected EList<DataElementPrototype> dataElements;
    protected EList<ModeDeclarationGroupPrototype> modeGroups;

    protected SenderReceiverInterfaceImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.SENDER_RECEIVER_INTERFACE;
    }

    public EList<GVariableDataPrototype> gGetDataElements() {
        EList<DataElementPrototype> untypedList = this.getDataElements();
        return untypedList;
    }

    public EList<GModeDeclarationGroupPrototype> gGetModeGroups() {
        EList<ModeDeclarationGroupPrototype> untypedList = this.getModeGroups();
        return untypedList;
    }

    @Override
    public EList<DataElementPrototype> getDataElements() {
        if (this.dataElements == null) {
            this.dataElements = new EObjectContainmentWithInverseEList(DataElementPrototype.class, (InternalEObject)this, 23, 21);
        }
        return this.dataElements;
    }

    @Override
    public EList<ModeDeclarationGroupPrototype> getModeGroups() {
        if (this.modeGroups == null) {
            this.modeGroups = new EObjectContainmentWithInverseEList(ModeDeclarationGroupPrototype.class, (InternalEObject)this, 24, 18);
        }
        return this.modeGroups;
    }

    @Override
    public boolean atleastonedataelementormodegroup(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getDataElements()).basicAdd((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getModeGroups()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getDataElements()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getModeGroups()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.gGetDataElements();
            }
            case 22: {
                return this.gGetModeGroups();
            }
            case 23: {
                return this.getDataElements();
            }
            case 24: {
                return this.getModeGroups();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.gGetDataElements().clear();
                this.gGetDataElements().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.gGetModeGroups().clear();
                this.gGetModeGroups().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getDataElements().clear();
                this.getDataElements().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getModeGroups().clear();
                this.getModeGroups().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.gGetDataElements().clear();
                return;
            }
            case 22: {
                this.gGetModeGroups().clear();
                return;
            }
            case 23: {
                this.getDataElements().clear();
                return;
            }
            case 24: {
                this.getModeGroups().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return !this.gGetDataElements().isEmpty();
            }
            case 22: {
                return !this.gGetModeGroups().isEmpty();
            }
            case 23: {
                return this.dataElements != null && !this.dataElements.isEmpty();
            }
            case 24: {
                return this.modeGroups != null && !this.modeGroups.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GSenderReceiverInterface.class) {
            switch (derivedFeatureID) {
                case 21: {
                    return 8;
                }
            }
            return -1;
        }
        if (baseClass == GModeSwitchInterface.class) {
            switch (derivedFeatureID) {
                case 22: {
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
                    return 21;
                }
            }
            return -1;
        }
        if (baseClass == GModeSwitchInterface.class) {
            switch (baseFeatureID) {
                case 8: {
                    return 22;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

