/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.bswmodule.bswoverview.instancerefs.impl;

import autosar40.bswmodule.bswoverview.BswModuleDescription;
import autosar40.bswmodule.bswoverview.instancerefs.InstancerefsPackage;
import autosar40.bswmodule.bswoverview.instancerefs.ModeInBswModuleDescriptionInstanceRef;
import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ModeInBswModuleDescriptionInstanceRefImpl
extends AtpInstanceRefImpl
implements ModeInBswModuleDescriptionInstanceRef,
IReferringClass {
    protected ModeDeclarationGroupPrototype contextModeDeclarationGroup;
    protected ModeDeclaration targetMode;

    protected ModeInBswModuleDescriptionInstanceRefImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.MODE_IN_BSW_MODULE_DESCRIPTION_INSTANCE_REF;
    }

    public BswModuleDescription getBase() {
        ModeDeclarationGroupPrototype contextModeDeclarationGroup = this.getContextModeDeclarationGroup();
        if (contextModeDeclarationGroup != null) {
            return (BswModuleDescription)contextModeDeclarationGroup.eContainer();
        }
        return null;
    }

    public ModeDeclarationGroupPrototype getContextModeDeclarationGroup() {
        if (this.contextModeDeclarationGroup != null && this.contextModeDeclarationGroup.eIsProxy()) {
            InternalEObject oldContextModeDeclarationGroup = (InternalEObject)this.contextModeDeclarationGroup;
            this.contextModeDeclarationGroup = (ModeDeclarationGroupPrototype)this.eResolveProxy(oldContextModeDeclarationGroup);
            if (this.contextModeDeclarationGroup != oldContextModeDeclarationGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldContextModeDeclarationGroup, (Object)this.contextModeDeclarationGroup));
            }
        }
        return this.contextModeDeclarationGroup;
    }

    public ModeDeclarationGroupPrototype basicGetContextModeDeclarationGroup() {
        return this.contextModeDeclarationGroup;
    }

    public void setContextModeDeclarationGroup(ModeDeclarationGroupPrototype newContextModeDeclarationGroup) {
        ModeDeclarationGroupPrototype oldContextModeDeclarationGroup = this.contextModeDeclarationGroup;
        this.contextModeDeclarationGroup = newContextModeDeclarationGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldContextModeDeclarationGroup, (Object)this.contextModeDeclarationGroup));
        }
    }

    public ModeDeclaration getTargetMode() {
        if (this.targetMode != null && this.targetMode.eIsProxy()) {
            InternalEObject oldTargetMode = (InternalEObject)this.targetMode;
            this.targetMode = (ModeDeclaration)this.eResolveProxy(oldTargetMode);
            if (this.targetMode != oldTargetMode && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldTargetMode, (Object)this.targetMode));
            }
        }
        return this.targetMode;
    }

    public ModeDeclaration basicGetTargetMode() {
        return this.targetMode;
    }

    public void setTargetMode(ModeDeclaration newTargetMode) {
        ModeDeclaration oldTargetMode = this.targetMode;
        this.targetMode = newTargetMode;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTargetMode, (Object)this.targetMode));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getBase();
            }
            case 5: {
                if (resolve) {
                    return this.getContextModeDeclarationGroup();
                }
                return this.basicGetContextModeDeclarationGroup();
            }
            case 6: {
                if (resolve) {
                    return this.getTargetMode();
                }
                return this.basicGetTargetMode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setContextModeDeclarationGroup((ModeDeclarationGroupPrototype)newValue);
                return;
            }
            case 6: {
                this.setTargetMode((ModeDeclaration)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setContextModeDeclarationGroup(null);
                return;
            }
            case 6: {
                this.setTargetMode(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getBase() != null;
            }
            case 5: {
                return this.contextModeDeclarationGroup != null;
            }
            case 6: {
                return this.targetMode != null;
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

