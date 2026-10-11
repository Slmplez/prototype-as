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
import com.etas.amd620.core.ComponentProject.BuildSettingsType;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.PlatformType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class BuildConfigurationTypeImpl
extends MinimalEObjectImpl.Container
implements BuildConfigurationType {
    protected PlatformType platform;
    protected BuildSettingsType buildSettings;
    protected static final String BUILD_CONFIG_KEY_EDEFAULT = null;
    protected String buildConfigKey = BUILD_CONFIG_KEY_EDEFAULT;
    protected static final byte[] CHECKSUM_EDEFAULT = null;
    protected byte[] checksum = CHECKSUM_EDEFAULT;
    protected static final byte[] CHECKSUM_CODE_RELEVANT_EDEFAULT = null;
    protected byte[] checksumCodeRelevant = CHECKSUM_CODE_RELEVANT_EDEFAULT;
    protected static final String NAME_EDEFAULT = "default";
    protected String name = "default";
    protected boolean nameESet;

    protected BuildConfigurationTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.BUILD_CONFIGURATION_TYPE;
    }

    @Override
    public PlatformType getPlatform() {
        return this.platform;
    }

    public NotificationChain basicSetPlatform(PlatformType newPlatform, NotificationChain msgs) {
        PlatformType oldPlatform = this.platform;
        this.platform = newPlatform;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldPlatform, (Object)newPlatform);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setPlatform(PlatformType newPlatform) {
        if (newPlatform != this.platform) {
            NotificationChain msgs = null;
            if (this.platform != null) {
                msgs = ((InternalEObject)this.platform).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newPlatform != null) {
                msgs = ((InternalEObject)newPlatform).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetPlatform(newPlatform, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newPlatform, (Object)newPlatform));
        }
    }

    @Override
    public BuildSettingsType getBuildSettings() {
        return this.buildSettings;
    }

    public NotificationChain basicSetBuildSettings(BuildSettingsType newBuildSettings, NotificationChain msgs) {
        BuildSettingsType oldBuildSettings = this.buildSettings;
        this.buildSettings = newBuildSettings;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldBuildSettings, (Object)newBuildSettings);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setBuildSettings(BuildSettingsType newBuildSettings) {
        if (newBuildSettings != this.buildSettings) {
            NotificationChain msgs = null;
            if (this.buildSettings != null) {
                msgs = ((InternalEObject)this.buildSettings).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newBuildSettings != null) {
                msgs = ((InternalEObject)newBuildSettings).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetBuildSettings(newBuildSettings, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newBuildSettings, (Object)newBuildSettings));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldBuildConfigKey, (Object)this.buildConfigKey));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldChecksum, (Object)this.checksum));
        }
    }

    @Override
    public byte[] getChecksumCodeRelevant() {
        return this.checksumCodeRelevant;
    }

    @Override
    public void setChecksumCodeRelevant(byte[] newChecksumCodeRelevant) {
        byte[] oldChecksumCodeRelevant = this.checksumCodeRelevant;
        this.checksumCodeRelevant = newChecksumCodeRelevant;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldChecksumCodeRelevant, (Object)this.checksumCodeRelevant));
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
        boolean oldNameESet = this.nameESet;
        this.nameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldName, (Object)this.name, !oldNameESet));
        }
    }

    @Override
    public void unsetName() {
        String oldName = this.name;
        boolean oldNameESet = this.nameESet;
        this.name = NAME_EDEFAULT;
        this.nameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldName, (Object)NAME_EDEFAULT, oldNameESet));
        }
    }

    @Override
    public boolean isSetName() {
        return this.nameESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetPlatform(null, msgs);
            }
            case 1: {
                return this.basicSetBuildSettings(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getPlatform();
            }
            case 1: {
                return this.getBuildSettings();
            }
            case 2: {
                return this.getBuildConfigKey();
            }
            case 3: {
                return this.getChecksum();
            }
            case 4: {
                return this.getChecksumCodeRelevant();
            }
            case 5: {
                return this.getName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setPlatform((PlatformType)newValue);
                return;
            }
            case 1: {
                this.setBuildSettings((BuildSettingsType)newValue);
                return;
            }
            case 2: {
                this.setBuildConfigKey((String)newValue);
                return;
            }
            case 3: {
                this.setChecksum((byte[])newValue);
                return;
            }
            case 4: {
                this.setChecksumCodeRelevant((byte[])newValue);
                return;
            }
            case 5: {
                this.setName((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setPlatform(null);
                return;
            }
            case 1: {
                this.setBuildSettings(null);
                return;
            }
            case 2: {
                this.setBuildConfigKey(BUILD_CONFIG_KEY_EDEFAULT);
                return;
            }
            case 3: {
                this.setChecksum(CHECKSUM_EDEFAULT);
                return;
            }
            case 4: {
                this.setChecksumCodeRelevant(CHECKSUM_CODE_RELEVANT_EDEFAULT);
                return;
            }
            case 5: {
                this.unsetName();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.platform != null;
            }
            case 1: {
                return this.buildSettings != null;
            }
            case 2: {
                return BUILD_CONFIG_KEY_EDEFAULT == null ? this.buildConfigKey != null : !BUILD_CONFIG_KEY_EDEFAULT.equals(this.buildConfigKey);
            }
            case 3: {
                return CHECKSUM_EDEFAULT == null ? this.checksum != null : !CHECKSUM_EDEFAULT.equals(this.checksum);
            }
            case 4: {
                return CHECKSUM_CODE_RELEVANT_EDEFAULT == null ? this.checksumCodeRelevant != null : !CHECKSUM_CODE_RELEVANT_EDEFAULT.equals(this.checksumCodeRelevant);
            }
            case 5: {
                return this.isSetName();
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
        result.append(", checksum: ");
        result.append(this.checksum);
        result.append(", checksumCodeRelevant: ");
        result.append(this.checksumCodeRelevant);
        result.append(", name: ");
        if (this.nameESet) {
            result.append(this.name);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

