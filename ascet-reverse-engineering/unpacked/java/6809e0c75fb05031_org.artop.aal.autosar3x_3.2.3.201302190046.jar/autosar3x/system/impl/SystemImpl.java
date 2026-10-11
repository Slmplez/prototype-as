/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar3x.system.SoftwareComposition;
import autosar3x.system.System;
import autosar3x.system.SystemMapping;
import autosar3x.system.SystemPackage;
import autosar3x.system.fibex.fibexcore.FibexElement;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SystemImpl
extends ARElementImpl
implements System,
IReferringClass {
    protected static final String ECU_EXTRACT_VERSION_EDEFAULT = "";
    protected String ecuExtractVersion = "";
    protected boolean ecuExtractVersionESet;
    protected EList<FibexElement> fibexElements;
    protected SystemMapping mapping;
    protected static final Integer PNC_VECTOR_LENGTH_EDEFAULT = new Integer(0);
    protected Integer pncVectorLength = PNC_VECTOR_LENGTH_EDEFAULT;
    protected boolean pncVectorLengthESet;
    protected static final Integer PNC_VECTOR_OFFSET_EDEFAULT = new Integer(0);
    protected Integer pncVectorOffset = PNC_VECTOR_OFFSET_EDEFAULT;
    protected boolean pncVectorOffsetESet;
    protected SoftwareComposition softwareComposition;
    protected static final String SYSTEM_VERSION_EDEFAULT = "";
    protected String systemVersion = "";
    protected boolean systemVersionESet;

    protected SystemImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SystemPackage.Literals.SYSTEM;
    }

    @Override
    public String getEcuExtractVersion() {
        return this.ecuExtractVersion;
    }

    @Override
    public void setEcuExtractVersion(String newEcuExtractVersion) {
        String oldEcuExtractVersion = this.ecuExtractVersion;
        this.ecuExtractVersion = newEcuExtractVersion;
        boolean oldEcuExtractVersionESet = this.ecuExtractVersionESet;
        this.ecuExtractVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldEcuExtractVersion, (Object)this.ecuExtractVersion, !oldEcuExtractVersionESet));
        }
    }

    @Override
    public void unsetEcuExtractVersion() {
        String oldEcuExtractVersion = this.ecuExtractVersion;
        boolean oldEcuExtractVersionESet = this.ecuExtractVersionESet;
        this.ecuExtractVersion = "";
        this.ecuExtractVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldEcuExtractVersion, (Object)"", oldEcuExtractVersionESet));
        }
    }

    @Override
    public boolean isSetEcuExtractVersion() {
        return this.ecuExtractVersionESet;
    }

    @Override
    public EList<FibexElement> getFibexElements() {
        if (this.fibexElements == null) {
            this.fibexElements = new EObjectResolvingReferringEList(FibexElement.class, (InternalEObject)this, 20);
        }
        return this.fibexElements;
    }

    @Override
    public SystemMapping getMapping() {
        return this.mapping;
    }

    public NotificationChain basicSetMapping(SystemMapping newMapping, NotificationChain msgs) {
        SystemMapping oldMapping = this.mapping;
        this.mapping = newMapping;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldMapping, (Object)newMapping);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMapping(SystemMapping newMapping) {
        if (newMapping != this.mapping) {
            NotificationChain msgs = null;
            if (this.mapping != null) {
                msgs = ((InternalEObject)this.mapping).eInverseRemove((InternalEObject)this, 17, SystemMapping.class, msgs);
            }
            if (newMapping != null) {
                msgs = ((InternalEObject)newMapping).eInverseAdd((InternalEObject)this, 17, SystemMapping.class, msgs);
            }
            if ((msgs = this.basicSetMapping(newMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newMapping, (Object)newMapping));
        }
    }

    @Override
    public Integer getPncVectorLength() {
        return this.pncVectorLength;
    }

    @Override
    public void setPncVectorLength(Integer newPncVectorLength) {
        Integer oldPncVectorLength = this.pncVectorLength;
        this.pncVectorLength = newPncVectorLength;
        boolean oldPncVectorLengthESet = this.pncVectorLengthESet;
        this.pncVectorLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldPncVectorLength, (Object)this.pncVectorLength, !oldPncVectorLengthESet));
        }
    }

    @Override
    public void unsetPncVectorLength() {
        Integer oldPncVectorLength = this.pncVectorLength;
        boolean oldPncVectorLengthESet = this.pncVectorLengthESet;
        this.pncVectorLength = PNC_VECTOR_LENGTH_EDEFAULT;
        this.pncVectorLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldPncVectorLength, (Object)PNC_VECTOR_LENGTH_EDEFAULT, oldPncVectorLengthESet));
        }
    }

    @Override
    public boolean isSetPncVectorLength() {
        return this.pncVectorLengthESet;
    }

    @Override
    public Integer getPncVectorOffset() {
        return this.pncVectorOffset;
    }

    @Override
    public void setPncVectorOffset(Integer newPncVectorOffset) {
        Integer oldPncVectorOffset = this.pncVectorOffset;
        this.pncVectorOffset = newPncVectorOffset;
        boolean oldPncVectorOffsetESet = this.pncVectorOffsetESet;
        this.pncVectorOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldPncVectorOffset, (Object)this.pncVectorOffset, !oldPncVectorOffsetESet));
        }
    }

    @Override
    public void unsetPncVectorOffset() {
        Integer oldPncVectorOffset = this.pncVectorOffset;
        boolean oldPncVectorOffsetESet = this.pncVectorOffsetESet;
        this.pncVectorOffset = PNC_VECTOR_OFFSET_EDEFAULT;
        this.pncVectorOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldPncVectorOffset, (Object)PNC_VECTOR_OFFSET_EDEFAULT, oldPncVectorOffsetESet));
        }
    }

    @Override
    public boolean isSetPncVectorOffset() {
        return this.pncVectorOffsetESet;
    }

    @Override
    public SoftwareComposition getSoftwareComposition() {
        return this.softwareComposition;
    }

    public NotificationChain basicSetSoftwareComposition(SoftwareComposition newSoftwareComposition, NotificationChain msgs) {
        SoftwareComposition oldSoftwareComposition = this.softwareComposition;
        this.softwareComposition = newSoftwareComposition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldSoftwareComposition, (Object)newSoftwareComposition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSoftwareComposition(SoftwareComposition newSoftwareComposition) {
        if (newSoftwareComposition != this.softwareComposition) {
            NotificationChain msgs = null;
            if (this.softwareComposition != null) {
                msgs = ((InternalEObject)this.softwareComposition).eInverseRemove((InternalEObject)this, 17, SoftwareComposition.class, msgs);
            }
            if (newSoftwareComposition != null) {
                msgs = ((InternalEObject)newSoftwareComposition).eInverseAdd((InternalEObject)this, 17, SoftwareComposition.class, msgs);
            }
            if ((msgs = this.basicSetSoftwareComposition(newSoftwareComposition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newSoftwareComposition, (Object)newSoftwareComposition));
        }
    }

    @Override
    public String getSystemVersion() {
        return this.systemVersion;
    }

    @Override
    public void setSystemVersion(String newSystemVersion) {
        String oldSystemVersion = this.systemVersion;
        this.systemVersion = newSystemVersion;
        boolean oldSystemVersionESet = this.systemVersionESet;
        this.systemVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldSystemVersion, (Object)this.systemVersion, !oldSystemVersionESet));
        }
    }

    @Override
    public void unsetSystemVersion() {
        String oldSystemVersion = this.systemVersion;
        boolean oldSystemVersionESet = this.systemVersionESet;
        this.systemVersion = "";
        this.systemVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldSystemVersion, (Object)"", oldSystemVersionESet));
        }
    }

    @Override
    public boolean isSetSystemVersion() {
        return this.systemVersionESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                if (this.mapping != null) {
                    msgs = ((InternalEObject)this.mapping).eInverseRemove((InternalEObject)this, -22, null, msgs);
                }
                return this.basicSetMapping((SystemMapping)otherEnd, msgs);
            }
            case 24: {
                if (this.softwareComposition != null) {
                    msgs = ((InternalEObject)this.softwareComposition).eInverseRemove((InternalEObject)this, -25, null, msgs);
                }
                return this.basicSetSoftwareComposition((SoftwareComposition)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetMapping(null, msgs);
            }
            case 24: {
                return this.basicSetSoftwareComposition(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getEcuExtractVersion();
            }
            case 20: {
                return this.getFibexElements();
            }
            case 21: {
                return this.getMapping();
            }
            case 22: {
                return this.getPncVectorLength();
            }
            case 23: {
                return this.getPncVectorOffset();
            }
            case 24: {
                return this.getSoftwareComposition();
            }
            case 25: {
                return this.getSystemVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setEcuExtractVersion((String)newValue);
                return;
            }
            case 20: {
                this.getFibexElements().clear();
                this.getFibexElements().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setMapping((SystemMapping)newValue);
                return;
            }
            case 22: {
                this.setPncVectorLength((Integer)newValue);
                return;
            }
            case 23: {
                this.setPncVectorOffset((Integer)newValue);
                return;
            }
            case 24: {
                this.setSoftwareComposition((SoftwareComposition)newValue);
                return;
            }
            case 25: {
                this.setSystemVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetEcuExtractVersion();
                return;
            }
            case 20: {
                this.getFibexElements().clear();
                return;
            }
            case 21: {
                this.setMapping(null);
                return;
            }
            case 22: {
                this.unsetPncVectorLength();
                return;
            }
            case 23: {
                this.unsetPncVectorOffset();
                return;
            }
            case 24: {
                this.setSoftwareComposition(null);
                return;
            }
            case 25: {
                this.unsetSystemVersion();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetEcuExtractVersion();
            }
            case 20: {
                return this.fibexElements != null && !this.fibexElements.isEmpty();
            }
            case 21: {
                return this.mapping != null;
            }
            case 22: {
                return this.isSetPncVectorLength();
            }
            case 23: {
                return this.isSetPncVectorOffset();
            }
            case 24: {
                return this.softwareComposition != null;
            }
            case 25: {
                return this.isSetSystemVersion();
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (ecuExtractVersion: ");
        if (this.ecuExtractVersionESet) {
            result.append(this.ecuExtractVersion);
        } else {
            result.append("<unset>");
        }
        result.append(", pncVectorLength: ");
        if (this.pncVectorLengthESet) {
            result.append(this.pncVectorLength);
        } else {
            result.append("<unset>");
        }
        result.append(", pncVectorOffset: ");
        if (this.pncVectorOffsetESet) {
            result.append(this.pncVectorOffset);
        } else {
            result.append("<unset>");
        }
        result.append(", systemVersion: ");
        if (this.systemVersionESet) {
            result.append(this.systemVersion);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

