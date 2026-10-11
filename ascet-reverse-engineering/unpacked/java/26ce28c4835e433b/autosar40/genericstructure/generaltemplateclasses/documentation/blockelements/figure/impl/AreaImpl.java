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

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Area;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.AreaEnumNohref;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.AreaEnumShape;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigurePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class AreaImpl
extends ARObjectImpl
implements Area {
    protected static final String ACCESSKEY_EDEFAULT = "";
    protected String accesskey = "";
    protected boolean accesskeyESet;
    protected static final String ALT_EDEFAULT = "";
    protected String alt = "";
    protected boolean altESet;
    protected static final String CLASS_EDEFAULT = "";
    protected String class_ = "";
    protected boolean classESet;
    protected static final String COORDS_EDEFAULT = "";
    protected String coords = "";
    protected boolean coordsESet;
    protected static final String HREF_EDEFAULT = "";
    protected String href = "";
    protected boolean hrefESet;
    protected static final AreaEnumNohref NOHREF_EDEFAULT = AreaEnumNohref.NOHREF;
    protected AreaEnumNohref nohref = NOHREF_EDEFAULT;
    protected boolean nohrefESet;
    protected static final String ONBLUR_EDEFAULT = "";
    protected String onblur = "";
    protected boolean onblurESet;
    protected static final String ONCLICK_EDEFAULT = "";
    protected String onclick = "";
    protected boolean onclickESet;
    protected static final String ONDBLCLICK_EDEFAULT = "";
    protected String ondblclick = "";
    protected boolean ondblclickESet;
    protected static final String ONFOCUS_EDEFAULT = "";
    protected String onfocus = "";
    protected boolean onfocusESet;
    protected static final String ONKEYDOWN_EDEFAULT = "";
    protected String onkeydown = "";
    protected boolean onkeydownESet;
    protected static final String ONKEYPRESS_EDEFAULT = "";
    protected String onkeypress = "";
    protected boolean onkeypressESet;
    protected static final String ONKEYUP_EDEFAULT = "";
    protected String onkeyup = "";
    protected boolean onkeyupESet;
    protected static final String ONMOUSEDOWN_EDEFAULT = "";
    protected String onmousedown = "";
    protected boolean onmousedownESet;
    protected static final String ONMOUSEMOVE_EDEFAULT = "";
    protected String onmousemove = "";
    protected boolean onmousemoveESet;
    protected static final String ONMOUSEOUT_EDEFAULT = "";
    protected String onmouseout = "";
    protected boolean onmouseoutESet;
    protected static final String ONMOUSEOVER_EDEFAULT = "";
    protected String onmouseover = "";
    protected boolean onmouseoverESet;
    protected static final String ONMOUSEUP_EDEFAULT = "";
    protected String onmouseup = "";
    protected boolean onmouseupESet;
    protected static final AreaEnumShape SHAPE_EDEFAULT = AreaEnumShape.CIRCLE;
    protected AreaEnumShape shape = SHAPE_EDEFAULT;
    protected boolean shapeESet;
    protected static final String STYLE_EDEFAULT = "";
    protected String style = "";
    protected boolean styleESet;
    protected static final String TABINDEX_EDEFAULT = "";
    protected String tabindex = "";
    protected boolean tabindexESet;
    protected static final String TITLE_EDEFAULT = "";
    protected String title = "";
    protected boolean titleESet;

    protected AreaImpl() {
    }

    protected EClass eStaticClass() {
        return FigurePackage.Literals.AREA;
    }

    public Map getMap() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Map)this.eContainer();
    }

    public NotificationChain basicSetMap(Map newMap, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMap, 4, msgs);
        return msgs;
    }

    public void setMap(Map newMap) {
        if (newMap != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newMap != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMap)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMap != null) {
                msgs = ((InternalEObject)newMap).eInverseAdd((InternalEObject)this, 19, Map.class, msgs);
            }
            if ((msgs = this.basicSetMap(newMap, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newMap, (Object)newMap));
        }
    }

    public String getAccesskey() {
        return this.accesskey;
    }

    public void setAccesskey(String newAccesskey) {
        String oldAccesskey = this.accesskey;
        this.accesskey = newAccesskey;
        boolean oldAccesskeyESet = this.accesskeyESet;
        this.accesskeyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAccesskey, (Object)this.accesskey, !oldAccesskeyESet));
        }
    }

    public void unsetAccesskey() {
        String oldAccesskey = this.accesskey;
        boolean oldAccesskeyESet = this.accesskeyESet;
        this.accesskey = "";
        this.accesskeyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldAccesskey, (Object)"", oldAccesskeyESet));
        }
    }

    public boolean isSetAccesskey() {
        return this.accesskeyESet;
    }

    public String getAlt() {
        return this.alt;
    }

    public void setAlt(String newAlt) {
        String oldAlt = this.alt;
        this.alt = newAlt;
        boolean oldAltESet = this.altESet;
        this.altESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldAlt, (Object)this.alt, !oldAltESet));
        }
    }

    public void unsetAlt() {
        String oldAlt = this.alt;
        boolean oldAltESet = this.altESet;
        this.alt = "";
        this.altESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldAlt, (Object)"", oldAltESet));
        }
    }

    public boolean isSetAlt() {
        return this.altESet;
    }

    public String getClass_() {
        return this.class_;
    }

    public void setClass(String newClass) {
        String oldClass = this.class_;
        this.class_ = newClass;
        boolean oldClassESet = this.classESet;
        this.classESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldClass, (Object)this.class_, !oldClassESet));
        }
    }

    public void unsetClass() {
        String oldClass = this.class_;
        boolean oldClassESet = this.classESet;
        this.class_ = "";
        this.classESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldClass, (Object)"", oldClassESet));
        }
    }

    public boolean isSetClass() {
        return this.classESet;
    }

    public String getCoords() {
        return this.coords;
    }

    public void setCoords(String newCoords) {
        String oldCoords = this.coords;
        this.coords = newCoords;
        boolean oldCoordsESet = this.coordsESet;
        this.coordsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldCoords, (Object)this.coords, !oldCoordsESet));
        }
    }

    public void unsetCoords() {
        String oldCoords = this.coords;
        boolean oldCoordsESet = this.coordsESet;
        this.coords = "";
        this.coordsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldCoords, (Object)"", oldCoordsESet));
        }
    }

    public boolean isSetCoords() {
        return this.coordsESet;
    }

    public String getHref() {
        return this.href;
    }

    public void setHref(String newHref) {
        String oldHref = this.href;
        this.href = newHref;
        boolean oldHrefESet = this.hrefESet;
        this.hrefESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldHref, (Object)this.href, !oldHrefESet));
        }
    }

    public void unsetHref() {
        String oldHref = this.href;
        boolean oldHrefESet = this.hrefESet;
        this.href = "";
        this.hrefESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldHref, (Object)"", oldHrefESet));
        }
    }

    public boolean isSetHref() {
        return this.hrefESet;
    }

    public AreaEnumNohref getNohref() {
        return this.nohref;
    }

    public void setNohref(AreaEnumNohref newNohref) {
        AreaEnumNohref oldNohref = this.nohref;
        this.nohref = newNohref == null ? NOHREF_EDEFAULT : newNohref;
        boolean oldNohrefESet = this.nohrefESet;
        this.nohrefESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldNohref, (Object)this.nohref, !oldNohrefESet));
        }
    }

    public void unsetNohref() {
        AreaEnumNohref oldNohref = this.nohref;
        boolean oldNohrefESet = this.nohrefESet;
        this.nohref = NOHREF_EDEFAULT;
        this.nohrefESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldNohref, (Object)NOHREF_EDEFAULT, oldNohrefESet));
        }
    }

    public boolean isSetNohref() {
        return this.nohrefESet;
    }

    public String getOnblur() {
        return this.onblur;
    }

    public void setOnblur(String newOnblur) {
        String oldOnblur = this.onblur;
        this.onblur = newOnblur;
        boolean oldOnblurESet = this.onblurESet;
        this.onblurESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldOnblur, (Object)this.onblur, !oldOnblurESet));
        }
    }

    public void unsetOnblur() {
        String oldOnblur = this.onblur;
        boolean oldOnblurESet = this.onblurESet;
        this.onblur = "";
        this.onblurESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldOnblur, (Object)"", oldOnblurESet));
        }
    }

    public boolean isSetOnblur() {
        return this.onblurESet;
    }

    public String getOnclick() {
        return this.onclick;
    }

    public void setOnclick(String newOnclick) {
        String oldOnclick = this.onclick;
        this.onclick = newOnclick;
        boolean oldOnclickESet = this.onclickESet;
        this.onclickESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldOnclick, (Object)this.onclick, !oldOnclickESet));
        }
    }

    public void unsetOnclick() {
        String oldOnclick = this.onclick;
        boolean oldOnclickESet = this.onclickESet;
        this.onclick = "";
        this.onclickESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldOnclick, (Object)"", oldOnclickESet));
        }
    }

    public boolean isSetOnclick() {
        return this.onclickESet;
    }

    public String getOndblclick() {
        return this.ondblclick;
    }

    public void setOndblclick(String newOndblclick) {
        String oldOndblclick = this.ondblclick;
        this.ondblclick = newOndblclick;
        boolean oldOndblclickESet = this.ondblclickESet;
        this.ondblclickESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldOndblclick, (Object)this.ondblclick, !oldOndblclickESet));
        }
    }

    public void unsetOndblclick() {
        String oldOndblclick = this.ondblclick;
        boolean oldOndblclickESet = this.ondblclickESet;
        this.ondblclick = "";
        this.ondblclickESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldOndblclick, (Object)"", oldOndblclickESet));
        }
    }

    public boolean isSetOndblclick() {
        return this.ondblclickESet;
    }

    public String getOnfocus() {
        return this.onfocus;
    }

    public void setOnfocus(String newOnfocus) {
        String oldOnfocus = this.onfocus;
        this.onfocus = newOnfocus;
        boolean oldOnfocusESet = this.onfocusESet;
        this.onfocusESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldOnfocus, (Object)this.onfocus, !oldOnfocusESet));
        }
    }

    public void unsetOnfocus() {
        String oldOnfocus = this.onfocus;
        boolean oldOnfocusESet = this.onfocusESet;
        this.onfocus = "";
        this.onfocusESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldOnfocus, (Object)"", oldOnfocusESet));
        }
    }

    public boolean isSetOnfocus() {
        return this.onfocusESet;
    }

    public String getOnkeydown() {
        return this.onkeydown;
    }

    public void setOnkeydown(String newOnkeydown) {
        String oldOnkeydown = this.onkeydown;
        this.onkeydown = newOnkeydown;
        boolean oldOnkeydownESet = this.onkeydownESet;
        this.onkeydownESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldOnkeydown, (Object)this.onkeydown, !oldOnkeydownESet));
        }
    }

    public void unsetOnkeydown() {
        String oldOnkeydown = this.onkeydown;
        boolean oldOnkeydownESet = this.onkeydownESet;
        this.onkeydown = "";
        this.onkeydownESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, (Object)oldOnkeydown, (Object)"", oldOnkeydownESet));
        }
    }

    public boolean isSetOnkeydown() {
        return this.onkeydownESet;
    }

    public String getOnkeypress() {
        return this.onkeypress;
    }

    public void setOnkeypress(String newOnkeypress) {
        String oldOnkeypress = this.onkeypress;
        this.onkeypress = newOnkeypress;
        boolean oldOnkeypressESet = this.onkeypressESet;
        this.onkeypressESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldOnkeypress, (Object)this.onkeypress, !oldOnkeypressESet));
        }
    }

    public void unsetOnkeypress() {
        String oldOnkeypress = this.onkeypress;
        boolean oldOnkeypressESet = this.onkeypressESet;
        this.onkeypress = "";
        this.onkeypressESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 16, (Object)oldOnkeypress, (Object)"", oldOnkeypressESet));
        }
    }

    public boolean isSetOnkeypress() {
        return this.onkeypressESet;
    }

    public String getOnkeyup() {
        return this.onkeyup;
    }

    public void setOnkeyup(String newOnkeyup) {
        String oldOnkeyup = this.onkeyup;
        this.onkeyup = newOnkeyup;
        boolean oldOnkeyupESet = this.onkeyupESet;
        this.onkeyupESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldOnkeyup, (Object)this.onkeyup, !oldOnkeyupESet));
        }
    }

    public void unsetOnkeyup() {
        String oldOnkeyup = this.onkeyup;
        boolean oldOnkeyupESet = this.onkeyupESet;
        this.onkeyup = "";
        this.onkeyupESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldOnkeyup, (Object)"", oldOnkeyupESet));
        }
    }

    public boolean isSetOnkeyup() {
        return this.onkeyupESet;
    }

    public String getOnmousedown() {
        return this.onmousedown;
    }

    public void setOnmousedown(String newOnmousedown) {
        String oldOnmousedown = this.onmousedown;
        this.onmousedown = newOnmousedown;
        boolean oldOnmousedownESet = this.onmousedownESet;
        this.onmousedownESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldOnmousedown, (Object)this.onmousedown, !oldOnmousedownESet));
        }
    }

    public void unsetOnmousedown() {
        String oldOnmousedown = this.onmousedown;
        boolean oldOnmousedownESet = this.onmousedownESet;
        this.onmousedown = "";
        this.onmousedownESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldOnmousedown, (Object)"", oldOnmousedownESet));
        }
    }

    public boolean isSetOnmousedown() {
        return this.onmousedownESet;
    }

    public String getOnmousemove() {
        return this.onmousemove;
    }

    public void setOnmousemove(String newOnmousemove) {
        String oldOnmousemove = this.onmousemove;
        this.onmousemove = newOnmousemove;
        boolean oldOnmousemoveESet = this.onmousemoveESet;
        this.onmousemoveESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldOnmousemove, (Object)this.onmousemove, !oldOnmousemoveESet));
        }
    }

    public void unsetOnmousemove() {
        String oldOnmousemove = this.onmousemove;
        boolean oldOnmousemoveESet = this.onmousemoveESet;
        this.onmousemove = "";
        this.onmousemoveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldOnmousemove, (Object)"", oldOnmousemoveESet));
        }
    }

    public boolean isSetOnmousemove() {
        return this.onmousemoveESet;
    }

    public String getOnmouseout() {
        return this.onmouseout;
    }

    public void setOnmouseout(String newOnmouseout) {
        String oldOnmouseout = this.onmouseout;
        this.onmouseout = newOnmouseout;
        boolean oldOnmouseoutESet = this.onmouseoutESet;
        this.onmouseoutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldOnmouseout, (Object)this.onmouseout, !oldOnmouseoutESet));
        }
    }

    public void unsetOnmouseout() {
        String oldOnmouseout = this.onmouseout;
        boolean oldOnmouseoutESet = this.onmouseoutESet;
        this.onmouseout = "";
        this.onmouseoutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldOnmouseout, (Object)"", oldOnmouseoutESet));
        }
    }

    public boolean isSetOnmouseout() {
        return this.onmouseoutESet;
    }

    public String getOnmouseover() {
        return this.onmouseover;
    }

    public void setOnmouseover(String newOnmouseover) {
        String oldOnmouseover = this.onmouseover;
        this.onmouseover = newOnmouseover;
        boolean oldOnmouseoverESet = this.onmouseoverESet;
        this.onmouseoverESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldOnmouseover, (Object)this.onmouseover, !oldOnmouseoverESet));
        }
    }

    public void unsetOnmouseover() {
        String oldOnmouseover = this.onmouseover;
        boolean oldOnmouseoverESet = this.onmouseoverESet;
        this.onmouseover = "";
        this.onmouseoverESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldOnmouseover, (Object)"", oldOnmouseoverESet));
        }
    }

    public boolean isSetOnmouseover() {
        return this.onmouseoverESet;
    }

    public String getOnmouseup() {
        return this.onmouseup;
    }

    public void setOnmouseup(String newOnmouseup) {
        String oldOnmouseup = this.onmouseup;
        this.onmouseup = newOnmouseup;
        boolean oldOnmouseupESet = this.onmouseupESet;
        this.onmouseupESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldOnmouseup, (Object)this.onmouseup, !oldOnmouseupESet));
        }
    }

    public void unsetOnmouseup() {
        String oldOnmouseup = this.onmouseup;
        boolean oldOnmouseupESet = this.onmouseupESet;
        this.onmouseup = "";
        this.onmouseupESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldOnmouseup, (Object)"", oldOnmouseupESet));
        }
    }

    public boolean isSetOnmouseup() {
        return this.onmouseupESet;
    }

    public AreaEnumShape getShape() {
        return this.shape;
    }

    public void setShape(AreaEnumShape newShape) {
        AreaEnumShape oldShape = this.shape;
        this.shape = newShape == null ? SHAPE_EDEFAULT : newShape;
        boolean oldShapeESet = this.shapeESet;
        this.shapeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldShape, (Object)this.shape, !oldShapeESet));
        }
    }

    public void unsetShape() {
        AreaEnumShape oldShape = this.shape;
        boolean oldShapeESet = this.shapeESet;
        this.shape = SHAPE_EDEFAULT;
        this.shapeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldShape, (Object)SHAPE_EDEFAULT, oldShapeESet));
        }
    }

    public boolean isSetShape() {
        return this.shapeESet;
    }

    public String getStyle() {
        return this.style;
    }

    public void setStyle(String newStyle) {
        String oldStyle = this.style;
        this.style = newStyle;
        boolean oldStyleESet = this.styleESet;
        this.styleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldStyle, (Object)this.style, !oldStyleESet));
        }
    }

    public void unsetStyle() {
        String oldStyle = this.style;
        boolean oldStyleESet = this.styleESet;
        this.style = "";
        this.styleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldStyle, (Object)"", oldStyleESet));
        }
    }

    public boolean isSetStyle() {
        return this.styleESet;
    }

    public String getTabindex() {
        return this.tabindex;
    }

    public void setTabindex(String newTabindex) {
        String oldTabindex = this.tabindex;
        this.tabindex = newTabindex;
        boolean oldTabindexESet = this.tabindexESet;
        this.tabindexESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldTabindex, (Object)this.tabindex, !oldTabindexESet));
        }
    }

    public void unsetTabindex() {
        String oldTabindex = this.tabindex;
        boolean oldTabindexESet = this.tabindexESet;
        this.tabindex = "";
        this.tabindexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldTabindex, (Object)"", oldTabindexESet));
        }
    }

    public boolean isSetTabindex() {
        return this.tabindexESet;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String newTitle) {
        String oldTitle = this.title;
        this.title = newTitle;
        boolean oldTitleESet = this.titleESet;
        this.titleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldTitle, (Object)this.title, !oldTitleESet));
        }
    }

    public void unsetTitle() {
        String oldTitle = this.title;
        boolean oldTitleESet = this.titleESet;
        this.title = "";
        this.titleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldTitle, (Object)"", oldTitleESet));
        }
    }

    public boolean isSetTitle() {
        return this.titleESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMap((Map)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetMap(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, Map.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMap();
            }
            case 5: {
                return this.getAccesskey();
            }
            case 6: {
                return this.getAlt();
            }
            case 7: {
                return this.getClass_();
            }
            case 8: {
                return this.getCoords();
            }
            case 9: {
                return this.getHref();
            }
            case 10: {
                return this.getNohref();
            }
            case 11: {
                return this.getOnblur();
            }
            case 12: {
                return this.getOnclick();
            }
            case 13: {
                return this.getOndblclick();
            }
            case 14: {
                return this.getOnfocus();
            }
            case 15: {
                return this.getOnkeydown();
            }
            case 16: {
                return this.getOnkeypress();
            }
            case 17: {
                return this.getOnkeyup();
            }
            case 18: {
                return this.getOnmousedown();
            }
            case 19: {
                return this.getOnmousemove();
            }
            case 20: {
                return this.getOnmouseout();
            }
            case 21: {
                return this.getOnmouseover();
            }
            case 22: {
                return this.getOnmouseup();
            }
            case 23: {
                return this.getShape();
            }
            case 24: {
                return this.getStyle();
            }
            case 25: {
                return this.getTabindex();
            }
            case 26: {
                return this.getTitle();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMap((Map)newValue);
                return;
            }
            case 5: {
                this.setAccesskey((String)newValue);
                return;
            }
            case 6: {
                this.setAlt((String)newValue);
                return;
            }
            case 7: {
                this.setClass((String)newValue);
                return;
            }
            case 8: {
                this.setCoords((String)newValue);
                return;
            }
            case 9: {
                this.setHref((String)newValue);
                return;
            }
            case 10: {
                this.setNohref((AreaEnumNohref)((Object)newValue));
                return;
            }
            case 11: {
                this.setOnblur((String)newValue);
                return;
            }
            case 12: {
                this.setOnclick((String)newValue);
                return;
            }
            case 13: {
                this.setOndblclick((String)newValue);
                return;
            }
            case 14: {
                this.setOnfocus((String)newValue);
                return;
            }
            case 15: {
                this.setOnkeydown((String)newValue);
                return;
            }
            case 16: {
                this.setOnkeypress((String)newValue);
                return;
            }
            case 17: {
                this.setOnkeyup((String)newValue);
                return;
            }
            case 18: {
                this.setOnmousedown((String)newValue);
                return;
            }
            case 19: {
                this.setOnmousemove((String)newValue);
                return;
            }
            case 20: {
                this.setOnmouseout((String)newValue);
                return;
            }
            case 21: {
                this.setOnmouseover((String)newValue);
                return;
            }
            case 22: {
                this.setOnmouseup((String)newValue);
                return;
            }
            case 23: {
                this.setShape((AreaEnumShape)((Object)newValue));
                return;
            }
            case 24: {
                this.setStyle((String)newValue);
                return;
            }
            case 25: {
                this.setTabindex((String)newValue);
                return;
            }
            case 26: {
                this.setTitle((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setMap(null);
                return;
            }
            case 5: {
                this.unsetAccesskey();
                return;
            }
            case 6: {
                this.unsetAlt();
                return;
            }
            case 7: {
                this.unsetClass();
                return;
            }
            case 8: {
                this.unsetCoords();
                return;
            }
            case 9: {
                this.unsetHref();
                return;
            }
            case 10: {
                this.unsetNohref();
                return;
            }
            case 11: {
                this.unsetOnblur();
                return;
            }
            case 12: {
                this.unsetOnclick();
                return;
            }
            case 13: {
                this.unsetOndblclick();
                return;
            }
            case 14: {
                this.unsetOnfocus();
                return;
            }
            case 15: {
                this.unsetOnkeydown();
                return;
            }
            case 16: {
                this.unsetOnkeypress();
                return;
            }
            case 17: {
                this.unsetOnkeyup();
                return;
            }
            case 18: {
                this.unsetOnmousedown();
                return;
            }
            case 19: {
                this.unsetOnmousemove();
                return;
            }
            case 20: {
                this.unsetOnmouseout();
                return;
            }
            case 21: {
                this.unsetOnmouseover();
                return;
            }
            case 22: {
                this.unsetOnmouseup();
                return;
            }
            case 23: {
                this.unsetShape();
                return;
            }
            case 24: {
                this.unsetStyle();
                return;
            }
            case 25: {
                this.unsetTabindex();
                return;
            }
            case 26: {
                this.unsetTitle();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getMap() != null;
            }
            case 5: {
                return this.isSetAccesskey();
            }
            case 6: {
                return this.isSetAlt();
            }
            case 7: {
                return this.isSetClass();
            }
            case 8: {
                return this.isSetCoords();
            }
            case 9: {
                return this.isSetHref();
            }
            case 10: {
                return this.isSetNohref();
            }
            case 11: {
                return this.isSetOnblur();
            }
            case 12: {
                return this.isSetOnclick();
            }
            case 13: {
                return this.isSetOndblclick();
            }
            case 14: {
                return this.isSetOnfocus();
            }
            case 15: {
                return this.isSetOnkeydown();
            }
            case 16: {
                return this.isSetOnkeypress();
            }
            case 17: {
                return this.isSetOnkeyup();
            }
            case 18: {
                return this.isSetOnmousedown();
            }
            case 19: {
                return this.isSetOnmousemove();
            }
            case 20: {
                return this.isSetOnmouseout();
            }
            case 21: {
                return this.isSetOnmouseover();
            }
            case 22: {
                return this.isSetOnmouseup();
            }
            case 23: {
                return this.isSetShape();
            }
            case 24: {
                return this.isSetStyle();
            }
            case 25: {
                return this.isSetTabindex();
            }
            case 26: {
                return this.isSetTitle();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (accesskey: ");
        if (this.accesskeyESet) {
            result.append(this.accesskey);
        } else {
            result.append("<unset>");
        }
        result.append(", alt: ");
        if (this.altESet) {
            result.append(this.alt);
        } else {
            result.append("<unset>");
        }
        result.append(", class: ");
        if (this.classESet) {
            result.append(this.class_);
        } else {
            result.append("<unset>");
        }
        result.append(", coords: ");
        if (this.coordsESet) {
            result.append(this.coords);
        } else {
            result.append("<unset>");
        }
        result.append(", href: ");
        if (this.hrefESet) {
            result.append(this.href);
        } else {
            result.append("<unset>");
        }
        result.append(", nohref: ");
        if (this.nohrefESet) {
            result.append((Object)this.nohref);
        } else {
            result.append("<unset>");
        }
        result.append(", onblur: ");
        if (this.onblurESet) {
            result.append(this.onblur);
        } else {
            result.append("<unset>");
        }
        result.append(", onclick: ");
        if (this.onclickESet) {
            result.append(this.onclick);
        } else {
            result.append("<unset>");
        }
        result.append(", ondblclick: ");
        if (this.ondblclickESet) {
            result.append(this.ondblclick);
        } else {
            result.append("<unset>");
        }
        result.append(", onfocus: ");
        if (this.onfocusESet) {
            result.append(this.onfocus);
        } else {
            result.append("<unset>");
        }
        result.append(", onkeydown: ");
        if (this.onkeydownESet) {
            result.append(this.onkeydown);
        } else {
            result.append("<unset>");
        }
        result.append(", onkeypress: ");
        if (this.onkeypressESet) {
            result.append(this.onkeypress);
        } else {
            result.append("<unset>");
        }
        result.append(", onkeyup: ");
        if (this.onkeyupESet) {
            result.append(this.onkeyup);
        } else {
            result.append("<unset>");
        }
        result.append(", onmousedown: ");
        if (this.onmousedownESet) {
            result.append(this.onmousedown);
        } else {
            result.append("<unset>");
        }
        result.append(", onmousemove: ");
        if (this.onmousemoveESet) {
            result.append(this.onmousemove);
        } else {
            result.append("<unset>");
        }
        result.append(", onmouseout: ");
        if (this.onmouseoutESet) {
            result.append(this.onmouseout);
        } else {
            result.append("<unset>");
        }
        result.append(", onmouseover: ");
        if (this.onmouseoverESet) {
            result.append(this.onmouseover);
        } else {
            result.append("<unset>");
        }
        result.append(", onmouseup: ");
        if (this.onmouseupESet) {
            result.append(this.onmouseup);
        } else {
            result.append("<unset>");
        }
        result.append(", shape: ");
        if (this.shapeESet) {
            result.append((Object)this.shape);
        } else {
            result.append("<unset>");
        }
        result.append(", style: ");
        if (this.styleESet) {
            result.append(this.style);
        } else {
            result.append("<unset>");
        }
        result.append(", tabindex: ");
        if (this.tabindexESet) {
            result.append(this.tabindex);
        } else {
            result.append("<unset>");
        }
        result.append(", title: ");
        if (this.titleESet) {
            result.append(this.title);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

