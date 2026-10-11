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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.measurementcalibrationsupport.impl;

import autosar40.commonstructure.measurementcalibrationsupport.McParameterElementGroup;
import autosar40.commonstructure.measurementcalibrationsupport.McSupportData;
import autosar40.commonstructure.measurementcalibrationsupport.McSwEmulationMethodSupport;
import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
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
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class McSwEmulationMethodSupportImpl
extends ARObjectImpl
implements McSwEmulationMethodSupport,
IReferringClass {
    protected static final String SHORT_LABEL_EDEFAULT = "";
    protected String shortLabel = "";
    protected boolean shortLabelESet;
    protected static final String CATEGORY_EDEFAULT = "";
    protected String category = "";
    protected boolean categoryESet;
    protected VariableDataPrototype baseReference;
    protected EList<McParameterElementGroup> elementGroups;
    protected VariableDataPrototype referenceTable;
    protected VariationPoint variationPoint;

    protected McSwEmulationMethodSupportImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return MeasurementcalibrationsupportPackage.Literals.MC_SW_EMULATION_METHOD_SUPPORT;
    }

    @Override
    public McSupportData getMcSupportData() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (McSupportData)this.eContainer();
    }

    public NotificationChain basicSetMcSupportData(McSupportData newMcSupportData, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMcSupportData, 4, msgs);
        return msgs;
    }

    @Override
    public void setMcSupportData(McSupportData newMcSupportData) {
        if (newMcSupportData != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newMcSupportData != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMcSupportData)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMcSupportData != null) {
                msgs = ((InternalEObject)newMcSupportData).eInverseAdd((InternalEObject)this, 5, McSupportData.class, msgs);
            }
            if ((msgs = this.basicSetMcSupportData(newMcSupportData, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newMcSupportData, (Object)newMcSupportData));
        }
    }

    @Override
    public String getShortLabel() {
        return this.shortLabel;
    }

    @Override
    public void setShortLabel(String newShortLabel) {
        String oldShortLabel = this.shortLabel;
        this.shortLabel = newShortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabelESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldShortLabel, (Object)this.shortLabel, !oldShortLabelESet));
        }
    }

    @Override
    public void unsetShortLabel() {
        String oldShortLabel = this.shortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabel = "";
        this.shortLabelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldShortLabel, (Object)"", oldShortLabelESet));
        }
    }

    @Override
    public boolean isSetShortLabel() {
        return this.shortLabelESet;
    }

    @Override
    public String getCategory() {
        return this.category;
    }

    @Override
    public void setCategory(String newCategory) {
        String oldCategory = this.category;
        this.category = newCategory;
        boolean oldCategoryESet = this.categoryESet;
        this.categoryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCategory, (Object)this.category, !oldCategoryESet));
        }
    }

    @Override
    public void unsetCategory() {
        String oldCategory = this.category;
        boolean oldCategoryESet = this.categoryESet;
        this.category = "";
        this.categoryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldCategory, (Object)"", oldCategoryESet));
        }
    }

    @Override
    public boolean isSetCategory() {
        return this.categoryESet;
    }

    @Override
    public VariableDataPrototype getBaseReference() {
        if (this.baseReference != null && this.baseReference.eIsProxy()) {
            InternalEObject oldBaseReference = (InternalEObject)this.baseReference;
            this.baseReference = (VariableDataPrototype)this.eResolveProxy(oldBaseReference);
            if (this.baseReference != oldBaseReference && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldBaseReference, (Object)this.baseReference));
            }
        }
        return this.baseReference;
    }

    public VariableDataPrototype basicGetBaseReference() {
        return this.baseReference;
    }

    @Override
    public void setBaseReference(VariableDataPrototype newBaseReference) {
        VariableDataPrototype oldBaseReference = this.baseReference;
        this.baseReference = newBaseReference;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldBaseReference, (Object)this.baseReference));
        }
    }

    @Override
    public EList<McParameterElementGroup> getElementGroups() {
        if (this.elementGroups == null) {
            this.elementGroups = new EObjectContainmentWithInverseEList(McParameterElementGroup.class, (InternalEObject)this, 8, 4);
        }
        return this.elementGroups;
    }

    @Override
    public VariableDataPrototype getReferenceTable() {
        if (this.referenceTable != null && this.referenceTable.eIsProxy()) {
            InternalEObject oldReferenceTable = (InternalEObject)this.referenceTable;
            this.referenceTable = (VariableDataPrototype)this.eResolveProxy(oldReferenceTable);
            if (this.referenceTable != oldReferenceTable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldReferenceTable, (Object)this.referenceTable));
            }
        }
        return this.referenceTable;
    }

    public VariableDataPrototype basicGetReferenceTable() {
        return this.referenceTable;
    }

    @Override
    public void setReferenceTable(VariableDataPrototype newReferenceTable) {
        VariableDataPrototype oldReferenceTable = this.referenceTable;
        this.referenceTable = newReferenceTable;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldReferenceTable, (Object)this.referenceTable));
        }
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMcSupportData((McSupportData)otherEnd, msgs);
            }
            case 8: {
                return ((InternalEList)this.getElementGroups()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetMcSupportData(null, msgs);
            }
            case 8: {
                return ((InternalEList)this.getElementGroups()).basicRemove((Object)otherEnd, msgs);
            }
            case 10: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, McSupportData.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMcSupportData();
            }
            case 5: {
                return this.getShortLabel();
            }
            case 6: {
                return this.getCategory();
            }
            case 7: {
                if (resolve) {
                    return this.getBaseReference();
                }
                return this.basicGetBaseReference();
            }
            case 8: {
                return this.getElementGroups();
            }
            case 9: {
                if (resolve) {
                    return this.getReferenceTable();
                }
                return this.basicGetReferenceTable();
            }
            case 10: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMcSupportData((McSupportData)newValue);
                return;
            }
            case 5: {
                this.setShortLabel((String)newValue);
                return;
            }
            case 6: {
                this.setCategory((String)newValue);
                return;
            }
            case 7: {
                this.setBaseReference((VariableDataPrototype)newValue);
                return;
            }
            case 8: {
                this.getElementGroups().clear();
                this.getElementGroups().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.setReferenceTable((VariableDataPrototype)newValue);
                return;
            }
            case 10: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setMcSupportData(null);
                return;
            }
            case 5: {
                this.unsetShortLabel();
                return;
            }
            case 6: {
                this.unsetCategory();
                return;
            }
            case 7: {
                this.setBaseReference(null);
                return;
            }
            case 8: {
                this.getElementGroups().clear();
                return;
            }
            case 9: {
                this.setReferenceTable(null);
                return;
            }
            case 10: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getMcSupportData() != null;
            }
            case 5: {
                return this.isSetShortLabel();
            }
            case 6: {
                return this.isSetCategory();
            }
            case 7: {
                return this.baseReference != null;
            }
            case 8: {
                return this.elementGroups != null && !this.elementGroups.isEmpty();
            }
            case 9: {
                return this.referenceTable != null;
            }
            case 10: {
                return this.variationPoint != null;
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (shortLabel: ");
        if (this.shortLabelESet) {
            result.append(this.shortLabel);
        } else {
            result.append("<unset>");
        }
        result.append(", category: ");
        if (this.categoryESet) {
            result.append(this.category);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

