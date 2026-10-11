/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar21.system.topology.impl;

import autosar21.system.topology.LINCommunicationPortInstance;
import autosar21.system.topology.LINCommunicationPortInstanceNodeRoleEnum;
import autosar21.system.topology.LINCommunicationPortInstanceProtocolVersionEnum;
import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.impl.ECUCommunicationPortInstanceImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LINCommunicationPortInstanceImpl
extends ECUCommunicationPortInstanceImpl
implements LINCommunicationPortInstance {
    protected static final Integer DIAGNOSTIC_ADDRESS_EDEFAULT = new Integer(0);
    protected Integer diagnosticAddress = DIAGNOSTIC_ADDRESS_EDEFAULT;
    protected boolean diagnosticAddressESet;
    protected static final Integer FUNCTION_ID_EDEFAULT = new Integer(0);
    protected Integer functionID = FUNCTION_ID_EDEFAULT;
    protected boolean functionIDESet;
    protected EList<Integer> initialNADs;
    protected static final Integer MAX_MESSAGE_LENGTH_EDEFAULT = new Integer(0);
    protected Integer maxMessageLength = MAX_MESSAGE_LENGTH_EDEFAULT;
    protected boolean maxMessageLengthESet;
    protected static final Double MAX_PERMITTED_SLAVE_JITTER_EDEFAULT = new Double(0.0);
    protected Double maxPermittedSlaveJitter = MAX_PERMITTED_SLAVE_JITTER_EDEFAULT;
    protected boolean maxPermittedSlaveJitterESet;
    protected static final LINCommunicationPortInstanceNodeRoleEnum NODE_ROLE_EDEFAULT = LINCommunicationPortInstanceNodeRoleEnum.MASTER;
    protected LINCommunicationPortInstanceNodeRoleEnum nodeRole = NODE_ROLE_EDEFAULT;
    protected boolean nodeRoleESet;
    protected static final Double P2_MIN_EDEFAULT = new Double(0.0);
    protected Double p2Min = P2_MIN_EDEFAULT;
    protected boolean p2MinESet;
    protected static final LINCommunicationPortInstanceProtocolVersionEnum PROTOCOL_VERSION_EDEFAULT = LINCommunicationPortInstanceProtocolVersionEnum._12;
    protected LINCommunicationPortInstanceProtocolVersionEnum protocolVersion = PROTOCOL_VERSION_EDEFAULT;
    protected boolean protocolVersionESet;
    protected static final Double ST_MIN_EDEFAULT = new Double(0.0);
    protected Double stMin = ST_MIN_EDEFAULT;
    protected boolean stMinESet;
    protected static final Integer SUPPLIER_ID_EDEFAULT = new Integer(0);
    protected Integer supplierID = SUPPLIER_ID_EDEFAULT;
    protected boolean supplierIDESet;
    protected static final String SUPPORT_SID_EDEFAULT = "";
    protected String supportSID = "";
    protected boolean supportSIDESet;
    protected static final Double TIME_BASE_EDEFAULT = new Double(0.0);
    protected Double timeBase = TIME_BASE_EDEFAULT;
    protected boolean timeBaseESet;
    protected static final Double TIME_BASE_JITTER_EDEFAULT = new Double(0.0);
    protected Double timeBaseJitter = TIME_BASE_JITTER_EDEFAULT;
    protected boolean timeBaseJitterESet;
    protected static final Integer VARIANT_ID_EDEFAULT = new Integer(0);
    protected Integer variantID = VARIANT_ID_EDEFAULT;
    protected boolean variantIDESet;

    protected LINCommunicationPortInstanceImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TopologyPackage.Literals.LIN_COMMUNICATION_PORT_INSTANCE;
    }

    @Override
    public Integer getDiagnosticAddress() {
        return this.diagnosticAddress;
    }

    @Override
    public void setDiagnosticAddress(Integer newDiagnosticAddress) {
        Integer oldDiagnosticAddress = this.diagnosticAddress;
        this.diagnosticAddress = newDiagnosticAddress;
        boolean oldDiagnosticAddressESet = this.diagnosticAddressESet;
        this.diagnosticAddressESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldDiagnosticAddress, (Object)this.diagnosticAddress, !oldDiagnosticAddressESet));
        }
    }

    @Override
    public void unsetDiagnosticAddress() {
        Integer oldDiagnosticAddress = this.diagnosticAddress;
        boolean oldDiagnosticAddressESet = this.diagnosticAddressESet;
        this.diagnosticAddress = DIAGNOSTIC_ADDRESS_EDEFAULT;
        this.diagnosticAddressESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldDiagnosticAddress, (Object)DIAGNOSTIC_ADDRESS_EDEFAULT, oldDiagnosticAddressESet));
        }
    }

    @Override
    public boolean isSetDiagnosticAddress() {
        return this.diagnosticAddressESet;
    }

    @Override
    public Integer getFunctionID() {
        return this.functionID;
    }

    @Override
    public void setFunctionID(Integer newFunctionID) {
        Integer oldFunctionID = this.functionID;
        this.functionID = newFunctionID;
        boolean oldFunctionIDESet = this.functionIDESet;
        this.functionIDESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldFunctionID, (Object)this.functionID, !oldFunctionIDESet));
        }
    }

    @Override
    public void unsetFunctionID() {
        Integer oldFunctionID = this.functionID;
        boolean oldFunctionIDESet = this.functionIDESet;
        this.functionID = FUNCTION_ID_EDEFAULT;
        this.functionIDESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldFunctionID, (Object)FUNCTION_ID_EDEFAULT, oldFunctionIDESet));
        }
    }

    @Override
    public boolean isSetFunctionID() {
        return this.functionIDESet;
    }

    @Override
    public EList<Integer> getInitialNADs() {
        if (this.initialNADs == null) {
            this.initialNADs = new EDataTypeUniqueEList.Unsettable(Integer.class, (InternalEObject)this, 23);
        }
        return this.initialNADs;
    }

    @Override
    public void unsetInitialNADs() {
        if (this.initialNADs != null) {
            ((InternalEList.Unsettable)this.initialNADs).unset();
        }
    }

    @Override
    public boolean isSetInitialNADs() {
        return this.initialNADs != null && ((InternalEList.Unsettable)this.initialNADs).isSet();
    }

    @Override
    public Integer getMaxMessageLength() {
        return this.maxMessageLength;
    }

    @Override
    public void setMaxMessageLength(Integer newMaxMessageLength) {
        Integer oldMaxMessageLength = this.maxMessageLength;
        this.maxMessageLength = newMaxMessageLength;
        boolean oldMaxMessageLengthESet = this.maxMessageLengthESet;
        this.maxMessageLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldMaxMessageLength, (Object)this.maxMessageLength, !oldMaxMessageLengthESet));
        }
    }

    @Override
    public void unsetMaxMessageLength() {
        Integer oldMaxMessageLength = this.maxMessageLength;
        boolean oldMaxMessageLengthESet = this.maxMessageLengthESet;
        this.maxMessageLength = MAX_MESSAGE_LENGTH_EDEFAULT;
        this.maxMessageLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldMaxMessageLength, (Object)MAX_MESSAGE_LENGTH_EDEFAULT, oldMaxMessageLengthESet));
        }
    }

    @Override
    public boolean isSetMaxMessageLength() {
        return this.maxMessageLengthESet;
    }

    @Override
    public Double getMaxPermittedSlaveJitter() {
        return this.maxPermittedSlaveJitter;
    }

    @Override
    public void setMaxPermittedSlaveJitter(Double newMaxPermittedSlaveJitter) {
        Double oldMaxPermittedSlaveJitter = this.maxPermittedSlaveJitter;
        this.maxPermittedSlaveJitter = newMaxPermittedSlaveJitter;
        boolean oldMaxPermittedSlaveJitterESet = this.maxPermittedSlaveJitterESet;
        this.maxPermittedSlaveJitterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldMaxPermittedSlaveJitter, (Object)this.maxPermittedSlaveJitter, !oldMaxPermittedSlaveJitterESet));
        }
    }

    @Override
    public void unsetMaxPermittedSlaveJitter() {
        Double oldMaxPermittedSlaveJitter = this.maxPermittedSlaveJitter;
        boolean oldMaxPermittedSlaveJitterESet = this.maxPermittedSlaveJitterESet;
        this.maxPermittedSlaveJitter = MAX_PERMITTED_SLAVE_JITTER_EDEFAULT;
        this.maxPermittedSlaveJitterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldMaxPermittedSlaveJitter, (Object)MAX_PERMITTED_SLAVE_JITTER_EDEFAULT, oldMaxPermittedSlaveJitterESet));
        }
    }

    @Override
    public boolean isSetMaxPermittedSlaveJitter() {
        return this.maxPermittedSlaveJitterESet;
    }

    @Override
    public LINCommunicationPortInstanceNodeRoleEnum getNodeRole() {
        return this.nodeRole;
    }

    @Override
    public void setNodeRole(LINCommunicationPortInstanceNodeRoleEnum newNodeRole) {
        LINCommunicationPortInstanceNodeRoleEnum oldNodeRole = this.nodeRole;
        this.nodeRole = newNodeRole == null ? NODE_ROLE_EDEFAULT : newNodeRole;
        boolean oldNodeRoleESet = this.nodeRoleESet;
        this.nodeRoleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldNodeRole, (Object)this.nodeRole, !oldNodeRoleESet));
        }
    }

    @Override
    public void unsetNodeRole() {
        LINCommunicationPortInstanceNodeRoleEnum oldNodeRole = this.nodeRole;
        boolean oldNodeRoleESet = this.nodeRoleESet;
        this.nodeRole = NODE_ROLE_EDEFAULT;
        this.nodeRoleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldNodeRole, (Object)NODE_ROLE_EDEFAULT, oldNodeRoleESet));
        }
    }

    @Override
    public boolean isSetNodeRole() {
        return this.nodeRoleESet;
    }

    @Override
    public Double getP2Min() {
        return this.p2Min;
    }

    @Override
    public void setP2Min(Double newP2Min) {
        Double oldP2Min = this.p2Min;
        this.p2Min = newP2Min;
        boolean oldP2MinESet = this.p2MinESet;
        this.p2MinESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldP2Min, (Object)this.p2Min, !oldP2MinESet));
        }
    }

    @Override
    public void unsetP2Min() {
        Double oldP2Min = this.p2Min;
        boolean oldP2MinESet = this.p2MinESet;
        this.p2Min = P2_MIN_EDEFAULT;
        this.p2MinESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldP2Min, (Object)P2_MIN_EDEFAULT, oldP2MinESet));
        }
    }

    @Override
    public boolean isSetP2Min() {
        return this.p2MinESet;
    }

    @Override
    public LINCommunicationPortInstanceProtocolVersionEnum getProtocolVersion() {
        return this.protocolVersion;
    }

    @Override
    public void setProtocolVersion(LINCommunicationPortInstanceProtocolVersionEnum newProtocolVersion) {
        LINCommunicationPortInstanceProtocolVersionEnum oldProtocolVersion = this.protocolVersion;
        this.protocolVersion = newProtocolVersion == null ? PROTOCOL_VERSION_EDEFAULT : newProtocolVersion;
        boolean oldProtocolVersionESet = this.protocolVersionESet;
        this.protocolVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldProtocolVersion, (Object)this.protocolVersion, !oldProtocolVersionESet));
        }
    }

    @Override
    public void unsetProtocolVersion() {
        LINCommunicationPortInstanceProtocolVersionEnum oldProtocolVersion = this.protocolVersion;
        boolean oldProtocolVersionESet = this.protocolVersionESet;
        this.protocolVersion = PROTOCOL_VERSION_EDEFAULT;
        this.protocolVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldProtocolVersion, (Object)PROTOCOL_VERSION_EDEFAULT, oldProtocolVersionESet));
        }
    }

    @Override
    public boolean isSetProtocolVersion() {
        return this.protocolVersionESet;
    }

    @Override
    public Double getStMin() {
        return this.stMin;
    }

    @Override
    public void setStMin(Double newStMin) {
        Double oldStMin = this.stMin;
        this.stMin = newStMin;
        boolean oldStMinESet = this.stMinESet;
        this.stMinESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldStMin, (Object)this.stMin, !oldStMinESet));
        }
    }

    @Override
    public void unsetStMin() {
        Double oldStMin = this.stMin;
        boolean oldStMinESet = this.stMinESet;
        this.stMin = ST_MIN_EDEFAULT;
        this.stMinESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldStMin, (Object)ST_MIN_EDEFAULT, oldStMinESet));
        }
    }

    @Override
    public boolean isSetStMin() {
        return this.stMinESet;
    }

    @Override
    public Integer getSupplierID() {
        return this.supplierID;
    }

    @Override
    public void setSupplierID(Integer newSupplierID) {
        Integer oldSupplierID = this.supplierID;
        this.supplierID = newSupplierID;
        boolean oldSupplierIDESet = this.supplierIDESet;
        this.supplierIDESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldSupplierID, (Object)this.supplierID, !oldSupplierIDESet));
        }
    }

    @Override
    public void unsetSupplierID() {
        Integer oldSupplierID = this.supplierID;
        boolean oldSupplierIDESet = this.supplierIDESet;
        this.supplierID = SUPPLIER_ID_EDEFAULT;
        this.supplierIDESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldSupplierID, (Object)SUPPLIER_ID_EDEFAULT, oldSupplierIDESet));
        }
    }

    @Override
    public boolean isSetSupplierID() {
        return this.supplierIDESet;
    }

    @Override
    public String getSupportSID() {
        return this.supportSID;
    }

    @Override
    public void setSupportSID(String newSupportSID) {
        String oldSupportSID = this.supportSID;
        this.supportSID = newSupportSID;
        boolean oldSupportSIDESet = this.supportSIDESet;
        this.supportSIDESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldSupportSID, (Object)this.supportSID, !oldSupportSIDESet));
        }
    }

    @Override
    public void unsetSupportSID() {
        String oldSupportSID = this.supportSID;
        boolean oldSupportSIDESet = this.supportSIDESet;
        this.supportSID = SUPPORT_SID_EDEFAULT;
        this.supportSIDESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldSupportSID, (Object)SUPPORT_SID_EDEFAULT, oldSupportSIDESet));
        }
    }

    @Override
    public boolean isSetSupportSID() {
        return this.supportSIDESet;
    }

    @Override
    public Double getTimeBase() {
        return this.timeBase;
    }

    @Override
    public void setTimeBase(Double newTimeBase) {
        Double oldTimeBase = this.timeBase;
        this.timeBase = newTimeBase;
        boolean oldTimeBaseESet = this.timeBaseESet;
        this.timeBaseESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldTimeBase, (Object)this.timeBase, !oldTimeBaseESet));
        }
    }

    @Override
    public void unsetTimeBase() {
        Double oldTimeBase = this.timeBase;
        boolean oldTimeBaseESet = this.timeBaseESet;
        this.timeBase = TIME_BASE_EDEFAULT;
        this.timeBaseESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldTimeBase, (Object)TIME_BASE_EDEFAULT, oldTimeBaseESet));
        }
    }

    @Override
    public boolean isSetTimeBase() {
        return this.timeBaseESet;
    }

    @Override
    public Double getTimeBaseJitter() {
        return this.timeBaseJitter;
    }

    @Override
    public void setTimeBaseJitter(Double newTimeBaseJitter) {
        Double oldTimeBaseJitter = this.timeBaseJitter;
        this.timeBaseJitter = newTimeBaseJitter;
        boolean oldTimeBaseJitterESet = this.timeBaseJitterESet;
        this.timeBaseJitterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldTimeBaseJitter, (Object)this.timeBaseJitter, !oldTimeBaseJitterESet));
        }
    }

    @Override
    public void unsetTimeBaseJitter() {
        Double oldTimeBaseJitter = this.timeBaseJitter;
        boolean oldTimeBaseJitterESet = this.timeBaseJitterESet;
        this.timeBaseJitter = TIME_BASE_JITTER_EDEFAULT;
        this.timeBaseJitterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldTimeBaseJitter, (Object)TIME_BASE_JITTER_EDEFAULT, oldTimeBaseJitterESet));
        }
    }

    @Override
    public boolean isSetTimeBaseJitter() {
        return this.timeBaseJitterESet;
    }

    @Override
    public Integer getVariantID() {
        return this.variantID;
    }

    @Override
    public void setVariantID(Integer newVariantID) {
        Integer oldVariantID = this.variantID;
        this.variantID = newVariantID;
        boolean oldVariantIDESet = this.variantIDESet;
        this.variantIDESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldVariantID, (Object)this.variantID, !oldVariantIDESet));
        }
    }

    @Override
    public void unsetVariantID() {
        Integer oldVariantID = this.variantID;
        boolean oldVariantIDESet = this.variantIDESet;
        this.variantID = VARIANT_ID_EDEFAULT;
        this.variantIDESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldVariantID, (Object)VARIANT_ID_EDEFAULT, oldVariantIDESet));
        }
    }

    @Override
    public boolean isSetVariantID() {
        return this.variantIDESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getDiagnosticAddress();
            }
            case 22: {
                return this.getFunctionID();
            }
            case 23: {
                return this.getInitialNADs();
            }
            case 24: {
                return this.getMaxMessageLength();
            }
            case 25: {
                return this.getMaxPermittedSlaveJitter();
            }
            case 26: {
                return this.getNodeRole();
            }
            case 27: {
                return this.getP2Min();
            }
            case 28: {
                return this.getProtocolVersion();
            }
            case 29: {
                return this.getStMin();
            }
            case 30: {
                return this.getSupplierID();
            }
            case 31: {
                return this.getSupportSID();
            }
            case 32: {
                return this.getTimeBase();
            }
            case 33: {
                return this.getTimeBaseJitter();
            }
            case 34: {
                return this.getVariantID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setDiagnosticAddress((Integer)newValue);
                return;
            }
            case 22: {
                this.setFunctionID((Integer)newValue);
                return;
            }
            case 23: {
                this.getInitialNADs().clear();
                this.getInitialNADs().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.setMaxMessageLength((Integer)newValue);
                return;
            }
            case 25: {
                this.setMaxPermittedSlaveJitter((Double)newValue);
                return;
            }
            case 26: {
                this.setNodeRole((LINCommunicationPortInstanceNodeRoleEnum)((Object)newValue));
                return;
            }
            case 27: {
                this.setP2Min((Double)newValue);
                return;
            }
            case 28: {
                this.setProtocolVersion((LINCommunicationPortInstanceProtocolVersionEnum)((Object)newValue));
                return;
            }
            case 29: {
                this.setStMin((Double)newValue);
                return;
            }
            case 30: {
                this.setSupplierID((Integer)newValue);
                return;
            }
            case 31: {
                this.setSupportSID((String)newValue);
                return;
            }
            case 32: {
                this.setTimeBase((Double)newValue);
                return;
            }
            case 33: {
                this.setTimeBaseJitter((Double)newValue);
                return;
            }
            case 34: {
                this.setVariantID((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetDiagnosticAddress();
                return;
            }
            case 22: {
                this.unsetFunctionID();
                return;
            }
            case 23: {
                this.unsetInitialNADs();
                return;
            }
            case 24: {
                this.unsetMaxMessageLength();
                return;
            }
            case 25: {
                this.unsetMaxPermittedSlaveJitter();
                return;
            }
            case 26: {
                this.unsetNodeRole();
                return;
            }
            case 27: {
                this.unsetP2Min();
                return;
            }
            case 28: {
                this.unsetProtocolVersion();
                return;
            }
            case 29: {
                this.unsetStMin();
                return;
            }
            case 30: {
                this.unsetSupplierID();
                return;
            }
            case 31: {
                this.unsetSupportSID();
                return;
            }
            case 32: {
                this.unsetTimeBase();
                return;
            }
            case 33: {
                this.unsetTimeBaseJitter();
                return;
            }
            case 34: {
                this.unsetVariantID();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetDiagnosticAddress();
            }
            case 22: {
                return this.isSetFunctionID();
            }
            case 23: {
                return this.isSetInitialNADs();
            }
            case 24: {
                return this.isSetMaxMessageLength();
            }
            case 25: {
                return this.isSetMaxPermittedSlaveJitter();
            }
            case 26: {
                return this.isSetNodeRole();
            }
            case 27: {
                return this.isSetP2Min();
            }
            case 28: {
                return this.isSetProtocolVersion();
            }
            case 29: {
                return this.isSetStMin();
            }
            case 30: {
                return this.isSetSupplierID();
            }
            case 31: {
                return this.isSetSupportSID();
            }
            case 32: {
                return this.isSetTimeBase();
            }
            case 33: {
                return this.isSetTimeBaseJitter();
            }
            case 34: {
                return this.isSetVariantID();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (diagnosticAddress: ");
        if (this.diagnosticAddressESet) {
            result.append(this.diagnosticAddress);
        } else {
            result.append("<unset>");
        }
        result.append(", functionID: ");
        if (this.functionIDESet) {
            result.append(this.functionID);
        } else {
            result.append("<unset>");
        }
        result.append(", initialNADs: ");
        result.append(this.initialNADs);
        result.append(", maxMessageLength: ");
        if (this.maxMessageLengthESet) {
            result.append(this.maxMessageLength);
        } else {
            result.append("<unset>");
        }
        result.append(", maxPermittedSlaveJitter: ");
        if (this.maxPermittedSlaveJitterESet) {
            result.append(this.maxPermittedSlaveJitter);
        } else {
            result.append("<unset>");
        }
        result.append(", nodeRole: ");
        if (this.nodeRoleESet) {
            result.append((Object)this.nodeRole);
        } else {
            result.append("<unset>");
        }
        result.append(", p2Min: ");
        if (this.p2MinESet) {
            result.append(this.p2Min);
        } else {
            result.append("<unset>");
        }
        result.append(", protocolVersion: ");
        if (this.protocolVersionESet) {
            result.append((Object)this.protocolVersion);
        } else {
            result.append("<unset>");
        }
        result.append(", stMin: ");
        if (this.stMinESet) {
            result.append(this.stMin);
        } else {
            result.append("<unset>");
        }
        result.append(", supplierID: ");
        if (this.supplierIDESet) {
            result.append(this.supplierID);
        } else {
            result.append("<unset>");
        }
        result.append(", supportSID: ");
        if (this.supportSIDESet) {
            result.append(this.supportSID);
        } else {
            result.append("<unset>");
        }
        result.append(", timeBase: ");
        if (this.timeBaseESet) {
            result.append(this.timeBase);
        } else {
            result.append("<unset>");
        }
        result.append(", timeBaseJitter: ");
        if (this.timeBaseJitterESet) {
            result.append(this.timeBaseJitter);
        } else {
            result.append("<unset>");
        }
        result.append(", variantID: ");
        if (this.variantIDESet) {
            result.append(this.variantID);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

