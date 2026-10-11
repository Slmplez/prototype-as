/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.BuildConfigurationType;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.DataConfigurationType;
import com.etas.amd620.core.ComponentProject.FilesType;
import com.etas.amd620.core.ComponentProject.ImplementationConfigurationType;
import com.etas.amd620.core.ComponentProject.MessageTType;
import com.etas.amd620.core.ComponentProject.ModelConfigurationT;
import com.etas.amd620.core.ComponentProject.OsLogicType;
import com.etas.amd620.core.ComponentProject.ProjectType;
import com.etas.amd620.core.ComponentProject.SimulationConfigurationType;
import com.etas.amd620.core.ComponentProject.TransferOptionsType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.w3._2000._09.xmldsig.SignatureType;

public class ProjectTypeImpl
extends MinimalEObjectImpl.Container
implements ProjectType {
    protected ImplementationConfigurationType implementationConfiguration;
    protected DataConfigurationType dataConfiguration;
    protected OsLogicType osLogic;
    protected ModelConfigurationT modelConfiguration;
    protected BuildConfigurationType buildConfiguration;
    protected SimulationConfigurationType simulationConfiguration;
    protected MessageTType hiddenMessageTypes;
    protected MessageTType ignoredMessageTypes;
    protected MessageTType promotedToErrorMessageTypes;
    protected MessageTType promotedToWarningMessageTypes;
    protected TransferOptionsType transferOptions;
    protected FilesType files;
    protected SignatureType signature;
    protected static final String BUILD_CONFIG_KEY_EDEFAULT = null;
    protected String buildConfigKey = BUILD_CONFIG_KEY_EDEFAULT;
    protected static final String SCHEMA_VERSION_EDEFAULT = null;
    protected String schemaVersion = SCHEMA_VERSION_EDEFAULT;
    protected static final String TOOL_VERSION_EDEFAULT = null;
    protected String toolVersion = TOOL_VERSION_EDEFAULT;

    protected ProjectTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.PROJECT_TYPE;
    }

    @Override
    public ImplementationConfigurationType getImplementationConfiguration() {
        return this.implementationConfiguration;
    }

    public NotificationChain basicSetImplementationConfiguration(ImplementationConfigurationType newImplementationConfiguration, NotificationChain msgs) {
        ImplementationConfigurationType oldImplementationConfiguration = this.implementationConfiguration;
        this.implementationConfiguration = newImplementationConfiguration;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldImplementationConfiguration, (Object)newImplementationConfiguration);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setImplementationConfiguration(ImplementationConfigurationType newImplementationConfiguration) {
        if (newImplementationConfiguration != this.implementationConfiguration) {
            NotificationChain msgs = null;
            if (this.implementationConfiguration != null) {
                msgs = ((InternalEObject)this.implementationConfiguration).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newImplementationConfiguration != null) {
                msgs = ((InternalEObject)newImplementationConfiguration).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetImplementationConfiguration(newImplementationConfiguration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newImplementationConfiguration, (Object)newImplementationConfiguration));
        }
    }

    @Override
    public DataConfigurationType getDataConfiguration() {
        return this.dataConfiguration;
    }

    public NotificationChain basicSetDataConfiguration(DataConfigurationType newDataConfiguration, NotificationChain msgs) {
        DataConfigurationType oldDataConfiguration = this.dataConfiguration;
        this.dataConfiguration = newDataConfiguration;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldDataConfiguration, (Object)newDataConfiguration);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDataConfiguration(DataConfigurationType newDataConfiguration) {
        if (newDataConfiguration != this.dataConfiguration) {
            NotificationChain msgs = null;
            if (this.dataConfiguration != null) {
                msgs = ((InternalEObject)this.dataConfiguration).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newDataConfiguration != null) {
                msgs = ((InternalEObject)newDataConfiguration).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetDataConfiguration(newDataConfiguration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newDataConfiguration, (Object)newDataConfiguration));
        }
    }

    @Override
    public OsLogicType getOsLogic() {
        return this.osLogic;
    }

    public NotificationChain basicSetOsLogic(OsLogicType newOsLogic, NotificationChain msgs) {
        OsLogicType oldOsLogic = this.osLogic;
        this.osLogic = newOsLogic;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldOsLogic, (Object)newOsLogic);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setOsLogic(OsLogicType newOsLogic) {
        if (newOsLogic != this.osLogic) {
            NotificationChain msgs = null;
            if (this.osLogic != null) {
                msgs = ((InternalEObject)this.osLogic).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newOsLogic != null) {
                msgs = ((InternalEObject)newOsLogic).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetOsLogic(newOsLogic, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newOsLogic, (Object)newOsLogic));
        }
    }

    @Override
    public ModelConfigurationT getModelConfiguration() {
        return this.modelConfiguration;
    }

    public NotificationChain basicSetModelConfiguration(ModelConfigurationT newModelConfiguration, NotificationChain msgs) {
        ModelConfigurationT oldModelConfiguration = this.modelConfiguration;
        this.modelConfiguration = newModelConfiguration;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldModelConfiguration, (Object)newModelConfiguration);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setModelConfiguration(ModelConfigurationT newModelConfiguration) {
        if (newModelConfiguration != this.modelConfiguration) {
            NotificationChain msgs = null;
            if (this.modelConfiguration != null) {
                msgs = ((InternalEObject)this.modelConfiguration).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newModelConfiguration != null) {
                msgs = ((InternalEObject)newModelConfiguration).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetModelConfiguration(newModelConfiguration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newModelConfiguration, (Object)newModelConfiguration));
        }
    }

    @Override
    public BuildConfigurationType getBuildConfiguration() {
        return this.buildConfiguration;
    }

    public NotificationChain basicSetBuildConfiguration(BuildConfigurationType newBuildConfiguration, NotificationChain msgs) {
        BuildConfigurationType oldBuildConfiguration = this.buildConfiguration;
        this.buildConfiguration = newBuildConfiguration;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldBuildConfiguration, (Object)newBuildConfiguration);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setBuildConfiguration(BuildConfigurationType newBuildConfiguration) {
        if (newBuildConfiguration != this.buildConfiguration) {
            NotificationChain msgs = null;
            if (this.buildConfiguration != null) {
                msgs = ((InternalEObject)this.buildConfiguration).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newBuildConfiguration != null) {
                msgs = ((InternalEObject)newBuildConfiguration).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetBuildConfiguration(newBuildConfiguration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newBuildConfiguration, (Object)newBuildConfiguration));
        }
    }

    @Override
    public SimulationConfigurationType getSimulationConfiguration() {
        return this.simulationConfiguration;
    }

    public NotificationChain basicSetSimulationConfiguration(SimulationConfigurationType newSimulationConfiguration, NotificationChain msgs) {
        SimulationConfigurationType oldSimulationConfiguration = this.simulationConfiguration;
        this.simulationConfiguration = newSimulationConfiguration;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSimulationConfiguration, (Object)newSimulationConfiguration);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSimulationConfiguration(SimulationConfigurationType newSimulationConfiguration) {
        if (newSimulationConfiguration != this.simulationConfiguration) {
            NotificationChain msgs = null;
            if (this.simulationConfiguration != null) {
                msgs = ((InternalEObject)this.simulationConfiguration).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newSimulationConfiguration != null) {
                msgs = ((InternalEObject)newSimulationConfiguration).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetSimulationConfiguration(newSimulationConfiguration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newSimulationConfiguration, (Object)newSimulationConfiguration));
        }
    }

    @Override
    public MessageTType getHiddenMessageTypes() {
        return this.hiddenMessageTypes;
    }

    public NotificationChain basicSetHiddenMessageTypes(MessageTType newHiddenMessageTypes, NotificationChain msgs) {
        MessageTType oldHiddenMessageTypes = this.hiddenMessageTypes;
        this.hiddenMessageTypes = newHiddenMessageTypes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldHiddenMessageTypes, (Object)newHiddenMessageTypes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setHiddenMessageTypes(MessageTType newHiddenMessageTypes) {
        if (newHiddenMessageTypes != this.hiddenMessageTypes) {
            NotificationChain msgs = null;
            if (this.hiddenMessageTypes != null) {
                msgs = ((InternalEObject)this.hiddenMessageTypes).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newHiddenMessageTypes != null) {
                msgs = ((InternalEObject)newHiddenMessageTypes).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetHiddenMessageTypes(newHiddenMessageTypes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newHiddenMessageTypes, (Object)newHiddenMessageTypes));
        }
    }

    @Override
    public MessageTType getIgnoredMessageTypes() {
        return this.ignoredMessageTypes;
    }

    public NotificationChain basicSetIgnoredMessageTypes(MessageTType newIgnoredMessageTypes, NotificationChain msgs) {
        MessageTType oldIgnoredMessageTypes = this.ignoredMessageTypes;
        this.ignoredMessageTypes = newIgnoredMessageTypes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldIgnoredMessageTypes, (Object)newIgnoredMessageTypes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setIgnoredMessageTypes(MessageTType newIgnoredMessageTypes) {
        if (newIgnoredMessageTypes != this.ignoredMessageTypes) {
            NotificationChain msgs = null;
            if (this.ignoredMessageTypes != null) {
                msgs = ((InternalEObject)this.ignoredMessageTypes).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newIgnoredMessageTypes != null) {
                msgs = ((InternalEObject)newIgnoredMessageTypes).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetIgnoredMessageTypes(newIgnoredMessageTypes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newIgnoredMessageTypes, (Object)newIgnoredMessageTypes));
        }
    }

    @Override
    public MessageTType getPromotedToErrorMessageTypes() {
        return this.promotedToErrorMessageTypes;
    }

    public NotificationChain basicSetPromotedToErrorMessageTypes(MessageTType newPromotedToErrorMessageTypes, NotificationChain msgs) {
        MessageTType oldPromotedToErrorMessageTypes = this.promotedToErrorMessageTypes;
        this.promotedToErrorMessageTypes = newPromotedToErrorMessageTypes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldPromotedToErrorMessageTypes, (Object)newPromotedToErrorMessageTypes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setPromotedToErrorMessageTypes(MessageTType newPromotedToErrorMessageTypes) {
        if (newPromotedToErrorMessageTypes != this.promotedToErrorMessageTypes) {
            NotificationChain msgs = null;
            if (this.promotedToErrorMessageTypes != null) {
                msgs = ((InternalEObject)this.promotedToErrorMessageTypes).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newPromotedToErrorMessageTypes != null) {
                msgs = ((InternalEObject)newPromotedToErrorMessageTypes).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetPromotedToErrorMessageTypes(newPromotedToErrorMessageTypes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newPromotedToErrorMessageTypes, (Object)newPromotedToErrorMessageTypes));
        }
    }

    @Override
    public MessageTType getPromotedToWarningMessageTypes() {
        return this.promotedToWarningMessageTypes;
    }

    public NotificationChain basicSetPromotedToWarningMessageTypes(MessageTType newPromotedToWarningMessageTypes, NotificationChain msgs) {
        MessageTType oldPromotedToWarningMessageTypes = this.promotedToWarningMessageTypes;
        this.promotedToWarningMessageTypes = newPromotedToWarningMessageTypes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldPromotedToWarningMessageTypes, (Object)newPromotedToWarningMessageTypes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setPromotedToWarningMessageTypes(MessageTType newPromotedToWarningMessageTypes) {
        if (newPromotedToWarningMessageTypes != this.promotedToWarningMessageTypes) {
            NotificationChain msgs = null;
            if (this.promotedToWarningMessageTypes != null) {
                msgs = ((InternalEObject)this.promotedToWarningMessageTypes).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newPromotedToWarningMessageTypes != null) {
                msgs = ((InternalEObject)newPromotedToWarningMessageTypes).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetPromotedToWarningMessageTypes(newPromotedToWarningMessageTypes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newPromotedToWarningMessageTypes, (Object)newPromotedToWarningMessageTypes));
        }
    }

    @Override
    public TransferOptionsType getTransferOptions() {
        return this.transferOptions;
    }

    public NotificationChain basicSetTransferOptions(TransferOptionsType newTransferOptions, NotificationChain msgs) {
        TransferOptionsType oldTransferOptions = this.transferOptions;
        this.transferOptions = newTransferOptions;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldTransferOptions, (Object)newTransferOptions);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTransferOptions(TransferOptionsType newTransferOptions) {
        if (newTransferOptions != this.transferOptions) {
            NotificationChain msgs = null;
            if (this.transferOptions != null) {
                msgs = ((InternalEObject)this.transferOptions).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newTransferOptions != null) {
                msgs = ((InternalEObject)newTransferOptions).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetTransferOptions(newTransferOptions, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newTransferOptions, (Object)newTransferOptions));
        }
    }

    @Override
    public FilesType getFiles() {
        return this.files;
    }

    public NotificationChain basicSetFiles(FilesType newFiles, NotificationChain msgs) {
        FilesType oldFiles = this.files;
        this.files = newFiles;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldFiles, (Object)newFiles);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFiles(FilesType newFiles) {
        if (newFiles != this.files) {
            NotificationChain msgs = null;
            if (this.files != null) {
                msgs = ((InternalEObject)this.files).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newFiles != null) {
                msgs = ((InternalEObject)newFiles).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetFiles(newFiles, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newFiles, (Object)newFiles));
        }
    }

    @Override
    public SignatureType getSignature() {
        return this.signature;
    }

    public NotificationChain basicSetSignature(SignatureType newSignature, NotificationChain msgs) {
        SignatureType oldSignature = this.signature;
        this.signature = newSignature;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldSignature, (Object)newSignature);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSignature(SignatureType newSignature) {
        if (newSignature != this.signature) {
            NotificationChain msgs = null;
            if (this.signature != null) {
                msgs = ((InternalEObject)this.signature).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newSignature != null) {
                msgs = ((InternalEObject)newSignature).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetSignature(newSignature, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newSignature, (Object)newSignature));
        }
    }

    @Override
    public String getBuildConfigKey() {
        return this.buildConfigKey;
    }

    @Override
    public void setBuildConfigKey(String newBuildConfigKey) {
        String oldBuildConfigKey = this.buildConfigKey;
        this.buildConfigKey = newBuildConfigKey;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldBuildConfigKey, (Object)this.buildConfigKey));
        }
    }

    @Override
    public String getSchemaVersion() {
        return this.schemaVersion;
    }

    @Override
    public void setSchemaVersion(String newSchemaVersion) {
        String oldSchemaVersion = this.schemaVersion;
        this.schemaVersion = newSchemaVersion;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldSchemaVersion, (Object)this.schemaVersion));
        }
    }

    @Override
    public String getToolVersion() {
        return this.toolVersion;
    }

    @Override
    public void setToolVersion(String newToolVersion) {
        String oldToolVersion = this.toolVersion;
        this.toolVersion = newToolVersion;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldToolVersion, (Object)this.toolVersion));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetImplementationConfiguration(null, msgs);
            }
            case 1: {
                return this.basicSetDataConfiguration(null, msgs);
            }
            case 2: {
                return this.basicSetOsLogic(null, msgs);
            }
            case 3: {
                return this.basicSetModelConfiguration(null, msgs);
            }
            case 4: {
                return this.basicSetBuildConfiguration(null, msgs);
            }
            case 5: {
                return this.basicSetSimulationConfiguration(null, msgs);
            }
            case 6: {
                return this.basicSetHiddenMessageTypes(null, msgs);
            }
            case 7: {
                return this.basicSetIgnoredMessageTypes(null, msgs);
            }
            case 8: {
                return this.basicSetPromotedToErrorMessageTypes(null, msgs);
            }
            case 9: {
                return this.basicSetPromotedToWarningMessageTypes(null, msgs);
            }
            case 10: {
                return this.basicSetTransferOptions(null, msgs);
            }
            case 11: {
                return this.basicSetFiles(null, msgs);
            }
            case 12: {
                return this.basicSetSignature(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getImplementationConfiguration();
            }
            case 1: {
                return this.getDataConfiguration();
            }
            case 2: {
                return this.getOsLogic();
            }
            case 3: {
                return this.getModelConfiguration();
            }
            case 4: {
                return this.getBuildConfiguration();
            }
            case 5: {
                return this.getSimulationConfiguration();
            }
            case 6: {
                return this.getHiddenMessageTypes();
            }
            case 7: {
                return this.getIgnoredMessageTypes();
            }
            case 8: {
                return this.getPromotedToErrorMessageTypes();
            }
            case 9: {
                return this.getPromotedToWarningMessageTypes();
            }
            case 10: {
                return this.getTransferOptions();
            }
            case 11: {
                return this.getFiles();
            }
            case 12: {
                return this.getSignature();
            }
            case 13: {
                return this.getBuildConfigKey();
            }
            case 14: {
                return this.getSchemaVersion();
            }
            case 15: {
                return this.getToolVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setImplementationConfiguration((ImplementationConfigurationType)newValue);
                return;
            }
            case 1: {
                this.setDataConfiguration((DataConfigurationType)newValue);
                return;
            }
            case 2: {
                this.setOsLogic((OsLogicType)newValue);
                return;
            }
            case 3: {
                this.setModelConfiguration((ModelConfigurationT)newValue);
                return;
            }
            case 4: {
                this.setBuildConfiguration((BuildConfigurationType)newValue);
                return;
            }
            case 5: {
                this.setSimulationConfiguration((SimulationConfigurationType)newValue);
                return;
            }
            case 6: {
                this.setHiddenMessageTypes((MessageTType)newValue);
                return;
            }
            case 7: {
                this.setIgnoredMessageTypes((MessageTType)newValue);
                return;
            }
            case 8: {
                this.setPromotedToErrorMessageTypes((MessageTType)newValue);
                return;
            }
            case 9: {
                this.setPromotedToWarningMessageTypes((MessageTType)newValue);
                return;
            }
            case 10: {
                this.setTransferOptions((TransferOptionsType)newValue);
                return;
            }
            case 11: {
                this.setFiles((FilesType)newValue);
                return;
            }
            case 12: {
                this.setSignature((SignatureType)newValue);
                return;
            }
            case 13: {
                this.setBuildConfigKey((String)newValue);
                return;
            }
            case 14: {
                this.setSchemaVersion((String)newValue);
                return;
            }
            case 15: {
                this.setToolVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setImplementationConfiguration(null);
                return;
            }
            case 1: {
                this.setDataConfiguration(null);
                return;
            }
            case 2: {
                this.setOsLogic(null);
                return;
            }
            case 3: {
                this.setModelConfiguration(null);
                return;
            }
            case 4: {
                this.setBuildConfiguration(null);
                return;
            }
            case 5: {
                this.setSimulationConfiguration(null);
                return;
            }
            case 6: {
                this.setHiddenMessageTypes(null);
                return;
            }
            case 7: {
                this.setIgnoredMessageTypes(null);
                return;
            }
            case 8: {
                this.setPromotedToErrorMessageTypes(null);
                return;
            }
            case 9: {
                this.setPromotedToWarningMessageTypes(null);
                return;
            }
            case 10: {
                this.setTransferOptions(null);
                return;
            }
            case 11: {
                this.setFiles(null);
                return;
            }
            case 12: {
                this.setSignature(null);
                return;
            }
            case 13: {
                this.setBuildConfigKey(BUILD_CONFIG_KEY_EDEFAULT);
                return;
            }
            case 14: {
                this.setSchemaVersion(SCHEMA_VERSION_EDEFAULT);
                return;
            }
            case 15: {
                this.setToolVersion(TOOL_VERSION_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.implementationConfiguration != null;
            }
            case 1: {
                return this.dataConfiguration != null;
            }
            case 2: {
                return this.osLogic != null;
            }
            case 3: {
                return this.modelConfiguration != null;
            }
            case 4: {
                return this.buildConfiguration != null;
            }
            case 5: {
                return this.simulationConfiguration != null;
            }
            case 6: {
                return this.hiddenMessageTypes != null;
            }
            case 7: {
                return this.ignoredMessageTypes != null;
            }
            case 8: {
                return this.promotedToErrorMessageTypes != null;
            }
            case 9: {
                return this.promotedToWarningMessageTypes != null;
            }
            case 10: {
                return this.transferOptions != null;
            }
            case 11: {
                return this.files != null;
            }
            case 12: {
                return this.signature != null;
            }
            case 13: {
                return BUILD_CONFIG_KEY_EDEFAULT == null ? this.buildConfigKey != null : !BUILD_CONFIG_KEY_EDEFAULT.equals(this.buildConfigKey);
            }
            case 14: {
                return SCHEMA_VERSION_EDEFAULT == null ? this.schemaVersion != null : !SCHEMA_VERSION_EDEFAULT.equals(this.schemaVersion);
            }
            case 15: {
                return TOOL_VERSION_EDEFAULT == null ? this.toolVersion != null : !TOOL_VERSION_EDEFAULT.equals(this.toolVersion);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (buildConfigKey: ");
        result.append(this.buildConfigKey);
        result.append(", schemaVersion: ");
        result.append(this.schemaVersion);
        result.append(", toolVersion: ");
        result.append(this.toolVersion);
        result.append(')');
        return result.toString();
    }
}

