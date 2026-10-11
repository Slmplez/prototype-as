/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.swcomponent.modedeclaration.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar3x.swcomponent.modedeclaration.ModeDeclaration;
import autosar3x.swcomponent.modedeclaration.ModeDeclarationGroup;
import autosar3x.swcomponent.modedeclaration.ModedeclarationPackage;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModeDeclarationGroupImpl
extends ARElementImpl
implements ModeDeclarationGroup,
IReferringClass {
    protected ModeDeclaration initialMode;
    protected EList<ModeDeclaration> modeDeclarations;

    protected ModeDeclarationGroupImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ModedeclarationPackage.Literals.MODE_DECLARATION_GROUP;
    }

    public EList<GModeDeclaration> gGetModeDeclarations() {
        EList<ModeDeclaration> untypedList = this.getModeDeclarations();
        return untypedList;
    }

    public GModeDeclaration gGetInitialMode() {
        return this.getInitialMode();
    }

    public void gSetInitialMode(GModeDeclaration newGInitialMode) {
        this.setInitialMode((ModeDeclaration)newGInitialMode);
    }

    @Override
    public ModeDeclaration getInitialMode() {
        if (this.initialMode != null && this.initialMode.eIsProxy()) {
            InternalEObject oldInitialMode = (InternalEObject)this.initialMode;
            this.initialMode = (ModeDeclaration)this.eResolveProxy(oldInitialMode);
            if (this.initialMode != oldInitialMode && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldInitialMode, (Object)this.initialMode));
            }
        }
        return this.initialMode;
    }

    public ModeDeclaration basicGetInitialMode() {
        return this.initialMode;
    }

    @Override
    public void setInitialMode(ModeDeclaration newInitialMode) {
        ModeDeclaration oldInitialMode = this.initialMode;
        this.initialMode = newInitialMode;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldInitialMode, (Object)this.initialMode));
        }
    }

    @Override
    public EList<ModeDeclaration> getModeDeclarations() {
        if (this.modeDeclarations == null) {
            this.modeDeclarations = new EObjectContainmentWithInverseEList(ModeDeclaration.class, (InternalEObject)this, 22, 17);
        }
        return this.modeDeclarations;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getModeDeclarations()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getModeDeclarations()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.gGetModeDeclarations();
            }
            case 20: {
                return this.gGetInitialMode();
            }
            case 21: {
                if (resolve) {
                    return this.getInitialMode();
                }
                return this.basicGetInitialMode();
            }
            case 22: {
                return this.getModeDeclarations();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.gGetModeDeclarations().clear();
                this.gGetModeDeclarations().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.gSetInitialMode((GModeDeclaration)newValue);
                return;
            }
            case 21: {
                this.setInitialMode((ModeDeclaration)newValue);
                return;
            }
            case 22: {
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
            case 19: {
                this.gGetModeDeclarations().clear();
                return;
            }
            case 20: {
                this.gSetInitialMode(null);
                return;
            }
            case 21: {
                this.setInitialMode(null);
                return;
            }
            case 22: {
                this.getModeDeclarations().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return !this.gGetModeDeclarations().isEmpty();
            }
            case 20: {
                return this.gGetInitialMode() != null;
            }
            case 21: {
                return this.initialMode != null;
            }
            case 22: {
                return this.modeDeclarations != null && !this.modeDeclarations.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GModeDeclarationGroup.class) {
            switch (derivedFeatureID) {
                case 19: {
                    return 7;
                }
                case 20: {
                    return 8;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GModeDeclarationGroup.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 19;
                }
                case 8: {
                    return 20;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

