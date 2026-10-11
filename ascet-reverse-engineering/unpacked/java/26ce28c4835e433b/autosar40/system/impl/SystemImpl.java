/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gsystem.GSystem
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.impl;

import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Chapter;
import autosar40.system.RootSwCompositionPrototype;
import autosar40.system.System;
import autosar40.system.SystemMapping;
import autosar40.system.SystemPackage;
import autosar40.system.fibex.fibexcore.FibexElementRefConditional;
import gautosar.gsystem.GSystem;
import java.util.Collection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SystemImpl
extends ARElementImpl
implements System {
    protected AtpClassifier atpClassifier;
    protected EList<Chapter> systemDocumentations;
    protected static final String ECU_EXTRACT_VERSION_EDEFAULT = "";
    protected String ecuExtractVersion = "";
    protected boolean ecuExtractVersionESet;
    protected EList<FibexElementRefConditional> fibexElements;
    protected EList<SystemMapping> mappings;
    protected static final PositiveIntegerDatatype PNC_VECTOR_LENGTH_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype pncVectorLength = PNC_VECTOR_LENGTH_EDEFAULT.clone();
    protected boolean pncVectorLengthESet;
    protected static final PositiveIntegerDatatype PNC_VECTOR_OFFSET_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype pncVectorOffset = PNC_VECTOR_OFFSET_EDEFAULT.clone();
    protected boolean pncVectorOffsetESet;
    protected EList<RootSwCompositionPrototype> rootSoftwareCompositions;
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
    public AtpClassifier getAtpClassifier() {
        if (this.atpClassifier != null && this.atpClassifier.eIsProxy()) {
            InternalEObject oldAtpClassifier = (InternalEObject)this.atpClassifier;
            this.atpClassifier = (AtpClassifier)this.eResolveProxy(oldAtpClassifier);
            if (this.atpClassifier != oldAtpClassifier && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldAtpClassifier, (Object)this.atpClassifier));
            }
        }
        return this.atpClassifier;
    }

    public AtpClassifier basicGetAtpClassifier() {
        return this.atpClassifier;
    }

    @Override
    public void setAtpClassifier(AtpClassifier newAtpClassifier) {
        AtpClassifier oldAtpClassifier = this.atpClassifier;
        this.atpClassifier = newAtpClassifier;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldAtpClassifier, (Object)this.atpClassifier));
        }
    }

    @Override
    public EList<Chapter> getSystemDocumentations() {
        if (this.systemDocumentations == null) {
            this.systemDocumentations = new EObjectContainmentEList(Chapter.class, (InternalEObject)this, 22);
        }
        return this.systemDocumentations;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldEcuExtractVersion, (Object)this.ecuExtractVersion, !oldEcuExtractVersionESet));
        }
    }

    @Override
    public void unsetEcuExtractVersion() {
        String oldEcuExtractVersion = this.ecuExtractVersion;
        boolean oldEcuExtractVersionESet = this.ecuExtractVersionESet;
        this.ecuExtractVersion = "";
        this.ecuExtractVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldEcuExtractVersion, (Object)"", oldEcuExtractVersionESet));
        }
    }

    @Override
    public boolean isSetEcuExtractVersion() {
        return this.ecuExtractVersionESet;
    }

    @Override
    public EList<FibexElementRefConditional> getFibexElements() {
        if (this.fibexElements == null) {
            this.fibexElements = new EObjectContainmentWithInverseEList(FibexElementRefConditional.class, (InternalEObject)this, 24, 4);
        }
        return this.fibexElements;
    }

    @Override
    public EList<SystemMapping> getMappings() {
        if (this.mappings == null) {
            this.mappings = new EObjectContainmentWithInverseEList(SystemMapping.class, (InternalEObject)this, 25, 18);
        }
        return this.mappings;
    }

    @Override
    public Long getPncVectorLength() {
        return (Long)this.pncVectorLength.basicGetValue();
    }

    @Override
    public void setPncVectorLength(Long newPncVectorLength) {
        Long oldPncVectorLength = (Long)this.pncVectorLength.basicGetValue();
        this.pncVectorLength.basicSetValue((Object)newPncVectorLength);
        boolean oldPncVectorLengthESet = this.pncVectorLengthESet;
        this.pncVectorLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldPncVectorLength, (Object)newPncVectorLength, !oldPncVectorLengthESet));
        }
    }

    @Override
    public void unsetPncVectorLength() {
        Long oldPncVectorLength = (Long)this.pncVectorLength.basicGetValue();
        boolean oldPncVectorLengthESet = this.pncVectorLengthESet;
        this.pncVectorLength = PNC_VECTOR_LENGTH_EDEFAULT.clone();
        this.pncVectorLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldPncVectorLength, (Object)PNC_VECTOR_LENGTH_EDEFAULT, oldPncVectorLengthESet));
        }
    }

    @Override
    public boolean isSetPncVectorLength() {
        return this.pncVectorLengthESet;
    }

    @Override
    public Long getPncVectorOffset() {
        return (Long)this.pncVectorOffset.basicGetValue();
    }

    @Override
    public void setPncVectorOffset(Long newPncVectorOffset) {
        Long oldPncVectorOffset = (Long)this.pncVectorOffset.basicGetValue();
        this.pncVectorOffset.basicSetValue((Object)newPncVectorOffset);
        boolean oldPncVectorOffsetESet = this.pncVectorOffsetESet;
        this.pncVectorOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldPncVectorOffset, (Object)newPncVectorOffset, !oldPncVectorOffsetESet));
        }
    }

    @Override
    public void unsetPncVectorOffset() {
        Long oldPncVectorOffset = (Long)this.pncVectorOffset.basicGetValue();
        boolean oldPncVectorOffsetESet = this.pncVectorOffsetESet;
        this.pncVectorOffset = PNC_VECTOR_OFFSET_EDEFAULT.clone();
        this.pncVectorOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldPncVectorOffset, (Object)PNC_VECTOR_OFFSET_EDEFAULT, oldPncVectorOffsetESet));
        }
    }

    @Override
    public boolean isSetPncVectorOffset() {
        return this.pncVectorOffsetESet;
    }

    @Override
    public EList<RootSwCompositionPrototype> getRootSoftwareCompositions() {
        if (this.rootSoftwareCompositions == null) {
            this.rootSoftwareCompositions = new EObjectContainmentWithInverseEList(RootSwCompositionPrototype.class, (InternalEObject)this, 28, 19);
        }
        return this.rootSoftwareCompositions;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldSystemVersion, (Object)this.systemVersion, !oldSystemVersionESet));
        }
    }

    @Override
    public void unsetSystemVersion() {
        String oldSystemVersion = this.systemVersion;
        boolean oldSystemVersionESet = this.systemVersionESet;
        this.systemVersion = "";
        this.systemVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldSystemVersion, (Object)"", oldSystemVersionESet));
        }
    }

    @Override
    public boolean isSetSystemVersion() {
        return this.systemVersionESet;
    }

    @Override
    public PositiveIntegerDatatype getPncVectorLengthData() {
        return this.pncVectorLength.clone();
    }

    @Override
    public void setPncVectorLengthData(PositiveIntegerDatatype newPncVectorLength) {
        this.pncVectorLength.setRadix((int)newPncVectorLength.getRadix());
        this.pncVectorLength.setNoOfDigits((int)newPncVectorLength.getNoOfDigits());
        this.setPncVectorLength(newPncVectorLength.getValue());
    }

    @Override
    public PositiveIntegerDatatype getPncVectorOffsetData() {
        return this.pncVectorOffset.clone();
    }

    @Override
    public void setPncVectorOffsetData(PositiveIntegerDatatype newPncVectorOffset) {
        this.pncVectorOffset.setRadix((int)newPncVectorOffset.getRadix());
        this.pncVectorOffset.setNoOfDigits((int)newPncVectorOffset.getNoOfDigits());
        this.setPncVectorOffset(newPncVectorOffset.getValue());
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                return ((InternalEList)this.getFibexElements()).basicAdd((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getMappings()).basicAdd((Object)otherEnd, msgs);
            }
            case 28: {
                return ((InternalEList)this.getRootSoftwareCompositions()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getSystemDocumentations()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getFibexElements()).basicRemove((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 28: {
                return ((InternalEList)this.getRootSoftwareCompositions()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                if (resolve) {
                    return this.getAtpClassifier();
                }
                return this.basicGetAtpClassifier();
            }
            case 22: {
                return this.getSystemDocumentations();
            }
            case 23: {
                return this.getEcuExtractVersion();
            }
            case 24: {
                return this.getFibexElements();
            }
            case 25: {
                return this.getMappings();
            }
            case 26: {
                return this.getPncVectorLength();
            }
            case 27: {
                return this.getPncVectorOffset();
            }
            case 28: {
                return this.getRootSoftwareCompositions();
            }
            case 29: {
                return this.getSystemVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setAtpClassifier((AtpClassifier)newValue);
                return;
            }
            case 22: {
                this.getSystemDocumentations().clear();
                this.getSystemDocumentations().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.setEcuExtractVersion((String)newValue);
                return;
            }
            case 24: {
                this.getFibexElements().clear();
                this.getFibexElements().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.getMappings().clear();
                this.getMappings().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.setPncVectorLength((Long)newValue);
                return;
            }
            case 27: {
                this.setPncVectorOffset((Long)newValue);
                return;
            }
            case 28: {
                this.getRootSoftwareCompositions().clear();
                this.getRootSoftwareCompositions().addAll((Collection)newValue);
                return;
            }
            case 29: {
                this.setSystemVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setAtpClassifier(null);
                return;
            }
            case 22: {
                this.getSystemDocumentations().clear();
                return;
            }
            case 23: {
                this.unsetEcuExtractVersion();
                return;
            }
            case 24: {
                this.getFibexElements().clear();
                return;
            }
            case 25: {
                this.getMappings().clear();
                return;
            }
            case 26: {
                this.unsetPncVectorLength();
                return;
            }
            case 27: {
                this.unsetPncVectorOffset();
                return;
            }
            case 28: {
                this.getRootSoftwareCompositions().clear();
                return;
            }
            case 29: {
                this.unsetSystemVersion();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.atpClassifier != null;
            }
            case 22: {
                return this.systemDocumentations != null && !this.systemDocumentations.isEmpty();
            }
            case 23: {
                return this.isSetEcuExtractVersion();
            }
            case 24: {
                return this.fibexElements != null && !this.fibexElements.isEmpty();
            }
            case 25: {
                return this.mappings != null && !this.mappings.isEmpty();
            }
            case 26: {
                return this.isSetPncVectorLength();
            }
            case 27: {
                return this.isSetPncVectorOffset();
            }
            case 28: {
                return this.rootSoftwareCompositions != null && !this.rootSoftwareCompositions.isEmpty();
            }
            case 29: {
                return this.isSetSystemVersion();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == AtpClassifier.class) {
            return -1;
        }
        if (baseClass == AtpFeature.class) {
            switch (derivedFeatureID) {
                case 21: {
                    return 18;
                }
            }
            return -1;
        }
        if (baseClass == AtpStructureElement.class) {
            return -1;
        }
        if (baseClass == GSystem.class) {
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == AtpClassifier.class) {
            return -1;
        }
        if (baseClass == AtpFeature.class) {
            switch (baseFeatureID) {
                case 18: {
                    return 21;
                }
            }
            return -1;
        }
        if (baseClass == AtpStructureElement.class) {
            return -1;
        }
        if (baseClass == GSystem.class) {
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

