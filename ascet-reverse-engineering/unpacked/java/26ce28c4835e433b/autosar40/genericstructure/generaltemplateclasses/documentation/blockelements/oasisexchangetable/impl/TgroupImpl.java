/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.AlignEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Colspec;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetablePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Table;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tbody;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tgroup;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
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
public class TgroupImpl
extends ARObjectImpl
implements Tgroup {
    protected static final AlignEnum ALIGN_EDEFAULT = AlignEnum.CENTER;
    protected AlignEnum align = ALIGN_EDEFAULT;
    protected boolean alignESet;
    protected static final IntegerDatatype COLS_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype cols = COLS_EDEFAULT.clone();
    protected boolean colsESet;
    protected static final String COLSEP_EDEFAULT = "";
    protected String colsep = "";
    protected boolean colsepESet;
    protected static final String ROWSEP_EDEFAULT = "";
    protected String rowsep = "";
    protected boolean rowsepESet;
    protected EList<Colspec> colspecs;
    protected Tbody thead;
    protected Tbody tfoot;
    protected Tbody tbody;

    protected TgroupImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return OasisexchangetablePackage.Literals.TGROUP;
    }

    @Override
    public Table getTable() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Table)this.eContainer();
    }

    public NotificationChain basicSetTable(Table newTable, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTable, 4, msgs);
        return msgs;
    }

    @Override
    public void setTable(Table newTable) {
        if (newTable != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newTable != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTable)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTable != null) {
                msgs = ((InternalEObject)newTable).eInverseAdd((InternalEObject)this, 18, Table.class, msgs);
            }
            if ((msgs = this.basicSetTable(newTable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTable, (Object)newTable));
        }
    }

    @Override
    public AlignEnum getAlign() {
        return this.align;
    }

    @Override
    public void setAlign(AlignEnum newAlign) {
        AlignEnum oldAlign = this.align;
        this.align = newAlign == null ? ALIGN_EDEFAULT : newAlign;
        boolean oldAlignESet = this.alignESet;
        this.alignESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAlign, (Object)this.align, !oldAlignESet));
        }
    }

    @Override
    public void unsetAlign() {
        AlignEnum oldAlign = this.align;
        boolean oldAlignESet = this.alignESet;
        this.align = ALIGN_EDEFAULT;
        this.alignESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldAlign, (Object)ALIGN_EDEFAULT, oldAlignESet));
        }
    }

    @Override
    public boolean isSetAlign() {
        return this.alignESet;
    }

    @Override
    public Integer getCols() {
        return (Integer)this.cols.basicGetValue();
    }

    @Override
    public void setCols(Integer newCols) {
        Integer oldCols = (Integer)this.cols.basicGetValue();
        this.cols.basicSetValue((Object)newCols);
        boolean oldColsESet = this.colsESet;
        this.colsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCols, (Object)newCols, !oldColsESet));
        }
    }

    @Override
    public void unsetCols() {
        Integer oldCols = (Integer)this.cols.basicGetValue();
        boolean oldColsESet = this.colsESet;
        this.cols = COLS_EDEFAULT.clone();
        this.colsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldCols, (Object)COLS_EDEFAULT, oldColsESet));
        }
    }

    @Override
    public boolean isSetCols() {
        return this.colsESet;
    }

    @Override
    public String getColsep() {
        return this.colsep;
    }

    @Override
    public void setColsep(String newColsep) {
        String oldColsep = this.colsep;
        this.colsep = newColsep;
        boolean oldColsepESet = this.colsepESet;
        this.colsepESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldColsep, (Object)this.colsep, !oldColsepESet));
        }
    }

    @Override
    public void unsetColsep() {
        String oldColsep = this.colsep;
        boolean oldColsepESet = this.colsepESet;
        this.colsep = "";
        this.colsepESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldColsep, (Object)"", oldColsepESet));
        }
    }

    @Override
    public boolean isSetColsep() {
        return this.colsepESet;
    }

    @Override
    public String getRowsep() {
        return this.rowsep;
    }

    @Override
    public void setRowsep(String newRowsep) {
        String oldRowsep = this.rowsep;
        this.rowsep = newRowsep;
        boolean oldRowsepESet = this.rowsepESet;
        this.rowsepESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldRowsep, (Object)this.rowsep, !oldRowsepESet));
        }
    }

    @Override
    public void unsetRowsep() {
        String oldRowsep = this.rowsep;
        boolean oldRowsepESet = this.rowsepESet;
        this.rowsep = "";
        this.rowsepESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldRowsep, (Object)"", oldRowsepESet));
        }
    }

    @Override
    public boolean isSetRowsep() {
        return this.rowsepESet;
    }

    @Override
    public EList<Colspec> getColspecs() {
        if (this.colspecs == null) {
            this.colspecs = new EObjectContainmentWithInverseEList(Colspec.class, (InternalEObject)this, 9, 4);
        }
        return this.colspecs;
    }

    @Override
    public Tbody getThead() {
        return this.thead;
    }

    public NotificationChain basicSetThead(Tbody newThead, NotificationChain msgs) {
        Tbody oldThead = this.thead;
        this.thead = newThead;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldThead, (Object)newThead);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setThead(Tbody newThead) {
        if (newThead != this.thead) {
            NotificationChain msgs = null;
            if (this.thead != null) {
                msgs = ((InternalEObject)this.thead).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newThead != null) {
                msgs = ((InternalEObject)newThead).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetThead(newThead, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newThead, (Object)newThead));
        }
    }

    @Override
    public Tbody getTfoot() {
        return this.tfoot;
    }

    public NotificationChain basicSetTfoot(Tbody newTfoot, NotificationChain msgs) {
        Tbody oldTfoot = this.tfoot;
        this.tfoot = newTfoot;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldTfoot, (Object)newTfoot);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTfoot(Tbody newTfoot) {
        if (newTfoot != this.tfoot) {
            NotificationChain msgs = null;
            if (this.tfoot != null) {
                msgs = ((InternalEObject)this.tfoot).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newTfoot != null) {
                msgs = ((InternalEObject)newTfoot).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetTfoot(newTfoot, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newTfoot, (Object)newTfoot));
        }
    }

    @Override
    public Tbody getTbody() {
        return this.tbody;
    }

    public NotificationChain basicSetTbody(Tbody newTbody, NotificationChain msgs) {
        Tbody oldTbody = this.tbody;
        this.tbody = newTbody;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldTbody, (Object)newTbody);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTbody(Tbody newTbody) {
        if (newTbody != this.tbody) {
            NotificationChain msgs = null;
            if (this.tbody != null) {
                msgs = ((InternalEObject)this.tbody).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newTbody != null) {
                msgs = ((InternalEObject)newTbody).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetTbody(newTbody, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newTbody, (Object)newTbody));
        }
    }

    @Override
    public IntegerDatatype getColsData() {
        return this.cols.clone();
    }

    @Override
    public void setColsData(IntegerDatatype newCols) {
        this.cols.setRadix((int)newCols.getRadix());
        this.cols.setNoOfDigits((int)newCols.getNoOfDigits());
        this.setCols(newCols.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTable((Table)otherEnd, msgs);
            }
            case 9: {
                return ((InternalEList)this.getColspecs()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetTable(null, msgs);
            }
            case 9: {
                return ((InternalEList)this.getColspecs()).basicRemove((Object)otherEnd, msgs);
            }
            case 10: {
                return this.basicSetThead(null, msgs);
            }
            case 11: {
                return this.basicSetTfoot(null, msgs);
            }
            case 12: {
                return this.basicSetTbody(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, Table.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTable();
            }
            case 5: {
                return this.getAlign();
            }
            case 6: {
                return this.getCols();
            }
            case 7: {
                return this.getColsep();
            }
            case 8: {
                return this.getRowsep();
            }
            case 9: {
                return this.getColspecs();
            }
            case 10: {
                return this.getThead();
            }
            case 11: {
                return this.getTfoot();
            }
            case 12: {
                return this.getTbody();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTable((Table)newValue);
                return;
            }
            case 5: {
                this.setAlign((AlignEnum)((Object)newValue));
                return;
            }
            case 6: {
                this.setCols((Integer)newValue);
                return;
            }
            case 7: {
                this.setColsep((String)newValue);
                return;
            }
            case 8: {
                this.setRowsep((String)newValue);
                return;
            }
            case 9: {
                this.getColspecs().clear();
                this.getColspecs().addAll((Collection)newValue);
                return;
            }
            case 10: {
                this.setThead((Tbody)newValue);
                return;
            }
            case 11: {
                this.setTfoot((Tbody)newValue);
                return;
            }
            case 12: {
                this.setTbody((Tbody)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setTable(null);
                return;
            }
            case 5: {
                this.unsetAlign();
                return;
            }
            case 6: {
                this.unsetCols();
                return;
            }
            case 7: {
                this.unsetColsep();
                return;
            }
            case 8: {
                this.unsetRowsep();
                return;
            }
            case 9: {
                this.getColspecs().clear();
                return;
            }
            case 10: {
                this.setThead(null);
                return;
            }
            case 11: {
                this.setTfoot(null);
                return;
            }
            case 12: {
                this.setTbody(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getTable() != null;
            }
            case 5: {
                return this.isSetAlign();
            }
            case 6: {
                return this.isSetCols();
            }
            case 7: {
                return this.isSetColsep();
            }
            case 8: {
                return this.isSetRowsep();
            }
            case 9: {
                return this.colspecs != null && !this.colspecs.isEmpty();
            }
            case 10: {
                return this.thead != null;
            }
            case 11: {
                return this.tfoot != null;
            }
            case 12: {
                return this.tbody != null;
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
        result.append(", cols: ");
        if (this.colsESet) {
            result.append(this.cols);
        } else {
            result.append("<unset>");
        }
        result.append(", colsep: ");
        if (this.colsepESet) {
            result.append(this.colsep);
        } else {
            result.append("<unset>");
        }
        result.append(", rowsep: ");
        if (this.rowsepESet) {
            result.append(this.rowsep);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

