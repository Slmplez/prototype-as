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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigurePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Graphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.GraphicFitEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.GraphicNotationEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.LGraphic;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.impl.EngineeringObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class GraphicImpl
extends EngineeringObjectImpl
implements Graphic {
    protected static final String EDIT_HEIGHT_EDEFAULT = "";
    protected String editHeight = "";
    protected boolean editHeightESet;
    protected static final String EDIT_WIDTH_EDEFAULT = "";
    protected String editWidth = "";
    protected boolean editWidthESet;
    protected static final GraphicFitEnum EDITFIT_EDEFAULT = GraphicFitEnum.AS_IS;
    protected GraphicFitEnum editfit = EDITFIT_EDEFAULT;
    protected boolean editfitESet;
    protected static final String EDITSCALE_EDEFAULT = "";
    protected String editscale = "";
    protected boolean editscaleESet;
    protected static final String FILENAME_EDEFAULT = "";
    protected String filename = "";
    protected boolean filenameESet;
    protected static final GraphicFitEnum FIT_EDEFAULT = GraphicFitEnum.AS_IS;
    protected GraphicFitEnum fit = FIT_EDEFAULT;
    protected boolean fitESet;
    protected static final String GENERATOR_EDEFAULT = "";
    protected String generator = "";
    protected boolean generatorESet;
    protected static final String HEIGHT_EDEFAULT = "";
    protected String height = "";
    protected boolean heightESet;
    protected static final GraphicFitEnum HTML_FIT_EDEFAULT = GraphicFitEnum.AS_IS;
    protected GraphicFitEnum htmlFit = HTML_FIT_EDEFAULT;
    protected boolean htmlFitESet;
    protected static final String HTML_HEIGHT_EDEFAULT = "";
    protected String htmlHeight = "";
    protected boolean htmlHeightESet;
    protected static final String HTML_SCALE_EDEFAULT = "";
    protected String htmlScale = "";
    protected boolean htmlScaleESet;
    protected static final String HTML_WIDTH_EDEFAULT = "";
    protected String htmlWidth = "";
    protected boolean htmlWidthESet;
    protected static final GraphicNotationEnum NOTATION_EDEFAULT = GraphicNotationEnum.EPS;
    protected GraphicNotationEnum notation = NOTATION_EDEFAULT;
    protected boolean notationESet;
    protected static final String SCALE_EDEFAULT = "";
    protected String scale = "";
    protected boolean scaleESet;
    protected static final String WIDTH_EDEFAULT = "";
    protected String width = "";
    protected boolean widthESet;

    protected GraphicImpl() {
    }

    protected EClass eStaticClass() {
        return FigurePackage.Literals.GRAPHIC;
    }

    public LGraphic getLGraphic() {
        if (this.eContainerFeatureID() != 8) {
            return null;
        }
        return (LGraphic)this.eContainer();
    }

    public NotificationChain basicSetLGraphic(LGraphic newLGraphic, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newLGraphic, 8, msgs);
        return msgs;
    }

    public void setLGraphic(LGraphic newLGraphic) {
        if (newLGraphic != this.eInternalContainer() || this.eContainerFeatureID() != 8 && newLGraphic != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newLGraphic)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newLGraphic != null) {
                msgs = ((InternalEObject)newLGraphic).eInverseAdd((InternalEObject)this, 5, LGraphic.class, msgs);
            }
            if ((msgs = this.basicSetLGraphic(newLGraphic, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newLGraphic, (Object)newLGraphic));
        }
    }

    public String getEditHeight() {
        return this.editHeight;
    }

    public void setEditHeight(String newEditHeight) {
        String oldEditHeight = this.editHeight;
        this.editHeight = newEditHeight;
        boolean oldEditHeightESet = this.editHeightESet;
        this.editHeightESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldEditHeight, (Object)this.editHeight, !oldEditHeightESet));
        }
    }

    public void unsetEditHeight() {
        String oldEditHeight = this.editHeight;
        boolean oldEditHeightESet = this.editHeightESet;
        this.editHeight = "";
        this.editHeightESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldEditHeight, (Object)"", oldEditHeightESet));
        }
    }

    public boolean isSetEditHeight() {
        return this.editHeightESet;
    }

    public String getEditWidth() {
        return this.editWidth;
    }

    public void setEditWidth(String newEditWidth) {
        String oldEditWidth = this.editWidth;
        this.editWidth = newEditWidth;
        boolean oldEditWidthESet = this.editWidthESet;
        this.editWidthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldEditWidth, (Object)this.editWidth, !oldEditWidthESet));
        }
    }

    public void unsetEditWidth() {
        String oldEditWidth = this.editWidth;
        boolean oldEditWidthESet = this.editWidthESet;
        this.editWidth = "";
        this.editWidthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldEditWidth, (Object)"", oldEditWidthESet));
        }
    }

    public boolean isSetEditWidth() {
        return this.editWidthESet;
    }

    public GraphicFitEnum getEditfit() {
        return this.editfit;
    }

    public void setEditfit(GraphicFitEnum newEditfit) {
        GraphicFitEnum oldEditfit = this.editfit;
        this.editfit = newEditfit == null ? EDITFIT_EDEFAULT : newEditfit;
        boolean oldEditfitESet = this.editfitESet;
        this.editfitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldEditfit, (Object)this.editfit, !oldEditfitESet));
        }
    }

    public void unsetEditfit() {
        GraphicFitEnum oldEditfit = this.editfit;
        boolean oldEditfitESet = this.editfitESet;
        this.editfit = EDITFIT_EDEFAULT;
        this.editfitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldEditfit, (Object)EDITFIT_EDEFAULT, oldEditfitESet));
        }
    }

    public boolean isSetEditfit() {
        return this.editfitESet;
    }

    public String getEditscale() {
        return this.editscale;
    }

    public void setEditscale(String newEditscale) {
        String oldEditscale = this.editscale;
        this.editscale = newEditscale;
        boolean oldEditscaleESet = this.editscaleESet;
        this.editscaleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldEditscale, (Object)this.editscale, !oldEditscaleESet));
        }
    }

    public void unsetEditscale() {
        String oldEditscale = this.editscale;
        boolean oldEditscaleESet = this.editscaleESet;
        this.editscale = "";
        this.editscaleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldEditscale, (Object)"", oldEditscaleESet));
        }
    }

    public boolean isSetEditscale() {
        return this.editscaleESet;
    }

    public String getFilename() {
        return this.filename;
    }

    public void setFilename(String newFilename) {
        String oldFilename = this.filename;
        this.filename = newFilename;
        boolean oldFilenameESet = this.filenameESet;
        this.filenameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldFilename, (Object)this.filename, !oldFilenameESet));
        }
    }

    public void unsetFilename() {
        String oldFilename = this.filename;
        boolean oldFilenameESet = this.filenameESet;
        this.filename = "";
        this.filenameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldFilename, (Object)"", oldFilenameESet));
        }
    }

    public boolean isSetFilename() {
        return this.filenameESet;
    }

    public GraphicFitEnum getFit() {
        return this.fit;
    }

    public void setFit(GraphicFitEnum newFit) {
        GraphicFitEnum oldFit = this.fit;
        this.fit = newFit == null ? FIT_EDEFAULT : newFit;
        boolean oldFitESet = this.fitESet;
        this.fitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldFit, (Object)this.fit, !oldFitESet));
        }
    }

    public void unsetFit() {
        GraphicFitEnum oldFit = this.fit;
        boolean oldFitESet = this.fitESet;
        this.fit = FIT_EDEFAULT;
        this.fitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldFit, (Object)FIT_EDEFAULT, oldFitESet));
        }
    }

    public boolean isSetFit() {
        return this.fitESet;
    }

    public String getGenerator() {
        return this.generator;
    }

    public void setGenerator(String newGenerator) {
        String oldGenerator = this.generator;
        this.generator = newGenerator;
        boolean oldGeneratorESet = this.generatorESet;
        this.generatorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldGenerator, (Object)this.generator, !oldGeneratorESet));
        }
    }

    public void unsetGenerator() {
        String oldGenerator = this.generator;
        boolean oldGeneratorESet = this.generatorESet;
        this.generator = "";
        this.generatorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, (Object)oldGenerator, (Object)"", oldGeneratorESet));
        }
    }

    public boolean isSetGenerator() {
        return this.generatorESet;
    }

    public String getHeight() {
        return this.height;
    }

    public void setHeight(String newHeight) {
        String oldHeight = this.height;
        this.height = newHeight;
        boolean oldHeightESet = this.heightESet;
        this.heightESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldHeight, (Object)this.height, !oldHeightESet));
        }
    }

    public void unsetHeight() {
        String oldHeight = this.height;
        boolean oldHeightESet = this.heightESet;
        this.height = "";
        this.heightESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 16, (Object)oldHeight, (Object)"", oldHeightESet));
        }
    }

    public boolean isSetHeight() {
        return this.heightESet;
    }

    public GraphicFitEnum getHtmlFit() {
        return this.htmlFit;
    }

    public void setHtmlFit(GraphicFitEnum newHtmlFit) {
        GraphicFitEnum oldHtmlFit = this.htmlFit;
        this.htmlFit = newHtmlFit == null ? HTML_FIT_EDEFAULT : newHtmlFit;
        boolean oldHtmlFitESet = this.htmlFitESet;
        this.htmlFitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldHtmlFit, (Object)this.htmlFit, !oldHtmlFitESet));
        }
    }

    public void unsetHtmlFit() {
        GraphicFitEnum oldHtmlFit = this.htmlFit;
        boolean oldHtmlFitESet = this.htmlFitESet;
        this.htmlFit = HTML_FIT_EDEFAULT;
        this.htmlFitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldHtmlFit, (Object)HTML_FIT_EDEFAULT, oldHtmlFitESet));
        }
    }

    public boolean isSetHtmlFit() {
        return this.htmlFitESet;
    }

    public String getHtmlHeight() {
        return this.htmlHeight;
    }

    public void setHtmlHeight(String newHtmlHeight) {
        String oldHtmlHeight = this.htmlHeight;
        this.htmlHeight = newHtmlHeight;
        boolean oldHtmlHeightESet = this.htmlHeightESet;
        this.htmlHeightESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldHtmlHeight, (Object)this.htmlHeight, !oldHtmlHeightESet));
        }
    }

    public void unsetHtmlHeight() {
        String oldHtmlHeight = this.htmlHeight;
        boolean oldHtmlHeightESet = this.htmlHeightESet;
        this.htmlHeight = "";
        this.htmlHeightESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldHtmlHeight, (Object)"", oldHtmlHeightESet));
        }
    }

    public boolean isSetHtmlHeight() {
        return this.htmlHeightESet;
    }

    public String getHtmlScale() {
        return this.htmlScale;
    }

    public void setHtmlScale(String newHtmlScale) {
        String oldHtmlScale = this.htmlScale;
        this.htmlScale = newHtmlScale;
        boolean oldHtmlScaleESet = this.htmlScaleESet;
        this.htmlScaleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldHtmlScale, (Object)this.htmlScale, !oldHtmlScaleESet));
        }
    }

    public void unsetHtmlScale() {
        String oldHtmlScale = this.htmlScale;
        boolean oldHtmlScaleESet = this.htmlScaleESet;
        this.htmlScale = "";
        this.htmlScaleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldHtmlScale, (Object)"", oldHtmlScaleESet));
        }
    }

    public boolean isSetHtmlScale() {
        return this.htmlScaleESet;
    }

    public String getHtmlWidth() {
        return this.htmlWidth;
    }

    public void setHtmlWidth(String newHtmlWidth) {
        String oldHtmlWidth = this.htmlWidth;
        this.htmlWidth = newHtmlWidth;
        boolean oldHtmlWidthESet = this.htmlWidthESet;
        this.htmlWidthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldHtmlWidth, (Object)this.htmlWidth, !oldHtmlWidthESet));
        }
    }

    public void unsetHtmlWidth() {
        String oldHtmlWidth = this.htmlWidth;
        boolean oldHtmlWidthESet = this.htmlWidthESet;
        this.htmlWidth = "";
        this.htmlWidthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldHtmlWidth, (Object)"", oldHtmlWidthESet));
        }
    }

    public boolean isSetHtmlWidth() {
        return this.htmlWidthESet;
    }

    public GraphicNotationEnum getNotation() {
        return this.notation;
    }

    public void setNotation(GraphicNotationEnum newNotation) {
        GraphicNotationEnum oldNotation = this.notation;
        this.notation = newNotation == null ? NOTATION_EDEFAULT : newNotation;
        boolean oldNotationESet = this.notationESet;
        this.notationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldNotation, (Object)this.notation, !oldNotationESet));
        }
    }

    public void unsetNotation() {
        GraphicNotationEnum oldNotation = this.notation;
        boolean oldNotationESet = this.notationESet;
        this.notation = NOTATION_EDEFAULT;
        this.notationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldNotation, (Object)NOTATION_EDEFAULT, oldNotationESet));
        }
    }

    public boolean isSetNotation() {
        return this.notationESet;
    }

    public String getScale() {
        return this.scale;
    }

    public void setScale(String newScale) {
        String oldScale = this.scale;
        this.scale = newScale;
        boolean oldScaleESet = this.scaleESet;
        this.scaleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldScale, (Object)this.scale, !oldScaleESet));
        }
    }

    public void unsetScale() {
        String oldScale = this.scale;
        boolean oldScaleESet = this.scaleESet;
        this.scale = "";
        this.scaleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldScale, (Object)"", oldScaleESet));
        }
    }

    public boolean isSetScale() {
        return this.scaleESet;
    }

    public String getWidth() {
        return this.width;
    }

    public void setWidth(String newWidth) {
        String oldWidth = this.width;
        this.width = newWidth;
        boolean oldWidthESet = this.widthESet;
        this.widthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldWidth, (Object)this.width, !oldWidthESet));
        }
    }

    public void unsetWidth() {
        String oldWidth = this.width;
        boolean oldWidthESet = this.widthESet;
        this.width = "";
        this.widthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldWidth, (Object)"", oldWidthESet));
        }
    }

    public boolean isSetWidth() {
        return this.widthESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetLGraphic((LGraphic)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return this.basicSetLGraphic(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 8: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, LGraphic.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getLGraphic();
            }
            case 9: {
                return this.getEditHeight();
            }
            case 10: {
                return this.getEditWidth();
            }
            case 11: {
                return this.getEditfit();
            }
            case 12: {
                return this.getEditscale();
            }
            case 13: {
                return this.getFilename();
            }
            case 14: {
                return this.getFit();
            }
            case 15: {
                return this.getGenerator();
            }
            case 16: {
                return this.getHeight();
            }
            case 17: {
                return this.getHtmlFit();
            }
            case 18: {
                return this.getHtmlHeight();
            }
            case 19: {
                return this.getHtmlScale();
            }
            case 20: {
                return this.getHtmlWidth();
            }
            case 21: {
                return this.getNotation();
            }
            case 22: {
                return this.getScale();
            }
            case 23: {
                return this.getWidth();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setLGraphic((LGraphic)newValue);
                return;
            }
            case 9: {
                this.setEditHeight((String)newValue);
                return;
            }
            case 10: {
                this.setEditWidth((String)newValue);
                return;
            }
            case 11: {
                this.setEditfit((GraphicFitEnum)((Object)newValue));
                return;
            }
            case 12: {
                this.setEditscale((String)newValue);
                return;
            }
            case 13: {
                this.setFilename((String)newValue);
                return;
            }
            case 14: {
                this.setFit((GraphicFitEnum)((Object)newValue));
                return;
            }
            case 15: {
                this.setGenerator((String)newValue);
                return;
            }
            case 16: {
                this.setHeight((String)newValue);
                return;
            }
            case 17: {
                this.setHtmlFit((GraphicFitEnum)((Object)newValue));
                return;
            }
            case 18: {
                this.setHtmlHeight((String)newValue);
                return;
            }
            case 19: {
                this.setHtmlScale((String)newValue);
                return;
            }
            case 20: {
                this.setHtmlWidth((String)newValue);
                return;
            }
            case 21: {
                this.setNotation((GraphicNotationEnum)((Object)newValue));
                return;
            }
            case 22: {
                this.setScale((String)newValue);
                return;
            }
            case 23: {
                this.setWidth((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.setLGraphic(null);
                return;
            }
            case 9: {
                this.unsetEditHeight();
                return;
            }
            case 10: {
                this.unsetEditWidth();
                return;
            }
            case 11: {
                this.unsetEditfit();
                return;
            }
            case 12: {
                this.unsetEditscale();
                return;
            }
            case 13: {
                this.unsetFilename();
                return;
            }
            case 14: {
                this.unsetFit();
                return;
            }
            case 15: {
                this.unsetGenerator();
                return;
            }
            case 16: {
                this.unsetHeight();
                return;
            }
            case 17: {
                this.unsetHtmlFit();
                return;
            }
            case 18: {
                this.unsetHtmlHeight();
                return;
            }
            case 19: {
                this.unsetHtmlScale();
                return;
            }
            case 20: {
                this.unsetHtmlWidth();
                return;
            }
            case 21: {
                this.unsetNotation();
                return;
            }
            case 22: {
                this.unsetScale();
                return;
            }
            case 23: {
                this.unsetWidth();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.getLGraphic() != null;
            }
            case 9: {
                return this.isSetEditHeight();
            }
            case 10: {
                return this.isSetEditWidth();
            }
            case 11: {
                return this.isSetEditfit();
            }
            case 12: {
                return this.isSetEditscale();
            }
            case 13: {
                return this.isSetFilename();
            }
            case 14: {
                return this.isSetFit();
            }
            case 15: {
                return this.isSetGenerator();
            }
            case 16: {
                return this.isSetHeight();
            }
            case 17: {
                return this.isSetHtmlFit();
            }
            case 18: {
                return this.isSetHtmlHeight();
            }
            case 19: {
                return this.isSetHtmlScale();
            }
            case 20: {
                return this.isSetHtmlWidth();
            }
            case 21: {
                return this.isSetNotation();
            }
            case 22: {
                return this.isSetScale();
            }
            case 23: {
                return this.isSetWidth();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (editHeight: ");
        if (this.editHeightESet) {
            result.append(this.editHeight);
        } else {
            result.append("<unset>");
        }
        result.append(", editWidth: ");
        if (this.editWidthESet) {
            result.append(this.editWidth);
        } else {
            result.append("<unset>");
        }
        result.append(", editfit: ");
        if (this.editfitESet) {
            result.append((Object)this.editfit);
        } else {
            result.append("<unset>");
        }
        result.append(", editscale: ");
        if (this.editscaleESet) {
            result.append(this.editscale);
        } else {
            result.append("<unset>");
        }
        result.append(", filename: ");
        if (this.filenameESet) {
            result.append(this.filename);
        } else {
            result.append("<unset>");
        }
        result.append(", fit: ");
        if (this.fitESet) {
            result.append((Object)this.fit);
        } else {
            result.append("<unset>");
        }
        result.append(", generator: ");
        if (this.generatorESet) {
            result.append(this.generator);
        } else {
            result.append("<unset>");
        }
        result.append(", height: ");
        if (this.heightESet) {
            result.append(this.height);
        } else {
            result.append("<unset>");
        }
        result.append(", htmlFit: ");
        if (this.htmlFitESet) {
            result.append((Object)this.htmlFit);
        } else {
            result.append("<unset>");
        }
        result.append(", htmlHeight: ");
        if (this.htmlHeightESet) {
            result.append(this.htmlHeight);
        } else {
            result.append("<unset>");
        }
        result.append(", htmlScale: ");
        if (this.htmlScaleESet) {
            result.append(this.htmlScale);
        } else {
            result.append("<unset>");
        }
        result.append(", htmlWidth: ");
        if (this.htmlWidthESet) {
            result.append(this.htmlWidth);
        } else {
            result.append("<unset>");
        }
        result.append(", notation: ");
        if (this.notationESet) {
            result.append((Object)this.notation);
        } else {
            result.append("<unset>");
        }
        result.append(", scale: ");
        if (this.scaleESet) {
            result.append(this.scale);
        } else {
            result.append("<unset>");
        }
        result.append(", width: ");
        if (this.widthESet) {
            result.append(this.width);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

