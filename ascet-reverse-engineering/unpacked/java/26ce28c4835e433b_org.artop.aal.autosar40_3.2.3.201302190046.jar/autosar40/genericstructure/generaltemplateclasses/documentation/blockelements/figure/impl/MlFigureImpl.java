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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Caption;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigurePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.LGraphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.MlFigure;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.FrameEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.PgwideEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginateableImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageVerbatim;
import autosar40.genericstructure.varianthandling.VariationPoint;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MlFigureImpl
extends PaginateableImpl
implements MlFigure {
    protected Caption figureCaption;
    protected static final FrameEnum FRAME_EDEFAULT = FrameEnum.ALL;
    protected FrameEnum frame = FRAME_EDEFAULT;
    protected boolean frameESet;
    protected static final String HELP_ENTRY_EDEFAULT = "";
    protected String helpEntry = "";
    protected boolean helpEntryESet;
    protected static final PgwideEnum PGWIDE_EDEFAULT = PgwideEnum.NO_PGWIDE;
    protected PgwideEnum pgwide = PGWIDE_EDEFAULT;
    protected boolean pgwideESet;
    protected EList<LGraphic> lGraphics;
    protected MultiLanguageVerbatim verbatim;
    protected VariationPoint variationPoint;

    protected MlFigureImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FigurePackage.Literals.ML_FIGURE;
    }

    @Override
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

    @Override
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
                msgs = ((InternalEObject)newDocumentationBlock).eInverseAdd((InternalEObject)this, 11, DocumentationBlock.class, msgs);
            }
            if ((msgs = this.basicSetDocumentationBlock(newDocumentationBlock, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newDocumentationBlock, (Object)newDocumentationBlock));
        }
    }

    @Override
    public Caption getFigureCaption() {
        return this.figureCaption;
    }

    public NotificationChain basicSetFigureCaption(Caption newFigureCaption, NotificationChain msgs) {
        Caption oldFigureCaption = this.figureCaption;
        this.figureCaption = newFigureCaption;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldFigureCaption, (Object)newFigureCaption);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFigureCaption(Caption newFigureCaption) {
        if (newFigureCaption != this.figureCaption) {
            NotificationChain msgs = null;
            if (this.figureCaption != null) {
                msgs = ((InternalEObject)this.figureCaption).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newFigureCaption != null) {
                msgs = ((InternalEObject)newFigureCaption).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetFigureCaption(newFigureCaption, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newFigureCaption, (Object)newFigureCaption));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldFrame, (Object)this.frame, !oldFrameESet));
        }
    }

    @Override
    public void unsetFrame() {
        FrameEnum oldFrame = this.frame;
        boolean oldFrameESet = this.frameESet;
        this.frame = FRAME_EDEFAULT;
        this.frameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldFrame, (Object)FRAME_EDEFAULT, oldFrameESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldHelpEntry, (Object)this.helpEntry, !oldHelpEntryESet));
        }
    }

    @Override
    public void unsetHelpEntry() {
        String oldHelpEntry = this.helpEntry;
        boolean oldHelpEntryESet = this.helpEntryESet;
        this.helpEntry = HELP_ENTRY_EDEFAULT;
        this.helpEntryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldHelpEntry, (Object)HELP_ENTRY_EDEFAULT, oldHelpEntryESet));
        }
    }

    @Override
    public boolean isSetHelpEntry() {
        return this.helpEntryESet;
    }

    @Override
    public PgwideEnum getPgwide() {
        return this.pgwide;
    }

    @Override
    public void setPgwide(PgwideEnum newPgwide) {
        PgwideEnum oldPgwide = this.pgwide;
        this.pgwide = newPgwide == null ? PGWIDE_EDEFAULT : newPgwide;
        boolean oldPgwideESet = this.pgwideESet;
        this.pgwideESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldPgwide, (Object)this.pgwide, !oldPgwideESet));
        }
    }

    @Override
    public void unsetPgwide() {
        PgwideEnum oldPgwide = this.pgwide;
        boolean oldPgwideESet = this.pgwideESet;
        this.pgwide = PGWIDE_EDEFAULT;
        this.pgwideESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldPgwide, (Object)PGWIDE_EDEFAULT, oldPgwideESet));
        }
    }

    @Override
    public boolean isSetPgwide() {
        return this.pgwideESet;
    }

    @Override
    public EList<LGraphic> getLGraphics() {
        if (this.lGraphics == null) {
            this.lGraphics = new EObjectContainmentEList(LGraphic.class, (InternalEObject)this, 13);
        }
        return this.lGraphics;
    }

    @Override
    public MultiLanguageVerbatim getVerbatim() {
        return this.verbatim;
    }

    public NotificationChain basicSetVerbatim(MultiLanguageVerbatim newVerbatim, NotificationChain msgs) {
        MultiLanguageVerbatim oldVerbatim = this.verbatim;
        this.verbatim = newVerbatim;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldVerbatim, (Object)newVerbatim);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVerbatim(MultiLanguageVerbatim newVerbatim) {
        if (newVerbatim != this.verbatim) {
            NotificationChain msgs = null;
            if (this.verbatim != null) {
                msgs = ((InternalEObject)this.verbatim).eInverseRemove((InternalEObject)this, -15, null, msgs);
            }
            if (newVerbatim != null) {
                msgs = ((InternalEObject)newVerbatim).eInverseAdd((InternalEObject)this, -15, null, msgs);
            }
            if ((msgs = this.basicSetVerbatim(newVerbatim, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)newVerbatim, (Object)newVerbatim));
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
            case 9: {
                return this.basicSetFigureCaption(null, msgs);
            }
            case 13: {
                return ((InternalEList)this.getLGraphics()).basicRemove((Object)otherEnd, msgs);
            }
            case 14: {
                return this.basicSetVerbatim(null, msgs);
            }
            case 15: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 8: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 11, DocumentationBlock.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getDocumentationBlock();
            }
            case 9: {
                return this.getFigureCaption();
            }
            case 10: {
                return this.getFrame();
            }
            case 11: {
                return this.getHelpEntry();
            }
            case 12: {
                return this.getPgwide();
            }
            case 13: {
                return this.getLGraphics();
            }
            case 14: {
                return this.getVerbatim();
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
                this.setDocumentationBlock((DocumentationBlock)newValue);
                return;
            }
            case 9: {
                this.setFigureCaption((Caption)newValue);
                return;
            }
            case 10: {
                this.setFrame((FrameEnum)((Object)newValue));
                return;
            }
            case 11: {
                this.setHelpEntry((String)newValue);
                return;
            }
            case 12: {
                this.setPgwide((PgwideEnum)((Object)newValue));
                return;
            }
            case 13: {
                this.getLGraphics().clear();
                this.getLGraphics().addAll((Collection)newValue);
                return;
            }
            case 14: {
                this.setVerbatim((MultiLanguageVerbatim)newValue);
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
                this.setDocumentationBlock(null);
                return;
            }
            case 9: {
                this.setFigureCaption(null);
                return;
            }
            case 10: {
                this.unsetFrame();
                return;
            }
            case 11: {
                this.unsetHelpEntry();
                return;
            }
            case 12: {
                this.unsetPgwide();
                return;
            }
            case 13: {
                this.getLGraphics().clear();
                return;
            }
            case 14: {
                this.setVerbatim(null);
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
                return this.getDocumentationBlock() != null;
            }
            case 9: {
                return this.figureCaption != null;
            }
            case 10: {
                return this.isSetFrame();
            }
            case 11: {
                return this.isSetHelpEntry();
            }
            case 12: {
                return this.isSetPgwide();
            }
            case 13: {
                return this.lGraphics != null && !this.lGraphics.isEmpty();
            }
            case 14: {
                return this.verbatim != null;
            }
            case 15: {
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
        result.append(" (frame: ");
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
        result.append(", pgwide: ");
        if (this.pgwideESet) {
            result.append((Object)this.pgwide);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

