/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing.impl;

import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibexcore.corecommunication.timing.ModeDrivenTransmissionModeCondition;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModeDrivenTransmissionModeConditionImpl
extends ARObjectImpl
implements ModeDrivenTransmissionModeCondition,
IReferringClass {
    protected EList<ModeDeclaration> modeDeclarations;

    protected ModeDrivenTransmissionModeConditionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TimingPackage.Literals.MODE_DRIVEN_TRANSMISSION_MODE_CONDITION;
    }

    @Override
    public EList<ModeDeclaration> getModeDeclarations() {
        if (this.modeDeclarations == null) {
            this.modeDeclarations = new EObjectResolvingReferringEList(ModeDeclaration.class, (InternalEObject)this, 4);
        }
        return this.modeDeclarations;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getModeDeclarations();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getModeDeclarations().clear();
                this.getModeDeclarations().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getModeDeclarations().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.modeDeclarations != null && !this.modeDeclarations.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

