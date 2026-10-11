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
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Url;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Std;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForParagraph;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.SingleLanguageReferrableImpl;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesFactory;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesPackage;
import javax.xml.datatype.XMLGregorianCalendar;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class StdImpl
extends SingleLanguageReferrableImpl
implements Std {
    protected static final String SUBTITLE_EDEFAULT = "";
    protected String subtitle = "";
    protected boolean subtitleESet;
    protected static final String STATE_EDEFAULT = "";
    protected String state = "";
    protected boolean stateESet;
    protected static final XMLGregorianCalendar DATE_EDEFAULT = (XMLGregorianCalendar)PrimitivetypesFactory.eINSTANCE.createFromString(PrimitivetypesPackage.eINSTANCE.getDateTime(), "0001-01-01T00:00:00");
    protected XMLGregorianCalendar date = DATE_EDEFAULT;
    protected boolean dateESet;
    protected Url url;
    protected static final String POSITION_EDEFAULT = "";
    protected String position = "";
    protected boolean positionESet;

    protected StdImpl() {
    }

    protected EClass eStaticClass() {
        return InlinetextelementsPackage.Literals.STD;
    }

    public MixedContentForParagraph getMixedContentForParagraph() {
        if (this.eContainerFeatureID() != 7) {
            return null;
        }
        return (MixedContentForParagraph)this.eContainer();
    }

    public NotificationChain basicSetMixedContentForParagraph(MixedContentForParagraph newMixedContentForParagraph, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMixedContentForParagraph, 7, msgs);
        return msgs;
    }

    public void setMixedContentForParagraph(MixedContentForParagraph newMixedContentForParagraph) {
        if (newMixedContentForParagraph != this.eInternalContainer() || this.eContainerFeatureID() != 7 && newMixedContentForParagraph != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMixedContentForParagraph)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMixedContentForParagraph != null) {
                msgs = ((InternalEObject)newMixedContentForParagraph).eInverseAdd((InternalEObject)this, 14, MixedContentForParagraph.class, msgs);
            }
            if ((msgs = this.basicSetMixedContentForParagraph(newMixedContentForParagraph, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newMixedContentForParagraph, (Object)newMixedContentForParagraph));
        }
    }

    public String getSubtitle() {
        return this.subtitle;
    }

    public void setSubtitle(String newSubtitle) {
        String oldSubtitle = this.subtitle;
        this.subtitle = newSubtitle;
        boolean oldSubtitleESet = this.subtitleESet;
        this.subtitleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSubtitle, (Object)this.subtitle, !oldSubtitleESet));
        }
    }

    public void unsetSubtitle() {
        String oldSubtitle = this.subtitle;
        boolean oldSubtitleESet = this.subtitleESet;
        this.subtitle = "";
        this.subtitleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldSubtitle, (Object)"", oldSubtitleESet));
        }
    }

    public boolean isSetSubtitle() {
        return this.subtitleESet;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String newState) {
        String oldState = this.state;
        this.state = newState;
        boolean oldStateESet = this.stateESet;
        this.stateESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldState, (Object)this.state, !oldStateESet));
        }
    }

    public void unsetState() {
        String oldState = this.state;
        boolean oldStateESet = this.stateESet;
        this.state = "";
        this.stateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldState, (Object)"", oldStateESet));
        }
    }

    public boolean isSetState() {
        return this.stateESet;
    }

    public XMLGregorianCalendar getDate() {
        return this.date;
    }

    public void setDate(XMLGregorianCalendar newDate) {
        XMLGregorianCalendar oldDate = this.date;
        this.date = newDate;
        boolean oldDateESet = this.dateESet;
        this.dateESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldDate, (Object)this.date, !oldDateESet));
        }
    }

    public void unsetDate() {
        XMLGregorianCalendar oldDate = this.date;
        boolean oldDateESet = this.dateESet;
        this.date = DATE_EDEFAULT;
        this.dateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldDate, (Object)DATE_EDEFAULT, oldDateESet));
        }
    }

    public boolean isSetDate() {
        return this.dateESet;
    }

    public Url getUrl() {
        return this.url;
    }

    public NotificationChain basicSetUrl(Url newUrl, NotificationChain msgs) {
        Url oldUrl = this.url;
        this.url = newUrl;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldUrl, (Object)newUrl);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setUrl(Url newUrl) {
        if (newUrl != this.url) {
            NotificationChain msgs = null;
            if (this.url != null) {
                msgs = ((InternalEObject)this.url).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newUrl != null) {
                msgs = ((InternalEObject)newUrl).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetUrl(newUrl, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newUrl, (Object)newUrl));
        }
    }

    public String getPosition() {
        return this.position;
    }

    public void setPosition(String newPosition) {
        String oldPosition = this.position;
        this.position = newPosition;
        boolean oldPositionESet = this.positionESet;
        this.positionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldPosition, (Object)this.position, !oldPositionESet));
        }
    }

    public void unsetPosition() {
        String oldPosition = this.position;
        boolean oldPositionESet = this.positionESet;
        this.position = "";
        this.positionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldPosition, (Object)"", oldPositionESet));
        }
    }

    public boolean isSetPosition() {
        return this.positionESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMixedContentForParagraph((MixedContentForParagraph)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.basicSetMixedContentForParagraph(null, msgs);
            }
            case 11: {
                return this.basicSetUrl(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 7: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 14, MixedContentForParagraph.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.getMixedContentForParagraph();
            }
            case 8: {
                return this.getSubtitle();
            }
            case 9: {
                return this.getState();
            }
            case 10: {
                return this.getDate();
            }
            case 11: {
                return this.getUrl();
            }
            case 12: {
                return this.getPosition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.setMixedContentForParagraph((MixedContentForParagraph)newValue);
                return;
            }
            case 8: {
                this.setSubtitle((String)newValue);
                return;
            }
            case 9: {
                this.setState((String)newValue);
                return;
            }
            case 10: {
                this.setDate((XMLGregorianCalendar)newValue);
                return;
            }
            case 11: {
                this.setUrl((Url)newValue);
                return;
            }
            case 12: {
                this.setPosition((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 7: {
                this.setMixedContentForParagraph(null);
                return;
            }
            case 8: {
                this.unsetSubtitle();
                return;
            }
            case 9: {
                this.unsetState();
                return;
            }
            case 10: {
                this.unsetDate();
                return;
            }
            case 11: {
                this.setUrl(null);
                return;
            }
            case 12: {
                this.unsetPosition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
                return this.getMixedContentForParagraph() != null;
            }
            case 8: {
                return this.isSetSubtitle();
            }
            case 9: {
                return this.isSetState();
            }
            case 10: {
                return this.isSetDate();
            }
            case 11: {
                return this.url != null;
            }
            case 12: {
                return this.isSetPosition();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (subtitle: ");
        if (this.subtitleESet) {
            result.append(this.subtitle);
        } else {
            result.append("<unset>");
        }
        result.append(", state: ");
        if (this.stateESet) {
            result.append(this.state);
        } else {
            result.append("<unset>");
        }
        result.append(", date: ");
        if (this.dateESet) {
            result.append(this.date);
        } else {
            result.append("<unset>");
        }
        result.append(", position: ");
        if (this.positionESet) {
            result.append(this.position);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

