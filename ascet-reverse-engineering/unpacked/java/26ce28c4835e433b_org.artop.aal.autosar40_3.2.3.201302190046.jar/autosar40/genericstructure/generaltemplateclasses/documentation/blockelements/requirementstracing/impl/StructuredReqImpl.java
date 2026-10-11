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
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.StructuredReq;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.TraceReferrable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.Traceable;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesFactory;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesPackage;
import autosar40.genericstructure.varianthandling.VariationPoint;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import java.util.Collection;
import javax.xml.datatype.XMLGregorianCalendar;
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
public class StructuredReqImpl
extends PaginateableImpl
implements StructuredReq,
IReferringClass {
    protected static final String GSHORT_NAME_EDEFAULT = null;
    protected static final String SHORT_NAME_EDEFAULT = "";
    protected String shortName = "";
    protected boolean shortNameESet;
    protected static final String CATEGORY_EDEFAULT = "";
    protected String category = "";
    protected boolean categoryESet;
    protected EList<Traceable> traces;
    protected static final XMLGregorianCalendar DATE_EDEFAULT = (XMLGregorianCalendar)PrimitivetypesFactory.eINSTANCE.createFromString(PrimitivetypesPackage.eINSTANCE.getDateTime(), "0001-01-01T00:00:00");
    protected XMLGregorianCalendar date = DATE_EDEFAULT;
    protected boolean dateESet;
    protected static final String ISSUED_BY_EDEFAULT = "";
    protected String issuedBy = "";
    protected boolean issuedByESet;
    protected static final String TYPE_EDEFAULT = "";
    protected String type = "";
    protected boolean typeESet;
    protected static final String IMPORTANCE_EDEFAULT = "";
    protected String importance = "";
    protected boolean importanceESet;
    protected DocumentationBlock description;
    protected DocumentationBlock rationale;
    protected DocumentationBlock dependencies;
    protected DocumentationBlock useCase;
    protected DocumentationBlock conflicts;
    protected DocumentationBlock supportingMaterial;
    protected DocumentationBlock remark;
    protected VariationPoint variationPoint;

    protected StructuredReqImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return RequirementstracingPackage.Literals.STRUCTURED_REQ;
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
                msgs = ((InternalEObject)newDocumentationBlock).eInverseAdd((InternalEObject)this, 14, DocumentationBlock.class, msgs);
            }
            if ((msgs = this.basicSetDocumentationBlock(newDocumentationBlock, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)newDocumentationBlock, (Object)newDocumentationBlock));
        }
    }

    @Override
    public XMLGregorianCalendar getDate() {
        return this.date;
    }

    @Override
    public void setDate(XMLGregorianCalendar newDate) {
        XMLGregorianCalendar oldDate = this.date;
        this.date = newDate;
        boolean oldDateESet = this.dateESet;
        this.dateESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldDate, (Object)this.date, !oldDateESet));
        }
    }

    @Override
    public void unsetDate() {
        XMLGregorianCalendar oldDate = this.date;
        boolean oldDateESet = this.dateESet;
        this.date = DATE_EDEFAULT;
        this.dateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldDate, (Object)DATE_EDEFAULT, oldDateESet));
        }
    }

    @Override
    public boolean isSetDate() {
        return this.dateESet;
    }

    @Override
    public String getIssuedBy() {
        return this.issuedBy;
    }

    @Override
    public void setIssuedBy(String newIssuedBy) {
        String oldIssuedBy = this.issuedBy;
        this.issuedBy = newIssuedBy;
        boolean oldIssuedByESet = this.issuedByESet;
        this.issuedByESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldIssuedBy, (Object)this.issuedBy, !oldIssuedByESet));
        }
    }

    @Override
    public void unsetIssuedBy() {
        String oldIssuedBy = this.issuedBy;
        boolean oldIssuedByESet = this.issuedByESet;
        this.issuedBy = "";
        this.issuedByESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, (Object)oldIssuedBy, (Object)"", oldIssuedByESet));
        }
    }

    @Override
    public boolean isSetIssuedBy() {
        return this.issuedByESet;
    }

    @Override
    public String getType() {
        return this.type;
    }

    @Override
    public void setType(String newType) {
        String oldType = this.type;
        this.type = newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    @Override
    public void unsetType() {
        String oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = "";
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 16, (Object)oldType, (Object)"", oldTypeESet));
        }
    }

    @Override
    public boolean isSetType() {
        return this.typeESet;
    }

    @Override
    public String getImportance() {
        return this.importance;
    }

    @Override
    public void setImportance(String newImportance) {
        String oldImportance = this.importance;
        this.importance = newImportance;
        boolean oldImportanceESet = this.importanceESet;
        this.importanceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldImportance, (Object)this.importance, !oldImportanceESet));
        }
    }

    @Override
    public void unsetImportance() {
        String oldImportance = this.importance;
        boolean oldImportanceESet = this.importanceESet;
        this.importance = "";
        this.importanceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldImportance, (Object)"", oldImportanceESet));
        }
    }

    @Override
    public boolean isSetImportance() {
        return this.importanceESet;
    }

    @Override
    public DocumentationBlock getDescription() {
        return this.description;
    }

    public NotificationChain basicSetDescription(DocumentationBlock newDescription, NotificationChain msgs) {
        DocumentationBlock oldDescription = this.description;
        this.description = newDescription;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldDescription, (Object)newDescription);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDescription(DocumentationBlock newDescription) {
        if (newDescription != this.description) {
            NotificationChain msgs = null;
            if (this.description != null) {
                msgs = ((InternalEObject)this.description).eInverseRemove((InternalEObject)this, -19, null, msgs);
            }
            if (newDescription != null) {
                msgs = ((InternalEObject)newDescription).eInverseAdd((InternalEObject)this, -19, null, msgs);
            }
            if ((msgs = this.basicSetDescription(newDescription, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newDescription, (Object)newDescription));
        }
    }

    @Override
    public DocumentationBlock getRationale() {
        return this.rationale;
    }

    public NotificationChain basicSetRationale(DocumentationBlock newRationale, NotificationChain msgs) {
        DocumentationBlock oldRationale = this.rationale;
        this.rationale = newRationale;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldRationale, (Object)newRationale);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setRationale(DocumentationBlock newRationale) {
        if (newRationale != this.rationale) {
            NotificationChain msgs = null;
            if (this.rationale != null) {
                msgs = ((InternalEObject)this.rationale).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newRationale != null) {
                msgs = ((InternalEObject)newRationale).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetRationale(newRationale, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newRationale, (Object)newRationale));
        }
    }

    @Override
    public DocumentationBlock getDependencies() {
        return this.dependencies;
    }

    public NotificationChain basicSetDependencies(DocumentationBlock newDependencies, NotificationChain msgs) {
        DocumentationBlock oldDependencies = this.dependencies;
        this.dependencies = newDependencies;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldDependencies, (Object)newDependencies);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDependencies(DocumentationBlock newDependencies) {
        if (newDependencies != this.dependencies) {
            NotificationChain msgs = null;
            if (this.dependencies != null) {
                msgs = ((InternalEObject)this.dependencies).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newDependencies != null) {
                msgs = ((InternalEObject)newDependencies).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetDependencies(newDependencies, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newDependencies, (Object)newDependencies));
        }
    }

    @Override
    public DocumentationBlock getUseCase() {
        return this.useCase;
    }

    public NotificationChain basicSetUseCase(DocumentationBlock newUseCase, NotificationChain msgs) {
        DocumentationBlock oldUseCase = this.useCase;
        this.useCase = newUseCase;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldUseCase, (Object)newUseCase);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setUseCase(DocumentationBlock newUseCase) {
        if (newUseCase != this.useCase) {
            NotificationChain msgs = null;
            if (this.useCase != null) {
                msgs = ((InternalEObject)this.useCase).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newUseCase != null) {
                msgs = ((InternalEObject)newUseCase).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetUseCase(newUseCase, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newUseCase, (Object)newUseCase));
        }
    }

    @Override
    public DocumentationBlock getConflicts() {
        return this.conflicts;
    }

    public NotificationChain basicSetConflicts(DocumentationBlock newConflicts, NotificationChain msgs) {
        DocumentationBlock oldConflicts = this.conflicts;
        this.conflicts = newConflicts;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldConflicts, (Object)newConflicts);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setConflicts(DocumentationBlock newConflicts) {
        if (newConflicts != this.conflicts) {
            NotificationChain msgs = null;
            if (this.conflicts != null) {
                msgs = ((InternalEObject)this.conflicts).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newConflicts != null) {
                msgs = ((InternalEObject)newConflicts).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetConflicts(newConflicts, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newConflicts, (Object)newConflicts));
        }
    }

    @Override
    public DocumentationBlock getSupportingMaterial() {
        return this.supportingMaterial;
    }

    public NotificationChain basicSetSupportingMaterial(DocumentationBlock newSupportingMaterial, NotificationChain msgs) {
        DocumentationBlock oldSupportingMaterial = this.supportingMaterial;
        this.supportingMaterial = newSupportingMaterial;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldSupportingMaterial, (Object)newSupportingMaterial);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSupportingMaterial(DocumentationBlock newSupportingMaterial) {
        if (newSupportingMaterial != this.supportingMaterial) {
            NotificationChain msgs = null;
            if (this.supportingMaterial != null) {
                msgs = ((InternalEObject)this.supportingMaterial).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newSupportingMaterial != null) {
                msgs = ((InternalEObject)newSupportingMaterial).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetSupportingMaterial(newSupportingMaterial, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newSupportingMaterial, (Object)newSupportingMaterial));
        }
    }

    @Override
    public DocumentationBlock getRemark() {
        return this.remark;
    }

    public NotificationChain basicSetRemark(DocumentationBlock newRemark, NotificationChain msgs) {
        DocumentationBlock oldRemark = this.remark;
        this.remark = newRemark;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldRemark, (Object)newRemark);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setRemark(DocumentationBlock newRemark) {
        if (newRemark != this.remark) {
            NotificationChain msgs = null;
            if (this.remark != null) {
                msgs = ((InternalEObject)this.remark).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newRemark != null) {
                msgs = ((InternalEObject)newRemark).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetRemark(newRemark, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newRemark, (Object)newRemark));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -26, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -26, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)newVariationPoint, (Object)newVariationPoint));
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
            case 18: {
                return this.basicSetDescription(null, msgs);
            }
            case 19: {
                return this.basicSetRationale(null, msgs);
            }
            case 20: {
                return this.basicSetDependencies(null, msgs);
            }
            case 21: {
                return this.basicSetUseCase(null, msgs);
            }
            case 22: {
                return this.basicSetConflicts(null, msgs);
            }
            case 23: {
                return this.basicSetSupportingMaterial(null, msgs);
            }
            case 24: {
                return this.basicSetRemark(null, msgs);
            }
            case 25: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 13: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 14, DocumentationBlock.class, msgs);
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
                return this.getDate();
            }
            case 15: {
                return this.getIssuedBy();
            }
            case 16: {
                return this.getType();
            }
            case 17: {
                return this.getImportance();
            }
            case 18: {
                return this.getDescription();
            }
            case 19: {
                return this.getRationale();
            }
            case 20: {
                return this.getDependencies();
            }
            case 21: {
                return this.getUseCase();
            }
            case 22: {
                return this.getConflicts();
            }
            case 23: {
                return this.getSupportingMaterial();
            }
            case 24: {
                return this.getRemark();
            }
            case 25: {
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
                this.setDate((XMLGregorianCalendar)newValue);
                return;
            }
            case 15: {
                this.setIssuedBy((String)newValue);
                return;
            }
            case 16: {
                this.setType((String)newValue);
                return;
            }
            case 17: {
                this.setImportance((String)newValue);
                return;
            }
            case 18: {
                this.setDescription((DocumentationBlock)newValue);
                return;
            }
            case 19: {
                this.setRationale((DocumentationBlock)newValue);
                return;
            }
            case 20: {
                this.setDependencies((DocumentationBlock)newValue);
                return;
            }
            case 21: {
                this.setUseCase((DocumentationBlock)newValue);
                return;
            }
            case 22: {
                this.setConflicts((DocumentationBlock)newValue);
                return;
            }
            case 23: {
                this.setSupportingMaterial((DocumentationBlock)newValue);
                return;
            }
            case 24: {
                this.setRemark((DocumentationBlock)newValue);
                return;
            }
            case 25: {
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
                this.unsetDate();
                return;
            }
            case 15: {
                this.unsetIssuedBy();
                return;
            }
            case 16: {
                this.unsetType();
                return;
            }
            case 17: {
                this.unsetImportance();
                return;
            }
            case 18: {
                this.setDescription(null);
                return;
            }
            case 19: {
                this.setRationale(null);
                return;
            }
            case 20: {
                this.setDependencies(null);
                return;
            }
            case 21: {
                this.setUseCase(null);
                return;
            }
            case 22: {
                this.setConflicts(null);
                return;
            }
            case 23: {
                this.setSupportingMaterial(null);
                return;
            }
            case 24: {
                this.setRemark(null);
                return;
            }
            case 25: {
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
                return this.isSetDate();
            }
            case 15: {
                return this.isSetIssuedBy();
            }
            case 16: {
                return this.isSetType();
            }
            case 17: {
                return this.isSetImportance();
            }
            case 18: {
                return this.description != null;
            }
            case 19: {
                return this.rationale != null;
            }
            case 20: {
                return this.dependencies != null;
            }
            case 21: {
                return this.useCase != null;
            }
            case 22: {
                return this.conflicts != null;
            }
            case 23: {
                return this.supportingMaterial != null;
            }
            case 24: {
                return this.remark != null;
            }
            case 25: {
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
        result.append(", date: ");
        if (this.dateESet) {
            result.append(this.date);
        } else {
            result.append("<unset>");
        }
        result.append(", issuedBy: ");
        if (this.issuedByESet) {
            result.append(this.issuedBy);
        } else {
            result.append("<unset>");
        }
        result.append(", type: ");
        if (this.typeESet) {
            result.append(this.type);
        } else {
            result.append("<unset>");
        }
        result.append(", importance: ");
        if (this.importanceESet) {
            result.append(this.importance);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

