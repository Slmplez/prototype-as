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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.AlignEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Entry;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetablePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Row;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.ValignEnum;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class EntryImpl
extends ARObjectImpl
implements Entry {
    protected static final AlignEnum ALIGN_EDEFAULT = AlignEnum.CENTER;
    protected AlignEnum align = ALIGN_EDEFAULT;
    protected boolean alignESet;
    protected static final String COLNAME_EDEFAULT = "";
    protected String colname = "";
    protected boolean colnameESet;
    protected static final String COLSEP_EDEFAULT = "";
    protected String colsep = "";
    protected boolean colsepESet;
    protected DocumentationBlock entryContents;
    protected static final String MOREROWS_EDEFAULT = "";
    protected String morerows = "";
    protected boolean morerowsESet;
    protected static final String NAMEEND_EDEFAULT = "";
    protected String nameend = "";
    protected boolean nameendESet;
    protected static final String NAMEST_EDEFAULT = "";
    protected String namest = "";
    protected boolean namestESet;
    protected static final String ROTATE_EDEFAULT = "";
    protected String rotate = "";
    protected boolean rotateESet;
    protected static final String ROWSEP_EDEFAULT = "";
    protected String rowsep = "";
    protected boolean rowsepESet;
    protected static final String SPANNAME_EDEFAULT = "";
    protected String spanname = "";
    protected boolean spannameESet;
    protected static final ValignEnum VALIGN_EDEFAULT = ValignEnum.BOTTOM;
    protected ValignEnum valign = VALIGN_EDEFAULT;
    protected boolean valignESet;

    protected EntryImpl() {
    }

    protected EClass eStaticClass() {
        return OasisexchangetablePackage.Literals.ENTRY;
    }

    public Row getRow() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Row)this.eContainer();
    }

    public NotificationChain basicSetRow(Row newRow, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newRow, 4, msgs);
        return msgs;
    }

    public void setRow(Row newRow) {
        if (newRow != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newRow != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newRow)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newRow != null) {
                msgs = ((InternalEObject)newRow).eInverseAdd((InternalEObject)this, 7, Row.class, msgs);
            }
            if ((msgs = this.basicSetRow(newRow, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newRow, (Object)newRow));
        }
    }

    public AlignEnum getAlign() {
        return this.align;
    }

    public void setAlign(AlignEnum newAlign) {
        AlignEnum oldAlign = this.align;
        this.align = newAlign == null ? ALIGN_EDEFAULT : newAlign;
        boolean oldAlignESet = this.alignESet;
        this.alignESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAlign, (Object)this.align, !oldAlignESet));
        }
    }

    public void unsetAlign() {
        AlignEnum oldAlign = this.align;
        boolean oldAlignESet = this.alignESet;
        this.align = ALIGN_EDEFAULT;
        this.alignESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldAlign, (Object)ALIGN_EDEFAULT, oldAlignESet));
        }
    }

    public boolean isSetAlign() {
        return this.alignESet;
    }

    public String getColname() {
        return this.colname;
    }

    public void setColname(String newColname) {
        String oldColname = this.colname;
        this.colname = newColname;
        boolean oldColnameESet = this.colnameESet;
        this.colnameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldColname, (Object)this.colname, !oldColnameESet));
        }
    }

    public void unsetColname() {
        String oldColname = this.colname;
        boolean oldColnameESet = this.colnameESet;
        this.colname = "";
        this.colnameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldColname, (Object)"", oldColnameESet));
        }
    }

    public boolean isSetColname() {
        return this.colnameESet;
    }

    public String getColsep() {
        return this.colsep;
    }

    public void setColsep(String newColsep) {
        String oldColsep = this.colsep;
        this.colsep = newColsep;
        boolean oldColsepESet = this.colsepESet;
        this.colsepESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldColsep, (Object)this.colsep, !oldColsepESet));
        }
    }

    public void unsetColsep() {
        String oldColsep = this.colsep;
        boolean oldColsepESet = this.colsepESet;
        this.colsep = "";
        this.colsepESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldColsep, (Object)"", oldColsepESet));
        }
    }

    public boolean isSetColsep() {
        return this.colsepESet;
    }

    public DocumentationBlock getEntryContents() {
        return this.entryContents;
    }

    public NotificationChain basicSetEntryContents(DocumentationBlock newEntryContents, NotificationChain msgs) {
        DocumentationBlock oldEntryContents = this.entryContents;
        this.entryContents = newEntryContents;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldEntryContents, (Object)newEntryContents);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setEntryContents(DocumentationBlock newEntryContents) {
        if (newEntryContents != this.entryContents) {
            NotificationChain msgs = null;
            if (this.entryContents != null) {
                msgs = ((InternalEObject)this.entryContents).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newEntryContents != null) {
                msgs = ((InternalEObject)newEntryContents).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetEntryContents(newEntryContents, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newEntryContents, (Object)newEntryContents));
        }
    }

    public String getMorerows() {
        return this.morerows;
    }

    public void setMorerows(String newMorerows) {
        String oldMorerows = this.morerows;
        this.morerows = newMorerows;
        boolean oldMorerowsESet = this.morerowsESet;
        this.morerowsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldMorerows, (Object)this.morerows, !oldMorerowsESet));
        }
    }

    public void unsetMorerows() {
        String oldMorerows = this.morerows;
        boolean oldMorerowsESet = this.morerowsESet;
        this.morerows = "";
        this.morerowsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldMorerows, (Object)"", oldMorerowsESet));
        }
    }

    public boolean isSetMorerows() {
        return this.morerowsESet;
    }

    public String getNameend() {
        return this.nameend;
    }

    public void setNameend(String newNameend) {
        String oldNameend = this.nameend;
        this.nameend = newNameend;
        boolean oldNameendESet = this.nameendESet;
        this.nameendESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldNameend, (Object)this.nameend, !oldNameendESet));
        }
    }

    public void unsetNameend() {
        String oldNameend = this.nameend;
        boolean oldNameendESet = this.nameendESet;
        this.nameend = "";
        this.nameendESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldNameend, (Object)"", oldNameendESet));
        }
    }

    public boolean isSetNameend() {
        return this.nameendESet;
    }

    public String getNamest() {
        return this.namest;
    }

    public void setNamest(String newNamest) {
        String oldNamest = this.namest;
        this.namest = newNamest;
        boolean oldNamestESet = this.namestESet;
        this.namestESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldNamest, (Object)this.namest, !oldNamestESet));
        }
    }

    public void unsetNamest() {
        String oldNamest = this.namest;
        boolean oldNamestESet = this.namestESet;
        this.namest = "";
        this.namestESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldNamest, (Object)"", oldNamestESet));
        }
    }

    public boolean isSetNamest() {
        return this.namestESet;
    }

    public String getRotate() {
        return this.rotate;
    }

    public void setRotate(String newRotate) {
        String oldRotate = this.rotate;
        this.rotate = newRotate;
        boolean oldRotateESet = this.rotateESet;
        this.rotateESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldRotate, (Object)this.rotate, !oldRotateESet));
        }
    }

    public void unsetRotate() {
        String oldRotate = this.rotate;
        boolean oldRotateESet = this.rotateESet;
        this.rotate = "";
        this.rotateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldRotate, (Object)"", oldRotateESet));
        }
    }

    public boolean isSetRotate() {
        return this.rotateESet;
    }

    public String getRowsep() {
        return this.rowsep;
    }

    public void setRowsep(String newRowsep) {
        String oldRowsep = this.rowsep;
        this.rowsep = newRowsep;
        boolean oldRowsepESet = this.rowsepESet;
        this.rowsepESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldRowsep, (Object)this.rowsep, !oldRowsepESet));
        }
    }

    public void unsetRowsep() {
        String oldRowsep = this.rowsep;
        boolean oldRowsepESet = this.rowsepESet;
        this.rowsep = "";
        this.rowsepESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldRowsep, (Object)"", oldRowsepESet));
        }
    }

    public boolean isSetRowsep() {
        return this.rowsepESet;
    }

    public String getSpanname() {
        return this.spanname;
    }

    public void setSpanname(String newSpanname) {
        String oldSpanname = this.spanname;
        this.spanname = newSpanname;
        boolean oldSpannameESet = this.spannameESet;
        this.spannameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldSpanname, (Object)this.spanname, !oldSpannameESet));
        }
    }

    public void unsetSpanname() {
        String oldSpanname = this.spanname;
        boolean oldSpannameESet = this.spannameESet;
        this.spanname = "";
        this.spannameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldSpanname, (Object)"", oldSpannameESet));
        }
    }

    public boolean isSetSpanname() {
        return this.spannameESet;
    }

    public ValignEnum getValign() {
        return this.valign;
    }

    public void setValign(ValignEnum newValign) {
        ValignEnum oldValign = this.valign;
        this.valign = newValign == null ? VALIGN_EDEFAULT : newValign;
        boolean oldValignESet = this.valignESet;
        this.valignESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldValign, (Object)this.valign, !oldValignESet));
        }
    }

    public void unsetValign() {
        ValignEnum oldValign = this.valign;
        boolean oldValignESet = this.valignESet;
        this.valign = VALIGN_EDEFAULT;
        this.valignESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, (Object)oldValign, (Object)VALIGN_EDEFAULT, oldValignESet));
        }
    }

    public boolean isSetValign() {
        return this.valignESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetRow((Row)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetRow(null, msgs);
            }
            case 8: {
                return this.basicSetEntryContents(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, Row.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getRow();
            }
            case 5: {
                return this.getAlign();
            }
            case 6: {
                return this.getColname();
            }
            case 7: {
                return this.getColsep();
            }
            case 8: {
                return this.getEntryContents();
            }
            case 9: {
                return this.getMorerows();
            }
            case 10: {
                return this.getNameend();
            }
            case 11: {
                return this.getNamest();
            }
            case 12: {
                return this.getRotate();
            }
            case 13: {
                return this.getRowsep();
            }
            case 14: {
                return this.getSpanname();
            }
            case 15: {
                return this.getValign();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setRow((Row)newValue);
                return;
            }
            case 5: {
                this.setAlign((AlignEnum)((Object)newValue));
                return;
            }
            case 6: {
                this.setColname((String)newValue);
                return;
            }
            case 7: {
                this.setColsep((String)newValue);
                return;
            }
            case 8: {
                this.setEntryContents((DocumentationBlock)newValue);
                return;
            }
            case 9: {
                this.setMorerows((String)newValue);
                return;
            }
            case 10: {
                this.setNameend((String)newValue);
                return;
            }
            case 11: {
                this.setNamest((String)newValue);
                return;
            }
            case 12: {
                this.setRotate((String)newValue);
                return;
            }
            case 13: {
                this.setRowsep((String)newValue);
                return;
            }
            case 14: {
                this.setSpanname((String)newValue);
                return;
            }
            case 15: {
                this.setValign((ValignEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setRow(null);
                return;
            }
            case 5: {
                this.unsetAlign();
                return;
            }
            case 6: {
                this.unsetColname();
                return;
            }
            case 7: {
                this.unsetColsep();
                return;
            }
            case 8: {
                this.setEntryContents(null);
                return;
            }
            case 9: {
                this.unsetMorerows();
                return;
            }
            case 10: {
                this.unsetNameend();
                return;
            }
            case 11: {
                this.unsetNamest();
                return;
            }
            case 12: {
                this.unsetRotate();
                return;
            }
            case 13: {
                this.unsetRowsep();
                return;
            }
            case 14: {
                this.unsetSpanname();
                return;
            }
            case 15: {
                this.unsetValign();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getRow() != null;
            }
            case 5: {
                return this.isSetAlign();
            }
            case 6: {
                return this.isSetColname();
            }
            case 7: {
                return this.isSetColsep();
            }
            case 8: {
                return this.entryContents != null;
            }
            case 9: {
                return this.isSetMorerows();
            }
            case 10: {
                return this.isSetNameend();
            }
            case 11: {
                return this.isSetNamest();
            }
            case 12: {
                return this.isSetRotate();
            }
            case 13: {
                return this.isSetRowsep();
            }
            case 14: {
                return this.isSetSpanname();
            }
            case 15: {
                return this.isSetValign();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (align: ");
        if (this.alignESet) {
            result.append((Object)this.align);
        } else {
            result.append("<unset>");
        }
        result.append(", colname: ");
        if (this.colnameESet) {
            result.append(this.colname);
        } else {
            result.append("<unset>");
        }
        result.append(", colsep: ");
        if (this.colsepESet) {
            result.append(this.colsep);
        } else {
            result.append("<unset>");
        }
        result.append(", morerows: ");
        if (this.morerowsESet) {
            result.append(this.morerows);
        } else {
            result.append("<unset>");
        }
        result.append(", nameend: ");
        if (this.nameendESet) {
            result.append(this.nameend);
        } else {
            result.append("<unset>");
        }
        result.append(", namest: ");
        if (this.namestESet) {
            result.append(this.namest);
        } else {
            result.append("<unset>");
        }
        result.append(", rotate: ");
        if (this.rotateESet) {
            result.append(this.rotate);
        } else {
            result.append("<unset>");
        }
        result.append(", rowsep: ");
        if (this.rowsepESet) {
            result.append(this.rowsep);
        } else {
            result.append("<unset>");
        }
        result.append(", spanname: ");
        if (this.spannameESet) {
            result.append(this.spanname);
        } else {
            result.append("<unset>");
        }
        result.append(", valign: ");
        if (this.valignESet) {
            result.append((Object)this.valign);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

