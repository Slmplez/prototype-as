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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Area;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigurePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.LGraphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Map;
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
public class MapImpl
extends ARObjectImpl
implements Map {
    protected static final String CLASS_EDEFAULT = "";
    protected String class_ = "";
    protected boolean classESet;
    protected static final String NAME_EDEFAULT = "";
    protected String name = "";
    protected boolean nameESet;
    protected static final String ONCLICK_EDEFAULT = "";
    protected String onclick = "";
    protected boolean onclickESet;
    protected static final String ONDBLCLICK_EDEFAULT = "";
    protected String ondblclick = "";
    protected boolean ondblclickESet;
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
    protected static final String STYLE_EDEFAULT = "";
    protected String style = "";
    protected boolean styleESet;
    protected static final String TITLE_EDEFAULT = "";
    protected String title = "";
    protected boolean titleESet;
    protected EList<Area> areas;

    protected MapImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FigurePackage.Literals.MAP;
    }

    @Override
    public LGraphic getLGraphic() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (LGraphic)this.eContainer();
    }

    public NotificationChain basicSetLGraphic(LGraphic newLGraphic, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newLGraphic, 4, msgs);
        return msgs;
    }

    @Override
    public void setLGraphic(LGraphic newLGraphic) {
        if (newLGraphic != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newLGraphic != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newLGraphic)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newLGraphic != null) {
                msgs = ((InternalEObject)newLGraphic).eInverseAdd((InternalEObject)this, 6, LGraphic.class, msgs);
            }
            if ((msgs = this.basicSetLGraphic(newLGraphic, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newLGraphic, (Object)newLGraphic));
        }
    }

    @Override
    public String getClass_() {
        return this.class_;
    }

    @Override
    public void setClass(String newClass) {
        String oldClass = this.class_;
        this.class_ = newClass;
        boolean oldClassESet = this.classESet;
        this.classESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldClass, (Object)this.class_, !oldClassESet));
        }
    }

    @Override
    public void unsetClass() {
        String oldClass = this.class_;
        boolean oldClassESet = this.classESet;
        this.class_ = "";
        this.classESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldClass, (Object)"", oldClassESet));
        }
    }

    @Override
    public boolean isSetClass() {
        return this.classESet;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        boolean oldNameESet = this.nameESet;
        this.nameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldName, (Object)this.name, !oldNameESet));
        }
    }

    @Override
    public void unsetName() {
        String oldName = this.name;
        boolean oldNameESet = this.nameESet;
        this.name = "";
        this.nameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldName, (Object)"", oldNameESet));
        }
    }

    @Override
    public boolean isSetName() {
        return this.nameESet;
    }

    @Override
    public String getOnclick() {
        return this.onclick;
    }

    @Override
    public void setOnclick(String newOnclick) {
        String oldOnclick = this.onclick;
        this.onclick = newOnclick;
        boolean oldOnclickESet = this.onclickESet;
        this.onclickESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldOnclick, (Object)this.onclick, !oldOnclickESet));
        }
    }

    @Override
    public void unsetOnclick() {
        String oldOnclick = this.onclick;
        boolean oldOnclickESet = this.onclickESet;
        this.onclick = "";
        this.onclickESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldOnclick, (Object)"", oldOnclickESet));
        }
    }

    @Override
    public boolean isSetOnclick() {
        return this.onclickESet;
    }

    @Override
    public String getOndblclick() {
        return this.ondblclick;
    }

    @Override
    public void setOndblclick(String newOndblclick) {
        String oldOndblclick = this.ondblclick;
        this.ondblclick = newOndblclick;
        boolean oldOndblclickESet = this.ondblclickESet;
        this.ondblclickESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldOndblclick, (Object)this.ondblclick, !oldOndblclickESet));
        }
    }

    @Override
    public void unsetOndblclick() {
        String oldOndblclick = this.ondblclick;
        boolean oldOndblclickESet = this.ondblclickESet;
        this.ondblclick = "";
        this.ondblclickESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldOndblclick, (Object)"", oldOndblclickESet));
        }
    }

    @Override
    public boolean isSetOndblclick() {
        return this.ondblclickESet;
    }

    @Override
    public String getOnkeydown() {
        return this.onkeydown;
    }

    @Override
    public void setOnkeydown(String newOnkeydown) {
        String oldOnkeydown = this.onkeydown;
        this.onkeydown = newOnkeydown;
        boolean oldOnkeydownESet = this.onkeydownESet;
        this.onkeydownESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldOnkeydown, (Object)this.onkeydown, !oldOnkeydownESet));
        }
    }

    @Override
    public void unsetOnkeydown() {
        String oldOnkeydown = this.onkeydown;
        boolean oldOnkeydownESet = this.onkeydownESet;
        this.onkeydown = "";
        this.onkeydownESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldOnkeydown, (Object)"", oldOnkeydownESet));
        }
    }

    @Override
    public boolean isSetOnkeydown() {
        return this.onkeydownESet;
    }

    @Override
    public String getOnkeypress() {
        return this.onkeypress;
    }

    @Override
    public void setOnkeypress(String newOnkeypress) {
        String oldOnkeypress = this.onkeypress;
        this.onkeypress = newOnkeypress;
        boolean oldOnkeypressESet = this.onkeypressESet;
        this.onkeypressESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldOnkeypress, (Object)this.onkeypress, !oldOnkeypressESet));
        }
    }

    @Override
    public void unsetOnkeypress() {
        String oldOnkeypress = this.onkeypress;
        boolean oldOnkeypressESet = this.onkeypressESet;
        this.onkeypress = "";
        this.onkeypressESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldOnkeypress, (Object)"", oldOnkeypressESet));
        }
    }

    @Override
    public boolean isSetOnkeypress() {
        return this.onkeypressESet;
    }

    @Override
    public String getOnkeyup() {
        return this.onkeyup;
    }

    @Override
    public void setOnkeyup(String newOnkeyup) {
        String oldOnkeyup = this.onkeyup;
        this.onkeyup = newOnkeyup;
        boolean oldOnkeyupESet = this.onkeyupESet;
        this.onkeyupESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldOnkeyup, (Object)this.onkeyup, !oldOnkeyupESet));
        }
    }

    @Override
    public void unsetOnkeyup() {
        String oldOnkeyup = this.onkeyup;
        boolean oldOnkeyupESet = this.onkeyupESet;
        this.onkeyup = "";
        this.onkeyupESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldOnkeyup, (Object)"", oldOnkeyupESet));
        }
    }

    @Override
    public boolean isSetOnkeyup() {
        return this.onkeyupESet;
    }

    @Override
    public String getOnmousedown() {
        return this.onmousedown;
    }

    @Override
    public void setOnmousedown(String newOnmousedown) {
        String oldOnmousedown = this.onmousedown;
        this.onmousedown = newOnmousedown;
        boolean oldOnmousedownESet = this.onmousedownESet;
        this.onmousedownESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldOnmousedown, (Object)this.onmousedown, !oldOnmousedownESet));
        }
    }

    @Override
    public void unsetOnmousedown() {
        String oldOnmousedown = this.onmousedown;
        boolean oldOnmousedownESet = this.onmousedownESet;
        this.onmousedown = "";
        this.onmousedownESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldOnmousedown, (Object)"", oldOnmousedownESet));
        }
    }

    @Override
    public boolean isSetOnmousedown() {
        return this.onmousedownESet;
    }

    @Override
    public String getOnmousemove() {
        return this.onmousemove;
    }

    @Override
    public void setOnmousemove(String newOnmousemove) {
        String oldOnmousemove = this.onmousemove;
        this.onmousemove = newOnmousemove;
        boolean oldOnmousemoveESet = this.onmousemoveESet;
        this.onmousemoveESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldOnmousemove, (Object)this.onmousemove, !oldOnmousemoveESet));
        }
    }

    @Override
    public void unsetOnmousemove() {
        String oldOnmousemove = this.onmousemove;
        boolean oldOnmousemoveESet = this.onmousemoveESet;
        this.onmousemove = "";
        this.onmousemoveESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldOnmousemove, (Object)"", oldOnmousemoveESet));
        }
    }

    @Override
    public boolean isSetOnmousemove() {
        return this.onmousemoveESet;
    }

    @Override
    public String getOnmouseout() {
        return this.onmouseout;
    }

    @Override
    public void setOnmouseout(String newOnmouseout) {
        String oldOnmouseout = this.onmouseout;
        this.onmouseout = newOnmouseout;
        boolean oldOnmouseoutESet = this.onmouseoutESet;
        this.onmouseoutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldOnmouseout, (Object)this.onmouseout, !oldOnmouseoutESet));
        }
    }

    @Override
    public void unsetOnmouseout() {
        String oldOnmouseout = this.onmouseout;
        boolean oldOnmouseoutESet = this.onmouseoutESet;
        this.onmouseout = "";
        this.onmouseoutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldOnmouseout, (Object)"", oldOnmouseoutESet));
        }
    }

    @Override
    public boolean isSetOnmouseout() {
        return this.onmouseoutESet;
    }

    @Override
    public String getOnmouseover() {
        return this.onmouseover;
    }

    @Override
    public void setOnmouseover(String newOnmouseover) {
        String oldOnmouseover = this.onmouseover;
        this.onmouseover = newOnmouseover;
        boolean oldOnmouseoverESet = this.onmouseoverESet;
        this.onmouseoverESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldOnmouseover, (Object)this.onmouseover, !oldOnmouseoverESet));
        }
    }

    @Override
    public void unsetOnmouseover() {
        String oldOnmouseover = this.onmouseover;
        boolean oldOnmouseoverESet = this.onmouseoverESet;
        this.onmouseover = "";
        this.onmouseoverESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, (Object)oldOnmouseover, (Object)"", oldOnmouseoverESet));
        }
    }

    @Override
    public boolean isSetOnmouseover() {
        return this.onmouseoverESet;
    }

    @Override
    public String getOnmouseup() {
        return this.onmouseup;
    }

    @Override
    public void setOnmouseup(String newOnmouseup) {
        String oldOnmouseup = this.onmouseup;
        this.onmouseup = newOnmouseup;
        boolean oldOnmouseupESet = this.onmouseupESet;
        this.onmouseupESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldOnmouseup, (Object)this.onmouseup, !oldOnmouseupESet));
        }
    }

    @Override
    public void unsetOnmouseup() {
        String oldOnmouseup = this.onmouseup;
        boolean oldOnmouseupESet = this.onmouseupESet;
        this.onmouseup = "";
        this.onmouseupESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 16, (Object)oldOnmouseup, (Object)"", oldOnmouseupESet));
        }
    }

    @Override
    public boolean isSetOnmouseup() {
        return this.onmouseupESet;
    }

    @Override
    public String getStyle() {
        return this.style;
    }

    @Override
    public void setStyle(String newStyle) {
        String oldStyle = this.style;
        this.style = newStyle;
        boolean oldStyleESet = this.styleESet;
        this.styleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldStyle, (Object)this.style, !oldStyleESet));
        }
    }

    @Override
    public void unsetStyle() {
        String oldStyle = this.style;
        boolean oldStyleESet = this.styleESet;
        this.style = "";
        this.styleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldStyle, (Object)"", oldStyleESet));
        }
    }

    @Override
    public boolean isSetStyle() {
        return this.styleESet;
    }

    @Override
    public String getTitle() {
        return this.title;
    }

    @Override
    public void setTitle(String newTitle) {
        String oldTitle = this.title;
        this.title = newTitle;
        boolean oldTitleESet = this.titleESet;
        this.titleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldTitle, (Object)this.title, !oldTitleESet));
        }
    }

    @Override
    public void unsetTitle() {
        String oldTitle = this.title;
        boolean oldTitleESet = this.titleESet;
        this.title = "";
        this.titleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldTitle, (Object)"", oldTitleESet));
        }
    }

    @Override
    public boolean isSetTitle() {
        return this.titleESet;
    }

    @Override
    public EList<Area> getAreas() {
        if (this.areas == null) {
            this.areas = new EObjectContainmentWithInverseEList(Area.class, (InternalEObject)this, 19, 4);
        }
        return this.areas;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetLGraphic((LGraphic)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getAreas()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetLGraphic(null, msgs);
            }
            case 19: {
                return ((InternalEList)this.getAreas()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, LGraphic.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getLGraphic();
            }
            case 5: {
                return this.getClass_();
            }
            case 6: {
                return this.getName();
            }
            case 7: {
                return this.getOnclick();
            }
            case 8: {
                return this.getOndblclick();
            }
            case 9: {
                return this.getOnkeydown();
            }
            case 10: {
                return this.getOnkeypress();
            }
            case 11: {
                return this.getOnkeyup();
            }
            case 12: {
                return this.getOnmousedown();
            }
            case 13: {
                return this.getOnmousemove();
            }
            case 14: {
                return this.getOnmouseout();
            }
            case 15: {
                return this.getOnmouseover();
            }
            case 16: {
                return this.getOnmouseup();
            }
            case 17: {
                return this.getStyle();
            }
            case 18: {
                return this.getTitle();
            }
            case 19: {
                return this.getAreas();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setLGraphic((LGraphic)newValue);
                return;
            }
            case 5: {
                this.setClass((String)newValue);
                return;
            }
            case 6: {
                this.setName((String)newValue);
                return;
            }
            case 7: {
                this.setOnclick((String)newValue);
                return;
            }
            case 8: {
                this.setOndblclick((String)newValue);
                return;
            }
            case 9: {
                this.setOnkeydown((String)newValue);
                return;
            }
            case 10: {
                this.setOnkeypress((String)newValue);
                return;
            }
            case 11: {
                this.setOnkeyup((String)newValue);
                return;
            }
            case 12: {
                this.setOnmousedown((String)newValue);
                return;
            }
            case 13: {
                this.setOnmousemove((String)newValue);
                return;
            }
            case 14: {
                this.setOnmouseout((String)newValue);
                return;
            }
            case 15: {
                this.setOnmouseover((String)newValue);
                return;
            }
            case 16: {
                this.setOnmouseup((String)newValue);
                return;
            }
            case 17: {
                this.setStyle((String)newValue);
                return;
            }
            case 18: {
                this.setTitle((String)newValue);
                return;
            }
            case 19: {
                this.getAreas().clear();
                this.getAreas().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setLGraphic(null);
                return;
            }
            case 5: {
                this.unsetClass();
                return;
            }
            case 6: {
                this.unsetName();
                return;
            }
            case 7: {
                this.unsetOnclick();
                return;
            }
            case 8: {
                this.unsetOndblclick();
                return;
            }
            case 9: {
                this.unsetOnkeydown();
                return;
            }
            case 10: {
                this.unsetOnkeypress();
                return;
            }
            case 11: {
                this.unsetOnkeyup();
                return;
            }
            case 12: {
                this.unsetOnmousedown();
                return;
            }
            case 13: {
                this.unsetOnmousemove();
                return;
            }
            case 14: {
                this.unsetOnmouseout();
                return;
            }
            case 15: {
                this.unsetOnmouseover();
                return;
            }
            case 16: {
                this.unsetOnmouseup();
                return;
            }
            case 17: {
                this.unsetStyle();
                return;
            }
            case 18: {
                this.unsetTitle();
                return;
            }
            case 19: {
                this.getAreas().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getLGraphic() != null;
            }
            case 5: {
                return this.isSetClass();
            }
            case 6: {
                return this.isSetName();
            }
            case 7: {
                return this.isSetOnclick();
            }
            case 8: {
                return this.isSetOndblclick();
            }
            case 9: {
                return this.isSetOnkeydown();
            }
            case 10: {
                return this.isSetOnkeypress();
            }
            case 11: {
                return this.isSetOnkeyup();
            }
            case 12: {
                return this.isSetOnmousedown();
            }
            case 13: {
                return this.isSetOnmousemove();
            }
            case 14: {
                return this.isSetOnmouseout();
            }
            case 15: {
                return this.isSetOnmouseover();
            }
            case 16: {
                return this.isSetOnmouseup();
            }
            case 17: {
                return this.isSetStyle();
            }
            case 18: {
                return this.isSetTitle();
            }
            case 19: {
                return this.areas != null && !this.areas.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (class: ");
        if (this.classESet) {
            result.append(this.class_);
        } else {
            result.append("<unset>");
        }
        result.append(", name: ");
        if (this.nameESet) {
            result.append(this.name);
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
        result.append(", style: ");
        if (this.styleESet) {
            result.append(this.style);
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

