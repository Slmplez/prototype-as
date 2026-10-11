/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype
 *  gautosar.gswcomponents.gportinterface.GModeSwitchInterface
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreEList$UnmodifiableEList
 */
package autosar40.swcomponent.portinterface.impl;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.swcomponent.portinterface.ModeSwitchInterface;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.impl.PortInterfaceImpl;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.gswcomponents.gportinterface.GModeSwitchInterface;
import java.util.Collection;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModeSwitchInterfaceImpl
extends PortInterfaceImpl
implements ModeSwitchInterface {
    protected ModeDeclarationGroupPrototype modeGroup;

    protected ModeSwitchInterfaceImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.MODE_SWITCH_INTERFACE;
    }

    public EList<GModeDeclarationGroupPrototype> gGetModeGroups() {
        ModeDeclarationGroupPrototype modeDeclarationGroupPrototype = this.getModeGroup();
        if (modeDeclarationGroupPrototype != null) {
            return new EcoreEList.UnmodifiableEList((InternalEObject)this, this.eClass().getEStructuralFeature("gModeGroups"), 1, new Object[]{this.getModeGroup()});
        }
        return new EcoreEList.UnmodifiableEList((InternalEObject)this, this.eClass().getEStructuralFeature("gModeGroups"), 0, new Object[0]);
    }

    @Override
    public ModeDeclarationGroupPrototype getModeGroup() {
        return this.modeGroup;
    }

    public NotificationChain basicSetModeGroup(ModeDeclarationGroupPrototype newModeGroup, NotificationChain msgs) {
        ModeDeclarationGroupPrototype oldModeGroup = this.modeGroup;
        this.modeGroup = newModeGroup;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldModeGroup, (Object)newModeGroup);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setModeGroup(ModeDeclarationGroupPrototype newModeGroup) {
        if (newModeGroup != this.modeGroup) {
            NotificationChain msgs = null;
            if (this.modeGroup != null) {
                msgs = ((InternalEObject)this.modeGroup).eInverseRemove((InternalEObject)this, -27, null, msgs);
            }
            if (newModeGroup != null) {
                msgs = ((InternalEObject)newModeGroup).eInverseAdd((InternalEObject)this, -27, null, msgs);
            }
            if ((msgs = this.basicSetModeGroup(newModeGroup, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)newModeGroup, (Object)newModeGroup));
        }
    }

    @Override
    public boolean atleastonedataelementormodegroup(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 26: {
                return this.basicSetModeGroup(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 25: {
                return this.gGetModeGroups();
            }
            case 26: {
                return this.getModeGroup();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 25: {
                this.gGetModeGroups().clear();
                this.gGetModeGroups().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.setModeGroup((ModeDeclarationGroupPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 25: {
                this.gGetModeGroups().clear();
                return;
            }
            case 26: {
                this.setModeGroup(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 25: {
                return !this.gGetModeGroups().isEmpty();
            }
            case 26: {
                return this.modeGroup != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GModeSwitchInterface.class) {
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
        if (baseClass == GModeSwitchInterface.class) {
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

