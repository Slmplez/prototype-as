/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.datamapping.impl;

import autosar40.system.datamapping.ApplicationErrorMapping;
import autosar40.system.datamapping.ClientIdMapping;
import autosar40.system.datamapping.ClientServerCompositeTypeMapping;
import autosar40.system.datamapping.ClientServerPrimitiveTypeMapping;
import autosar40.system.datamapping.ClientServerToSignalGroupMapping;
import autosar40.system.datamapping.DatamappingPackage;
import autosar40.system.datamapping.EmptySignalMapping;
import autosar40.system.datamapping.SequenceCounterMapping;
import autosar40.system.datamapping.impl.DataMappingImpl;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignalGroup;
import autosar40.system.instancerefs.OperationInSystemInstanceRef;
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
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ClientServerToSignalGroupMappingImpl
extends DataMappingImpl
implements ClientServerToSignalGroupMapping,
IReferringClass {
    protected ApplicationErrorMapping applicationError;
    protected ClientIdMapping clientID;
    protected EList<ClientServerCompositeTypeMapping> compositeTypeMappings;
    protected EmptySignalMapping emptySignal;
    protected OperationInSystemInstanceRef mappedOperation;
    protected EList<ClientServerPrimitiveTypeMapping> primitiveTypeMappings;
    protected SystemSignalGroup requestGroup;
    protected SystemSignalGroup responseGroup;
    protected SequenceCounterMapping sequenceCounter;

    protected ClientServerToSignalGroupMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING;
    }

    @Override
    public ApplicationErrorMapping getApplicationError() {
        return this.applicationError;
    }

    public NotificationChain basicSetApplicationError(ApplicationErrorMapping newApplicationError, NotificationChain msgs) {
        ApplicationErrorMapping oldApplicationError = this.applicationError;
        this.applicationError = newApplicationError;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldApplicationError, (Object)newApplicationError);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setApplicationError(ApplicationErrorMapping newApplicationError) {
        if (newApplicationError != this.applicationError) {
            NotificationChain msgs = null;
            if (this.applicationError != null) {
                msgs = ((InternalEObject)this.applicationError).eInverseRemove((InternalEObject)this, 4, ApplicationErrorMapping.class, msgs);
            }
            if (newApplicationError != null) {
                msgs = ((InternalEObject)newApplicationError).eInverseAdd((InternalEObject)this, 4, ApplicationErrorMapping.class, msgs);
            }
            if ((msgs = this.basicSetApplicationError(newApplicationError, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newApplicationError, (Object)newApplicationError));
        }
    }

    @Override
    public ClientIdMapping getClientID() {
        return this.clientID;
    }

    public NotificationChain basicSetClientID(ClientIdMapping newClientID, NotificationChain msgs) {
        ClientIdMapping oldClientID = this.clientID;
        this.clientID = newClientID;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldClientID, (Object)newClientID);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setClientID(ClientIdMapping newClientID) {
        if (newClientID != this.clientID) {
            NotificationChain msgs = null;
            if (this.clientID != null) {
                msgs = ((InternalEObject)this.clientID).eInverseRemove((InternalEObject)this, 4, ClientIdMapping.class, msgs);
            }
            if (newClientID != null) {
                msgs = ((InternalEObject)newClientID).eInverseAdd((InternalEObject)this, 4, ClientIdMapping.class, msgs);
            }
            if ((msgs = this.basicSetClientID(newClientID, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newClientID, (Object)newClientID));
        }
    }

    @Override
    public EList<ClientServerCompositeTypeMapping> getCompositeTypeMappings() {
        if (this.compositeTypeMappings == null) {
            this.compositeTypeMappings = new EObjectContainmentEList(ClientServerCompositeTypeMapping.class, (InternalEObject)this, 9);
        }
        return this.compositeTypeMappings;
    }

    @Override
    public EmptySignalMapping getEmptySignal() {
        return this.emptySignal;
    }

    public NotificationChain basicSetEmptySignal(EmptySignalMapping newEmptySignal, NotificationChain msgs) {
        EmptySignalMapping oldEmptySignal = this.emptySignal;
        this.emptySignal = newEmptySignal;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldEmptySignal, (Object)newEmptySignal);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEmptySignal(EmptySignalMapping newEmptySignal) {
        if (newEmptySignal != this.emptySignal) {
            NotificationChain msgs = null;
            if (this.emptySignal != null) {
                msgs = ((InternalEObject)this.emptySignal).eInverseRemove((InternalEObject)this, 4, EmptySignalMapping.class, msgs);
            }
            if (newEmptySignal != null) {
                msgs = ((InternalEObject)newEmptySignal).eInverseAdd((InternalEObject)this, 4, EmptySignalMapping.class, msgs);
            }
            if ((msgs = this.basicSetEmptySignal(newEmptySignal, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newEmptySignal, (Object)newEmptySignal));
        }
    }

    @Override
    public OperationInSystemInstanceRef getMappedOperation() {
        return this.mappedOperation;
    }

    public NotificationChain basicSetMappedOperation(OperationInSystemInstanceRef newMappedOperation, NotificationChain msgs) {
        OperationInSystemInstanceRef oldMappedOperation = this.mappedOperation;
        this.mappedOperation = newMappedOperation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldMappedOperation, (Object)newMappedOperation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMappedOperation(OperationInSystemInstanceRef newMappedOperation) {
        if (newMappedOperation != this.mappedOperation) {
            NotificationChain msgs = null;
            if (this.mappedOperation != null) {
                msgs = ((InternalEObject)this.mappedOperation).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newMappedOperation != null) {
                msgs = ((InternalEObject)newMappedOperation).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetMappedOperation(newMappedOperation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newMappedOperation, (Object)newMappedOperation));
        }
    }

    @Override
    public EList<ClientServerPrimitiveTypeMapping> getPrimitiveTypeMappings() {
        if (this.primitiveTypeMappings == null) {
            this.primitiveTypeMappings = new EObjectContainmentWithInverseEList(ClientServerPrimitiveTypeMapping.class, (InternalEObject)this, 12, 4);
        }
        return this.primitiveTypeMappings;
    }

    @Override
    public SystemSignalGroup getRequestGroup() {
        if (this.requestGroup != null && this.requestGroup.eIsProxy()) {
            InternalEObject oldRequestGroup = (InternalEObject)this.requestGroup;
            this.requestGroup = (SystemSignalGroup)this.eResolveProxy(oldRequestGroup);
            if (this.requestGroup != oldRequestGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 13, (Object)oldRequestGroup, (Object)this.requestGroup));
            }
        }
        return this.requestGroup;
    }

    public SystemSignalGroup basicGetRequestGroup() {
        return this.requestGroup;
    }

    @Override
    public void setRequestGroup(SystemSignalGroup newRequestGroup) {
        SystemSignalGroup oldRequestGroup = this.requestGroup;
        this.requestGroup = newRequestGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)13, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldRequestGroup, (Object)this.requestGroup));
        }
    }

    @Override
    public SystemSignalGroup getResponseGroup() {
        if (this.responseGroup != null && this.responseGroup.eIsProxy()) {
            InternalEObject oldResponseGroup = (InternalEObject)this.responseGroup;
            this.responseGroup = (SystemSignalGroup)this.eResolveProxy(oldResponseGroup);
            if (this.responseGroup != oldResponseGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 14, (Object)oldResponseGroup, (Object)this.responseGroup));
            }
        }
        return this.responseGroup;
    }

    public SystemSignalGroup basicGetResponseGroup() {
        return this.responseGroup;
    }

    @Override
    public void setResponseGroup(SystemSignalGroup newResponseGroup) {
        SystemSignalGroup oldResponseGroup = this.responseGroup;
        this.responseGroup = newResponseGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)14, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldResponseGroup, (Object)this.responseGroup));
        }
    }

    @Override
    public SequenceCounterMapping getSequenceCounter() {
        return this.sequenceCounter;
    }

    public NotificationChain basicSetSequenceCounter(SequenceCounterMapping newSequenceCounter, NotificationChain msgs) {
        SequenceCounterMapping oldSequenceCounter = this.sequenceCounter;
        this.sequenceCounter = newSequenceCounter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldSequenceCounter, (Object)newSequenceCounter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSequenceCounter(SequenceCounterMapping newSequenceCounter) {
        if (newSequenceCounter != this.sequenceCounter) {
            NotificationChain msgs = null;
            if (this.sequenceCounter != null) {
                msgs = ((InternalEObject)this.sequenceCounter).eInverseRemove((InternalEObject)this, 4, SequenceCounterMapping.class, msgs);
            }
            if (newSequenceCounter != null) {
                msgs = ((InternalEObject)newSequenceCounter).eInverseAdd((InternalEObject)this, 4, SequenceCounterMapping.class, msgs);
            }
            if ((msgs = this.basicSetSequenceCounter(newSequenceCounter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)newSequenceCounter, (Object)newSequenceCounter));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                if (this.applicationError != null) {
                    msgs = ((InternalEObject)this.applicationError).eInverseRemove((InternalEObject)this, -8, null, msgs);
                }
                return this.basicSetApplicationError((ApplicationErrorMapping)otherEnd, msgs);
            }
            case 8: {
                if (this.clientID != null) {
                    msgs = ((InternalEObject)this.clientID).eInverseRemove((InternalEObject)this, -9, null, msgs);
                }
                return this.basicSetClientID((ClientIdMapping)otherEnd, msgs);
            }
            case 10: {
                if (this.emptySignal != null) {
                    msgs = ((InternalEObject)this.emptySignal).eInverseRemove((InternalEObject)this, -11, null, msgs);
                }
                return this.basicSetEmptySignal((EmptySignalMapping)otherEnd, msgs);
            }
            case 12: {
                return ((InternalEList)this.getPrimitiveTypeMappings()).basicAdd((Object)otherEnd, msgs);
            }
            case 15: {
                if (this.sequenceCounter != null) {
                    msgs = ((InternalEObject)this.sequenceCounter).eInverseRemove((InternalEObject)this, -16, null, msgs);
                }
                return this.basicSetSequenceCounter((SequenceCounterMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.basicSetApplicationError(null, msgs);
            }
            case 8: {
                return this.basicSetClientID(null, msgs);
            }
            case 9: {
                return ((InternalEList)this.getCompositeTypeMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 10: {
                return this.basicSetEmptySignal(null, msgs);
            }
            case 11: {
                return this.basicSetMappedOperation(null, msgs);
            }
            case 12: {
                return ((InternalEList)this.getPrimitiveTypeMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 15: {
                return this.basicSetSequenceCounter(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.getApplicationError();
            }
            case 8: {
                return this.getClientID();
            }
            case 9: {
                return this.getCompositeTypeMappings();
            }
            case 10: {
                return this.getEmptySignal();
            }
            case 11: {
                return this.getMappedOperation();
            }
            case 12: {
                return this.getPrimitiveTypeMappings();
            }
            case 13: {
                if (resolve) {
                    return this.getRequestGroup();
                }
                return this.basicGetRequestGroup();
            }
            case 14: {
                if (resolve) {
                    return this.getResponseGroup();
                }
                return this.basicGetResponseGroup();
            }
            case 15: {
                return this.getSequenceCounter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.setApplicationError((ApplicationErrorMapping)newValue);
                return;
            }
            case 8: {
                this.setClientID((ClientIdMapping)newValue);
                return;
            }
            case 9: {
                this.getCompositeTypeMappings().clear();
                this.getCompositeTypeMappings().addAll((Collection)newValue);
                return;
            }
            case 10: {
                this.setEmptySignal((EmptySignalMapping)newValue);
                return;
            }
            case 11: {
                this.setMappedOperation((OperationInSystemInstanceRef)newValue);
                return;
            }
            case 12: {
                this.getPrimitiveTypeMappings().clear();
                this.getPrimitiveTypeMappings().addAll((Collection)newValue);
                return;
            }
            case 13: {
                this.setRequestGroup((SystemSignalGroup)newValue);
                return;
            }
            case 14: {
                this.setResponseGroup((SystemSignalGroup)newValue);
                return;
            }
            case 15: {
                this.setSequenceCounter((SequenceCounterMapping)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 7: {
                this.setApplicationError(null);
                return;
            }
            case 8: {
                this.setClientID(null);
                return;
            }
            case 9: {
                this.getCompositeTypeMappings().clear();
                return;
            }
            case 10: {
                this.setEmptySignal(null);
                return;
            }
            case 11: {
                this.setMappedOperation(null);
                return;
            }
            case 12: {
                this.getPrimitiveTypeMappings().clear();
                return;
            }
            case 13: {
                this.setRequestGroup(null);
                return;
            }
            case 14: {
                this.setResponseGroup(null);
                return;
            }
            case 15: {
                this.setSequenceCounter(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
                return this.applicationError != null;
            }
            case 8: {
                return this.clientID != null;
            }
            case 9: {
                return this.compositeTypeMappings != null && !this.compositeTypeMappings.isEmpty();
            }
            case 10: {
                return this.emptySignal != null;
            }
            case 11: {
                return this.mappedOperation != null;
            }
            case 12: {
                return this.primitiveTypeMappings != null && !this.primitiveTypeMappings.isEmpty();
            }
            case 13: {
                return this.requestGroup != null;
            }
            case 14: {
                return this.responseGroup != null;
            }
            case 15: {
                return this.sequenceCounter != null;
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

