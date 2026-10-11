/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
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

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Caption;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.FloatEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.FrameEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetablePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OrientEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Table;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tgroup;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginateableImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContent;
import autosar40.genericstructure.varianthandling.VariationPoint;
import java.util.Collection;
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
public class TableImpl
extends PaginateableImpl
implements Table {
    protected static final String COLSEP_EDEFAULT = "";
    protected String colsep = "";
    protected boolean colsepESet;
    protected static final FloatEnum FLOAT_EDEFAULT = FloatEnum.FLOAT;
    protected FloatEnum float_ = FLOAT_EDEFAULT;
    protected boolean floatESet;
    protected static final FrameEnum FRAME_EDEFAULT = FrameEnum.ALL;
    protected FrameEnum frame = FRAME_EDEFAULT;
    protected boolean frameESet;
    protected static final String HELP_ENTRY_EDEFAULT = "";
    protected String helpEntry = "";
    protected boolean helpEntryESet;
    protected static final OrientEnum ORIENT_EDEFAULT = OrientEnum.LAND;
    protected OrientEnum orient = ORIENT_EDEFAULT;
    protected boolean orientESet;
    protected static final String PGWIDE_EDEFAULT = "";
    protected String pgwide = "";
    protected boolean pgwideESet;
    protected static final String ROWSEP_EDEFAULT = "";
    protected String rowsep = "";
    protected boolean rowsepESet;
    protected static final String TABSTYLE_EDEFAULT = "";
    protected String tabstyle = "";
    protected boolean tabstyleESet;
    protected Caption tableCaption;
    protected EList<Tgroup> tgroups;
    protected VariationPoint variationPoint;

    protected TableImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return OasisexchangetablePackage.Literals.TABLE;
    }

    @Override
    public TopicContent getTopicContent() {
        if (this.eContainerFeatureID() != 8) {
            return null;
        }
        return (TopicContent)this.eContainer();
    }

    public NotificationChain basicSetTopicContent(TopicContent newTopicContent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTopicContent, 8, msgs);
        return msgs;
    }

    @Override
    public void setTopicContent(TopicContent newTopicContent) {
        if (newTopicContent != this.eInternalContainer() || this.eContainerFeatureID() != 8 && newTopicContent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTopicContent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTopicContent != null) {
                msgs = ((InternalEObject)newTopicContent).eInverseAdd((InternalEObject)this, 5, TopicContent.class, msgs);
            }
            if ((msgs = this.basicSetTopicContent(newTopicContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newTopicContent, (Object)newTopicContent));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldColsep, (Object)this.colsep, !oldColsepESet));
        }
    }

    @Override
    public void unsetColsep() {
        String oldColsep = this.colsep;
        boolean oldColsepESet = this.colsepESet;
        this.colsep = "";
        this.colsepESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldColsep, (Object)"", oldColsepESet));
        }
    }

    @Override
    public boolean isSetColsep() {
        return this.colsepESet;
    }

    @Override
    public FloatEnum getFloat() {
        return this.float_;
    }

    @Override
    public void setFloat(FloatEnum newFloat) {
        FloatEnum oldFloat = this.float_;
        this.float_ = newFloat == null ? FLOAT_EDEFAULT : newFloat;
        boolean oldFloatESet = this.floatESet;
        this.floatESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldFloat, (Object)this.float_, !oldFloatESet));
        }
    }

    @Override
    public void unsetFloat() {
        FloatEnum oldFloat = this.float_;
        boolean oldFloatESet = this.floatESet;
        this.float_ = FLOAT_EDEFAULT;
        this.floatESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldFloat, (Object)FLOAT_EDEFAULT, oldFloatESet));
        }
    }

    @Override
    public boolean isSetFloat() {
        return this.floatESet;
    }

    @Override
    public FrameEnum getFrame() {
        return this.frame;
    }

    @Override
    public void setFrame(FrameEnum newFrame) {
        FrameEnum oldFrame = this.frame;
        this.frame = newFrame == null ? FRAME_EDEFAULT : newFrame;
        boolean oldFrameESet = this.frameESet;
        this.frameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldFrame, (Object)this.frame, !oldFrameESet));
        }
    }

    @Override
    public void unsetFrame() {
        FrameEnum oldFrame = this.frame;
        boolean oldFrameESet = this.frameESet;
        this.frame = FRAME_EDEFAULT;
        this.frameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldFrame, (Object)FRAME_EDEFAULT, oldFrameESet));
        }
    }

    @Override
    public boolean isSetFrame() {
        return this.frameESet;
    }

    @Override
    public String getHelpEntry() {
        return this.helpEntry;
    }

    @Override
    public void setHelpEntry(String newHelpEntry) {
        String oldHelpEntry = this.helpEntry;
        this.helpEntry = newHelpEntry;
        boolean oldHelpEntryESet = this.helpEntryESet;
        this.helpEntryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldHelpEntry, (Object)this.helpEntry, !oldHelpEntryESet));
        }
    }

    @Override
    public void unsetHelpEntry() {
        String oldHelpEntry = this.helpEntry;
        boolean oldHelpEntryESet = this.helpEntryESet;
        this.helpEntry = "";
        this.helpEntryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldHelpEntry, (Object)"", oldHelpEntryESet));
        }
    }

    @Override
    public boolean isSetHelpEntry() {
        return this.helpEntryESet;
    }

    @Override
    public OrientEnum getOrient() {
        return this.orient;
    }

    @Override
    public void setOrient(OrientEnum newOrient) {
        OrientEnum oldOrient = this.orient;
        this.orient = newOrient == null ? ORIENT_EDEFAULT : newOrient;
        boolean oldOrientESet = this.orientESet;
        this.orientESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldOrient, (Object)this.orient, !oldOrientESet));
        }
    }

    @Override
    public void unsetOrient() {
        OrientEnum oldOrient = this.orient;
        boolean oldOrientESet = this.orientESet;
        this.orient = ORIENT_EDEFAULT;
        this.orientESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldOrient, (Object)ORIENT_EDEFAULT, oldOrientESet));
        }
    }

    @Override
    public boolean isSetOrient() {
        return this.orientESet;
    }

    @Override
    public String getPgwide() {
        return this.pgwide;
    }

    @Override
    public void setPgwide(String newPgwide) {
        String oldPgwide = this.pgwide;
        this.pgwide = newPgwide;
        boolean oldPgwideESet = this.pgwideESet;
        this.pgwideESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldPgwide, (Object)this.pgwide, !oldPgwideESet));
        }
    }

    @Override
    public void unsetPgwide() {
        String oldPgwide = this.pgwide;
        boolean oldPgwideESet = this.pgwideESet;
        this.pgwide = "";
        this.pgwideESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldPgwide, (Object)"", oldPgwideESet));
        }
    }

    @Override
    public boolean isSetPgwide() {
        return this.pgwideESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldRowsep, (Object)this.rowsep, !oldRowsepESet));
        }
    }

    @Override
    public void unsetRowsep() {
        String oldRowsep = this.rowsep;
        boolean oldRowsepESet = this.rowsepESet;
        this.rowsep = "";
        this.rowsepESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, (Object)oldRowsep, (Object)"", oldRowsepESet));
        }
    }

    @Override
    public boolean isSetRowsep() {
        return this.rowsepESet;
    }

    @Override
    public String getTabstyle() {
        return this.tabstyle;
    }

    @Override
    public void setTabstyle(String newTabstyle) {
        String oldTabstyle = this.tabstyle;
        this.tabstyle = newTabstyle;
        boolean oldTabstyleESet = this.tabstyleESet;
        this.tabstyleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldTabstyle, (Object)this.tabstyle, !oldTabstyleESet));
        }
    }

    @Override
    public void unsetTabstyle() {
        String oldTabstyle = this.tabstyle;
        boolean oldTabstyleESet = this.tabstyleESet;
        this.tabstyle = "";
        this.tabstyleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 16, (Object)oldTabstyle, (Object)"", oldTabstyleESet));
        }
    }

    @Override
    public boolean isSetTabstyle() {
        return this.tabstyleESet;
    }

    @Override
    public Caption getTableCaption() {
        return this.tableCaption;
    }

    public NotificationChain basicSetTableCaption(Caption newTableCaption, NotificationChain msgs) {
        Caption oldTableCaption = this.tableCaption;
        this.tableCaption = newTableCaption;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldTableCaption, (Object)newTableCaption);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTableCaption(Caption newTableCaption) {
        if (newTableCaption != this.tableCaption) {
            NotificationChain msgs = null;
            if (this.tableCaption != null) {
                msgs = ((InternalEObject)this.tableCaption).eInverseRemove((InternalEObject)this, -18, null, msgs);
            }
            if (newTableCaption != null) {
                msgs = ((InternalEObject)newTableCaption).eInverseAdd((InternalEObject)this, -18, null, msgs);
            }
            if ((msgs = this.basicSetTableCaption(newTableCaption, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newTableCaption, (Object)newTableCaption));
        }
    }

    @Override
    public EList<Tgroup> getTgroups() {
        if (this.tgroups == null) {
            this.tgroups = new EObjectContainmentWithInverseEList(Tgroup.class, (InternalEObject)this, 18, 4);
        }
        return this.tgroups;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTopicContent((TopicContent)otherEnd, msgs);
            }
            case 18: {
                return ((InternalEList)this.getTgroups()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return this.basicSetTopicContent(null, msgs);
            }
            case 17: {
                return this.basicSetTableCaption(null, msgs);
            }
            case 18: {
                return ((InternalEList)this.getTgroups()).basicRemove((Object)otherEnd, msgs);
            }
            case 19: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 8: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, TopicContent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getTopicContent();
            }
            case 9: {
                return this.getColsep();
            }
            case 10: {
                return this.getFloat();
            }
            case 11: {
                return this.getFrame();
            }
            case 12: {
                return this.getHelpEntry();
            }
            case 13: {
                return this.getOrient();
            }
            case 14: {
                return this.getPgwide();
            }
            case 15: {
                return this.getRowsep();
            }
            case 16: {
                return this.getTabstyle();
            }
            case 17: {
                return this.getTableCaption();
            }
            case 18: {
                return this.getTgroups();
            }
            case 19: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setTopicContent((TopicContent)newValue);
                return;
            }
            case 9: {
                this.setColsep((String)newValue);
                return;
            }
            case 10: {
                this.setFloat((FloatEnum)((Object)newValue));
                return;
            }
            case 11: {
                this.setFrame((FrameEnum)((Object)newValue));
                return;
            }
            case 12: {
                this.setHelpEntry((String)newValue);
                return;
            }
            case 13: {
                this.setOrient((OrientEnum)((Object)newValue));
                return;
            }
            case 14: {
                this.setPgwide((String)newValue);
                return;
            }
            case 15: {
                this.setRowsep((String)newValue);
                return;
            }
            case 16: {
                this.setTabstyle((String)newValue);
                return;
            }
            case 17: {
                this.setTableCaption((Caption)newValue);
                return;
            }
            case 18: {
                this.getTgroups().clear();
                this.getTgroups().addAll((Collection)newValue);
                return;
            }
            case 19: {
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
                this.setTopicContent(null);
                return;
            }
            case 9: {
                this.unsetColsep();
                return;
            }
            case 10: {
                this.unsetFloat();
                return;
            }
            case 11: {
                this.unsetFrame();
                return;
            }
            case 12: {
                this.unsetHelpEntry();
                return;
            }
            case 13: {
                this.unsetOrient();
                return;
            }
            case 14: {
                this.unsetPgwide();
                return;
            }
            case 15: {
                this.unsetRowsep();
                return;
            }
            case 16: {
                this.unsetTabstyle();
                return;
            }
            case 17: {
                this.setTableCaption(null);
                return;
            }
            case 18: {
                this.getTgroups().clear();
                return;
            }
            case 19: {
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
                return this.getTopicContent() != null;
            }
            case 9: {
                return this.isSetColsep();
            }
            case 10: {
                return this.isSetFloat();
            }
            case 11: {
                return this.isSetFrame();
            }
            case 12: {
                return this.isSetHelpEntry();
            }
            case 13: {
                return this.isSetOrient();
            }
            case 14: {
                return this.isSetPgwide();
            }
            case 15: {
                return this.isSetRowsep();
            }
            case 16: {
                return this.isSetTabstyle();
            }
            case 17: {
                return this.tableCaption != null;
            }
            case 18: {
                return this.tgroups != null && !this.tgroups.isEmpty();
            }
            case 19: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (colsep: ");
        if (this.colsepESet) {
            result.append(this.colsep);
        } else {
            result.append("<unset>");
        }
        result.append(", float: ");
        if (this.floatESet) {
            result.append((Object)this.float_);
        } else {
            result.append("<unset>");
        }
        result.append(", frame: ");
        if (this.frameESet) {
            result.append((Object)this.frame);
        } else {
            result.append("<unset>");
        }
        result.append(", helpEntry: ");
        if (this.helpEntryESet) {
            result.append(this.helpEntry);
        } else {
            result.append("<unset>");
        }
        result.append(", orient: ");
        if (this.orientESet) {
            result.append((Object)this.orient);
        } else {
            result.append("<unset>");
        }
        result.append(", pgwide: ");
        if (this.pgwideESet) {
            result.append(this.pgwide);
        } else {
            result.append("<unset>");
        }
        result.append(", rowsep: ");
        if (this.rowsepESet) {
            result.append(this.rowsep);
        } else {
            result.append("<unset>");
        }
        result.append(", tabstyle: ");
        if (this.tabstyleESet) {
            result.append(this.tabstyle);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

