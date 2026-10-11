/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.Note;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.NotePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.NoteTypeEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginateableImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class NoteImpl
extends PaginateableImpl
implements Note {
    protected static final NoteTypeEnum NOTE_TYPE_EDEFAULT = NoteTypeEnum.CAUTION;
    protected NoteTypeEnum noteType = NOTE_TYPE_EDEFAULT;
    protected boolean noteTypeESet;
    protected MultilanguageLongName label;
    protected DocumentationBlock noteText;
    protected VariationPoint variationPoint;

    protected NoteImpl() {
    }

    protected EClass eStaticClass() {
        return NotePackage.Literals.NOTE;
    }

    public DocumentationBlock getDocumentationBlock() {
        if (this.eContainerFeatureID() != 8) {
            return null;
        }
        return (DocumentationBlock)this.eContainer();
    }

    public NotificationChain basicSetDocumentationBlock(DocumentationBlock newDocumentationBlock, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDocumentationBlock, 8, msgs);
        return msgs;
    }

    public void setDocumentationBlock(DocumentationBlock newDocumentationBlock) {
        if (newDocumentationBlock != this.eInternalContainer() || this.eContainerFeatureID() != 8 && newDocumentationBlock != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDocumentationBlock)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDocumentationBlock != null) {
                msgs = ((InternalEObject)newDocumentationBlock).eInverseAdd((InternalEObject)this, 12, DocumentationBlock.class, msgs);
            }
            if ((msgs = this.basicSetDocumentationBlock(newDocumentationBlock, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newDocumentationBlock, (Object)newDocumentationBlock));
        }
    }

    public NoteTypeEnum getNoteType() {
        return this.noteType;
    }

    public void setNoteType(NoteTypeEnum newNoteType) {
        NoteTypeEnum oldNoteType = this.noteType;
        this.noteType = newNoteType == null ? NOTE_TYPE_EDEFAULT : newNoteType;
        boolean oldNoteTypeESet = this.noteTypeESet;
        this.noteTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldNoteType, (Object)this.noteType, !oldNoteTypeESet));
        }
    }

    public void unsetNoteType() {
        NoteTypeEnum oldNoteType = this.noteType;
        boolean oldNoteTypeESet = this.noteTypeESet;
        this.noteType = NOTE_TYPE_EDEFAULT;
        this.noteTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldNoteType, (Object)NOTE_TYPE_EDEFAULT, oldNoteTypeESet));
        }
    }

    public boolean isSetNoteType() {
        return this.noteTypeESet;
    }

    public MultilanguageLongName getLabel() {
        return this.label;
    }

    public NotificationChain basicSetLabel(MultilanguageLongName newLabel, NotificationChain msgs) {
        MultilanguageLongName oldLabel = this.label;
        this.label = newLabel;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldLabel, (Object)newLabel);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setLabel(MultilanguageLongName newLabel) {
        if (newLabel != this.label) {
            NotificationChain msgs = null;
            if (this.label != null) {
                msgs = ((InternalEObject)this.label).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newLabel != null) {
                msgs = ((InternalEObject)newLabel).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetLabel(newLabel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newLabel, (Object)newLabel));
        }
    }

    public DocumentationBlock getNoteText() {
        return this.noteText;
    }

    public NotificationChain basicSetNoteText(DocumentationBlock newNoteText, NotificationChain msgs) {
        DocumentationBlock oldNoteText = this.noteText;
        this.noteText = newNoteText;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldNoteText, (Object)newNoteText);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setNoteText(DocumentationBlock newNoteText) {
        if (newNoteText != this.noteText) {
            NotificationChain msgs = null;
            if (this.noteText != null) {
                msgs = ((InternalEObject)this.noteText).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newNoteText != null) {
                msgs = ((InternalEObject)newNoteText).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetNoteText(newNoteText, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newNoteText, (Object)newNoteText));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
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
            case 8: {
                return this.basicSetDocumentationBlock(null, msgs);
            }
            case 10: {
                return this.basicSetLabel(null, msgs);
            }
            case 11: {
                return this.basicSetNoteText(null, msgs);
            }
            case 12: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 8: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 12, DocumentationBlock.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getDocumentationBlock();
            }
            case 9: {
                return this.getNoteType();
            }
            case 10: {
                return this.getLabel();
            }
            case 11: {
                return this.getNoteText();
            }
            case 12: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setDocumentationBlock((DocumentationBlock)newValue);
                return;
            }
            case 9: {
                this.setNoteType((NoteTypeEnum)((Object)newValue));
                return;
            }
            case 10: {
                this.setLabel((MultilanguageLongName)newValue);
                return;
            }
            case 11: {
                this.setNoteText((DocumentationBlock)newValue);
                return;
            }
            case 12: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.setDocumentationBlock(null);
                return;
            }
            case 9: {
                this.unsetNoteType();
                return;
            }
            case 10: {
                this.setLabel(null);
                return;
            }
            case 11: {
                this.setNoteText(null);
                return;
            }
            case 12: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.getDocumentationBlock() != null;
            }
            case 9: {
                return this.isSetNoteType();
            }
            case 10: {
                return this.label != null;
            }
            case 11: {
                return this.noteText != null;
            }
            case 12: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (noteType: ");
        if (this.noteTypeESet) {
            result.append((Object)this.noteType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

