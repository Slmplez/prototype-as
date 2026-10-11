/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.modedeclaration.impl;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroup;
import autosar40.commonstructure.modedeclaration.ModeRequestTypeMap;
import autosar40.commonstructure.modedeclaration.ModedeclarationPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ModeRequestTypeMapImpl
extends ARObjectImpl
implements ModeRequestTypeMap,
IReferringClass {
    protected ImplementationDataType implementationDataType;
    protected ModeDeclarationGroup modeGroup;

    protected ModeRequestTypeMapImpl() {
    }

    protected EClass eStaticClass() {
        return ModedeclarationPackage.Literals.MODE_REQUEST_TYPE_MAP;
    }

    public DataTypeMappingSet getDataTypeMappingSet() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (DataTypeMappingSet)this.eContainer();
    }

    public NotificationChain basicSetDataTypeMappingSet(DataTypeMappingSet newDataTypeMappingSet, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDataTypeMappingSet, 4, msgs);
        return msgs;
    }

    public void setDataTypeMappingSet(DataTypeMappingSet newDataTypeMappingSet) {
        if (newDataTypeMappingSet != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newDataTypeMappingSet != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDataTypeMappingSet)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDataTypeMappingSet != null) {
                msgs = ((InternalEObject)newDataTypeMappingSet).eInverseAdd((InternalEObject)this, 23, DataTypeMappingSet.class, msgs);
            }
            if ((msgs = this.basicSetDataTypeMappingSet(newDataTypeMappingSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDataTypeMappingSet, (Object)newDataTypeMappingSet));
        }
    }

    public ImplementationDataType getImplementationDataType() {
        if (this.implementationDataType != null && this.implementationDataType.eIsProxy()) {
            InternalEObject oldImplementationDataType = (InternalEObject)this.implementationDataType;
            this.implementationDataType = (ImplementationDataType)this.eResolveProxy(oldImplementationDataType);
            if (this.implementationDataType != oldImplementationDataType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldImplementationDataType, (Object)this.implementationDataType));
            }
        }
        return this.implementationDataType;
    }

    public ImplementationDataType basicGetImplementationDataType() {
        return this.implementationDataType;
    }

    public void setImplementationDataType(ImplementationDataType newImplementationDataType) {
        ImplementationDataType oldImplementationDataType = this.implementationDataType;
        this.implementationDataType = newImplementationDataType;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldImplementationDataType, (Object)this.implementationDataType));
        }
    }

    public ModeDeclarationGroup getModeGroup() {
        if (this.modeGroup != null && this.modeGroup.eIsProxy()) {
            InternalEObject oldModeGroup = (InternalEObject)this.modeGroup;
            this.modeGroup = (ModeDeclarationGroup)this.eResolveProxy(oldModeGroup);
            if (this.modeGroup != oldModeGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldModeGroup, (Object)this.modeGroup));
            }
        }
        return this.modeGroup;
    }

    public ModeDeclarationGroup basicGetModeGroup() {
        return this.modeGroup;
    }

    public void setModeGroup(ModeDeclarationGroup newModeGroup) {
        ModeDeclarationGroup oldModeGroup = this.modeGroup;
        this.modeGroup = newModeGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldModeGroup, (Object)this.modeGroup));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDataTypeMappingSet((DataTypeMappingSet)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetDataTypeMappingSet(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, DataTypeMappingSet.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDataTypeMappingSet();
            }
            case 5: {
                if (resolve) {
                    return this.getImplementationDataType();
                }
                return this.basicGetImplementationDataType();
            }
            case 6: {
                if (resolve) {
                    return this.getModeGroup();
                }
                return this.basicGetModeGroup();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDataTypeMappingSet((DataTypeMappingSet)newValue);
                return;
            }
            case 5: {
                this.setImplementationDataType((ImplementationDataType)newValue);
                return;
            }
            case 6: {
                this.setModeGroup((ModeDeclarationGroup)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setDataTypeMappingSet(null);
                return;
            }
            case 5: {
                this.setImplementationDataType(null);
                return;
            }
            case 6: {
                this.setModeGroup(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getDataTypeMappingSet() != null;
            }
            case 5: {
                return this.implementationDataType != null;
            }
            case 6: {
                return this.modeGroup != null;
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

