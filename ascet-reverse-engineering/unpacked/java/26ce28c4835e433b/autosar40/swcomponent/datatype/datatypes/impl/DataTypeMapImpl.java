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
package autosar40.swcomponent.datatype.datatypes.impl;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.datatype.datatypes.ApplicationDataType;
import autosar40.swcomponent.datatype.datatypes.DataTypeMap;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import autosar40.swcomponent.datatype.datatypes.DatatypesPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class DataTypeMapImpl
extends ARObjectImpl
implements DataTypeMap,
IReferringClass {
    protected ApplicationDataType applicationDataType;
    protected ImplementationDataType implementationDataType;

    protected DataTypeMapImpl() {
    }

    protected EClass eStaticClass() {
        return DatatypesPackage.Literals.DATA_TYPE_MAP;
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
                msgs = ((InternalEObject)newDataTypeMappingSet).eInverseAdd((InternalEObject)this, 22, DataTypeMappingSet.class, msgs);
            }
            if ((msgs = this.basicSetDataTypeMappingSet(newDataTypeMappingSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDataTypeMappingSet, (Object)newDataTypeMappingSet));
        }
    }

    public ApplicationDataType getApplicationDataType() {
        if (this.applicationDataType != null && this.applicationDataType.eIsProxy()) {
            InternalEObject oldApplicationDataType = (InternalEObject)this.applicationDataType;
            this.applicationDataType = (ApplicationDataType)this.eResolveProxy(oldApplicationDataType);
            if (this.applicationDataType != oldApplicationDataType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldApplicationDataType, (Object)this.applicationDataType));
            }
        }
        return this.applicationDataType;
    }

    public ApplicationDataType basicGetApplicationDataType() {
        return this.applicationDataType;
    }

    public void setApplicationDataType(ApplicationDataType newApplicationDataType) {
        ApplicationDataType oldApplicationDataType = this.applicationDataType;
        this.applicationDataType = newApplicationDataType;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldApplicationDataType, (Object)this.applicationDataType));
        }
    }

    public ImplementationDataType getImplementationDataType() {
        if (this.implementationDataType != null && this.implementationDataType.eIsProxy()) {
            InternalEObject oldImplementationDataType = (InternalEObject)this.implementationDataType;
            this.implementationDataType = (ImplementationDataType)this.eResolveProxy(oldImplementationDataType);
            if (this.implementationDataType != oldImplementationDataType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldImplementationDataType, (Object)this.implementationDataType));
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
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldImplementationDataType, (Object)this.implementationDataType));
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, DataTypeMappingSet.class, msgs);
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
                    return this.getApplicationDataType();
                }
                return this.basicGetApplicationDataType();
            }
            case 6: {
                if (resolve) {
                    return this.getImplementationDataType();
                }
                return this.basicGetImplementationDataType();
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
                this.setApplicationDataType((ApplicationDataType)newValue);
                return;
            }
            case 6: {
                this.setImplementationDataType((ImplementationDataType)newValue);
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
                this.setApplicationDataType(null);
                return;
            }
            case 6: {
                this.setImplementationDataType(null);
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
                return this.applicationDataType != null;
            }
            case 6: {
                return this.implementationDataType != null;
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

