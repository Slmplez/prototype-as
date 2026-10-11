/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.FileType;
import javax.xml.datatype.XMLGregorianCalendar;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class FileTypeImpl
extends MinimalEObjectImpl.Container
implements FileType {
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;
    protected static final String LOCATION_EDEFAULT = null;
    protected String location = LOCATION_EDEFAULT;
    protected static final String ABSTRACT_LOCATION_EDEFAULT = null;
    protected String abstractLocation = ABSTRACT_LOCATION_EDEFAULT;
    protected static final String ORIGINAL_LOCATION_EDEFAULT = null;
    protected String originalLocation = ORIGINAL_LOCATION_EDEFAULT;
    protected static final XMLGregorianCalendar TIME_STAMP_EDEFAULT = null;
    protected XMLGregorianCalendar timeStamp = TIME_STAMP_EDEFAULT;

    protected FileTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.FILE_TYPE;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public String getLocation() {
        return this.location;
    }

    @Override
    public void setLocation(String newLocation) {
        String oldLocation = this.location;
        this.location = newLocation;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldLocation, (Object)this.location));
        }
    }

    @Override
    public String getAbstractLocation() {
        return this.abstractLocation;
    }

    @Override
    public void setAbstractLocation(String newAbstractLocation) {
        String oldAbstractLocation = this.abstractLocation;
        this.abstractLocation = newAbstractLocation;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldAbstractLocation, (Object)this.abstractLocation));
        }
    }

    @Override
    public String getOriginalLocation() {
        return this.originalLocation;
    }

    @Override
    public void setOriginalLocation(String newOriginalLocation) {
        String oldOriginalLocation = this.originalLocation;
        this.originalLocation = newOriginalLocation;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldOriginalLocation, (Object)this.originalLocation));
        }
    }

    @Override
    public XMLGregorianCalendar getTimeStamp() {
        return this.timeStamp;
    }

    @Override
    public void setTimeStamp(XMLGregorianCalendar newTimeStamp) {
        XMLGregorianCalendar oldTimeStamp = this.timeStamp;
        this.timeStamp = newTimeStamp;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldTimeStamp, (Object)this.timeStamp));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getName();
            }
            case 1: {
                return this.getLocation();
            }
            case 2: {
                return this.getAbstractLocation();
            }
            case 3: {
                return this.getOriginalLocation();
            }
            case 4: {
                return this.getTimeStamp();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setName((String)newValue);
                return;
            }
            case 1: {
                this.setLocation((String)newValue);
                return;
            }
            case 2: {
                this.setAbstractLocation((String)newValue);
                return;
            }
            case 3: {
                this.setOriginalLocation((String)newValue);
                return;
            }
            case 4: {
                this.setTimeStamp((XMLGregorianCalendar)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 1: {
                this.setLocation(LOCATION_EDEFAULT);
                return;
            }
            case 2: {
                this.setAbstractLocation(ABSTRACT_LOCATION_EDEFAULT);
                return;
            }
            case 3: {
                this.setOriginalLocation(ORIGINAL_LOCATION_EDEFAULT);
                return;
            }
            case 4: {
                this.setTimeStamp(TIME_STAMP_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 1: {
                return LOCATION_EDEFAULT == null ? this.location != null : !LOCATION_EDEFAULT.equals(this.location);
            }
            case 2: {
                return ABSTRACT_LOCATION_EDEFAULT == null ? this.abstractLocation != null : !ABSTRACT_LOCATION_EDEFAULT.equals(this.abstractLocation);
            }
            case 3: {
                return ORIGINAL_LOCATION_EDEFAULT == null ? this.originalLocation != null : !ORIGINAL_LOCATION_EDEFAULT.equals(this.originalLocation);
            }
            case 4: {
                return TIME_STAMP_EDEFAULT == null ? this.timeStamp != null : !TIME_STAMP_EDEFAULT.equals(this.timeStamp);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (name: ");
        result.append(this.name);
        result.append(", location: ");
        result.append(this.location);
        result.append(", abstractLocation: ");
        result.append(this.abstractLocation);
        result.append(", originalLocation: ");
        result.append(this.originalLocation);
        result.append(", timeStamp: ");
        result.append(this.timeStamp);
        result.append(')');
        return result.toString();
    }
}

