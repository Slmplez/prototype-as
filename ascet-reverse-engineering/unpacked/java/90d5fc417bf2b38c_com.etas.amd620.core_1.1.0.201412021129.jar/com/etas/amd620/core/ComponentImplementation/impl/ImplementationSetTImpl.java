/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.CacheLockingType;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.GenericDataT;
import com.etas.amd620.core.ComponentImplementation.ImplementationSetT;
import com.etas.amd620.core.ComponentImplementation.NotesT;
import com.etas.amd620.core.ComponentImplementation.TimeStampT;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

public class ImplementationSetTImpl
extends MinimalEObjectImpl.Container
implements ImplementationSetT {
    protected TimeStampT timeStamp;
    protected NotesT notes;
    protected EList<GenericDataT> customerData;
    protected static final CacheLockingType CACHE_LOCKING_EDEFAULT = CacheLockingType.AUTOMATIC;
    protected CacheLockingType cacheLocking = CACHE_LOCKING_EDEFAULT;
    protected boolean cacheLockingESet;
    protected static final byte[] CHECKSUM_EDEFAULT = null;
    protected byte[] checksum = CHECKSUM_EDEFAULT;
    protected static final boolean CLASS_CONFIG_EDEFAULT = false;
    protected boolean classConfig = false;
    protected boolean classConfigESet;
    protected static final boolean DEFAULT_EDEFAULT = false;
    protected boolean default_ = false;
    protected boolean defaultESet;
    protected static final Object GENERATE_DATA_STRUCTURES_EDEFAULT = null;
    protected Object generateDataStructures = GENERATE_DATA_STRUCTURES_EDEFAULT;
    protected static final boolean GENERATE_METHOD_BODY_EDEFAULT = false;
    protected boolean generateMethodBody = false;
    protected boolean generateMethodBodyESet;
    protected static final boolean HIERARCHICAL_GENERATION_FOR_SM_EDEFAULT = false;
    protected boolean hierarchicalGenerationForSM = false;
    protected boolean hierarchicalGenerationForSMESet;
    protected static final boolean INLINE_PRIVATE_METHODS_SM_EDEFAULT = false;
    protected boolean inlinePrivateMethodsSM = false;
    protected boolean inlinePrivateMethodsSMESet;
    protected static final boolean IS_SERVICE_EDEFAULT = false;
    protected boolean isService = false;
    protected boolean isServiceESet;
    protected static final String MEMORY_LOCATION_EDEFAULT = null;
    protected String memoryLocation = MEMORY_LOCATION_EDEFAULT;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;
    protected static final String OID_EDEFAULT = null;
    protected String oID = OID_EDEFAULT;
    protected static final boolean OPTIMIZE_METHOD_CALLS_EDEFAULT = false;
    protected boolean optimizeMethodCalls = false;
    protected boolean optimizeMethodCallsESet;
    protected static final boolean OUTLINE_METHODS_SM_EDEFAULT = false;
    protected boolean outlineMethodsSM = false;
    protected boolean outlineMethodsSMESet;
    protected static final String PACKAGE_NAME_EDEFAULT = null;
    protected String packageName = PACKAGE_NAME_EDEFAULT;
    protected static final boolean USER_DEFINED_ORDER_EDEFAULT = false;
    protected boolean userDefinedOrder = false;
    protected boolean userDefinedOrderESet;
    protected static final boolean USING_SERVICE_ROUTINES_EDEFAULT = false;
    protected boolean usingServiceRoutines = false;
    protected boolean usingServiceRoutinesESet;
    protected static final String UUID_EDEFAULT = null;
    protected String uUID = UUID_EDEFAULT;

    protected ImplementationSetTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.IMPLEMENTATION_SET_T;
    }

    @Override
    public TimeStampT getTimeStamp() {
        return this.timeStamp;
    }

    public NotificationChain basicSetTimeStamp(TimeStampT newTimeStamp, NotificationChain msgs) {
        TimeStampT oldTimeStamp = this.timeStamp;
        this.timeStamp = newTimeStamp;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldTimeStamp, (Object)newTimeStamp);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTimeStamp(TimeStampT newTimeStamp) {
        if (newTimeStamp != this.timeStamp) {
            NotificationChain msgs = null;
            if (this.timeStamp != null) {
                msgs = ((InternalEObject)this.timeStamp).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newTimeStamp != null) {
                msgs = ((InternalEObject)newTimeStamp).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetTimeStamp(newTimeStamp, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newTimeStamp, (Object)newTimeStamp));
        }
    }

    @Override
    public NotesT getNotes() {
        return this.notes;
    }

    public NotificationChain basicSetNotes(NotesT newNotes, NotificationChain msgs) {
        NotesT oldNotes = this.notes;
        this.notes = newNotes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldNotes, (Object)newNotes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setNotes(NotesT newNotes) {
        if (newNotes != this.notes) {
            NotificationChain msgs = null;
            if (this.notes != null) {
                msgs = ((InternalEObject)this.notes).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newNotes != null) {
                msgs = ((InternalEObject)newNotes).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetNotes(newNotes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newNotes, (Object)newNotes));
        }
    }

    @Override
    public EList<GenericDataT> getCustomerData() {
        if (this.customerData == null) {
            this.customerData = new EObjectContainmentEList(GenericDataT.class, (InternalEObject)this, 2);
        }
        return this.customerData;
    }

    @Override
    public CacheLockingType getCacheLocking() {
        return this.cacheLocking;
    }

    @Override
    public void setCacheLocking(CacheLockingType newCacheLocking) {
        CacheLockingType oldCacheLocking = this.cacheLocking;
        this.cacheLocking = newCacheLocking == null ? CACHE_LOCKING_EDEFAULT : newCacheLocking;
        boolean oldCacheLockingESet = this.cacheLockingESet;
        this.cacheLockingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldCacheLocking, (Object)this.cacheLocking, !oldCacheLockingESet));
        }
    }

    @Override
    public void unsetCacheLocking() {
        CacheLockingType oldCacheLocking = this.cacheLocking;
        boolean oldCacheLockingESet = this.cacheLockingESet;
        this.cacheLocking = CACHE_LOCKING_EDEFAULT;
        this.cacheLockingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 3, (Object)oldCacheLocking, (Object)CACHE_LOCKING_EDEFAULT, oldCacheLockingESet));
        }
    }

    @Override
    public boolean isSetCacheLocking() {
        return this.cacheLockingESet;
    }

    @Override
    public byte[] getChecksum() {
        return this.checksum;
    }

    @Override
    public void setChecksum(byte[] newChecksum) {
        byte[] oldChecksum = this.checksum;
        this.checksum = newChecksum;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldChecksum, (Object)this.checksum));
        }
    }

    @Override
    public boolean isClassConfig() {
        return this.classConfig;
    }

    @Override
    public void setClassConfig(boolean newClassConfig) {
        boolean oldClassConfig = this.classConfig;
        this.classConfig = newClassConfig;
        boolean oldClassConfigESet = this.classConfigESet;
        this.classConfigESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, oldClassConfig, this.classConfig, !oldClassConfigESet));
        }
    }

    @Override
    public void unsetClassConfig() {
        boolean oldClassConfig = this.classConfig;
        boolean oldClassConfigESet = this.classConfigESet;
        this.classConfig = false;
        this.classConfigESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, oldClassConfig, false, oldClassConfigESet));
        }
    }

    @Override
    public boolean isSetClassConfig() {
        return this.classConfigESet;
    }

    @Override
    public boolean isDefault() {
        return this.default_;
    }

    @Override
    public void setDefault(boolean newDefault) {
        boolean oldDefault = this.default_;
        this.default_ = newDefault;
        boolean oldDefaultESet = this.defaultESet;
        this.defaultESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, oldDefault, this.default_, !oldDefaultESet));
        }
    }

    @Override
    public void unsetDefault() {
        boolean oldDefault = this.default_;
        boolean oldDefaultESet = this.defaultESet;
        this.default_ = false;
        this.defaultESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, oldDefault, false, oldDefaultESet));
        }
    }

    @Override
    public boolean isSetDefault() {
        return this.defaultESet;
    }

    @Override
    public Object getGenerateDataStructures() {
        return this.generateDataStructures;
    }

    @Override
    public void setGenerateDataStructures(Object newGenerateDataStructures) {
        Object oldGenerateDataStructures = this.generateDataStructures;
        this.generateDataStructures = newGenerateDataStructures;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, oldGenerateDataStructures, this.generateDataStructures));
        }
    }

    @Override
    public boolean isGenerateMethodBody() {
        return this.generateMethodBody;
    }

    @Override
    public void setGenerateMethodBody(boolean newGenerateMethodBody) {
        boolean oldGenerateMethodBody = this.generateMethodBody;
        this.generateMethodBody = newGenerateMethodBody;
        boolean oldGenerateMethodBodyESet = this.generateMethodBodyESet;
        this.generateMethodBodyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, oldGenerateMethodBody, this.generateMethodBody, !oldGenerateMethodBodyESet));
        }
    }

    @Override
    public void unsetGenerateMethodBody() {
        boolean oldGenerateMethodBody = this.generateMethodBody;
        boolean oldGenerateMethodBodyESet = this.generateMethodBodyESet;
        this.generateMethodBody = false;
        this.generateMethodBodyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, oldGenerateMethodBody, false, oldGenerateMethodBodyESet));
        }
    }

    @Override
    public boolean isSetGenerateMethodBody() {
        return this.generateMethodBodyESet;
    }

    @Override
    public boolean isHierarchicalGenerationForSM() {
        return this.hierarchicalGenerationForSM;
    }

    @Override
    public void setHierarchicalGenerationForSM(boolean newHierarchicalGenerationForSM) {
        boolean oldHierarchicalGenerationForSM = this.hierarchicalGenerationForSM;
        this.hierarchicalGenerationForSM = newHierarchicalGenerationForSM;
        boolean oldHierarchicalGenerationForSMESet = this.hierarchicalGenerationForSMESet;
        this.hierarchicalGenerationForSMESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, oldHierarchicalGenerationForSM, this.hierarchicalGenerationForSM, !oldHierarchicalGenerationForSMESet));
        }
    }

    @Override
    public void unsetHierarchicalGenerationForSM() {
        boolean oldHierarchicalGenerationForSM = this.hierarchicalGenerationForSM;
        boolean oldHierarchicalGenerationForSMESet = this.hierarchicalGenerationForSMESet;
        this.hierarchicalGenerationForSM = false;
        this.hierarchicalGenerationForSMESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, oldHierarchicalGenerationForSM, false, oldHierarchicalGenerationForSMESet));
        }
    }

    @Override
    public boolean isSetHierarchicalGenerationForSM() {
        return this.hierarchicalGenerationForSMESet;
    }

    @Override
    public boolean isInlinePrivateMethodsSM() {
        return this.inlinePrivateMethodsSM;
    }

    @Override
    public void setInlinePrivateMethodsSM(boolean newInlinePrivateMethodsSM) {
        boolean oldInlinePrivateMethodsSM = this.inlinePrivateMethodsSM;
        this.inlinePrivateMethodsSM = newInlinePrivateMethodsSM;
        boolean oldInlinePrivateMethodsSMESet = this.inlinePrivateMethodsSMESet;
        this.inlinePrivateMethodsSMESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, oldInlinePrivateMethodsSM, this.inlinePrivateMethodsSM, !oldInlinePrivateMethodsSMESet));
        }
    }

    @Override
    public void unsetInlinePrivateMethodsSM() {
        boolean oldInlinePrivateMethodsSM = this.inlinePrivateMethodsSM;
        boolean oldInlinePrivateMethodsSMESet = this.inlinePrivateMethodsSMESet;
        this.inlinePrivateMethodsSM = false;
        this.inlinePrivateMethodsSMESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, oldInlinePrivateMethodsSM, false, oldInlinePrivateMethodsSMESet));
        }
    }

    @Override
    public boolean isSetInlinePrivateMethodsSM() {
        return this.inlinePrivateMethodsSMESet;
    }

    @Override
    public boolean isIsService() {
        return this.isService;
    }

    @Override
    public void setIsService(boolean newIsService) {
        boolean oldIsService = this.isService;
        this.isService = newIsService;
        boolean oldIsServiceESet = this.isServiceESet;
        this.isServiceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, oldIsService, this.isService, !oldIsServiceESet));
        }
    }

    @Override
    public void unsetIsService() {
        boolean oldIsService = this.isService;
        boolean oldIsServiceESet = this.isServiceESet;
        this.isService = false;
        this.isServiceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, oldIsService, false, oldIsServiceESet));
        }
    }

    @Override
    public boolean isSetIsService() {
        return this.isServiceESet;
    }

    @Override
    public String getMemoryLocation() {
        return this.memoryLocation;
    }

    @Override
    public void setMemoryLocation(String newMemoryLocation) {
        String oldMemoryLocation = this.memoryLocation;
        this.memoryLocation = newMemoryLocation;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldMemoryLocation, (Object)this.memoryLocation));
        }
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public String getOID() {
        return this.oID;
    }

    @Override
    public void setOID(String newOID) {
        String oldOID = this.oID;
        this.oID = newOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldOID, (Object)this.oID));
        }
    }

    @Override
    public boolean isOptimizeMethodCalls() {
        return this.optimizeMethodCalls;
    }

    @Override
    public void setOptimizeMethodCalls(boolean newOptimizeMethodCalls) {
        boolean oldOptimizeMethodCalls = this.optimizeMethodCalls;
        this.optimizeMethodCalls = newOptimizeMethodCalls;
        boolean oldOptimizeMethodCallsESet = this.optimizeMethodCallsESet;
        this.optimizeMethodCallsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, oldOptimizeMethodCalls, this.optimizeMethodCalls, !oldOptimizeMethodCallsESet));
        }
    }

    @Override
    public void unsetOptimizeMethodCalls() {
        boolean oldOptimizeMethodCalls = this.optimizeMethodCalls;
        boolean oldOptimizeMethodCallsESet = this.optimizeMethodCallsESet;
        this.optimizeMethodCalls = false;
        this.optimizeMethodCallsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, oldOptimizeMethodCalls, false, oldOptimizeMethodCallsESet));
        }
    }

    @Override
    public boolean isSetOptimizeMethodCalls() {
        return this.optimizeMethodCallsESet;
    }

    @Override
    public boolean isOutlineMethodsSM() {
        return this.outlineMethodsSM;
    }

    @Override
    public void setOutlineMethodsSM(boolean newOutlineMethodsSM) {
        boolean oldOutlineMethodsSM = this.outlineMethodsSM;
        this.outlineMethodsSM = newOutlineMethodsSM;
        boolean oldOutlineMethodsSMESet = this.outlineMethodsSMESet;
        this.outlineMethodsSMESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, oldOutlineMethodsSM, this.outlineMethodsSM, !oldOutlineMethodsSMESet));
        }
    }

    @Override
    public void unsetOutlineMethodsSM() {
        boolean oldOutlineMethodsSM = this.outlineMethodsSM;
        boolean oldOutlineMethodsSMESet = this.outlineMethodsSMESet;
        this.outlineMethodsSM = false;
        this.outlineMethodsSMESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 16, oldOutlineMethodsSM, false, oldOutlineMethodsSMESet));
        }
    }

    @Override
    public boolean isSetOutlineMethodsSM() {
        return this.outlineMethodsSMESet;
    }

    @Override
    public String getPackageName() {
        return this.packageName;
    }

    @Override
    public void setPackageName(String newPackageName) {
        String oldPackageName = this.packageName;
        this.packageName = newPackageName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldPackageName, (Object)this.packageName));
        }
    }

    @Override
    public boolean isUserDefinedOrder() {
        return this.userDefinedOrder;
    }

    @Override
    public void setUserDefinedOrder(boolean newUserDefinedOrder) {
        boolean oldUserDefinedOrder = this.userDefinedOrder;
        this.userDefinedOrder = newUserDefinedOrder;
        boolean oldUserDefinedOrderESet = this.userDefinedOrderESet;
        this.userDefinedOrderESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, oldUserDefinedOrder, this.userDefinedOrder, !oldUserDefinedOrderESet));
        }
    }

    @Override
    public void unsetUserDefinedOrder() {
        boolean oldUserDefinedOrder = this.userDefinedOrder;
        boolean oldUserDefinedOrderESet = this.userDefinedOrderESet;
        this.userDefinedOrder = false;
        this.userDefinedOrderESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, oldUserDefinedOrder, false, oldUserDefinedOrderESet));
        }
    }

    @Override
    public boolean isSetUserDefinedOrder() {
        return this.userDefinedOrderESet;
    }

    @Override
    public boolean isUsingServiceRoutines() {
        return this.usingServiceRoutines;
    }

    @Override
    public void setUsingServiceRoutines(boolean newUsingServiceRoutines) {
        boolean oldUsingServiceRoutines = this.usingServiceRoutines;
        this.usingServiceRoutines = newUsingServiceRoutines;
        boolean oldUsingServiceRoutinesESet = this.usingServiceRoutinesESet;
        this.usingServiceRoutinesESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, oldUsingServiceRoutines, this.usingServiceRoutines, !oldUsingServiceRoutinesESet));
        }
    }

    @Override
    public void unsetUsingServiceRoutines() {
        boolean oldUsingServiceRoutines = this.usingServiceRoutines;
        boolean oldUsingServiceRoutinesESet = this.usingServiceRoutinesESet;
        this.usingServiceRoutines = false;
        this.usingServiceRoutinesESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, oldUsingServiceRoutines, false, oldUsingServiceRoutinesESet));
        }
    }

    @Override
    public boolean isSetUsingServiceRoutines() {
        return this.usingServiceRoutinesESet;
    }

    @Override
    public String getUUID() {
        return this.uUID;
    }

    @Override
    public void setUUID(String newUUID) {
        String oldUUID = this.uUID;
        this.uUID = newUUID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldUUID, (Object)this.uUID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetTimeStamp(null, msgs);
            }
            case 1: {
                return this.basicSetNotes(null, msgs);
            }
            case 2: {
                return ((InternalEList)this.getCustomerData()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getTimeStamp();
            }
            case 1: {
                return this.getNotes();
            }
            case 2: {
                return this.getCustomerData();
            }
            case 3: {
                return this.getCacheLocking();
            }
            case 4: {
                return this.getChecksum();
            }
            case 5: {
                return this.isClassConfig();
            }
            case 6: {
                return this.isDefault();
            }
            case 7: {
                return this.getGenerateDataStructures();
            }
            case 8: {
                return this.isGenerateMethodBody();
            }
            case 9: {
                return this.isHierarchicalGenerationForSM();
            }
            case 10: {
                return this.isInlinePrivateMethodsSM();
            }
            case 11: {
                return this.isIsService();
            }
            case 12: {
                return this.getMemoryLocation();
            }
            case 13: {
                return this.getName();
            }
            case 14: {
                return this.getOID();
            }
            case 15: {
                return this.isOptimizeMethodCalls();
            }
            case 16: {
                return this.isOutlineMethodsSM();
            }
            case 17: {
                return this.getPackageName();
            }
            case 18: {
                return this.isUserDefinedOrder();
            }
            case 19: {
                return this.isUsingServiceRoutines();
            }
            case 20: {
                return this.getUUID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setTimeStamp((TimeStampT)newValue);
                return;
            }
            case 1: {
                this.setNotes((NotesT)newValue);
                return;
            }
            case 2: {
                this.getCustomerData().clear();
                this.getCustomerData().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.setCacheLocking((CacheLockingType)((Object)newValue));
                return;
            }
            case 4: {
                this.setChecksum((byte[])newValue);
                return;
            }
            case 5: {
                this.setClassConfig((Boolean)newValue);
                return;
            }
            case 6: {
                this.setDefault((Boolean)newValue);
                return;
            }
            case 7: {
                this.setGenerateDataStructures(newValue);
                return;
            }
            case 8: {
                this.setGenerateMethodBody((Boolean)newValue);
                return;
            }
            case 9: {
                this.setHierarchicalGenerationForSM((Boolean)newValue);
                return;
            }
            case 10: {
                this.setInlinePrivateMethodsSM((Boolean)newValue);
                return;
            }
            case 11: {
                this.setIsService((Boolean)newValue);
                return;
            }
            case 12: {
                this.setMemoryLocation((String)newValue);
                return;
            }
            case 13: {
                this.setName((String)newValue);
                return;
            }
            case 14: {
                this.setOID((String)newValue);
                return;
            }
            case 15: {
                this.setOptimizeMethodCalls((Boolean)newValue);
                return;
            }
            case 16: {
                this.setOutlineMethodsSM((Boolean)newValue);
                return;
            }
            case 17: {
                this.setPackageName((String)newValue);
                return;
            }
            case 18: {
                this.setUserDefinedOrder((Boolean)newValue);
                return;
            }
            case 19: {
                this.setUsingServiceRoutines((Boolean)newValue);
                return;
            }
            case 20: {
                this.setUUID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setTimeStamp(null);
                return;
            }
            case 1: {
                this.setNotes(null);
                return;
            }
            case 2: {
                this.getCustomerData().clear();
                return;
            }
            case 3: {
                this.unsetCacheLocking();
                return;
            }
            case 4: {
                this.setChecksum(CHECKSUM_EDEFAULT);
                return;
            }
            case 5: {
                this.unsetClassConfig();
                return;
            }
            case 6: {
                this.unsetDefault();
                return;
            }
            case 7: {
                this.setGenerateDataStructures(GENERATE_DATA_STRUCTURES_EDEFAULT);
                return;
            }
            case 8: {
                this.unsetGenerateMethodBody();
                return;
            }
            case 9: {
                this.unsetHierarchicalGenerationForSM();
                return;
            }
            case 10: {
                this.unsetInlinePrivateMethodsSM();
                return;
            }
            case 11: {
                this.unsetIsService();
                return;
            }
            case 12: {
                this.setMemoryLocation(MEMORY_LOCATION_EDEFAULT);
                return;
            }
            case 13: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 14: {
                this.setOID(OID_EDEFAULT);
                return;
            }
            case 15: {
                this.unsetOptimizeMethodCalls();
                return;
            }
            case 16: {
                this.unsetOutlineMethodsSM();
                return;
            }
            case 17: {
                this.setPackageName(PACKAGE_NAME_EDEFAULT);
                return;
            }
            case 18: {
                this.unsetUserDefinedOrder();
                return;
            }
            case 19: {
                this.unsetUsingServiceRoutines();
                return;
            }
            case 20: {
                this.setUUID(UUID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.timeStamp != null;
            }
            case 1: {
                return this.notes != null;
            }
            case 2: {
                return this.customerData != null && !this.customerData.isEmpty();
            }
            case 3: {
                return this.isSetCacheLocking();
            }
            case 4: {
                return CHECKSUM_EDEFAULT == null ? this.checksum != null : !CHECKSUM_EDEFAULT.equals(this.checksum);
            }
            case 5: {
                return this.isSetClassConfig();
            }
            case 6: {
                return this.isSetDefault();
            }
            case 7: {
                return GENERATE_DATA_STRUCTURES_EDEFAULT == null ? this.generateDataStructures != null : !GENERATE_DATA_STRUCTURES_EDEFAULT.equals(this.generateDataStructures);
            }
            case 8: {
                return this.isSetGenerateMethodBody();
            }
            case 9: {
                return this.isSetHierarchicalGenerationForSM();
            }
            case 10: {
                return this.isSetInlinePrivateMethodsSM();
            }
            case 11: {
                return this.isSetIsService();
            }
            case 12: {
                return MEMORY_LOCATION_EDEFAULT == null ? this.memoryLocation != null : !MEMORY_LOCATION_EDEFAULT.equals(this.memoryLocation);
            }
            case 13: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 14: {
                return OID_EDEFAULT == null ? this.oID != null : !OID_EDEFAULT.equals(this.oID);
            }
            case 15: {
                return this.isSetOptimizeMethodCalls();
            }
            case 16: {
                return this.isSetOutlineMethodsSM();
            }
            case 17: {
                return PACKAGE_NAME_EDEFAULT == null ? this.packageName != null : !PACKAGE_NAME_EDEFAULT.equals(this.packageName);
            }
            case 18: {
                return this.isSetUserDefinedOrder();
            }
            case 19: {
                return this.isSetUsingServiceRoutines();
            }
            case 20: {
                return UUID_EDEFAULT == null ? this.uUID != null : !UUID_EDEFAULT.equals(this.uUID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (cacheLocking: ");
        if (this.cacheLockingESet) {
            result.append((Object)this.cacheLocking);
        } else {
            result.append("<unset>");
        }
        result.append(", checksum: ");
        result.append(this.checksum);
        result.append(", classConfig: ");
        if (this.classConfigESet) {
            result.append(this.classConfig);
        } else {
            result.append("<unset>");
        }
        result.append(", default: ");
        if (this.defaultESet) {
            result.append(this.default_);
        } else {
            result.append("<unset>");
        }
        result.append(", generateDataStructures: ");
        result.append(this.generateDataStructures);
        result.append(", generateMethodBody: ");
        if (this.generateMethodBodyESet) {
            result.append(this.generateMethodBody);
        } else {
            result.append("<unset>");
        }
        result.append(", hierarchicalGenerationForSM: ");
        if (this.hierarchicalGenerationForSMESet) {
            result.append(this.hierarchicalGenerationForSM);
        } else {
            result.append("<unset>");
        }
        result.append(", inlinePrivateMethodsSM: ");
        if (this.inlinePrivateMethodsSMESet) {
            result.append(this.inlinePrivateMethodsSM);
        } else {
            result.append("<unset>");
        }
        result.append(", isService: ");
        if (this.isServiceESet) {
            result.append(this.isService);
        } else {
            result.append("<unset>");
        }
        result.append(", memoryLocation: ");
        result.append(this.memoryLocation);
        result.append(", name: ");
        result.append(this.name);
        result.append(", oID: ");
        result.append(this.oID);
        result.append(", optimizeMethodCalls: ");
        if (this.optimizeMethodCallsESet) {
            result.append(this.optimizeMethodCalls);
        } else {
            result.append("<unset>");
        }
        result.append(", outlineMethodsSM: ");
        if (this.outlineMethodsSMESet) {
            result.append(this.outlineMethodsSM);
        } else {
            result.append("<unset>");
        }
        result.append(", packageName: ");
        result.append(this.packageName);
        result.append(", userDefinedOrder: ");
        if (this.userDefinedOrderESet) {
            result.append(this.userDefinedOrder);
        } else {
            result.append("<unset>");
        }
        result.append(", usingServiceRoutines: ");
        if (this.usingServiceRoutinesESet) {
            result.append(this.usingServiceRoutines);
        } else {
            result.append("<unset>");
        }
        result.append(", uUID: ");
        result.append(this.uUID);
        result.append(')');
        return result.toString();
    }
}

