/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginateableImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.RequirementstracingPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.TraceReferrable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.Traceable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.TraceableText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
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
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TraceableTextImpl
extends PaginateableImpl
implements TraceableText,
IReferringClass {
    protected static final String GSHORT_NAME_EDEFAULT = null;
    protected static final String SHORT_NAME_EDEFAULT = "";
    protected String shortName = "";
    protected boolean shortNameESet;
    protected static final String CATEGORY_EDEFAULT = "";
    protected String category = "";
    protected boolean categoryESet;
    protected EList<Traceable> traces;
    protected DocumentationBlock text;
    protected VariationPoint variationPoint;

    protected TraceableTextImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return RequirementstracingPackage.Literals.TRACEABLE_TEXT;
    }

    public String gGetShortName() {
        String tgtFeatureValue = this.getShortName();
        return tgtFeatureValue;
    }

    public void gSetShortName(String newGShortName) {
        this.setShortName(newGShortName);
    }

    public void gUnsetShortName() {
        this.unsetShortName();
    }

    public boolean gIsSetShortName() {
        return this.isSetShortName();
    }

    @Override
    public String getShortName() {
        return this.shortName;
    }

    @Override
    public void setShortName(String newShortName) {
        String oldShortName = this.shortName;
        this.shortName = newShortName;
        boolean oldShortNameESet = this.shortNameESet;
        this.shortNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldShortName, (Object)this.shortName, !oldShortNameESet));
        }
    }

    @Override
    public void unsetShortName() {
        String oldShortName = this.shortName;
        boolean oldShortNameESet = this.shortNameESet;
        this.shortName = "";
        this.shortNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldShortName, (Object)"", oldShortNameESet));
        }
    }

    @Override
    public boolean isSetShortName() {
        return this.shortNameESet;
    }

    @Override
    public MultilanguageLongName getLongName() {
        return (MultilanguageLongName)this.getField(8192);
    }

    public NotificationChain basicSetLongName(MultilanguageLongName newLongName, NotificationChain msgs) {
        MultilanguageLongName oldLongName = (MultilanguageLongName)this.setField(8192, newLongName);
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldLongName, (Object)newLongName);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLongName(MultilanguageLongName newLongName) {
        MultilanguageLongName longName = this.getLongName();
        if (newLongName != longName) {
            NotificationChain msgs = null;
            if (longName != null) {
                msgs = ((InternalEObject)longName).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newLongName != null) {
                msgs = ((InternalEObject)newLongName).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetLongName(newLongName, msgs)) != null) {
                msgs.dispatch();
            } else if (this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newLongName, (Object)newLongName));
            }
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldCategory, (Object)this.category, !oldCategoryESet));
        }
    }

    @Override
    public void unsetCategory() {
        String oldCategory = this.category;
        boolean oldCategoryESet = this.categoryESet;
        this.category = "";
        this.categoryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldCategory, (Object)"", oldCategoryESet));
        }
    }

    @Override
    public boolean isSetCategory() {
        return this.categoryESet;
    }

    @Override
    public EList<Traceable> getTraces() {
        if (this.traces == null) {
            this.traces = new EObjectResolvingReferringEList(Traceable.class, (InternalEObject)this, 12);
        }
        return this.traces;
    }

    @Override
    public DocumentationBlock getDocumentationBlock() {
        if (this.eContainerFeatureID() != 13) {
            return null;
        }
        return (DocumentationBlock)this.eContainer();
    }

    public NotificationChain basicSetDocumentationBlock(DocumentationBlock newDocumentationBlock, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDocumentationBlock, 13, msgs);
        return msgs;
    }

    @Override
    public void setDocumentationBlock(DocumentationBlock newDocumentationBlock) {
        if (newDocumentationBlock != this.eInternalContainer() || this.eContainerFeatureID() != 13 && newDocumentationBlock != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDocumentationBlock)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDocumentationBlock != null) {
                msgs = ((InternalEObject)newDocumentationBlock).eInverseAdd((InternalEObject)this, 13, DocumentationBlock.class, msgs);
            }
            if ((msgs = this.basicSetDocumentationBlock(newDocumentationBlock, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)newDocumentationBlock, (Object)newDocumentationBlock));
        }
    }

    @Override
    public DocumentationBlock getText() {
        return this.text;
    }

    public NotificationChain basicSetText(DocumentationBlock newText, NotificationChain msgs) {
        DocumentationBlock oldText = this.text;
        this.text = newText;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldText, (Object)newText);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setText(DocumentationBlock newText) {
        if (newText != this.text) {
            NotificationChain msgs = null;
            if (this.text != null) {
                msgs = ((InternalEObject)this.text).eInverseRemove((InternalEObject)this, -15, null, msgs);
            }
            if (newText != null) {
                msgs = ((InternalEObject)newText).eInverseAdd((InternalEObject)this, -15, null, msgs);
            }
            if ((msgs = this.basicSetText(newText, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)newText, (Object)newText));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -16, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -16, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 13: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDocumentationBlock((DocumentationBlock)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 10: {
                return this.basicSetLongName(null, msgs);
            }
            case 13: {
                return this.basicSetDocumentationBlock(null, msgs);
            }
            case 14: {
                return this.basicSetText(null, msgs);
            }
            case 15: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 13: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 13, DocumentationBlock.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.gGetShortName();
            }
            case 9: {
                return this.getShortName();
            }
            case 10: {
                return this.getLongName();
            }
            case 11: {
                return this.getCategory();
            }
            case 12: {
                return this.getTraces();
            }
            case 13: {
                return this.getDocumentationBlock();
            }
            case 14: {
                return this.getText();
            }
            case 15: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.gSetShortName((String)newValue);
                return;
            }
            case 9: {
                this.setShortName((String)newValue);
                return;
            }
            case 10: {
                this.setLongName((MultilanguageLongName)newValue);
                return;
            }
            case 11: {
                this.setCategory((String)newValue);
                return;
            }
            case 12: {
                this.getTraces().clear();
                this.getTraces().addAll((Collection)newValue);
                return;
            }
            case 13: {
                this.setDocumentationBlock((DocumentationBlock)newValue);
                return;
            }
            case 14: {
                this.setText((DocumentationBlock)newValue);
                return;
            }
            case 15: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.gUnsetShortName();
                return;
            }
            case 9: {
                this.unsetShortName();
                return;
            }
            case 10: {
                this.setLongName(null);
                return;
            }
            case 11: {
                this.unsetCategory();
                return;
            }
            case 12: {
                this.getTraces().clear();
                return;
            }
            case 13: {
                this.setDocumentationBlock(null);
                return;
            }
            case 14: {
                this.setText(null);
                return;
            }
            case 15: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.gIsSetShortName();
            }
            case 9: {
                return this.isSetShortName();
            }
            case 10: {
                return this.getLongName() != null;
            }
            case 11: {
                return this.isSetCategory();
            }
            case 12: {
                return this.traces != null && !this.traces.isEmpty();
            }
            case 13: {
                return this.getDocumentationBlock() != null;
            }
            case 14: {
                return this.text != null;
            }
            case 15: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GReferrable.class) {
            switch (derivedFeatureID) {
                case 8: {
                    return 2;
                }
            }
            return -1;
        }
        if (baseClass == Referrable.class) {
            switch (derivedFeatureID) {
                case 9: {
                    return 5;
                }
            }
            return -1;
        }
        if (baseClass == MultilanguageReferrable.class) {
            switch (derivedFeatureID) {
                case 10: {
                    return 6;
                }
            }
            return -1;
        }
        if (baseClass == TraceReferrable.class) {
            switch (derivedFeatureID) {
                case 11: {
                    return 7;
                }
            }
            return -1;
        }
        if (baseClass == Traceable.class) {
            switch (derivedFeatureID) {
                case 12: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GReferrable.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 8;
                }
            }
            return -1;
        }
        if (baseClass == Referrable.class) {
            switch (baseFeatureID) {
                case 5: {
                    return 9;
                }
            }
            return -1;
        }
        if (baseClass == MultilanguageReferrable.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 10;
                }
            }
            return -1;
        }
        if (baseClass == TraceReferrable.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 11;
                }
            }
            return -1;
        }
        if (baseClass == Traceable.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 12;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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
        result.append(" (shortName: ");
        if (this.shortNameESet) {
            result.append(this.shortName);
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

